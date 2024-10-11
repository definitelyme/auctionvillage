library clearance_card_builder.dart;

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

/// A stateless widget that renders ClearanceCardBuilder.
class ClearanceCardBuilder extends StatefulWidget {
  final Deal deal;
  final int index;
  final int size;
  final VoidCallback? onUnlist;
  final bool photoExpands;

  const ClearanceCardBuilder(
    this.deal, {
    super.key,
    required this.index,
    required this.size,
    this.onUnlist,
    this.photoExpands = true,
  });

  @override
  State<ClearanceCardBuilder> createState() => _ClearanceCardBuilderState();
}

class _ClearanceCardBuilderState extends State<ClearanceCardBuilder> {
  Size? _imageSize;

  Widget _buildTimeTick(String value) => AdaptiveText(
        value,
        height: 1.3,
        maxLines: 1,
        fontSize: 13,
        fontWeight: FontWeight.normal,
      );
  Widget _buildSeparator() => const AdaptiveText(':');

  User? get user => context.read<AuthWatcherCubit>().user;

  Deal get deal => widget.deal;

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
    return Padding(
      padding: EdgeInsets.only(right: widget.index + 1 == widget.size ? 0 : 10),
      child: SizedBox(
        width: 0.85.w,
        height: double.infinity,
        child: Row(
          children: [
            SizedBox(
              width: 0.33.w,
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
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //
                        AdaptiveText(
                          '${deal.product?.name}',
                          maxLines: 2,
                          minFontSize: 15,
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w600,
                          overflow: TextOverflow.ellipsis,
                        ),
                        //
                      ],
                    ),
                    //
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AdaptiveText(
                                'Current Bid',
                                maxLines: 1,
                                minFontSize: 14,
                                fontSize: 14,
                                height: 1.3,
                                isDefault: true,
                                fontWeight: FontWeight.w400,
                                textColor: Palette.caption,
                                textColorDark: Palette.caption,
                              ),
                              //
                              AdaptiveText(
                                '${deal.lastPriceOffered.getOrNull}'
                                    .asCurrency(currency: deal.country?.symbolPadded ?? '${Const.defaultCurrencyIcon} '),
                                maxLines: 2,
                                minFontSize: 15,
                                fontSize: 16.sp,
                                height: 1.6,
                                fontWeight: FontWeight.w600,
                              ),
                            ],
                          ),
                        ),
                        //
                        10.horizontal,
                        //
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AdaptiveText(
                                'Total Bid',
                                maxLines: 1,
                                minFontSize: 14,
                                fontSize: 14,
                                height: 1.3,
                                isDefault: true,
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
                          ),
                        ),
                      ],
                    ),
                    //
                    Row(
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
            ),
          ],
        ),
      ),
    );
  }
}
