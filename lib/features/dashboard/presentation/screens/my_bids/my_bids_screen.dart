library my_bids_screen.dart;

import 'package:auctionvillage/core/data/index.dart';
import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/core/presentation/index.dart';
import 'package:auctionvillage/features/auth/presentation/managers/watcher/auth_watcher_cubit.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/managers/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/widgets/index.dart';
import 'package:auctionvillage/features/onboarding/index.dart';
import 'package:auctionvillage/manager/locator/locator.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/collection.dart';

/// A stateless widget to render MyBidsScreen.
class MyBidsScreen extends StatefulWidget with AutoRouteWrapper {
  const MyBidsScreen({Key? key}) : super(key: key);

  @override
  State<MyBidsScreen> createState() => _MyBidsScreenState();

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
            info: (i) => PopupDialog.info(message: i.message, show: i.message.isNotEmpty).render(c),
            error: (f) => PopupDialog.error(message: f.message, show: f.show && f.message.isNotEmpty).render(c),
            success: (s) => PopupDialog.success(message: s.message, show: s.message.isNotEmpty).render(c),
          ),
        ),
        child: this,
      ),
    );
  }
}

class _MyBidsScreenState extends State<MyBidsScreen> with MyBidsScreenKeyMixin {
  late DealCubit _cubit;

  @override
  void initState() {
    _cubit = blocMaybeOf(context, orElse: () => getIt<DealCubit>());
    settings.runAllTours(context, keys);
    super.initState();
  }

  User get authUser => context.read<AuthWatcherCubit>().user!;

  static void onLoadMore(DealCubit cubit, DragToRefreshState refresh, {required User user}) async {
    if (cubit.state.status.getOrNull == AppHttpResponse.endOfList) {
      return refresh.loadNoData();
    } else if (!cubit.state.isFetchingBidHistory && cubit.state.myBidHistoryList.isNotEmpty()) {
      enqueue(
        () => cubit.myBidHistory(
          user,
          nextPage: true,
          perPage: 10,
          endOfList: () => refresh.loadNoData(),
          callback: (_) => refresh.loadComplete(),
        ),
      );
    }
  }

