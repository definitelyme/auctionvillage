import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:flutter/material.dart';

/// A stateless widget to render OrWidget.
class OrWidget extends StatelessWidget {
  final String text;

  const OrWidget({Key? key, this.text = 'OR'}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: SizedBox(
        width: double.infinity,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              child: Container(height: 0.8, color: Palette.neutralC4),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: AdaptiveText(
                text,
                fontSize: 15.0.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            Flexible(
              child: Container(height: 0.8, color: Palette.neutralC4),
            ),
          ],
        ),
      ),
    );
  }
}
