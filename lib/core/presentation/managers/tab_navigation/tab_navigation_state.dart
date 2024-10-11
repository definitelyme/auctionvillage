part of 'tab_navigation_cubit.dart';

@freezed
@immutable
class TabNavigationState with _$TabNavigationState {
  const factory TabNavigationState({
    TabController? tabController,
    @Default(0) int selectedTab,
    @Default(false) bool isLoading,
  }) = _TabNavigationState;

  factory TabNavigationState.initial() => const TabNavigationState();
}
