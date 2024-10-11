library bid_timeline.dart;

import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

/// A stateless widget to render BidTimeline.
class BidTimeline extends StatelessWidget {
  final List<String> titles;
  final List<String> subtitles;
  final int currentIndex;
  final Color completedColor;
  final Color pendingColor;
  final int? cancelledIndex;
  final double Function(int)? extent;

  BidTimeline({
    Key? key,
    required this.titles,
    this.subtitles = const [],
    this.currentIndex = 0,
    this.completedColor = Palette.primaryColor,
    this.pendingColor = Palette.neutralGrey,
    this.cancelledIndex,
    this.extent,
  })  : assert(subtitles.isEmpty || titles.length == subtitles.length),
        super(key: key);

  Color getColor(int index) => index <= currentIndex ? Palette.primaryColor : pendingColor;

  @override
  Widget build(BuildContext context) {
    return Timeline.tileBuilder(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      primary: false,
      physics: const ClampingScrollPhysics(),
      semanticChildCount: titles.length,
      theme: TimelineThemeData(
        direction: Axis.vertical,
        nodePosition: 0,
        nodeItemOverlap: false,
        connectorTheme: const ConnectorThemeData(thickness: 2.0, color: Palette.accentGreen),
      ),
      builder: TimelineTileBuilder.connected(
        connectionDirection: ConnectionDirection.before,
        addRepaintBoundaries: false,
        // firstConnectorBuilder: (context) => Utils.nothing,
        nodePositionBuilder: (_, index) {
          if (index > currentIndex) return 0.019;
          return 0;
        },
        oppositeContentsBuilder: (_, __) => Utils.nothing,
        contentsBuilder: (context, index) => Padding(
          padding: EdgeInsets.only(left: 0.04.w, bottom: index != titles.length - 1 ? 0.012.h : 0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: AdaptiveText(
                  titles[index],
                  maxLines: 2,
                  fontSize: 16.sp,
                  minFontSize: 13,
                  fontWeight: FontWeight.w600,
                  textAlign: TextAlign.left,
                  isDefault: true,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              //
              if (subtitles.isNotEmpty && subtitles[index].isNotEmpty)
                Flexible(
                  child: AdaptiveText(
                    subtitles[index],
                    maxLines: 1,
                    fontSize: 13.sp,
                    minFontSize: 12,
                    maxFontSize: 16,
                    textAlign: TextAlign.left,
                    isDefault: true,
                  ),
                ),
            ],
          ),
        ),
        indicatorBuilder: (_, index) {
          Color color;
          Widget? child;

          if (index == currentIndex) {
            if (cancelledIndex == null) {
              color = Colors.transparent;
              child = Icon(
                Utils.platform_(material: Icons.check_circle, cupertino: CupertinoIcons.check_mark_circled_solid),
                color: completedColor,
                size: 27,
              );
            } else {
              color = Palette.errorRed;
              child = const Icon(Icons.close, color: Colors.white, size: 17.0);
            }
          } else if (index < currentIndex) {
            color = completedColor;
            child = const Icon(Icons.check, color: Colors.white, size: 15.0);
          } else {
            color = pendingColor;
          }

          if (index <= currentIndex) {
            return DotIndicator(size: 28.0, color: color, child: child);
          } else {
            return OutlinedDotIndicator(borderWidth: 4.0, color: color);
          }
        },
        connectorBuilder: (_, index, type) {
          if (index > 0) {
            if (index == currentIndex) {
              final prevColor = getColor(index - 1);
              final color = getColor(index);
              List<Color> gradientColors;
              if (type == ConnectorType.start) {
                gradientColors = [Color.lerp(prevColor, color, 0.5)!, color];
              } else {
                gradientColors = [prevColor, Color.lerp(prevColor, color, 0.5)!];
              }
              return DecoratedLineConnector(decoration: BoxDecoration(gradient: LinearGradient(colors: gradientColors)));
            } else {
              return SolidLineConnector(color: getColor(index));
            }
          } else {
            return null;
          }
        },
        itemCount: titles.length,
      ),
    );
  }
}
