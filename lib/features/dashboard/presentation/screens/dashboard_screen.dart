library dashboard_screen.dart;

import 'package:auctionvillage/core/presentation/index.dart';
import 'package:auctionvillage/features/auth/presentation/managers/managers.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/managers/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/pages/index.dart';
import 'package:auctionvillage/features/onboarding/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_svg/svg.dart';

/// A stateless widget to render DashboardScreen.
class DashboardScreen extends StatefulWidget with AutoRouteWrapper {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }
}

class _DashboardScreenState extends State<DashboardScreen> with DoubleTapToPop, AutomaticKeepAliveClientMixin<DashboardScreen> {
  late CupertinoTabController _controller;
  late BottomNavigationCubit _cubit;

  @override
  void initState() {
    _cubit = context.read<BottomNavigationCubit>();
    _controller = CupertinoTabController(initialIndex: _cubit.state.currentIndex);
    context.read<AuthWatcherCubit>().subscribeUserChanges();
    super.initState();
  }

  @override
  bool get wantKeepAlive => true;

  List<BottomNavigationBarItem> navItems(int index) {
    return BottomNav.list
        .map(
          (i) => BottomNavigationBarItem(
            label: i.title,
            tooltip: i.title,
            icon: TourGuide(
              key: i.id == SearchScreen.index
                  ? DashboardScreenKeyMixin.liveBottomNavKey
                  : (i.id == SellScreen.index ? DashboardScreenKeyMixin.sellBottomNavKey : ShowcaseKey.kdefult),
              render: i.id == SearchScreen.index || i.id == SellScreen.index,
              title: i.tourTitle,
              description: i.tourDescription,
              child: SvgPicture.asset(
                i.asset,
                color: index == i.id ? Palette.primary : Colors.grey,
                width: 20,
                height: 20,
              ),
            ),
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return AutoTabsRouter.builder(
      inheritNavigatorObservers: true,
      homeIndex: BottomNavigationState.homeIndex,
      routes: BottomNav.list.map((e) => e.router).toList(),
      navigatorObservers: () => <NavigatorObserver>[AutoRouteObserver()],
      onRouterReady: (router) {
        _cubit.attachListener(router);

        WidgetsBinding.instance.addPostFrameCallback((_) {
          router.setActiveIndex(_cubit.state.currentIndex);
          if (App.platform.isIOS) _controller.index = _cubit.state.currentIndex;
        });
      },
      builder: (c, children, router) {
        final currentIndex = c.watchTabsRouter.activeIndex;

        return WillPopScope(
          onWillPop: maybePop,
          child: AdaptiveScaffold(
            cupertinoTabBuilder: (_, i) => CupertinoTabView(builder: (_) => BottomNavigationState.tabs.toList()[i].values.first),
            body: LazyIndexedStack(index: currentIndex, children: children),
            cupertino: (o) => o.copyWith(
              resizeToAvoidBottomInset: false,
              backgroundColor: Colors.transparent,
              controller: _controller,
              bottomTabBar: CupertinoTabBar(
                items: navItems(currentIndex),
                backgroundColor: App.resolveColor(
                  CupertinoColors.lightBackgroundGray.withAlpha(254),
                  dark: CupertinoColors.quaternarySystemFill,
                )!,
                iconSize: 20,
                inactiveColor: Colors.grey,
                currentIndex: currentIndex,
                activeColor: Palette.primary,
                onTap: (i) {
                  FocusManager.instance.primaryFocus?.unfocus();
                  SystemChannels.textInput.invokeMethod('TextInput.hide');

                  _controller.index = i;
                  router.setActiveIndex(i);
                },
              ),
            ),
            adaptiveBottomNav: PlatformNavBar(
              items: navItems(currentIndex),
              currentIndex: currentIndex,
              material: (_, __) => MaterialNavBarData(
                elevation: 0.0,
                type: BottomNavigationBarType.fixed,
                unselectedItemColor: Colors.grey,
                selectedItemColor: Palette.primary,
                backgroundColor: Palette.background,
              ),
              itemChanged: router.setActiveIndex,
            ),
          ),
        );
      },
    );
  }
}
