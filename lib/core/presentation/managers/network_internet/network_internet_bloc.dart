// ignore_for_file: strict_raw_type

library network_internet_bloc.dart;

import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:auctionvillage/core/data/index.dart';
import 'package:auctionvillage/core/domain/response/network_failure/network_failure.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

part 'network_internet_bloc.freezed.dart';
part 'network_internet_event.dart';
part 'network_internet_state.dart';

typedef FutureResult<T> = FutureOr<T> Function();

void enqueue<T>(
  FutureResult<T> queueable, {
  void Function(Object, StackTrace)? onError,
  void Function(T)? onResult,
}) async {
  BuildContext? context;

  try {
    context = navigator.navigatorKey.currentContext;
  } catch (_) {
    if (kDebugMode) rethrow;
  }

  await runZonedGuarded(() async {
    try {
      // log.w('Running queable...');

      final it = await queueable();
      onResult?.call(it);

      // await BlocOverrides.runZoned(() async {
      //   final it = await queueable();
      //   onResult?.call(it);
      // }, blocObserver: _AppBlocObserver());
    } on NoInternetConnectivity catch (e, tr) {
      onError?.call(e, tr);
      context?.let((it) => it.read<NetworkInternetBloc>().add(NetworkEvent.queue(() => enqueue(queueable, onError: onError))));
      await navigator.navigate(NotConnectedRoute(title: 'You\'re offline'));
    } on PoorInternetConnection catch (e, tr) {
      onError?.call(e, tr);
      context?.let((it) => it.read<NetworkInternetBloc>().add(NetworkEvent.queue(() => enqueue(queueable, onError: onError))));
      await navigator.navigate(NotConnectedRoute(title: 'No Internet'));
    } on NetworkFailure catch (e, tr) {
      onError?.call(e, tr);
      context?.let((it) => it.read<NetworkInternetBloc>().add(NetworkEvent.queue(() => enqueue(queueable, onError: onError))));
      await navigator.navigate(NotConnectedRoute(title: 'Network Failure'));
    }
  }, (e, tr) {
    onError?.call(e, tr);

    log.e('Exception caught in zoned block ==> $e');

    if (e is NetworkFailure) {
      context?.let((it) => it.read<NetworkInternetBloc>().add(NetworkEvent.queue(() => enqueue(queueable, onError: onError))));
      navigator.navigate(NotConnectedRoute(title: 'Poor Internet Connection'));
    } else {
      throw e;
    }
  });
}

@singleton
class NetworkInternetBloc extends Bloc<NetworkInternetEvent, NetworkInternetState> {
  final Connectivity _connectivity;
  StreamSubscription<ConnectivityResult>? _connectivitySubscription;
  final InternetConnectionChecker _internetConnectionChecker;
  StreamSubscription<InternetConnectionStatus>? _internetSubscription;

  NetworkInternetBloc(this._connectivity, this._internetConnectionChecker) : super(const NetworkInternetState.notLoading()) {
    on<_NetworkEmitterEvent>((event, emit) {
      if (!isClosed) emit(event.state.call(state));
      event.callback?.call(true);
    });

    on<NetworkEvent>((event, emit) async {
      await event.mapOrNull(
        watchConnectivity: (e) async => _watchConnectivity(e),
        watchInternet: (e) async => _watchInternetAccess(e),
        retry: (e) async => _retryFuturesOrEvents(e, emit),
      );
      // });
    }, transformer: restartable());

    on<_QueueFutureOrEvent>((event, emit) async {
      await _addToQueue(event, emit);
    }, transformer: sequential());
  }

  @override
  Future<void> close() {
    _internetSubscription?.cancel();
    _connectivitySubscription?.cancel();
    return super.close();
  }

  Future<Option<AppHttpResponse>> _connection() async {
    final deviceConnection = await _connectivity.checkConnectivity();
    final connected = deviceConnection == ConnectivityResult.mobile ||
        deviceConnection == ConnectivityResult.wifi ||
        deviceConnection == ConnectivityResult.ethernet;

    final hasInternet = await _internetConnectionChecker.hasConnection;

    if (connected && hasInternet) {
      return none();
    } else if (!hasInternet) {
      return some(AppHttpResponse.failure(const NetworkFailure.poorInternet().message));
    } else {
      return some(AppHttpResponse.failure(const NetworkFailure.notConnected().message));
    }
  }

