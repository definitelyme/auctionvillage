library home_screen.dart;

import 'dart:async';

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/core/presentation/index.dart';
import 'package:auctionvillage/core/presentation/managers/managers.dart';
import 'package:auctionvillage/features/auth/presentation/managers/managers.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/managers/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/widgets/index.dart';
import 'package:auctionvillage/manager/locator/locator.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A stateful widget that renders HomeScreen.
class HomeScreen extends StatefulWidget with AutoRouteWrapper {
  static const index = 0;

  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return InheritOrCreateBlocProvider(
      orElse: () => getIt<DealCubit>(),
      child: BlocListener<DealCubit, DealState>(
        listenWhen: (p, c) =>
            p.status.getOrElse(() => null) != c.status.getOrElse(() => null) ||
            (c.status.getOrElse(() => null) != null && (c.status.getOrElse(() => null)!.response.maybeMap(orElse: () => false))),
        listener: (c, s) => s.status.fold(
          () {},
          (it) => it?.response.map(
            info: (i) => PopupDialog.info(message: i.message, show: i.message.isNotEmpty).render(),
            error: (f) => PopupDialog.error(message: f.message, show: f.show && f.message.isNotEmpty).render(),
            success: (s) => PopupDialog.success(message: s.message, show: s.message.isNotEmpty).render(),
          ),
        ),
        child: this,
      ),
    );
  }
}

class HomeScreenState extends State<HomeScreen> with AutomaticKeepAliveClientMixin<HomeScreen>, HomeScreenKeyMixin {
  static const _perPage = 6;
  EdgeInsets _titlePadding = EdgeInsets.zero;
  TextStyle _titleTextStyle = TextStyle(
    color: Palette.onSurface100,
    fontSize: 18,
    inherit: true,
    fontFamily: FontManager.android,
  );

  late DealCubit _cubit;
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _cubit = blocMaybeOf(context, orElse: () => getIt<DealCubit>());
    settings.runAllTours(context, keys);
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  void _scrollListener() {
    if (_scrollController.hasClients && _scrollController.offset > kToolbarHeight) {
      setState(() {
        _titlePadding = const EdgeInsets.only(left: 12);
        _titleTextStyle = _titleTextStyle.copyWith(fontWeight: FontWeight.w600, fontSize: 17);
      });
    } else {
      setState(() {
        _titlePadding = EdgeInsets.zero;
        _titleTextStyle = _titleTextStyle.copyWith(fontWeight: FontWeight.normal, fontSize: 18);
      });
    }
  }

  @override
  bool get wantKeepAlive => true;

  void onLoadMore(DragToRefreshState refresh) {
    if (!_cubit.state.isFetchingBuyNowDeals && _cubit.state.buyNowDeals.isNotEmpty()) {
      enqueue(
        () => _cubit.fetchDeals(
          nextPage: true,
          perPage: _perPage,
          dealType: DealType.buyNow,
          endOfList: refresh.loadNoData,
          callback: (_) => refresh.loadComplete(),
        ),
      );
    } else if (_cubit.state.status.getOrNull?.isEndOfList == true) {
      refresh.loadNoData();
    } else {
      refresh.loadComplete();
    }
  }

  void onRefresh(DragToRefreshState refresh) {
    enqueue(
      () => Future.wait([
        _cubit.fetchDeals(perPage: _perPage, dealType: DealType.auction),
        _cubit.fetchDeals(perPage: _perPage, dealType: DealType.buyNow),
        _cubit.fetchDeals(perPage: _perPage, dealType: DealType.clearance),
      ]),
      onResult: (_) => refresh.refreshCompleted(resetFooterState: true),
    );

    // if (!_cubit.state.isLoadingSponsored) {
    //   enqueue(() => _cubit.sponsoredDeals(perPage: 20));
    // }
  }

