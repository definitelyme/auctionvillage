library deal_detail_screen.dart;

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/core/presentation/index.dart';
import 'package:auctionvillage/features/auth/presentation/managers/managers.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/managers/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/widgets/index.dart';
import 'package:auctionvillage/manager/locator/locator.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:kt_dart/collection.dart';
import 'package:sliver_tools/sliver_tools.dart';
import 'package:timeago/timeago.dart' as timeago;

part 'deal_detail_screen/deal_detail_amount_controls.dart';
part 'deal_detail_screen/deal_detail_basic_info.dart';
part 'deal_detail_screen/deal_detail_carousel.dart';
part 'deal_detail_screen/deal_detail_cta.dart';

/// A stateful widget to render DealDetailScreen.
class DealDetailScreen extends StatefulWidget with AutoRouteWrapper {
  final Deal deal;
  final VoidCallback? onUnlist;

  const DealDetailScreen(this.deal, {super.key, this.onUnlist});

  @override
  _DealDetailScreenState createState() => _DealDetailScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return InheritOrCreateBlocProvider(
      orElse: () => getIt<DealCubit>(),
      child: MultiBlocListener(
        listeners: [
          BlocListener<DealCubit, DealState>(
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
          ),
          //
          BlocListener<DealCubit, DealState>(
            listenWhen: (p, c) => (p.currentDeal != c.currentDeal) && c.currentDeal != null,
            listener: (c, s) {
              if (!s.isLoading && c.read<AuthWatcherCubit>().isAuthenticated) {
                final _cubit = c.read<DealCubit>();

                enqueue(
                  () => _cubit.checkAdmittanceFeeStatus(deal, callback: (isFailure) {
                    if (isFailure) showDialog(c, s.currentDeal!);
                  }),
                );
              }
            },
          ),
          //
          BlocListener<AuthWatcherCubit, AuthWatcherState>(
            listenWhen: (p, c) => p.user == null && c.user != null && !c.isLoggingOut,
            listener: (c, __) {
              enqueue(() => c.read<DealCubit>().showDeal(deal));
              enqueue(() => c.read<DealCubit>().bidHistory(deal, perPage: 20));
            },
          ),
        ],
        child: this,
      ),
    );
  }

  static void showDialog(BuildContext context, Deal deal) {
    final _watcherCubit = context.read<AuthWatcherCubit>();
    final _dealCubit = context.read<DealCubit>();
    final shouldShowAlertDialog = deal.isPrivate && (_watcherCubit.isAuthenticated && !deal.hasPaidAdmittance(_watcherCubit.user));

    void continueAction() {
      navigator.navigate(PaymentPortalRoute(
        payable: Payable.clearanceDeal(deal, user: _watcherCubit.user!),
        onPaymentSuccess: () {
          _dealCubit.showDeal(deal);
          navigator.pushAndPopUntil(
            DealDetailRoute(deal: deal, onUnlist: navigator.popUntilRoot),
            predicate: (r) => r.settings.name != PaymentPortalRoute.name,
          );
        },
      ));
    }

    if (shouldShowAlertDialog) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Utils.showAlertDialog(
          context: context,
          barrierDismissible: false,
          builder: (_) => AdaptiveAlertdialog(
            title: 'Clearance Fee',
            width: 0.7.w,
            titleTextStyle: Utils.platform_(cupertino: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
            titleHeight: App.platform.cupertino(0.035.h),
            body: [
              AdaptiveText.rich(
                TextSpan(children: [
                  const TextSpan(text: 'You\'re required to pay a non-negotiable fee of '),
                  TextSpan(text: '${deal.admittanceFee}'.asCurrency(), style: const TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(
                    text: ' to participate in this private ${deal.type.fold(
                      auction: 'auction',
                      buyNow: 'sale',
                      clearance: 'auction',
                    )}.',
                  ),
                ]),
                minFontSize: 14,
                maxFontSize: 19,
                fontSize: 17.sp,
                height: 1.5,
                fontWeight: FontWeight.w500,
                textAlign: TextAlign.center,
                isDefault: App.platform.isIOS,
              ),
              //
              0.02.verticalh,
              //
              Center(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: 5.br,
                    color: Palette.secondary.withOpacity(0.2),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: App.sidePadding, vertical: App.sidePadding * 0.5),
                    child: GestureDetector(
                      onTap: App.platform.material(() => UrlLauncher.url(Const.privacyPolicyUrl)),
                      child: AdaptiveText.rich(
                        TextSpan(children: [
                          TextSpan(text: 'FEE COVERS ALL CLEARANCE SALES'.toUpperCase()),
                          if (deal.type.isBuyNow) const TextSpan(text: '. '),
                          if (deal.type.isAuction) TextSpan(text: ' ON THE DAY OF AUCTION. '.toUpperCase()),
                          //
                          if (!App.platform.isIOS)
                            TextSpan(
                              text: 'Learn More',
                              style: TextStyle(
                                fontSize: 16.sp,
                                color: Palette.primary,
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                        ]),
                        minFontSize: 14,
                        fontSize: 15.sp,
                        textColor: Palette.secondaryColor.shade700,
                        textColorDark: Palette.secondary,
                        fontWeight: FontWeight.w700,
                        textAlign: TextAlign.center,
                        letterSpacing: Utils.letterSpacing,
                        isDefault: App.platform.isIOS,
                      ),
                    ),
                  ),
                ),
              ),
            ],
            leadingButtonConfig: (d) => d.copyWith(
              text: 'No, Cancel',
              visible: App.platform.cupertino(true) ?? false,
              isDestructiveAction: true,
              splashColor: Palette.destructiveRed.withOpacity(0.2),
              highlightColor: Palette.destructiveRed.withOpacity(0.09),
            ),
            trailingButtonConfig: (d) => d.copyWith(
              autoPop: false,
              width: 0.4.w,
              text: 'Continue',
              isDefaultAction: true,
              onPressed: continueAction,
              cupertinoActions: [
                CupertinoDialogAction(
                  textStyle: const TextStyle(decoration: TextDecoration.underline),
                  isDefaultAction: true,
                  onPressed: () => UrlLauncher.url(Const.privacyPolicyUrl),
                  child: const Text('Learn More', style: TextStyle(fontWeight: FontWeight.w300)),
                ),
                //
                CupertinoDialogAction(
                  textStyle: const TextStyle(fontWeight: FontWeight.bold),
                  isDefaultAction: true,
                  onPressed: () => navigator.pop().then((_) => continueAction()),
                  child: const Text('Continue'),
                ),
                //
                CupertinoDialogAction(
                  isDestructiveAction: true,
                  onPressed: navigator.pop,
                  child: const Text('Close'),
                ),
              ],
            ),
          ),
        );
      });
    }
  }
}

