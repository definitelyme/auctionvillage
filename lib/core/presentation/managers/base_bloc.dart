library base_bloc.dart;

import 'package:auctionvillage/core/data/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';

abstract class BaseBlocState {
  const BaseBlocState();

  bool get isLoading;
  bool get validate;
}

mixin BaseBloc<Event, State extends BaseBlocState> on Bloc<Event, State> {
  EventTransformer<Evt> debounce<Evt>(Duration duration) => (events, transform) => events.debounceTime(duration).switchMap(transform);

  Future<Option<AppHttpResponse>> connection() => checkConnectivity();
}

enum SearchModel {
  deal,
  user;

  bool get isDeal => this == SearchModel.deal;
  bool get isUser => this == SearchModel.user;
}

mixin BaseSearchState {
  bool get isSearching;
  String? get searchQuery;
  // SearchModel get model;
}

mixin BaseSearchBloc<E, S extends BaseSearchState> on Bloc<E, S> {
  EventTransformer<Evt> debounce<Evt>(Duration duration) => (events, transform) => events.debounceTime(duration).switchMap(transform);

  /// This feeds the debounced event stream to restartable() and returns that
  /// as a transformer.
  EventTransformer<Evt> debounceRestartable<Evt>(Duration duration) =>
      (events, mapper) => restartable<Evt>().call(events.debounceTime(duration), mapper);

  Future<Option<AppHttpResponse>> connection() => checkConnectivity();

  void emitter(Emitter<S> emit, S state) {
    try {
      if (!isClosed) emit(state);
    } on StateError catch (e, tr) {
      log.e('Debug Exception: $e', e, tr);
    }
  }

  @override
  void add(E event) {
    try {
      if (!isClosed) super.add(event);
    } on StateError catch (e, tr) {
      log.e('Debug Exception: $e', e, tr);
    }
  }
}

extension SearchTabX on SearchModel {
  T? maybeWhen<T>({
    T Function()? user,
    T Function()? deal,
  }) {
    switch (this) {
      case SearchModel.user:
        return user?.call();
      case SearchModel.deal:
        return deal?.call();
    }
  }

  T when<T>({
    required T Function() user,
    required T Function() deal,
  }) {
    switch (this) {
      case SearchModel.user:
        return user();
      case SearchModel.deal:
        return deal();
    }
  }
}
