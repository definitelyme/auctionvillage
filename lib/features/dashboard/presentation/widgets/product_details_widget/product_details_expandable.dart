library product_details_expandable.dart;

import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';

/// A stateless widget to render ProductDetailsExpandable.
class ProductDetailsExpandable extends StatelessWidget {
  final Product product;
  final BiddingType? biddingType;

  const ProductDetailsExpandable(this.product, {Key? key, this.biddingType}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: App.resolveColor(Palette.neutralF4, dark: Palette.cardColorDark),
      borderRadius: BorderRadius.circular(6),
      child: ExpandableTheme(
        data: ExpandableThemeData(
          hasIcon: true,
          tapHeaderToExpand: true,
          tapBodyToCollapse: false,
          useInkWell: Utils.platform_(material: true, cupertino: false),
          headerAlignment: ExpandablePanelHeaderAlignment.center,
          iconColor: App.platform.cupertino(App.resolveColor(Utils.platform_(cupertino: Colors.black87), dark: Colors.white70)),
        ),
        child: ExpandableNotifier(
          // initialExpanded: true,
          child: ScrollOnExpand(
            child: ExpandablePanel(
              header: AdaptiveListTile(
                dense: true,
                material: true,
                enabled: true,
                contentPadding: EdgeInsets.symmetric(horizontal: App.sidePadding),
                title: AdaptiveText(
                  'Product Details',
                  maxLines: 1,
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w600,
                  letterSpacing: Utils.letterSpacing,
                ),
              ),
              collapsed: Utils.nothing,
              expanded: Material(
                color: App.resolveColor(Palette.cardColorLight, dark: Palette.backgroundColorDark.shade700),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    0.01.verticalh,
                    //
                    if (product.description.isValid) ...[
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: App.sidePadding * 0.5),
                        child: HtmlRenderer(product.description.getOrNull),
                      ),
                      //
                      0.01.verticalh,
                    ],
                    //
                    if (product.brandInformation?.brand.getOrNull != null && product.brandInformation!.brand.isValid) ...[
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
                        child: Row(
                          children: [
                            AdaptiveText(
                              'Brand: ',
                              maxLines: 1,
                              fontSize: 17.sp,
                              letterSpacing: Utils.letterSpacing,
                            ),
                            //
                            0.02.horizontalw,
                            //
                            AdaptiveText(
                              product.brandInformation!.brand.getOrNull!,
                              maxLines: 1,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              letterSpacing: Utils.letterSpacing,
                            ),
                          ],
                        ),
                      ),
                      //
                      0.008.verticalh,
                    ],
                    //
                    if (product.brandInformation?.brandModel.getOrNull != null && product.brandInformation!.brandModel.isValid) ...[
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
                        child: Row(
                          children: [
                            AdaptiveText(
                              'Brand Model: ',
                              maxLines: 1,
                              fontSize: 17.sp,
                              letterSpacing: Utils.letterSpacing,
                            ),
                            //
                            0.02.horizontalw,
                            //
                            AdaptiveText(
                              product.brandInformation!.brandModel.getOrNull!,
                              maxLines: 1,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              letterSpacing: Utils.letterSpacing,
                            ),
                          ],
                        ),
                      ),
                      //
                      0.008.verticalh,
                    ],
                    //
                    if (product.brandInformation?.condition != null) ...[
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
                        child: Row(
                          children: [
                            AdaptiveText(
                              'Condition: ',
                              maxLines: 1,
                              fontSize: 17.sp,
                              letterSpacing: Utils.letterSpacing,
                            ),
                            //
                            0.02.horizontalw,
                            //
                            AdaptiveText(
                              product.brandInformation!.condition.formatted,
                              maxLines: 1,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              letterSpacing: Utils.letterSpacing,
                            ),
                          ],
                        ),
                      ),
                      //
                      0.008.verticalh,
                    ],
                    //
                    if (biddingType != null) ...[
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
                        child: Row(
                          children: [
                            AdaptiveText(
                              'Location: ',
                              maxLines: 1,
                              fontSize: 17.sp,
                              letterSpacing: Utils.letterSpacing,
                            ),
                            //
                            0.02.horizontalw,
                            //
                            AdaptiveText(
                              '${biddingType?.formatted}',
                              maxLines: 1,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              letterSpacing: Utils.letterSpacing,
                            ),
                          ],
                        ),
                      ),
                      //
                      0.008.verticalh,
                    ],
                    //
                    if (product.brandInformation != null) ...[
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
                        child: Row(
                          children: [
                            AdaptiveText(
                              'Warranty: ',
                              maxLines: 1,
                              fontSize: 17.sp,
                              letterSpacing: Utils.letterSpacing,
                            ),
                            //
                            0.02.horizontalw,
                            //
                            if (product.brandInformation!.hasWarranty)
                              AdaptiveText(
                                product.brandInformation!.warranty.getOrNull!,
                                maxLines: 1,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                                letterSpacing: Utils.letterSpacing,
                              ),
                            //
                            if (!product.brandInformation!.hasWarranty)
                              AdaptiveText(
                                'No',
                                maxLines: 1,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                                letterSpacing: Utils.letterSpacing,
                              ),
                          ],
                        ),
                      ),
                      //
                      0.008.verticalh,
                    ],
                    //
                    if (product.brandInformation != null) ...[
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
                        child: Row(
                          children: [
                            AdaptiveText(
                              'Repair History: ',
                              maxLines: 1,
                              fontSize: 17.sp,
                              letterSpacing: Utils.letterSpacing,
                            ),
                            //
                            0.02.horizontalw,
                            //
                            AdaptiveText(
                              product.brandInformation?.hasRepairHistory == true ? 'Yes' : 'No',
                              maxLines: 1,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              letterSpacing: Utils.letterSpacing,
                            ),
                          ],
                        ),
                      ),
                      //
                      VerticalSpace(height: 0.02.h),
                    ],
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
