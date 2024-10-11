library shipping_details_expandable.dart;

import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';

/// A stateless widget to render ShippingDetailsExpandable.
class ShippingDetailsExpandable extends StatelessWidget {
  final ShippingInformation shipping;

  const ShippingDetailsExpandable(this.shipping, {Key? key}) : super(key: key);

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
                  'Shipping Details',
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
                    if (shipping.description.isValid) ...[
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: App.sidePadding * 0.5),
                        child: HtmlRenderer(shipping.description.getOrNull),
                      ),
                      //
                      0.01.verticalh,
                    ],
                    //
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
                      child: Row(
                        children: [
                          AdaptiveText(
                            'Available for Pickup: ',
                            maxLines: 1,
                            fontSize: 17.sp,
                            letterSpacing: Utils.letterSpacing,
                          ),
                          //
                          0.02.horizontalw,
                          //
                          AdaptiveText(
                            shipping.isPickup ? 'Yes' : 'No',
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
                    //
                    if (shipping.hasDeliverPeriod) ...[
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
                        child: Row(
                          children: [
                            AdaptiveText(
                              'Delivery Period: ',
                              maxLines: 1,
                              fontSize: 17.sp,
                              letterSpacing: Utils.letterSpacing,
                            ),
                            //
                            0.02.horizontalw,
                            //
                            AdaptiveText(
                              shipping.deliveryPeriod.getOrNull!,
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
                    VerticalSpace(height: 0.02.h),
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
