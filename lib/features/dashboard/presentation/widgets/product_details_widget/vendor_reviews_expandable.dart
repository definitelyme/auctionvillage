library vendor_reviews_expandable.dart;

import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:expandable/expandable.dart';

/// A stateless widget to render VendorReviewsExpandable.
class VendorReviewsExpandable extends StatelessWidget {
  final Product product;

  const VendorReviewsExpandable(this.product, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: App.resolveColor(Palette.neutralF4, dark: Palette.cardColorDark),
      child: ExpandableTheme(
        data: ExpandableThemeData(
          hasIcon: true,
          tapHeaderToExpand: true,
          tapBodyToCollapse: false,
          useInkWell: Utils.platform_(material: true, cupertino: false),
          headerAlignment: ExpandablePanelHeaderAlignment.center,
          iconColor: App.platform.cupertino(App.resolveColor(null, dark: Colors.white)),
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
                  'Vendor Reviews',
                  maxLines: 1,
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w600,
                  letterSpacing: Utils.letterSpacing,
                ),
              ),
              collapsed: Utils.nothing,
              expanded: Material(
                color: App.resolveColor(Palette.cardColorLight, dark: Palette.backgroundColorDark),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    0.01.verticalh,
                    //
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
                      child: Row(
                        children: [
                          AdaptiveText(
                            '4.8',
                            fontSize: 37.sp,
                            textColor: const Color(0xff222222),
                            textColorDark: Palette.headingDark,
                            fontWeight: FontWeight.w600,
                            letterSpacing: Utils.letterSpacing,
                          ),
                          //
                          0.02.horizontalw,
                          //
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Disabled(
                                disabled: true,
                                child: RatingBar(
                                  glow: false,
                                  allowHalfRating: true,
                                  tapOnlyMode: true,
                                  initialRating: 4.8,
                                  minRating: 1,
                                  maxRating: 5,
                                  itemSize: 0.05.sw,
                                  direction: Axis.horizontal,
                                  itemPadding: EdgeInsets.symmetric(horizontal: 0.005.sw),
                                  ratingWidget: RatingWidget(
                                    full: const Icon(Icons.star_sharp, color: Colors.amber),
                                    half: const Icon(Icons.star_half_sharp, color: Colors.amber),
                                    empty: const Icon(Icons.star_border_sharp, color: Colors.amber),
                                  ),
                                  onRatingUpdate: (_) {},
                                ),
                              ),
                              //
                              AdaptiveText(
                                '124 reviews',
                                maxLines: 1,
                                softWrap: true,
                                fontSize: 16.sp,
                                textColor: const Color(0xff989DB3),
                                fontWeight: FontWeight.w400,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    //
                    0.01.verticalh,
                    //
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
                      child: const GroupedRating(title: 'Delivery', rating: 5.0),
                    ),
                    //
                    0.02.verticalh,
                    //
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
                      child: const GroupedRating(title: 'Responsive', rating: 4.0),
                    ),
                    //
                    0.02.verticalh,
                    //
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
                      child: const GroupedRating(title: 'Reliable', rating: 2),
                    ),
                    //
                    0.02.verticalh,
                    //
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
                      child: const GroupedRating(title: 'Quality', rating: 5.0),
                    ),
                    //
                    Divider(thickness: 1.5, height: 35, indent: App.sidePadding * 0.5, endIndent: App.sidePadding * 0.5),
                    //
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
                      child: MyHero(
                        tag: null,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Disabled(
                              disabled: true,
                              child: RatingBar(
                                glow: false,
                                allowHalfRating: true,
                                tapOnlyMode: true,
                                initialRating: 3.4,
                                minRating: 1,
                                maxRating: 5,
                                itemSize: 0.05.sw,
                                direction: Axis.horizontal,
                                itemPadding: EdgeInsets.symmetric(horizontal: 0.005.sw),
                                ratingWidget: RatingWidget(
                                  full: const Icon(Icons.star_sharp, color: Colors.amber),
                                  half: const Icon(Icons.star_half_sharp, color: Colors.amber),
                                  empty: const Icon(Icons.star_border_sharp, color: Colors.amber),
                                ),
                                onRatingUpdate: (_) {},
                              ),
                            ),
                            //
                            0.01.verticalh,
                            //
                            AdaptiveText(
                              'The weather is amazing, walk with me through the pathway of more success. Take this journey with me, Lion! Major key, don’t fall for the trap, stay focused.',
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              letterSpacing: Utils.letterSpacing,
                            ),
                            //
                            0.01.verticalh,
                            //
                            AdaptiveText.rich(
                              TextSpan(children: [
                                const TextSpan(text: 'by David '),
                                TextSpan(
                                  text: '23-11-2021',
                                  style: TextStyle(fontSize: 14.sp, color: Colors.grey),
                                ),
                              ]),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              letterSpacing: Utils.letterSpacing,
                              style: const TextStyle(fontStyle: FontStyle.italic),
                            ),
                          ],
                        ),
                      ),
                    ),
                    //
                    const SizedBox(height: 14),
                    //
                    Divider(thickness: 1.5, height: 0, indent: App.sidePadding * 0.5, endIndent: App.sidePadding * 0.5),
                    //
                    const SizedBox(height: 8),
                    //
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
                      child: AppButton(
                        text: 'See All',
                        backgroundColor: Colors.transparent,
                        textColor: Palette.primary,
                        splashColor: Colors.grey.shade200,
                        onPressed: () {},
                      ),
                    ),
                    //
                    0.01.verticalh,
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

