library adaptive_range_slider.dart;

import 'dart:math' as math;
import 'dart:ui' show lerpDouble;

import 'package:auctionvillage/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

part 'cupertino_range_slider.dart';

/// A stateful widget that renders AdaptiveRangeSlider.
class AdaptiveRangeSlider extends StatefulWidget {
  /// The callback used to create a semantic value from the slider's values.
  ///
  /// Defaults to formatting values as a percentage.
  ///
  /// This is used by accessibility frameworks like TalkBack on
  /// Android to inform users what the currently selected value is with more context.
  ///
  /// In the example below, a slider for currency values is configured to announce a value with a currency label.
  final String Function(double)? semanticFormatterCallback;

  /// {@macro cupertino_range_slider.activeColor}
  final Color? activeColor;

  /// {@macro cupertino_range_slider.divisions}
  final int? divisions;

  /// {@macro cupertino_range_slider.inactiveColor}
  final Color? inactiveColor;

  /// Labels to show as text in the [SliderThemeData.rangeValueIndicatorShape]
  /// when the slider is active and [SliderThemeData.showValueIndicator] is satisfied.
  ///
  /// There are two labels: one for the start thumb and one for the end thumb.
  ///
  /// Each label is rendered using the active [ThemeData]'s [TextTheme.bodyText1] text style,
  /// with the theme data's [ColorScheme.onPrimary] color.
  /// The label's text style can be overridden with [SliderThemeData.valueIndicatorTextStyle].
  ///
  /// If null, then the value indicator will not be displayed.
  final RangeLabels? labels;

  /// {@macro cupertino_range_slider.max}
  final double max;

  /// {@macro cupertino_range_slider.maxValue}
  final double maxValue;

  /// {@macro cupertino_range_slider.min}
  final double min;

  /// {@macro cupertino_range_slider.minValue}
  final double minValue;

  /// {@macro cupertino_range_slider.onMinChanged}
  final ValueChanged<RangeValues> onChanged;

  /// {@macro cupertino_range_slider.onMinChanged}
  final ValueChanged<double>? onMaxChanged;

  /// {@macro cupertino_range_slider.onMinChanged}
  final ValueChanged<double>? onMinChanged;

  /// Specifies the platform to use for the adaptive widget.
  final PlatformType? platform;

  /// {@macro cupertino_range_slider.thumbColor}
  final Color? thumbColor;

  /// {@macro cupertino_range_slider.trackColor}
  final Color? trackColor;

  const AdaptiveRangeSlider({
    super.key,
    this.semanticFormatterCallback,
    this.activeColor,
    this.divisions,
    this.inactiveColor,
    this.labels,
    this.max = 1.0,
    required this.maxValue,
    this.min = 0.0,
    required this.minValue,
    required this.onChanged,
    this.onMaxChanged,
    this.onMinChanged,
    this.platform,
    this.thumbColor,
    this.trackColor,
  });

  @override
  AdaptiveRangeSliderState createState() => AdaptiveRangeSliderState();
}

class AdaptiveRangeSliderState extends State<AdaptiveRangeSlider> {
  @override
  Widget build(BuildContext context) {
    return PlatformBuilder.builder(
      platform: widget.platform,
      material: (_) => RangeSlider(
        values: RangeValues(widget.minValue, widget.maxValue),
        onChangeStart: (value) => widget.onMinChanged?.call(value.start),
        onChangeEnd: (value) => widget.onMaxChanged?.call(value.end),
        min: widget.min,
        max: widget.max,
        divisions: widget.divisions,
        activeColor: widget.activeColor,
        inactiveColor: widget.inactiveColor,
        labels: widget.labels,
        onChanged: widget.onChanged,
        semanticFormatterCallback: widget.semanticFormatterCallback,
      ),
      cupertino: (_) => CupertinoRangeSlider(
        minValue: widget.minValue,
        maxValue: widget.maxValue,
        min: widget.min,
        max: widget.max,
        divisions: widget.divisions,
        activeColor: widget.activeColor,
        trackColor: widget.trackColor,
        thumbColor: widget.thumbColor,
        onMinChanged: widget.onMinChanged,
        onMaxChanged: widget.onMaxChanged,
      ),
    );
  }
}
