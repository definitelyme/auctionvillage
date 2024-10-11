library empty_list_widget.dart;

import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

/// A stateless widget to render EmptyListWidget.
class EmptyListWidget extends StatelessWidget with AutoRouteWrapper {
  final String? title;
  final String? subtitle;
  final double? iconSize;

  const EmptyListWidget({this.title, this.subtitle, this.iconSize, super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AppAssets.noHistory(context, size: Size.square(iconSize ?? 0.2.w)),
        //
        0.02.verticalh,
        //
        title?.let(
              (it) => AdaptiveText(
                it,
                maxLines: 1,
                minFontSize: 15,
                fontSize: 17.sp,
                fontWeight: FontWeight.w600,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
              ),
            ) ??
            Utils.nothing,
        //
        0.01.verticalh,
        //
        subtitle?.let(
              (it) => AdaptiveText(
                it,
                maxLines: 3,
                minFontSize: 14,
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
              ),
            ) ??
            Utils.nothing,
      ],
    );
  }
}