class _DealDetailScreenState extends State<DealDetailScreen> with DealDetailScreenKeyMixin {
  late DealCubit _cubit;

  @override
  void initState() {
    _cubit = context.read<DealCubit>()..resetDealDetailScreen(widget.deal);
    enqueue(() => _cubit.showDeal(widget.deal));

    // settings.runAllTours(context, keys);

    if (context.read<AuthWatcherCubit>().isAuthenticated) enqueue(() => _cubit.bidHistory(widget.deal, perPage: 20));
    super.initState();
  }

  @override
  void dispose() {
    _cubit.resetDealDetailScreen(null);
    super.dispose();
  }

  String _currentOrClosedBid(BuildContext context, Deal deal) {
    return deal.type.fold(
      auction: (() {
        if (deal.isClosed) return 'Closed bid';
        return 'Current Bid';
      })(),
      buyNow: 'Sale Price',
      clearance: '',
    );
  }

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      adaptiveToolbar: AdaptiveToolbar(
        title: widget.deal.type.maybeWhen(auction: () => 'Live Auction', buyNow: () => 'For Sale', orElse: () => ''),
        centerTitle: false,
        cupertinoTitleAlignment: Alignment.centerLeft,
        cupertinoLeadingColor: Palette.primary,
        actions: [
          BlocSelector<DealCubit, DealState, bool>(
            bloc: context.read<DealCubit>(),
            selector: (s) => s.isLoading,
            builder: (c, isLoading) => AnimatedVisibility(
              visible: isLoading,
              child: Padding(
                padding: EdgeInsets.only(right: App.sidePadding, left: 4),
                child: const Center(child: CircularProgressBar.adaptive(width: 20, height: 20, strokeWidth: 2)),
              ),
            ),
          ),
          //
          BlocBuilder<DealCubit, DealState>(
            bloc: context.read<DealCubit>(),
            builder: (c, s) => Visibility(
              visible: s.currentDeal != null,
              child: UnlistItemWidget(s.currentDeal, onUnlist: widget.onUnlist),
            ),
          ),
        ],
      ),
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        physics: Utils.physics,
        slivers: [
          const SliverToBoxAdapter(child: _DealDetailCarousel()).sliverSafeTop,
          //
          BlocSelector<DealCubit, DealState, Deal?>(
            selector: (d) => d.currentDeal,
            builder: (c, deal) => MultiSliver(
              children: [
                SliverPadding(
                  padding: EdgeInsets.symmetric(horizontal: App.sidePadding, vertical: 0.02.h),
                  sliver: SliverToBoxAdapter(
                    child: AdaptiveText(
                      '${deal?.product?.name}',
                      maxLines: 3,
                      softWrap: true,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                      textAlign: TextAlign.left,
                      letterSpacing: Utils.letterSpacing,
                    ),
                  ),
                ).sliverSafeArea(onlyIf: deal != null && deal.product!.photos.isEmpty(), top: true),
                //
                if (deal != null)
                  SliverPadding(
                    padding: EdgeInsets.symmetric(horizontal: App.sidePadding).copyWith(bottom: 0.02.h),
                    sliver: SliverToBoxAdapter(child: _DealDetailBasicInfo(deal)),
                  ).sliverSafeArea(onlyIf: deal.product == null || deal.product!.photos.isEmpty(), top: true),
              ],
            ),
          ),
          //
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: App.sidePadding).copyWith(bottom: 0.02.h),
            sliver: SliverList(
              delegate: SliverChildListDelegate.fixed([
                BlocSelector<DealCubit, DealState, Deal>(
                  selector: (d) => d.currentDeal!,
                  builder: (c, deal) => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AdaptiveText.rich(
                            TextSpan(children: [
                              TextSpan(
                                text: deal.country?.symbolPadded,
                                style: TextStyle(fontSize: 26.sp, color: Palette.accentGreen, fontWeight: FontWeight.bold),
                              ),
                              TextSpan(text: '${deal.lastPriceOffered.getExact()}'.asCurrency(symbol: false)),
                            ]),
                            maxLines: 1,
                            fontSize: 25.sp,
                            fontWeight: FontWeight.w700,
                            softWrap: false,
                            letterSpacing: Utils.letterSpacing,
                          ),
                          //
                          AdaptiveText(
                            _currentOrClosedBid(c, deal),
                            maxLines: 1,
                            softWrap: true,
                            fontSize: 16.sp,
                            textColor: const Color(0xff989DB3),
                            fontWeight: FontWeight.w400,
                          ),
                        ],
                      ),
                      //
                      if (1 != 1)
                        if (deal.type == DealType.auction)
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              AdaptiveText(
                                '34 Bids',
                                maxLines: 1,
                                softWrap: true,
                                fontSize: 18.sp,
                                textColor: Palette.primary,
                                fontWeight: FontWeight.w600,
                              ),
                              //
                              AdaptiveText(
                                'Bid History',
                                maxLines: 1,
                                softWrap: true,
                                fontSize: 16.sp,
                                textColor: const Color(0xff989DB3),
                                fontWeight: FontWeight.w400,
                              ),
                            ],
                          ),
                    ],
                  ),
                ),
                //
                BlocSelector<DealCubit, DealState, Deal>(
                  selector: (d) => d.currentDeal!,
                  builder: (c, deal) => Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (deal.type != DealType.auction) 0.02.verticalh,
                      //
                      if (deal.type == DealType.auction) ...[
                        const Divider(thickness: 1.5, height: 35),
                        //
                        _DealDetailAmountControls(deal),
                        //
                        0.01.verticalh,
                        //
                        AnimatedVisibility(
                          visible: deal.product?.category?.percentageIncrease.getOrNull != null &&
                              deal.product!.category!.percentageIncrease.isValid,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Center(
                                child: AdaptiveText.rich(
                                  TextSpan(children: [
                                    const TextSpan(text: 'Increment rate is '),
                                    TextSpan(text: '${deal.increament}'.asCurrency()),
                                  ]),
                                  maxLines: 1,
                                  softWrap: true,
                                  fontSize: 16.sp,
                                  textColor: const Color(0xff989DB3),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              //
                              0.025.verticalh,
                            ],
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
                //
                const _DealDetailCTA(),
                //
                0.02.verticalh,
                //
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AdaptiveText(
                        'Breakdown',
                        maxLines: 1,
                        softWrap: true,
                        fontSize: 17.sp,
                        textColor: const Color(0xff989DB3),
                        fontWeight: FontWeight.w400,
                      ),
                      //
                      0.01.horizontalw,
                      //
                      RotatedBox(
                        quarterTurns: 1,
                        child: Icon(
                          Icons.chevron_right,
                          color: App.resolveColor(Colors.grey, dark: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ),
          //
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: App.sidePadding).copyWith(bottom: 0.01.h),
            sliver: BlocSelector<DealCubit, DealState, Deal>(
              selector: (d) => d.currentDeal!,
              builder: (c, deal) => SliverList(
                delegate: SliverChildListDelegate.fixed([
                  if (deal.product != null) ...[
                    ProductDetailsExpandable(deal.product!, biddingType: deal.biddingType),
                    //
                    0.01.verticalh,
                  ],
                  //
                  if (deal.product != null && deal.product!.shippingInformation != null) ...[
                    ShippingDetailsExpandable(deal.product!.shippingInformation!),
                    //
                    0.01.verticalh,
                  ],
                  // VendorReviewsExpandable(widget.product),
                ]),
              ),
            ),
          ),
          //
          SliverToBoxAdapter(
            child: BlocSelector<DealCubit, DealState, bool>(
              selector: (s) => s.isFetchingBidHistory,
              builder: (c, isLoading) => Visibility(
                visible: isLoading,
                child: const Center(
                  child: CircularProgressBar.adaptive(
                    width: 24,
                    height: 24,
                    strokeWidth: 1.5,
                  ),
                ),
              ),
            ),
          ),
          //
          SliverToBoxAdapter(
            child: BlocSelector<DealCubit, DealState, DealBidHistory>(
              selector: (s) => s.biddingHistory,
              builder: (c, history) => Visibility(
                visible: history.users.isNotEmpty(),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: App.resolveColor(
                        Palette.surfaceOverlay,
                        dark: Palette.backgroundColorDark.shade900.withOpacity(0.4),
                      ),
                      borderRadius: 6.br,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: BidTimeline(
                        titles: history.users.map((u) => '${'${u.bidAmount}'.asCurrency()} - ${u.fullName}').asList(),
                        subtitles: history.users.map((u) => timeago.format(u.historyDate!.toLocal())).asList(),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ).sliverSafeBottom,
          //
          // SliverPadding(
          //   padding: EdgeInsets.symmetric(horizontal: App.sidePadding, vertical: 0.025.h),
          //   sliver: SliverToBoxAdapter(
          //     child: Material(
          //       borderRadius: const BorderRadius.all(Radius.circular(Utils.buttonRadius)),
          //       type: MaterialType.transparency,
          //       child: MediaCarousel<Product>(
          //         items: _relatedDummies.toList(),
          //         height: 0.15.h,
          //         viewportFraction: 1,
          //         enableInfiniteScroll: _list.length > 1,
          //         position: CarouselIndicatorPosition.bottom,
          //         disableCenter: false,
          //         builder: (_, i, pv, item) => Stack(
          //           children: [
          //             const Positioned.fill(
          //               child: DecoratedBox(
          //                 decoration: BoxDecoration(
          //                   borderRadius: BorderRadius.all(Radius.circular(Utils.buttonRadius)),
          //                   gradient: LinearGradient(
          //                     begin: Alignment(0.0, -1.8),
          //                     end: Alignment.bottomCenter,
          //                     colors: [
          //                       Colors.transparent,
          //                       Colors.transparent,
          //                       Colors.transparent,
          //                       Colors.transparent,
          //                       Colors.black12,
          //                       Colors.black26,
          //                       Colors.black38,
          //                     ],
          //                   ),
          //                 ),
          //               ),
          //             ),
          //             //
          //             ProductCard(item),
          //           ],
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
