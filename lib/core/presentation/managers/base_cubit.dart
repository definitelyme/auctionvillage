import 'dart:async';

import 'package:auctionvillage/core/data/index.dart';
import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart' hide StandardKt;
import 'package:rxdart/rxdart.dart';

abstract class BaseState {
  const BaseState();

  bool get isLoading;
  bool get validate;
}

abstract class BaseCubit<State extends BaseState> extends Cubit<State> with ActiveCubit<State> {
  BaseCubit(super.initialState);

  Future<Option<AppHttpResponse>> connection() => checkConnectivity();

  String get reference => env.flavor.maybeWhen(
        orElse: () => 'av.mobile_${localTime.toIso8601String()}',
        beta: () => 'av.mobile.beta_${localTime.toIso8601String()}',
        dev: () => 'av.mobile.dev_${localTime.toIso8601String()}',
      );
}

abstract class BaseAddressState extends BaseState {
  const BaseAddressState();

  KtList<GoogleMapPlace> get places;
  GoogleMapPlace? get selectedPlace;
  PlaceStatus get placeStatus;
  bool get isTyping;
  String? get searchQuery;
  bool get isLoadingMorePlaces;
}

mixin BaseAddressCubit<State extends BaseAddressState> on Cubit<State> {
  final _search$ = StreamController<Map<String, dynamic>>();

  late StreamSubscription<Map<String, dynamic>> _searchSubscription;

  void autocomplete(String query, {required BuildContext ctx, bool nextPage = false, VoidCallback? callback});

  void sink(String query, {required BuildContext ctx, bool nextPage = false, VoidCallback? callback}) =>
      _search$.add({'query': query, 'ctx': ctx, 'next_page': nextPage, 'callback': callback});

  void createDebounce() =>
      _searchSubscription = _search$.stream.debounceTime(const Duration(milliseconds: 500)).listen((data) => autocomplete(
            '${data['query']}',
            ctx: data['ctx'] as BuildContext,
            nextPage: data['next_page'] as bool,
            callback: data['callback'] as VoidCallback?,
          ));

  Future<Option<AppHttpResponse>> connection() => checkConnectivity();

  void onQueryChanged(String value);

  @override
  void emit(State state) {
    if (!isClosed) super.emit(state);
  }

  @override
  Future<void> close() {
    _search$.close();
    _searchSubscription.cancel();
    return super.close();
  }
}

mixin ActiveCubit<A> on Cubit<A> {
  @override
  void emit(A state) {
    if (!isClosed) super.emit(state);
  }
}
