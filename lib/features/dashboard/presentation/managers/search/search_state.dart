part of search_bloc.dart;

@immutable
@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
class SearchState with _$SearchState, BaseSearchState {
  const factory SearchState({
    @Default(false) bool isSearching,
    String? searchQuery,
    @Default(PaginatedKtList()) PaginatedKtList<Deal> deals,
    @Default(None()) Option<AppHttpResponse?> status,
  }) = _SearchState;

  const SearchState._();

  factory SearchState.initial() => const SearchState();
}