  static void onRefresh(DealCubit cubit, DragToRefreshState refresh, {required User user}) async {
    if (!cubit.state.isFetchingBidHistory) {
      enqueue(
        () => cubit.myBidHistory(
          user,
          perPage: 10,
          callback: (_) => refresh.refreshCompleted(resetFooterState: true),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppSliverScrollView.scaffold(
      title: 'Bidding Activities',
      useSafeArea: true,
      isPaginated: true,
      enablePullUp: true,
      onRefresh: (s) => onRefresh(_cubit, s, user: authUser),
      onLoading: (s) => onLoadMore(_cubit, s, user: authUser),
      footerHeight: (d) => d + 30,
      slivers: [
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
          sliver: BlocSelector<DealCubit, DealState, UserBidHistory?>(
            selector: (s) => s.myBidHistoryStats,
            builder: (c, history) => SliverList(
              delegate: SliverChildListDelegate.fixed([
                UpDownIndicator.down(
                  value: 'Total Amount Spent',
                  description: (history == null ? 0 : history.totalAmountSpent.getExact()).asCurrency(padSymbol: true),
                  indicatorColor: Palette.fromHex('#0052BD'),
                  onPressed: () {},
                ),
                //
                0.017.verticalh,
                //
                TourGuide(
                  key: winningBidsKey,
                  description: 'Shows the number of auctions you have won.',
                  child: UpDownIndicator.up(
                    quarterTurns: 0,
                    value: 'Winning Bids',
                    asset: AssetsSvgsDashboard.icWinnerMedalSVG,
                    description: (history == null ? 0 : history.totalWinningBid.getExact()).ceil().toString(),
                    indicatorColor: Palette.fromHex('#259F46'),
                    indicatorBgColor: Palette.fromHex('#D3FFD2'),
                    onPressed: () {},
                  ),
                ),
                //
                0.017.verticalh,
                //
                TourGuide(
                  key: auctionParticipatedKey,
                  description: 'Maintain a record of your bids across all auctions.',
                  child: UpDownIndicator.down(
                    value: 'Auctions Participated In',
                    description: (history == null ? 0 : history.totalAuctionsParticipated.getExact()).ceil().toString(),
                    indicatorColor: Palette.fromHex('#D71818'),
                    onPressed: () {},
                  ),
                ),
              ]),
            ),
          ),
        ),
        //
        SliverListHeader(
          'Auctions Participated In',
          padding: EdgeInsets.symmetric(horizontal: App.sidePadding).copyWith(top: App.sidePadding, right: App.sidePadding / 2),
          onSeeAll: () => navigator.navigate(ActivityListRoute(
            onRefresh: (cubit, refreshState) => onRefresh(cubit, refreshState, user: authUser),
            onLoadMore: (cubit, refreshState) => onLoadMore(cubit, refreshState, user: authUser),
          )),
        ),
        //
        // SliverPadding(
        //   padding: EdgeInsets.symmetric(vertical: App.sidePadding * 0.7),
        //   sliver: BlocSelector<DealCubit, DealState, KtList<UserBidHistory>>(
        //     selector: (s) => s.myBidHistoryList,
        //     builder: (c, histories) => SliverList(
        //       delegate: SliverChildBuilderDelegate(
        //         (_, i) {
        //           final deal = histories.get(i).deal;
        //           final bidStatus = deal?.bidStatusForUser(authuser);

        //           return AdaptiveListTile(
        //             leading: ImageBox.network(
        //               photo: deal?.product?.photos.getOrNull(0)?.image.getOrNull,
        //               cacheOrResizeImageInFullscreen: false,
        //               borderRadius: 100.br,
        //               width: 45,
        //               height: 45,
        //               cacheHeight: 45,
        //               cacheWidth: 45,
        //             ),
        //             trailing: Icon(
        //               Utils.platform_(material: Icons.arrow_forward_ios_rounded, cupertino: CupertinoIcons.forward),
        //               size: 16,
        //               color: Palette.iconColor,
        //             ),
        //             title: AdaptiveText(
        //               '${deal?.product?.name}',
        //               maxLines: 2,
        //               fontSize: 15.sp,
        //               minFontSize: 14,
        //               fontWeight: FontWeight.w600,
        //               overflow: TextOverflow.ellipsis,
        //             ),
        //             subtitle: bidStatus == null
        //                 ? null
        //                 : Padding(
        //                     padding: const EdgeInsets.only(top: 4),
        //                     child: Align(
        //                       alignment: Alignment.centerLeft,
        //                       child: Material(
        //                         color: bidStatus.bgColor,
        //                         borderRadius: 100.br,
        //                         child: Padding(
        //                           padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
        //                           child: AdaptiveText(
        //                             bidStatus.value,
        //                             maxLines: 2,
        //                             fontSize: 13.sp,
        //                             minFontSize: 12,
        //                             textColor: bidStatus.color,
        //                             textColorDark: bidStatus.color,
        //                             fontWeight: FontWeight.w400,
        //                             overflow: TextOverflow.ellipsis,
        //                           ),
        //                         ),
        //                       ),
        //                     ),
        //                   ),
        //             horizontalTitleGap: 0.037.w,
        //             noCupertinoBorder: true,
        //             contentPadding: EdgeInsets.symmetric(horizontal: App.sidePadding),
        //             onTap: () {},
        //           );
        //         },
        //         childCount: histories.size,
        //         findChildIndexCallback: (key) {
        //           final valueKey = key as ValueKey;
        //           final id = valueKey.value;
        //           return histories.indexOfFirstOrNull((e) => e.id == id);
        //         },
        //         semanticIndexCallback: (widget, localIndex) {
        //           if (localIndex.isNegative) return null;
        //           return localIndex;
        //         },
        //       ),
        //     ),
        //   ),
        // ),
        //
        BlocSelector<DealCubit, DealState, KtMap<DateTime, KtList<UserBidHistory>>>(
          selector: (s) => s.myBidHistory,
          builder: (c, histories) => SliverPadding(
            padding: EdgeInsets.only(bottom: App.sidePadding * 0.4),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (_, i) => GroupedLayoutCard(
                  key: ValueKey(histories.keys.elementAt(i).millisecondsSinceEpoch),
                  dateTime: histories.keys.elementAt(i),
                  contentPadding: EdgeInsets.zero,
                  layout: (i2) {
                    final history = histories.values.elementAt(i).elementAt(i2);
                    final deal = history.deal;

                    return TourGuide(
                      key: bidHistoryItemKey,
                      title: 'Bid History',
                      description: 'This shows the current status of an Auction.\nLong Press to see more actions.',
                      render: i == 0 && i2 == 0 && App.platform.isIOS, // only show on first item
                      child: ActivityListTile(deal),
                    );
                  },
                  count: histories.values.elementAt(i).size,
                ),
                childCount: histories.size,
                findChildIndexCallback: (key) {
                  final valueKey = key as ValueKey;
                  final secs = valueKey.value as int;
                  return histories.keys.indexOfFirstOrNull((e) => e.millisecondsSinceEpoch == secs);
                },
                semanticIndexCallback: (widget, localIndex) {
                  if (localIndex.isNegative) return null;
                  return localIndex;
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
