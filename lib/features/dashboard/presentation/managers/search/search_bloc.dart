library search_bloc.dart;

import 'package:auctionvillage/core/data/models/index.dart';
import 'package:auctionvillage/core/data/response/index.dart';
import 'package:auctionvillage/core/presentation/index.dart';
import 'package:auctionvillage/features/dashboard/data/repositories/search_repository.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/widgets/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'search_bloc.freezed.dart';
part 'search_event.dart';
part 'search_state.dart';

@injectable
class SearchBloc extends Bloc<_SearchEvent, SearchState> with BaseSearchBloc {
  final SearchRepository _repository;

  SearchBloc(this._repository) : super(SearchState.initial()) {
    on<SearchEmitterEvent>((event, emit) {
      emitter(emit, event.state);
      event.callback?.call(true);
    });

    on<_ClearHistoryEvent>((event, emit) => _onClearEvent(emit), transformer: restartable());

    on<___SearchEvent>(
      (event, emit) async => _onSearchEvent(event, emit),
      transformer: debounceRestartable(const Duration(milliseconds: 600)),
    );
  }

  void _onClearEvent(Emitter<SearchState> emit, {String? query}) {
    emitter(emit, SearchState.initial());
  }

  void _onSearchEvent(___SearchEvent evt, Emitter<SearchState> emit) async {
    if (evt.query.isEmpty || evt.query.length <= SearchTextField.minQueryChars) return _onClearEvent(emit, query: evt.query);
    if (evt.query == state.searchQuery && !evt.nextPage) return evt.callback?.call(false);

    await __runRequest(
      evt.query,
      emit,
      perPage: evt.perPage,
      nextPage: evt.nextPage,
      callback: evt.callback,
      filter: evt.filter,
    );
  }

  Future<void> __runRequest(
    String query,
    Emitter<SearchState> emit, {
    int? perPage,
    bool nextPage = false,
    DealFilter? filter,
    AwaitCallback? callback,
  }) async {
    if (state.status.getOrNull == AppHttpResponse.endOfList && nextPage) return callback?.call(true);

    emitter(emit, state.copyWith(isSearching: true, status: none()));

    final result = await _repository.searchDeals(
      query,
      nextPage: nextPage,
      filter: filter,
      perPage: perPage,
      pagination: state.deals.meta?.pagination,
    );

    emitter(
      emit,
      result.fold(
        (f) => state.copyWith(searchQuery: query, isSearching: false, status: optionOf(f)),
        (list) => state.copyWith(
          deals: nextPage ? state.deals.plusIfAbsent(list.value, meta: list.meta) : list,
          searchQuery: query,
          isSearching: false,
        ),
      ),
    );

    callback?.call(true);
  }
}