class GroupedRating extends StatelessWidget {
  final String title;
  final double rating;

  const GroupedRating({Key? key, required this.title, required this.rating}) : super(key: key);

  int get _rating => rating.round();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AdaptiveText(
              title,
              maxLines: 1,
              fontSize: 17.sp,
              letterSpacing: Utils.letterSpacing,
            ),
            //
            0.04.horizontalw,
            //
            AdaptiveText(
              '$rating',
              maxLines: 1,
              fontSize: 16.sp,
              letterSpacing: Utils.letterSpacing,
            ),
          ],
        ),
        //
        0.008.verticalh,
        //
        DotWidget(
          max: 1.w,
          dashWidth: 0.15.w,
          space: 0.02.w,
          dashColor: (i) {
            final r = i + 1;
            return r <= _rating ? const Color(0xffFF7A0D) : const Color(0xffC5C5C5);
          },
        ),
      ],
    );
  }
}

class DotWidget extends StatelessWidget {
  final double max, dashWidth, space, dashHeight;

  final Color Function(int)? dashColor;

  const DotWidget({
    super.key,
    this.max = double.infinity,
    this.dashWidth = 10,
    this.space = 5,
    this.dashHeight = 2,
    this.dashColor,
  });

  int get length => max ~/ (dashWidth + space);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
        length,
        (i) => Flexible(
          child: Padding(
            padding: EdgeInsets.only(
              left: i == 0 ? 0 : space / 2,
              right: i == length - 1 ? 0 : space / 2,
            ),
            child: DecoratedBox(
              decoration: BoxDecoration(color: dashColor?.call(i)),
              child: SizedBox(
                width: i == length - 1 ? max - (length - 1) * (dashWidth + space) : dashWidth,
                height: dashHeight,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// class LineDashedPainter extends CustomPainter {
//   final Axis direction;
//   final double dashWidth, dashSpace, max, startX, startY, strokeWidth;
//   final Color color;

//   const LineDashedPainter({
//     this.direction = Axis.horizontal,
//     this.dashWidth = 5,
//     this.dashSpace = 5,
//     this.startX = 0,
//     this.startY = 0,
//     this.max = 100.0,
//     this.strokeWidth = 1.0,
//     this.color = Colors.black,
//   });

//   @override
//   void paint(Canvas canvas, Size size) {
//     final paint = Paint()
//       ..strokeWidth = strokeWidth
//       ..color = color;

//     var _max = max;
//     final _dashWidth = dashWidth;
//     final _dashSpace = dashSpace;
//     var _startY = startY;
//     var _startX = startX;

//     if (direction == Axis.horizontal) {
//       while (_max >= 0) {
//         canvas.drawLine(Offset(_startX, 0), Offset(_startX + _dashWidth, 0), paint..strokeWidth = 1);
//         final space = (_dashSpace + _dashWidth);
//         _startX += space;
//         _max -= space;
//       }
//     } else {
//       while (_max >= 0) {
//         canvas.drawLine(Offset(0, _startY), Offset(0, _startY + _dashWidth), paint);
//         final space = (_dashSpace + _dashWidth);
//         _startY += space;
//         _max -= space;
//       }
//     }
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) => false;
// }
