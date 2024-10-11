library up_down_indicator.dart;

import 'dart:math' as math;

import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

typedef _IOSPreviewActions = List<AdaptiveContextMenuItem> Function(BuildContext);

typedef _AndroidPopupActions = List<AdaptivePopupBottomMenuItem> Function(BuildContext);

enum IndicatorType {
  up,
  down;

  T when<T>({
    required T up,
    required T down,
  }) {
    switch (this) {
      case IndicatorType.up:
        return up;
      case IndicatorType.down:
        return down;
    }
  }
}

/// A stateless widget to render UpDownIndicator.
class UpDownIndicator extends StatelessWidget {
  final IndicatorType _type;

  final _AndroidPopupActions? androidActions;
  final String? asset;
  final _IOSPreviewActions? cupertinoActions;
  final String? description;
  final Color? indicatorBgColor;
  final Color? indicatorColor;
  final VoidCallback? onPressed;
  final int? quarterTurns;
  final bool showIndicators;
  final String? value;

  const UpDownIndicator._(
    this._type,
    this.androidActions,
    this.asset,
    this.cupertinoActions,
    this.description,
    this.indicatorBgColor,
    this.indicatorColor,
    this.onPressed,
    this.quarterTurns,
    this.showIndicators,
    this.value,
  );

  const UpDownIndicator.down({
    _AndroidPopupActions? popupActions,
    String? asset,
    _IOSPreviewActions? previewActions,
    String? description,
    Color? indicatorBgColor,
    Color? indicatorColor,
    VoidCallback? onPressed,
    int? quarterTurns,
    bool showIndicators = true,
    String? value,
  }) : this._(
          IndicatorType.down,
          popupActions,
          asset,
          previewActions,
          description,
          indicatorBgColor,
          indicatorColor,
          onPressed,
          quarterTurns,
          showIndicators,
          value,
        );

  const UpDownIndicator.up({
    _AndroidPopupActions? popupActions,
    String? asset,
    _IOSPreviewActions? previewActions,
    String? description,
    Color? indicatorBgColor,
    Color? indicatorColor,
    VoidCallback? onPressed,
    int? quarterTurns,
    bool showIndicators = true,
    String? value,
  }) : this._(
          IndicatorType.up,
          popupActions,
          asset,
          previewActions,
          description,
          indicatorBgColor,
          indicatorColor,
          onPressed,
          quarterTurns,
          showIndicators,
          value,
        );

  Color get _indicatorBgColor => indicatorBgColor ?? _indicatorColor.withOpacity(0.3);
  Color get _indicatorColor => indicatorColor ?? _type.when(up: const Color(0xff91C73C), down: const Color(0xffC7513C));

  Widget _bootstrap(BuildContext context, {bool preview = false}) {
    final pad = 0.06.w;

    return AdaptiveInkWell(
      onTap: onPressed,
      borderRadius: 5.br,
      child: Padding(
        padding: EdgeInsets.all(pad).copyWith(left: showIndicators ? 0 : pad),
        child: Row(
          children: [
            if (showIndicators) ...[
              pad.horizontal,
              //
              DecoratedBox(
                decoration: BoxDecoration(
                  color: _indicatorBgColor,
                  borderRadius: const BorderRadius.all(Radius.circular(100)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: RotatedBox(
                    quarterTurns: quarterTurns ?? (_type == IndicatorType.down ? 0 : 3),
                    child: SvgPicture.asset(
                      asset ?? AssetsSvgsDashboard.icDownTrendSVG,
                      color: _indicatorColor,
                      width: 30,
                      // height: _type == IndicatorType.down ? 20 : 30,
                      height: 30,
                    ),
                  ),
                ),
              ),
              //
              pad.horizontal,
            ],
            //
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: AdaptiveText(
                      '$value',
                      maxLines: 1,
                      minFontSize: 13,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      textAlign: TextAlign.left,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  //
                  // 0.003.verticalh,
                  // //
                  Flexible(
                    child: AdaptiveText(
                      '$description',
                      maxLines: preview ? null : 1,
                      minFontSize: 16,
                      fontSize: 17.sp,
                      maxFontSize: 17,
                      fontWeight: FontWeight.w600,
                      textAlign: TextAlign.left,
                      overflow: preview ? null : TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _previewBuilder(BuildContext context) {
    return Material(
      color: Palette.background,
      borderRadius: 8.br,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: _bootstrap(context, preview: true),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      shape: RoundedRectangleBorder(
        borderRadius: 5.br,
        side: const BorderSide(color: Color(0xffE7E7E7)),
      ),
      child: Utils.platform_(
        cupertino: cupertinoActions == null
            ? _bootstrap(context)
            : AdaptiveContextMenu(
                previewBuilder: (_, __, ___) => _previewBuilder(_),
                actions: cupertinoActions!,
                child: _bootstrap(context),
              ),
        material: (() {
          if (App.platform.isAndroid && androidActions != null && androidActions?.call(context).isNotEmpty == true)
            return AdaptivePopupBottomMenu(
              items: androidActions!(context),
              borderRadius: 5.br,
              child: _bootstrap(context),
            );
          //
          return _bootstrap(context);
        })(),
      )!,
    );
  }
}
