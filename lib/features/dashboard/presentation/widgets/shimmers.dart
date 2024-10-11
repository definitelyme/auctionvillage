library shimmers.dart;

import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:flutter/material.dart';

/// A stateless widget that renders BuyNowCardShimmer.
class BuyNowCardShimmer extends StatelessWidget {
  static const int count = 4;

  const BuyNowCardShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return WidgetShimmer(
      itemHeight: double.infinity,
      itemWidth: double.infinity,
      shimmerBuilder: (_, size) => Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image
              ShimmerSkeleton(
                height: 0.16.h,
                width: double.infinity,
                radius: 0.br,
                padding: EdgeInsets.zero,
                color: App.resolveColor(Colors.grey.shade500, dark: Colors.grey.shade700),
              ),
              //
              0.023.verticalh,
              //
              // Title
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    // Title (First Line)
                    ShimmerSkeleton(
                      height: 9,
                      width: double.infinity,
                      radius: 0.br,
                      padding: EdgeInsets.zero,
                      color: App.resolveColor(Colors.grey.shade500, dark: Colors.grey.shade700),
                    ),
                    //
                    0.007.verticalh,
                    // Title (Second Line)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25).copyWith(left: 0),
                      child: ShimmerSkeleton(
                        height: 9,
                        width: double.infinity,
                        radius: 0.br,
                        padding: EdgeInsets.zero,
                        color: App.resolveColor(Colors.grey.shade500, dark: Colors.grey.shade700),
                      ),
                    ),
                  ],
                ),
              ),
              //
              0.02.verticalh,
              // Current Bit (Amount)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 90),
                    child: ShimmerSkeleton(
                      height: 8,
                      width: double.infinity,
                      radius: 0.br,
                      padding: EdgeInsets.zero,
                      color: App.resolveColor(Colors.grey.shade500, dark: Colors.grey.shade700),
                    ),
                  ),
                  //
                  0.01.verticalh,
                  // Amount
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 80),
                    child: ShimmerSkeleton(
                      height: 15,
                      width: double.infinity,
                      radius: 0.br,
                      padding: EdgeInsets.zero,
                      color: App.resolveColor(Colors.grey.shade500, dark: Colors.grey.shade700),
                    ),
                  ),
                ],
              ),
              //
              0.02.verticalh,
              // Vendor
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 80),
                    child: ShimmerSkeleton(
                      height: 8,
                      width: double.infinity,
                      radius: 0.br,
                      padding: EdgeInsets.zero,
                      color: App.resolveColor(Colors.grey.shade500, dark: Colors.grey.shade700),
                    ),
                  ),
                  //
                  0.01.verticalh,
                  // Vendor (Name)
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 60),
                    child: ShimmerSkeleton(
                      height: 15,
                      width: double.infinity,
                      radius: 0.br,
                      padding: EdgeInsets.zero,
                      color: App.resolveColor(Colors.grey.shade500, dark: Colors.grey.shade700),
                    ),
                  ),
                ],
              ),
            ],
          ),
          // Button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10).copyWith(bottom: 10),
            child: ShimmerSkeleton(
              height: 35,
              width: double.infinity,
              radius: 0.br,
              padding: EdgeInsets.zero,
              color: App.resolveColor(Colors.grey.shade500, dark: Colors.grey.shade700),
            ),
          ),
        ],
      ),
    );
  }
}

class LiveAuctionCardShimmer extends StatelessWidget {
  static const int count = 2;

  const LiveAuctionCardShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return WidgetShimmer(
      itemHeight: double.infinity,
      itemWidth: double.infinity,
      shimmerBuilder: (_, size) => Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image
              ShimmerSkeleton(
                height: 0.16.h,
                width: double.infinity,
                radius: 0.br,
                padding: EdgeInsets.zero,
                color: App.resolveColor(Colors.grey.shade500, dark: Colors.grey.shade700),
              ),
              //
              0.018.verticalh,
              //
              // Title
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    // Title (First Line)
                    ShimmerSkeleton(
                      height: 9,
                      width: double.infinity,
                      radius: 0.br,
                      padding: EdgeInsets.zero,
                      color: App.resolveColor(Colors.grey.shade500, dark: Colors.grey.shade700),
                    ),
                    //
                    0.007.verticalh,
                    // Title (Second Line)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25).copyWith(left: 0),
                      child: ShimmerSkeleton(
                        height: 9,
                        width: double.infinity,
                        radius: 0.br,
                        padding: EdgeInsets.zero,
                        color: App.resolveColor(Colors.grey.shade500, dark: Colors.grey.shade700),
                      ),
                    ),
                  ],
                ),
              ),
              //
              0.02.verticalh,
              // Current Bit (Amount)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 90),
                    child: ShimmerSkeleton(
                      height: 8,
                      width: double.infinity,
                      radius: 0.br,
                      padding: EdgeInsets.zero,
                      color: App.resolveColor(Colors.grey.shade500, dark: Colors.grey.shade700),
                    ),
                  ),
                  //
                  0.01.verticalh,
                  // Amount
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 80),
                    child: ShimmerSkeleton(
                      height: 15,
                      width: double.infinity,
                      radius: 0.br,
                      padding: EdgeInsets.zero,
                      color: App.resolveColor(Colors.grey.shade500, dark: Colors.grey.shade700),
                    ),
                  ),
                ],
              ),
              //
              0.015.verticalh,
              // Bit Count
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 100),
                child: ShimmerSkeleton(
                  height: 27,
                  width: double.infinity,
                  radius: 0.br,
                  padding: EdgeInsets.zero,
                  color: App.resolveColor(Colors.grey.shade500, dark: Colors.grey.shade700),
                ),
              ),
            ],
          ),
          // Auction Duration (Countdowm)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                4,
                (_) => ShimmerSkeleton(
                  height: 17,
                  width: 27,
                  radius: 0.br,
                  padding: EdgeInsets.zero,
                  color: App.resolveColor(Colors.grey.shade500, dark: Colors.grey.shade700),
                ),
              ),
            ),
          ),
          // Button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10).copyWith(bottom: 10),
            child: ShimmerSkeleton(
              height: 35,
              width: double.infinity,
              radius: 3.br,
              padding: EdgeInsets.zero,
              color: App.resolveColor(Colors.grey.shade500, dark: Colors.grey.shade700),
            ),
          ),
        ],
      ),
    );
  }
}