  void _watchConnectivity(_WatchConnectivity evt) async {
    // Cancel any existing subscriptions.
    await _connectivitySubscription?.cancel();

    _connectivitySubscription = _connectivity.onConnectivityChanged.listen((result) {
      // log.i('ConnectivityResult; $result');

      switch (result) {
        case ConnectivityResult.mobile:
        case ConnectivityResult.wifi:
        case ConnectivityResult.ethernet:
          add(_NetworkEmitterEvent.state((s) => NetworkInternetState.connected(state.futures)));
          break;
        case ConnectivityResult.none:
          add(_NetworkEmitterEvent.state((s) => NetworkInternetState.disconnected(state.futures)));
          break;
        case ConnectivityResult.bluetooth:
        default:
      }
    });
  }

  void _watchInternetAccess(_WatchInternetConnection evt) async {
    // Cancel any existing subscriptions.
    await _internetSubscription?.cancel();

    _internetSubscription = _internetConnectionChecker.onStatusChange.listen((status) {
      switch (status) {
        case InternetConnectionStatus.connected:
          add(_NetworkEmitterEvent.state((s) => NetworkInternetState.internet(state.futures)));
          break;
        case InternetConnectionStatus.disconnected:
        default:
          add(_NetworkEmitterEvent.state((s) => NetworkInternetState.poorInternet(state.futures)));
      }
    });
  }

  Future<void> _retryFuturesOrEvents(_RetryFuturesOrEvents evt, Emitter<NetworkInternetState> emit) async {
    emit(NetworkInternetState.loading(state.futures));

    final status = await _connection();

    await status.fold(
      () async {
        final values = state.futures;

        for (var futureOr in values) {
          try {
            // Emit loading
            emit(NetworkInternetState.loading(state.futures));

            // Remove loading after 16secs
            Future.delayed(Duration(milliseconds: env.connectTimeout), () {
              if (state == NetworkInternetState.loading(state.futures)) {
                add(_NetworkEmitterEvent.state((_) => NetworkInternetState.notLoading(state.futures)));
              }
            });

            /// This was previously `await future();`.
            /// But due to the nature of BLoC and how events are added,
            /// this future was not being awaited.
            /// This caused an overlap of events.
            futureOr();

            emit(NetworkInternetState.notLoading(values.where((f) => f.hashCode != futureOr.hashCode).toList()));

            emit(NetworkInternetState.internet(state.futures));
          } on NetworkFailure catch (e) {
            emit(NetworkInternetState.error(e.response, futures: values.where((f) => f.hashCode != futureOr.hashCode).toList()));
          } on AppHttpResponse catch (e) {
            emit(NetworkInternetState.error(e, futures: values.where((f) => f.hashCode != futureOr.hashCode).toList()));
          } on AppNetworkResponseException<dynamic, dynamic> catch (e) {
            emit(NetworkInternetState.error(e.asResponse(), futures: values.where((f) => f.hashCode != futureOr.hashCode).toList()));
          } on AppNetworkException catch (e) {
            emit(NetworkInternetState.error(e.asResponse(), futures: values.where((f) => f.hashCode != futureOr.hashCode).toList()));
          } catch (e) {
            emit(NetworkInternetState.error(
              AppHttpResponse.failure('$e'),
              futures: values.where((f) => f.hashCode != futureOr.hashCode).toList(),
            ));
          }
        }
      },
      (e) async {
        emit(NetworkInternetState.notLoading(state.futures));
        emit(NetworkInternetState.error(e, futures: state.futures));

        final stack = navigator.stack.map((e) => e.name);

        if (!stack.contains(NotConnectedRoute.name) && state.futures.isNotEmpty) await navigator.navigate(NotConnectedRoute());
      },
    );
  }

  Future<void> _addToQueue(_QueueFutureOrEvent evt, Emitter<NetworkInternetState> emit) async {
    final hasFuture = state.futures.any((e) => const DeepCollectionEquality().equals(e, evt.future));

    if (!hasFuture) emit(state.copyWith(futures: state.futures + [evt.future]));
  }
}
