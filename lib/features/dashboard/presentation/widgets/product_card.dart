library product_card.dart;

import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kt_dart/collection.dart';

/// A stateless widget to render ProductCard.
class ProductCard extends StatelessWidget {
  final Deal deal;
  final int index;
  final VoidCallback? onUnlist;
  final bool photoExpands;

  const ProductCard(
    this.deal, {
    super.key,
    required this.index,
    this.onUnlist,
    this.photoExpands = true,
  });

  TextSpan _currentOrClosedBid(BuildContext context, DealType type) {
    final style = TextStyle(fontSize: 14.sp, color: Colors.grey);

    return type.fold(
      auction: (() {
        if (deal.isClosed) return TextSpan(text: 'Closed bid', style: style);
        return TextSpan(text: 'current Bid', style: style);
      })(),
      buyNow: TextSpan(text: 'Total', style: style),
      clearance: TextSpan(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 0.15.h,
      child: MyHero(
        tag: null,
        type: MaterialType.transparency,
        shape: RoundedRectangleBorder(
          borderRadius: 6.br,
          side: BorderSide(
            color: App.resolveColor(const Color(0xffD8DFFF), dark: CupertinoColors.inactiveGray)!,
            width: 1,
          ),
        ),
        child: AdaptiveInkWell(
          onTap: () => navigator.navigate(DealDetailRoute(deal: deal, onUnlist: onUnlist)),
          borderRadius: 6.br,
          child: Stack(
            children: [
              Row(
                children: [
                  Flexible(
                    flex: 3,
                    child: SizedBox(
                      width: 0.14.h,
                      height: 0.13.h,
                      child: ImageBox.network(
                        // heroTag: 'deal-${deal.id.value}-${deal.product?.id.value}-$index->${deal.product?.uniqueKey.value}',
                        heroTag: 'deal-${deal.id.value}-${deal.product?.id.value}->${deal.product?.uniqueKey.value}',
                        photo:
                            deal.product != null && deal.product!.photos.isNotEmpty() ? deal.product?.photos.get(0).image.getOrNull : null,
                        fit: BoxFit.cover,
                        borderRadius: 6.br,
                        expandsFullscreen: photoExpands,
                        progressIndicatorColor: Palette.primary,
                        progressIndicatorColorDark: Palette.primary,
                      ),
                    ),
                  ),
                  //
                  Flexible(
                    flex: 5,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0.03.w, vertical: 0.013.h),
                      child: Column(
                        mainAxisAlignment: deal.type.maybeWhen(
                          auction: () => MainAxisAlignment.spaceBetween,
                          buyNow: () => MainAxisAlignment.center,
                          orElse: () => MainAxisAlignment.start,
                        ),
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                            child: AdaptiveText(
                              '${deal.product?.name.getOrEmpty}',
                              maxLines: 2,
                              fontSize: 15.sp,
                              minFontSize: 15,
                              maxFontSize: 18,
                              fontWeight: FontWeight.bold,
                              textAlign: TextAlign.left,
                              letterSpacing: Utils.labelLetterSpacing,
                            ),
                          ),
                          //
                          if (deal.type != DealType.auction) 0.02.verticalh,
                          //
                          Flexible(
                            child: AdaptiveText.rich(
                              TextSpan(children: [
                                if (deal.lastPriceOffered.getOrNull != null) ...[
                                  TextSpan(
                                    text: deal.country?.symbolPadded ?? '${Const.defaultCurrencyIcon} ',
                                    style: const TextStyle(color: Palette.accentGreen, fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text: '${deal.lastPriceOffered.getOrNull}'.asCurrency(symbol: false),
                                    style: const TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                                //
                                const TextSpan(text: '\n'),
                                //
                                _currentOrClosedBid(context, deal.type),
                              ]),
                              fontSize: 16.sp,
                              maxLines: 2,
                            ),
                          ),
                          //
                          if (deal.type == DealType.auction && !deal.isClosed) ...[
                            Divider(
                              height: 0.006.h,
                              thickness: 0.001.h,
                              color: App.platform.cupertino(
                                Utils.foldTheme(
                                  light: () => CupertinoColors.systemGrey4,
                                  dark: () => CupertinoColors.inactiveGray,
                                  context: context,
                                ),
                              ),
                            ),
                            //
                            IntrinsicHeight(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  // Flexible(
                                  //   flex: 2,
                                  //   child: AdaptiveText(
                                  //     '54 Bids',
                                  //     maxLines: 1,
                                  //     fontSize: 15.sp,
                                  //     maxFontSize: 16,
                                  //     textColor: Palette.primary,
                                  //     isDefault: true,
                                  //   ),
                                  // ),
                                  //
                                  if (deal.endDate.getOrNull != null &&
                                      localTime.millisecondsSinceEpoch < deal.endDate.getOrNull!.millisecondsSinceEpoch) ...[
                                    // VerticalDivider(width: 0.01.w, thickness: 1.5),
                                    //
                                    Flexible(
                                      flex: 2,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Flexible(child: Icon(AVIcons.clock, size: 13.sp, color: Palette.accentGreen)),
                                          //
                                          Flexible(
                                            flex: 8,
                                            child: CountdownWidget(
                                              autostart: localTime.millisecondsSinceEpoch < deal.endDate.getOrNull!.millisecondsSinceEpoch,
                                              duration: deal.endDate.getOrNull!.difference(localTime),
                                              daysBuilder: (days) => '$days days left',
                                              ticker: (tick) => Padding(
                                                padding: EdgeInsets.only(left: 0.015.w),
                                                child: AdaptiveText(
                                                  tick,
                                                  maxLines: 1,
                                                  fontSize: 16.sp,
                                                  fontWeight: FontWeight.w600,
                                                  isDefault: true,
                                                ),
                                              ),
                                              child: (fn) => Utils.nothing,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ],
                              ),
                            ),
                          ],
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              //
              if (deal.isPrivate)
                Positioned(
                  top: 4,
                  right: 4,
                  child: AppIconButton(
                    cupertinoBackgroundColor: CupertinoColors.systemGrey3,
                    backgroundColor: App.resolveColor(Colors.grey.shade200, dark: Colors.grey.shade800),
                    borderRadius: 100.br,
                    type: MaterialType.button,
                    elevation: 0,
                    height: 28,
                    width: 28,
                    cupertinoPadding: EdgeInsets.zero,
                    useMaterialDefaultPadding: false,
                    onPressed: null,
                    child: Icon(
                      Utils.platform_(material: Icons.shield, cupertino: CupertinoIcons.shield_fill),
                      size: 17,
                      color: Palette.primary,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
