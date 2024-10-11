library sliver_list_header.dart;

import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SliverListHeader extends StatelessWidget {
  final VoidCallback? onSeeAll;
  final String title;
  final bool visible;
  final EdgeInsets? padding;

  const SliverListHeader(this.title, {super.key, this.onSeeAll, this.visible = true, this.padding});

  @override
  Widget build(BuildContext context) {
    return SliverVisibility(
      visible: visible,
      sliver: SliverPadding(
        padding: padding ?? EdgeInsets.symmetric(horizontal: App.sidePadding, vertical: 0.015.h).copyWith(right: App.sidePadding - 8),
        sliver: SliverToBoxAdapter(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AdaptiveText(
                title,
                maxLines: 2,
                minFontSize: 15,
                fontSize: 17,
                fontWeight: FontWeight.w600,
                textAlign: TextAlign.left,
                overflow: TextOverflow.ellipsis,
              ),
              //
              if (onSeeAll != null)
                Material(
                  type: MaterialType.transparency,
                  borderRadius: 5.br,
                  child: AdaptiveInkWell(
                    borderRadius: 5.br,
                    onTap: onSeeAll,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      child: AdaptiveText('See All'),
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