/// A stateless widget that renders ClearanceCardShimmer.
class ClearanceCardShimmer extends StatelessWidget {
  static const int count = 2;

  final int index;

  const ClearanceCardShimmer({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: index + 1 == count ? 0 : 10),
      child: WidgetShimmer(
        itemHeight: double.infinity,
        itemWidth: 0.85.w,
        shimmerBuilder: (_, size) => Row(
          children: [
            // Image
            Stack(
              children: [
                ShimmerSkeleton(
                  height: double.infinity,
                  width: 0.33.w,
                  radius: 0.br,
                  padding: EdgeInsets.zero,
                  color: App.resolveColor(Colors.grey.shade500, dark: Colors.grey.shade700),
                ),
                // Fovourite button
                Positioned(
                  top: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: ShimmerSkeleton(
                      height: 32,
                      width: 32,
                      radius: 100.br,
                      color: App.resolveColor(Colors.grey.shade900, dark: Colors.grey.shade700),
                    ),
                  ),
                ),
              ],
            ),
            //
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Title
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Title (First Line)
                        ShimmerSkeleton(
                          height: 12,
                          width: double.infinity,
                          radius: 0.br,
                          padding: EdgeInsets.zero,
                          color: App.resolveColor(Colors.grey.shade500, dark: Colors.grey.shade700),
                        ),
                        //
                        0.007.verticalh,
                        //
                        // Title (Second Line)
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 50).copyWith(left: 0),
                          child: ShimmerSkeleton(
                            height: 12,
                            width: double.infinity,
                            radius: 0.br,
                            padding: EdgeInsets.zero,
                            color: App.resolveColor(Colors.grey.shade500, dark: Colors.grey.shade700),
                          ),
                        ),
                      ],
                    ),
                    //
                    Row(
                      children: [
                        // Current Bid (Amount)
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ShimmerSkeleton(
                                height: 10,
                                width: double.infinity,
                                radius: 0.br,
                                padding: EdgeInsets.zero,
                                color: App.resolveColor(Colors.grey.shade500, dark: Colors.grey.shade700),
                              ),
                              //
                              0.01.verticalh,
                              // Amount
                              Padding(
                                padding: const EdgeInsets.only(right: 16),
                                child: ShimmerSkeleton(
                                  height: 20,
                                  width: double.infinity,
                                  radius: 0.br,
                                  padding: EdgeInsets.zero,
                                  color: App.resolveColor(Colors.grey.shade500, dark: Colors.grey.shade700),
                                ),
                              ),
                            ],
                          ),
                        ),
                        //
                        0.09.horizontalw,
                        //
                        // Total Bid (Count)
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ShimmerSkeleton(
                                height: 10,
                                width: double.infinity,
                                radius: 0.br,
                                padding: EdgeInsets.zero,
                                color: App.resolveColor(Colors.grey.shade500, dark: Colors.grey.shade700),
                              ),
                              //
                              0.01.verticalh,
                              // Bid count
                              ShimmerSkeleton(
                                height: 20,
                                width: double.infinity,
                                radius: 0.br,
                                padding: EdgeInsets.zero,
                                color: App.resolveColor(Colors.grey.shade500, dark: Colors.grey.shade700),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    // Auction Duration (Countdowm)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                        4,
                        (i) => Flexible(
                          child: Padding(
                            padding: EdgeInsets.only(left: i == 0 ? 0 : 10, right: i + 1 == 4 ? 0 : 10),
                            child: ShimmerSkeleton(
                              height: 23,
                              width: double.maxFinite,
                              radius: 0.br,
                              padding: EdgeInsets.zero,
                              color: App.resolveColor(Colors.grey.shade500, dark: Colors.grey.shade700),
                            ),
                          ),
                        ),
                      ),
                    ),
                    // Button
                    ShimmerSkeleton(
                      height: 40,
                      width: double.infinity,
                      radius: 3.br,
                      padding: EdgeInsets.zero,
                      color: App.resolveColor(Colors.grey.shade500, dark: Colors.grey.shade700),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
