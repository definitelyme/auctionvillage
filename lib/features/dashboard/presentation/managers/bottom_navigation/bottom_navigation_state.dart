part of bottom_navigation_cubit.dart;

@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
class BottomNavigationState with _$BottomNavigationState {
  static const homeIndex = 0;
  static const Set<Map<String, Widget>> tabs = {
    {HomeRouter.name: WrappedRoute(child: HomeScreen())},
    {SearchRouter.name: WrappedRoute(child: SearchScreen())},
    {SellRouter.name: WrappedRoute(child: SellScreen())},
    {ProfileRouter.name: WrappedRoute(child: ProfileScreen())},
  };

  const factory BottomNavigationState({
    TabsRouter? tabRouter,
    @Default(BottomNavigationState.homeIndex) int currentIndex,
    @Default(BottomNavigationState.homeIndex) int previousIndex,
    @Default(false) bool hasActiveListener,
  }) = _BottomNavigationState;

  factory BottomNavigationState.initial() => const BottomNavigationState();
}
