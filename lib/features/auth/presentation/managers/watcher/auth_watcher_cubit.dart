// ignore_for_file: cancel_subscriptions

import 'dart:async';

import 'package:auctionvillage/core/data/index.dart';
import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/core/domain/response/index.dart';
import 'package:auctionvillage/features/auth/domain/index.dart';
import 'package:auctionvillage/features/auth/presentation/managers/managers.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

part 'auth_watcher_cubit.freezed.dart';
part 'auth_watcher_state.dart';

@singleton
class AuthWatcherCubit extends Cubit<AuthWatcherState> with WatcherCubit {
  StreamSubscription<Either<Failure, Option<User?>>>? _authStateChanges;
  final AuthFacade _facade;
  StreamSubscription<Option<User?>>? _userChanges;

  AuthWatcherCubit(this._facade) : super(AuthWatcherState.initial());

  @override
  Future<void> close() {
    unsubscribeAuthChanges();
    unsubscribeUserChanges();
    return super.close();
  }

  @override
  bool get isAuthenticated => user != null;

  bool get isGuest => !isAuthenticated;

  @override
  Future<void> signOut() async {
    toggleLogoutLoading(true);

    Sentry.configureScope((s) => s.setUser(null));

    await _facade.signOut(notify: false);

    toggleLogoutLoading(false);

    emit(state.copyWith(user: null, option: none(), status: none()));
  }

  @override
  void subscribeToAuthChanges(TaskAction actions) async {
    // await signOut();

    unsubscribeAuthChanges();

    _authStateChanges ??= _facade.onAuthStateChanges.listen((data) {
      _mapResponse(data);

      actions.call(data);
    });
  }

  @override
  void subscribeUserChanges() {
    toggleLoading(true);

    unsubscribeUserChanges();

    _userChanges ??= _facade.onUserChanges.listen((option) {
      final user = option.getOrElse(() => null);

      emit(state.copyWith(user: user, option: optionOf(user), status: none()));

      toggleLoading(false);
    });

    toggleLoading(false);
  }

  @override
  void unsubscribeAuthChanges() {
    final listenable = _authStateChanges;
    _authStateChanges = null;
    listenable?.cancel();
  }

  @override
  void unsubscribeUserChanges() {
    final listenable = _userChanges;
    _userChanges = null;
    listenable?.cancel();
  }

  @override
  User? get user => state.user;

  void _mapResponse(Either<AppHttpResponse, Option<User?>> response) {
    final option = response.getOrElse(() => none());
    final _user = option.getOrElse(() => null);

    response.fold(
      (httpResponse) {
        if (httpResponse.reason != AppNetworkExceptionReason.timedOut)
          emit(state.copyWith(user: _user, option: optionOf(_user), status: optionOf(httpResponse)));
        emit(state.copyWith(status: optionOf(httpResponse)));
      },
      (_) => emit(state.copyWith(user: _user, option: option, status: none())),
    );
  }

  /// Should be called once (i.e. Preferrably on app start)
  void fire() async {
    toggleLoading(true);

    /// Get fresh current user. Note: [forceGetLocalCache: false]
    final request = await _facade.currentUser;
    _mapResponse(request);

    await request.fold(
      (_) => AppUpdate.checkForUpdates(),
      (option) async {
        final user = option.getOrNull;
        await Sentry.configureScope(
          (s) => s.setUser(SentryUser(
            id: user?.id.value,
            email: user?.email.getOrNull,
            data: UserDTO.fromDomain(user, passwords: false).toJson(),
          )),
        );

        await AppUpdate.checkForUpdates(option.getOrNull?.forceUpdate);
      },
    );

    await _facade.sink(request);

    toggleLoading(false);
  }

  void toggleLoading([bool? isLoading]) => emit(state.copyWith(isLoading: isLoading ?? !state.isLoading));

  void toggleLogoutLoading([bool? value]) => emit(state.copyWith(isLoggingOut: value ?? !state.isLoggingOut));
}
