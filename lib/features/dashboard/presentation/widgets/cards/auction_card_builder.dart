library product_card_builder.dart;

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/core/presentation/index.dart';
import 'package:auctionvillage/features/auth/presentation/managers/managers.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/managers/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/collection.dart';

/// A stateless widget that renders AuctionCardBuilder.
class AuctionCardBuilder extends StatefulWidget {
  static const height = 0.47;

  final Deal deal;
  final int index;
  final VoidCallback? onUnlist;
  final bool photoExpands;

  const AuctionCardBuilder(
    this.deal, {
    super.key,
    required this.index,
    this.onUnlist,
    this.photoExpands = true,
  });

  @override
  State<AuctionCardBuilder> createState() => _AuctionCardBuilderState();
}

class _AuctionCardBuilderState extends State<AuctionCardBuilder> {
  Size? _imageSize;

  Widget _buildTimeTick(String value) => AdaptiveText(
        value,
        height: 1.3,
        maxLines: 1,
        fontSize: 13,
        fontWeight: FontWeight.normal,
      );
  Widget _buildSeparator() => const AdaptiveText(':');

  Deal get deal => widget.deal;

  User? get user => context.read<AuthWatcherCubit>().user;

  bool get isAuthenticated => context.read<AuthWatcherCubit>().isAuthenticated;

  bool disabled([bool isLoading = false]) => !isAuthenticated || (isAuthenticated && isLoading);

  Widget _buildButton(String text, {bool disabled = false, VoidCallback? onPressed}) {
    return Utils.foldTheme(
      light: () => AppOutlinedButton(
        text: text,
        expand: true,
        height: 0.05.h,
        cupertinoHeight: 0.05.h,
        borderRadius: 3.br,
        disabled: disabled,
        onPressed: onPressed,
      ),
      dark: () => AdaptiveButton(
        text: text,
        expand: true,
        materialData: (d) => d.copyWith(height: 0.05.h),
        cupertinoData: (d) => d.copyWith(height: 0.05.h),
        borderRadius: 3.br,
        disabled: disabled,
        onPressed: onPressed,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: GestureDetector(
        onTap: () => navigator.navigate(DealDetailRoute(deal: deal, onUnlist: widget.onUnlist)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 0.155.h,
              width: double.infinity,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  MeasureWidgetSize(
                    onChange: (size) => setState(() => _imageSize = size),
                    child: ImageBox.network(
                      heroTag: 'auction-${widget.index}-${deal.id.value}-${deal.product?.id.value}->${deal.product?.uniqueKey.value}',
                      photo: deal.product != null && deal.product!.photos.isNotEmpty() ? deal.product?.photos.get(0).image.getOrNull : null,
                      // borderRadius: 0.br,
                      // useDefaultRadius: false,
                      cacheHeight: _imageSize?.height.toInt(),
                      cacheWidth: _imageSize?.width.toInt(),
                      cacheOrResizeImageInFullscreen: false,
                      expandsFullscreen: widget.photoExpands,
                      progressIndicatorColor: Palette.primary,
                      progressIndicatorColorDark: Palette.primary,
                    ),
                  ),
                  //
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Material(
                        color: Colors.black.withOpacity(0.35),
                        borderRadius: 100.br,
                        child: BlocBuilder<DealCubit, DealState>(
                          builder: (c, s) => AdaptiveInkWell(
                            onTap: disabled(s.isLoading || s.isBidding) ? null : () => enqueue(c.read<DealCubit>().toggleFavorite),
                            borderRadius: 100.br,
                            child: Padding(
                              padding: const EdgeInsets.all(6),
                              child: Icon(
                                deal.hasWish ? CupertinoIcons.heart_fill : CupertinoIcons.heart,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //
            0.012.verticalh,
            //
            AdaptiveText(
              '${deal.product?.name}',
              maxLines: 2,
              minFontSize: 15,
              fontSize: 16.sp,
              height: 1.3,
              fontWeight: FontWeight.w600,
              overflow: TextOverflow.ellipsis,
            ),
            //
            if (deal.lastPriceOffered.getOrNull != null) ...[
              0.017.verticalh,
              //
              AdaptiveText(
                'Current Bid',
                maxLines: 1,
                fontSize: 15.sp,
                height: 1.3,
                fontWeight: FontWeight.w400,
                textColor: Palette.caption,
                textColorDark: Palette.caption,
              ),
              //
              AdaptiveText(
                '${deal.lastPriceOffered.getOrNull}'.asCurrency(currency: deal.country?.symbolPadded ?? '${Const.defaultCurrencyIcon} '),
                maxLines: 2,
                minFontSize: 15,
                fontSize: 18.sp,
                height: 1.6,
                fontWeight: FontWeight.w700,
              ),
            ],
            //
            ...[
              0.012.verticalh,
              //
              AdaptiveText(
                'Total Bid Count',
                maxLines: 1,
                fontSize: 15.sp,
                height: 1.3,
                fontWeight: FontWeight.w400,
                textColor: Palette.caption,
                textColorDark: Palette.caption,
              ),
              //
              AdaptiveText(
                '105 Bids',
                maxLines: 2,
                fontSize: 16.sp,
                height: 1.6,
                fontWeight: FontWeight.w500,
              ),
            ],
            //
            if (deal.endDate.getOrNull != null && !deal.isClosed) ...[
              0.011.verticalh,
              //
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(Icons.timer_outlined, color: Palette.accentGreen3, size: 20),
                    //
                    0.03.horizontalw,
                    //
                    Expanded(
                      child: CountdownWidget(
                        autostart: true,
                        showZeroTimer: true,
                        showHourRemainder: true,
                        showMinuteRemainder: true,
                        duration: deal.endDate.getOrNull!.difference(localTime),
                        tickerGroup: (days, hours, mins, secs) => Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _buildTimeTick(days),
                            if (days.isNotEmpty) _buildSeparator(),
                            //
                            _buildTimeTick(hours),
                            if (hours.isNotEmpty) _buildSeparator(),
                            //
                            _buildTimeTick(mins),
                            if (mins.isNotEmpty) _buildSeparator(),
                            //
                            _buildTimeTick(secs),
                          ],
                        ),
                        child: (_) => Utils.nothing,
                      ),
                    ),
                  ],
                ),
              ),
            ],
            //
            0.016.verticalh,
            //
            AnimatedVisibility(
              visible: !deal.isClosed,
              replacement: AdaptiveButton(
                text: 'Closed',
                expand: true,
                disabled: true,
                borderRadius: 3.br,
                backgroundColor: Palette.onSurfaceDisabled,
                materialData: (d) => d.copyWith(height: 0.05.h),
                cupertinoData: (d) => d.copyWith(height: 0.05.h),
              ),
              child: _buildButton(
                'Bid Now',
                disabled: deal.isHighestBidder(user) || deal.isLastBidder(user) || deal.isOwner(user),
                onPressed: () => navigator.navigate(DealDetailRoute(deal: deal, onUnlist: widget.onUnlist)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