  SliverChildDelegate _builderDelegate({
    bool shimmerVisible = false,
    required SliverChildBuilderDelegate list,
    required SliverChildBuilderDelegate shimmer,
  }) {
    return shimmerVisible ? shimmer : list;
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return AdaptiveScaffold(
      body: AdaptiveScaffoldBody(
        body: NestedScrollView(
          controller: _scrollController,
          floatHeaderSlivers: false,
          headerSliverBuilder: (_, __) => [
            BlocSelector<AuthWatcherCubit, AuthWatcherState, User?>(
              selector: (s) => s.user,
              builder: (c, user) => SliverVisibility(
                visible: user != null,
                replacementSliver: SliverAppBar(
                  centerTitle: false,
                  pinned: true,
                  backgroundColor: Palette.background,
                  scrolledUnderElevation: Utils.platform_(cupertino: 1.5, material: 3),
                  leading: Padding(
                    padding: EdgeInsets.only(left: App.sidePadding),
                    child: const ProfileToolbarIcon(hideIfNotLoggedIn: false),
                  ),
                  title: const AdaptiveText(
                    'Welcome, Guest!',
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    textAlign: TextAlign.left,
                  ),
                ),
                sliver: SliverAppBar.medium(
                  centerTitle: false,
                  backgroundColor: Palette.background,
                  leadingWidth: kMinInteractiveDimension + App.sidePadding,
                  leading: const ProfileToolbarIcon(hideIfNotLoggedIn: false),
                  scrolledUnderElevation: Utils.platform_(cupertino: 1.5, material: 3),
                  actions: [
                    Padding(
                      padding: EdgeInsets.only(right: App.sidePadding / 2),
                      child: Center(
                        child: AdaptiveToolbar.adaptiveToolbarAction(
                          child: AppAssets.notificationBell(),
                          tooltip: 'Notifications',
                          label: 'Notifications',
                          onPressed: () => navigator.navigate(const NotificationsRoute()),
                        ),
                      ),
                    ),
                  ],
                  title: AnimatedPadding(
                    duration: const Duration(milliseconds: 200),
                    padding: _titlePadding.copyWith(right: 37),
                    child: AnimatedDefaultTextStyle(
                      duration: const Duration(milliseconds: 300),
                      style: _titleTextStyle,
                      child: AdaptiveText.rich(
                        TextSpan(children: [
                          const TextSpan(text: 'Welcome back, '),
                          TextSpan(text: '${user?.firstName}'),
                        ]),
                        isDefault: true,
                        maxLines: 1,
                        minFontSize: 15,
                        textAlign: TextAlign.left,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
          body: DragToRefresh(
            initialRefresh: true,
            enablePullUp: true,
            onRefresh: onRefresh,
            onLoading: onLoadMore,
            footerHeight: (_) => kBottomNavigationBarHeight + 0.02.h,
            child: CustomScrollView(
              physics: Utils.physics,
              slivers: [
                BlocSelector<DealCubit, DealState, bool>(
                  selector: (s) => s.isFetchingLiveAuctionDeals || s.liveAuctionDeals.isNotEmpty(),
                  builder: (c, visible) => SliverListHeader(
                    'Live Auctions',
                    visible: visible,
                    onSeeAll: () => navigator.navigate(DealsListRoute(
                      title: 'Live Auctions',
                      type: DealType.auction,
                      filter: const DealFilter(bidStatus: BidStatus.live),
                    )),
                  ),
                ),
                //
                BlocBuilder<DealCubit, DealState>(
                  builder: (c, s) => SliverPadding(
                    padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
                    sliver: SliverGrid(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 0.035.w,
                        mainAxisSpacing: 0.022.h,
                        mainAxisExtent: s.isFetchingLiveAuctionDeals && s.liveAuctionDeals.isEmpty() ? 0.42.h : AuctionCardBuilder.height.h,
                      ),
                      delegate: _builderDelegate(
                        shimmerVisible: s.isFetchingLiveAuctionDeals && s.liveAuctionDeals.isEmpty(),
                        shimmer: SliverChildBuilderDelegate(
                          (_, i) => LiveAuctionCardShimmer(key: ValueKey('live-deal-shimmer-$i')),
                          childCount: LiveAuctionCardShimmer.count,
                        ),
                        list: SliverChildBuilderDelegate(
                          (_, i) => AuctionCardBuilder(
                            index: i,
                            s.liveAuctionDeals.get(i),
                            key: ValueKey(s.liveAuctionDeals.get(i).id),
                            onUnlist: DragToRefresh.of(c).requestRefresh,
                          ),
                          childCount: s.liveAuctionDeals.size,
                          findChildIndexCallback: (key) {
                            final valueKey = key as ValueKey;
                            final id = valueKey.value;
                            return s.liveAuctionDeals.list.indexOfFirstOrNull((e) => e.id == id);
                          },
                          semanticIndexCallback: (widget, localIndex) {
                            if (localIndex.isNegative) return null;
                            return localIndex;
                          },
                        ),
                      ),
                    ),
                  ),
                ),
                //
                BlocSelector<DealCubit, DealState, bool>(
                  selector: (s) => s.isFetchingClearanceDeals || s.clearanceDeals.isNotEmpty(),
                  builder: (c, visible) => SliverListHeader(
                    'Clearance Deals',
                    visible: visible,
                    onSeeAll: () => navigator.navigate(DealsListRoute(
                      title: 'Clearance Deals',
                      type: DealType.clearance,
                      filter: const DealFilter(),
                    )),
                  ),
                ),
                //
                SliverToBoxAdapter(
                  child: BlocBuilder<DealCubit, DealState>(
                    builder: (c, s) => AnimatedVisibility(
                      visible: s.isFetchingClearanceDeals || s.clearanceDeals.isNotEmpty(),
                      child: SizedBox.fromSize(
                        size: Size.fromHeight(0.25.h),
                        child: ListView.custom(
                          scrollDirection: Axis.horizontal,
                          physics: Utils.physics,
                          padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
                          cacheExtent: 0.25.h,
                          childrenDelegate: _builderDelegate(
                            shimmerVisible: s.isFetchingClearanceDeals && s.clearanceDeals.isEmpty(),
                            shimmer: SliverChildBuilderDelegate(
                              (_, i) => ClearanceCardShimmer(index: i, key: ValueKey('clearance-deal-shimmer-$i')),
                              childCount: ClearanceCardShimmer.count,
                            ),
                            list: SliverChildBuilderDelegate(
                              (_, i) => ClearanceCardBuilder(
                                index: i,
                                size: s.clearanceDeals.size,
                                s.buyNowDeals.get(i),
                                key: ValueKey(s.buyNowDeals.get(i).id),
                              ),
                              childCount: s.clearanceDeals.size,
                              findChildIndexCallback: (key) {
                                final valueKey = key as ValueKey;
                                final id = valueKey.value;
                                return s.clearanceDeals.list.indexOfFirstOrNull((e) => e.id == id);
                              },
                              semanticIndexCallback: (widget, localIndex) {
                                if (localIndex.isNegative) return null;
                                return localIndex;
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                //
                BlocSelector<DealCubit, DealState, bool>(
                  selector: (s) => s.isFetchingBuyNowDeals || s.buyNowDeals.isNotEmpty(),
                  builder: (c, visible) => SliverListHeader(
                    'Buy Now',
                    visible: visible,
                    onSeeAll: () => navigator.navigate(DealsListRoute(
                      title: 'Buy Now',
                      type: DealType.buyNow,
                      filter: const DealFilter(),
                    )),
                  ),
                ),
                //
                BlocBuilder<DealCubit, DealState>(
                  builder: (c, s) => SliverPadding(
                    padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
                    sliver: SliverGrid(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 0.035.w,
                        mainAxisSpacing: 0.022.h,
                        mainAxisExtent: s.isFetchingBuyNowDeals && s.buyNowDeals.isEmpty() ? 0.4.h : BuyNowCardBuilder.height.h,
                      ),
                      delegate: _builderDelegate(
                        shimmerVisible: s.isFetchingBuyNowDeals && s.buyNowDeals.isEmpty(),
                        shimmer: SliverChildBuilderDelegate(
                          (_, i) => BuyNowCardShimmer(key: ValueKey('buy-now-deal-shimmer-$i')),
                          childCount: BuyNowCardShimmer.count,
                        ),
                        list: SliverChildBuilderDelegate(
                          (_, i) => BuyNowCardBuilder(
                            index: i,
                            s.buyNowDeals.get(i),
                            key: ValueKey(s.buyNowDeals.get(i).id),
                            onUnlist: DragToRefresh.of(c).requestRefresh,
                          ),
                          childCount: s.buyNowDeals.size,
                          findChildIndexCallback: (key) {
                            final valueKey = key as ValueKey;
                            final id = valueKey.value;
                            return s.buyNowDeals.list.indexOfFirstOrNull((e) => e.id == id);
                          },
                          semanticIndexCallback: (widget, localIndex) {
                            if (localIndex.isNegative) return null;
                            return localIndex;
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
