library widget_shimmer.dart;

import 'package:auctionvillage/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

enum ShimmerDirectionFlow { ltr, rtl, ttb, btt }

/// A stateless widget to render WidgetShimmer.
class WidgetShimmer extends StatelessWidget {
  final double itemHeight, itemWidth;
  final BorderRadius borderRadius;
  final bool isEnabled;
  final Color? boxColor;
  final Color? shimmerBaseColor;
  final Color? shimmerHighlightColor;
  final ShimmerDirectionFlow shimmerDirection;
  final Widget? child;
  final Widget Function(BuildContext, Size)? shimmerBuilder;
  final Duration duration;
  final bool loop;

  const WidgetShimmer({
    Key? key,
    double? lineWidth,
    required this.itemHeight,
    required this.itemWidth,
    this.isEnabled = true,
    this.boxColor,
    this.shimmerBaseColor,
    this.shimmerHighlightColor,
    this.shimmerDirection = ShimmerDirectionFlow.ltr,
    this.borderRadius = const BorderRadius.all(Radius.circular(0.0)),
    this.child,
    this.shimmerBuilder,
    this.duration = const Duration(milliseconds: 1500),
    this.loop = true,
  })  : assert((shimmerBuilder == null && child != null) || (shimmerBuilder != null && child == null)),
        super(key: key);

  Color get _boxColor => boxColor ?? Colors.grey.shade400;
  Color _shimmerBaseColor(BuildContext c) =>
      shimmerBaseColor ?? App.resolveColor(Colors.grey.shade300, dark: Colors.grey.shade600, ctx: c)!;
  Color _shimmerHighlightColor(BuildContext c) =>
      shimmerHighlightColor ?? App.resolveColor(Colors.grey.shade200, dark: Colors.grey.shade500, ctx: c)!;

  Size get _size => Size(itemWidth, itemHeight);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: itemHeight,
      width: itemWidth,
      child: Stack(
        children: [
          Positioned.fill(child: shimmerBuilder?.call(context, _size) ?? child!),
          //
          Positioned.fill(
            child: ClipRRect(
              borderRadius: borderRadius,
              child: Shimmer.fromColors(
                baseColor: _shimmerBaseColor(context).withOpacity(0.9),
                highlightColor: _shimmerHighlightColor(context),
                enabled: isEnabled,
                direction: shimmerDirection.mapped,
                loop: loop ? 0 : 1,
                period: duration,
                child: DecoratedBox(
                  decoration: BoxDecoration(color: _boxColor, borderRadius: borderRadius),
                  child: SizedBox(height: _size.height, width: _size.width),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

extension on ShimmerDirectionFlow {
  ShimmerDirection get mapped {
    switch (this) {
      case ShimmerDirectionFlow.ltr:
        return ShimmerDirection.ltr;
      case ShimmerDirectionFlow.rtl:
        return ShimmerDirection.rtl;
      case ShimmerDirectionFlow.ttb:
        return ShimmerDirection.ttb;
      case ShimmerDirectionFlow.btt:
        return ShimmerDirection.btt;
    }
  }
}
