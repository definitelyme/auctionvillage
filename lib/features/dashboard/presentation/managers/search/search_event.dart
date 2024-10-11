part of search_bloc.dart;

abstract class _SearchEvent {
  const _SearchEvent();
}

class SearchEmitterEvent extends _SearchEvent {
  final AwaitCallback? callback;
  final SearchState state;

  const SearchEmitterEvent(this.state, {this.callback});
}

@immutable
@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
class SearchEvent extends _SearchEvent with _$SearchEvent {
  const factory SearchEvent.search(
    String query, {
    int? perPage,
    DealFilter? filter,
    @Default(false) bool nextPage,
    AwaitCallback? callback,
  }) = ___SearchEvent;

  const factory SearchEvent.clear() = _ClearHistoryEvent;
}
