// ignore_for_file: use_key_in_widget_constructors, annotate_overrides, overridden_fields

library tour_guide.dart;

import 'package:auctionvillage/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:showcaseview/showcaseview.dart';

enum _Type {
  normal,
  widget;

  T when<T>({required T normal, required T widget}) {
    switch (this) {
      case _Type.normal:
        return normal;
      case _Type.widget:
        return widget;
    }
  }
}

/// A stateless widget to render TourGuide.
class TourGuide extends StatelessWidget {
  final ShowcaseKey _key;

  final Widget child;
  final double height;
  final double width;
  final String? title;
  final TextStyle? titleStyle;
  final String? description;
  final TextStyle? descriptionStyle;
  final VoidCallback? onTargetClick;
  final VoidCallback? onToolTipClick;
  final VoidCallback? onTargetLongPress;
  final bool showArrow;
  final bool? disposeOnTap;
  final _Type _type;
  final WidgetBuilder? builder;
  final ShapeBorder shape;
  final EdgeInsets tooltipPadding;
  final EdgeInsets targetPadding;
  final Color backgroundColor;
  final BorderRadius? targetBorderRadius;
  final bool? disableAnimation;

  /// Useful when you have a list of children
  /// and only need this widget on a single item.
  final bool render;

  const TourGuide({
    required ShowcaseKey key,
    required this.child,
    this.title,
    this.titleStyle,
    this.description,
    this.descriptionStyle,
    this.onTargetClick,
    this.onToolTipClick,
    this.onTargetLongPress,
    this.showArrow = true,
    this.disposeOnTap,
    this.render = true,
    this.shape = const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
    this.targetBorderRadius,
    this.disableAnimation,
    this.backgroundColor = Colors.white,
    this.tooltipPadding = const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
    this.targetPadding = EdgeInsets.zero,
  })  : _key = key,
        height = double.infinity,
        width = double.infinity,
        builder = null,
        _type = _Type.normal;

  const TourGuide.widget({
    required ShowcaseKey key,
    required this.child,
    required this.height,
    required this.width,
    required WidgetBuilder this.builder,
    this.title,
    this.titleStyle,
    this.description,
    this.descriptionStyle,
    this.onTargetClick,
    this.onTargetLongPress,
    this.disposeOnTap,
    this.render = true,
    this.shape = const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
    this.targetBorderRadius,
    this.disableAnimation,
    this.backgroundColor = Colors.white,
    this.tooltipPadding = const EdgeInsets.symmetric(vertical: 8),
    this.targetPadding = EdgeInsets.zero,
  })  : _key = key,
        onToolTipClick = null,
        showArrow = true,
        _type = _Type.widget;

  TextStyle get _titleTextStyle => TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold).merge(titleStyle);

  @override
  Widget build(BuildContext context) {
    return !render
        ? child
        : _type.when(
            normal: Showcase(
              key: _key.key,
              title: title,
              titleTextStyle: _titleTextStyle,
              description: description,
              descTextStyle: descriptionStyle,
              onTargetClick: onTargetClick,
              onTargetLongPress: onTargetLongPress,
              showArrow: showArrow,
              onToolTipClick: onToolTipClick ?? onTargetClick,
              disposeOnTap: onTargetClick == null ? null : (disposeOnTap == null ? false : true),
              targetShapeBorder: shape,
              tooltipPadding: tooltipPadding,
              targetPadding: targetPadding,
              targetBorderRadius: targetBorderRadius,
              tooltipBackgroundColor: backgroundColor,
              disableMovingAnimation: disableAnimation,
              child: child,
            ),
            widget: Showcase.withWidget(
              key: _key.key,
              onTargetClick: onTargetClick,
              onTargetLongPress: onTargetLongPress,
              disposeOnTap: onTargetClick == null ? null : (disposeOnTap == null ? false : true),
              container: builder?.call(context),
              height: height,
              width: width,
              targetPadding: targetPadding,
              targetBorderRadius: targetBorderRadius,
              targetShapeBorder: shape,
              disableMovingAnimation: disableAnimation,
              child: child,
            ),
          );
  }
}
