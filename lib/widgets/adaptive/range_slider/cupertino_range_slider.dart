// From Package: https://pub.dev/packages/cupertino_range_slider_improveds
part of 'adaptive_range_slider.dart';

// Copyright 2017 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

/// An iOS-style slider.
///
/// Used to select from a range of values.
///
/// A slider can be used to select from either a continuous or a discrete set of
/// values. The default is use a continuous range of values from [min] to [max].
/// To use discrete values, use a non-null value for [divisions], which
/// indicates the number of discrete intervals. For example, if [min] is 0.0 and
/// [max] is 50.0 and [divisions] is 5, then the slider can take on the values
/// discrete values 0.0, 10.0, 20.0, 30.0, 40.0, and 50.0.
///
/// The slider itself does not maintain any state. Instead, when the state of
/// the slider changes, the widget calls the [onChanged] callback. Most widgets
/// that use a slider will listen for the [onChanged] callback and rebuild the
/// slider with a new [value] to update the visual appearance of the slider.
///
/// See also:
///
///  * <https://developer.apple.com/ios/human-interface-guidelines/controls/sliders/>
class CupertinoRangeSlider extends StatefulWidget {
  /// Creates an iOS-style slider.
  /// * [value] determines currently selected value for this slider.
  /// * [onChanged] is called when the user selects a new value for the slider.
  const CupertinoRangeSlider({
    super.key,
    required this.minValue,
    required this.maxValue,
    this.onMinChanged,
    this.onMaxChanged,
    this.min = 0.0,
    this.max = 1.0,
    this.divisions,
    this.activeColor,
    this.trackColor,
    this.thumbColor,
  })  : assert(minValue >= min && maxValue <= max && minValue <= maxValue),
        assert(divisions == null || divisions > 0);

  /// {@template cupertino_range_slider.minValue}
  /// The currently selected minimum value for this slider.
  ///
  /// The slider's thumb is drawn at a position that corresponds to this value.
  /// {@endtemplate}
  final double minValue;

  /// {@template cupertino_range_slider.maxValue}
  /// The currently selected maximum value for this slider.
  ///
  /// The slider's thumb is drawn at a position that corresponds to this value.
  /// {@endtemplate}
  final double maxValue;

  /// {@template cupertino_range_slider.onMinChanged}
  /// Called when the user selects a new value for the slider.
  ///
  /// The slider passes the new value to the callback but does not actually
  /// change state until the parent widget rebuilds the slider with the new
  /// value.
  ///
  /// If null, the slider will be displayed as disabled.
  ///
  /// The callback provided to onChanged should update the state of the parent
  /// [StatefulWidget] using the [State.setState] method, so that the parent
  /// gets rebuilt; for example:
  ///
  /// ```dart
  /// new CupertinoSlider(
  ///   value: _duelCommandment.toDouble(),
  ///   min: 1.0,
  ///   max: 10.0,
  ///   divisions: 10,
  ///   onChanged: (double newValue) {
  ///     setState(() {
  ///       _duelCommandment = newValue.round();
  ///     });
  ///   },
  /// )
  /// ```
  /// {@endtemplate}
  final ValueChanged<double>? onMinChanged;

  /// {@macro cupertino_range_slider.onMinChanged}
  final ValueChanged<double>? onMaxChanged;

  /// {@template cupertino_range_slider.min}
  /// The minimum value the user can select.
  ///
  /// Defaults to 0.0.
  /// {@endtemplate}
  final double min;

  /// {@template cupertino_range_slider.max}
  /// The maximum value the user can select.
  ///
  /// Defaults to 1.0.
  /// {@endtemplate}
  final double max;

  /// {@template cupertino_range_slider.divisions}
  /// The number of discrete divisions.
  ///
  /// If null, the slider is continuous.
  /// {@endtemplate}
  final int? divisions;

  /// {@template cupertino_range_slider.activeColor}
  /// The color to use for the portion of the slider that has been selected.
  /// {@endtemplate}
  final Color? activeColor;

  /// {@template cupertino_range_slider.trackColor}
  /// The color to use for the left portions of the slider that have not been selected.
  /// {@endtemplate}
  final Color? trackColor;

  /// {@template cupertino_range_slider.thumbColor}
  /// The color to use for the left the thumb of the slider.
  /// {@endtemplate}
  final Color? thumbColor;

  @override
  _CupertinoRangeSliderState createState() => _CupertinoRangeSliderState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DoubleProperty('minValue', minValue));
    properties.add(DoubleProperty('maxValue', maxValue));
    properties.add(DoubleProperty('min', min));
    properties.add(DoubleProperty('max', max));
  }
}

class _CupertinoRangeSliderState extends State<CupertinoRangeSlider> with TickerProviderStateMixin {
  Color? get _activeColor => CupertinoDynamicColor.resolve(widget.activeColor ?? CupertinoColors.activeBlue, context);

  Color? get _trackColor => CupertinoDynamicColor.resolve(widget.trackColor ?? const Color(0xFFB5B5B5), context);

  Color? get _thumbColor => CupertinoDynamicColor.resolve(widget.thumbColor ?? CupertinoColors.white, context);

  void _handleMinChanged(double value) {
    assert(widget.onMinChanged != null);
    final nextValue = value * (widget.max - widget.min) + widget.min;
    final v = nextValue > widget.maxValue ? widget.maxValue : nextValue;
    widget.onMinChanged!(v);
  }

  void _handleMaxChanged(double value) {
    assert(widget.onMaxChanged != null);
    final nextValue = value * (widget.max - widget.min) + widget.min;
    final v = nextValue < widget.minValue ? widget.minValue : nextValue;
    widget.onMaxChanged!(v);
  }

  @override
  Widget build(BuildContext context) {
    return _CupertinoSliderRenderObjectWidget(
      minValue: (widget.minValue - widget.min) / (widget.max - widget.min),
      maxValue: (widget.maxValue - widget.min) / (widget.max - widget.min),
      divisions: widget.divisions,
      activeColor: _activeColor,
      trackColor: _trackColor,
      thumbColor: _thumbColor,
      onMinChanged: widget.onMinChanged != null ? _handleMinChanged : null,
      onMaxChanged: widget.onMaxChanged != null ? _handleMaxChanged : null,
      vsync: this,
    );
  }
}

class _CupertinoSliderRenderObjectWidget extends LeafRenderObjectWidget {
  const _CupertinoSliderRenderObjectWidget({
    Key? key,
    required this.minValue,
    required this.maxValue,
    this.divisions,
    this.activeColor,
    this.trackColor,
    this.thumbColor,
    this.onMinChanged,
    this.onMaxChanged,
    this.vsync,
  }) : super(key: key);

  //final double value;
  final double minValue;
  final double maxValue;
  final int? divisions;
  final Color? activeColor;
  final Color? trackColor;
  final Color? thumbColor;
  final ValueChanged<double>? onMinChanged;
  final ValueChanged<double>? onMaxChanged;
  final TickerProvider? vsync;

  @override
  _RenderCupertinoSlider createRenderObject(BuildContext context) {
    return _RenderCupertinoSlider(
      minValue: minValue,
      maxValue: maxValue,
      divisions: divisions,
      activeColor: activeColor,
      trackColor: trackColor,
      thumbColor: thumbColor,
      onMinChanged: onMinChanged,
      onMaxChanged: onMaxChanged,
      vsync: vsync!,
      textDirection: Directionality.of(context),
    );
  }

  @override
  void updateRenderObject(BuildContext context, _RenderCupertinoSlider renderObject) {
    renderObject
      ..minValue = minValue
      ..maxValue = maxValue
      ..divisions = divisions
      ..activeColor = activeColor
      ..trackColor = trackColor
      ..thumbColor = thumbColor
      ..onMinChanged = onMinChanged
      ..onMaxChanged = onMaxChanged
      ..textDirection = Directionality.of(context);
    // Ticker provider cannot change since there's a 1:1 relationship between
    // the _SliderRenderObjectWidget object and the _SliderState object.
  }
}

const double _kPadding = 8.0;
const int _kMinThumb = 1;
const int _kMaxThumb = 2;
const double _kSliderHeight = 2.0 * (CupertinoThumbPainter.radius + _kPadding);
// Matches Material Design slider.
const double _kSliderWidth = 176.0;
const Duration _kDiscreteTransitionDuration = Duration(milliseconds: 500);
// Matches iOS implementation of material slider.
const double _kAdjustmentUnit = 0.1;

class _RenderCupertinoSlider extends RenderConstrainedBox {
  _RenderCupertinoSlider({
    required double minValue,
    required double maxValue,
    int? divisions,
    Color? activeColor,
    Color? trackColor,
    Color? thumbColor,
    ValueChanged<double>? onMinChanged,
    ValueChanged<double>? onMaxChanged,
    required TickerProvider vsync,
    required TextDirection textDirection,
  })  : assert(minValue >= 0.0 && minValue <= 1.0),
        assert(maxValue >= 0.0 && maxValue <= 1.0),
        _minValue = minValue,
        _maxValue = maxValue,
        _divisions = divisions,
        _activeColor = activeColor,
        _trackColor = trackColor,
        _thumbColor = thumbColor,
        _onMinChanged = onMinChanged,
        _onMaxChanged = onMaxChanged,
        _textDirection = textDirection,
        super(additionalConstraints: const BoxConstraints.tightFor(width: _kSliderWidth, height: _kSliderHeight)) {
    _drag = HorizontalDragGestureRecognizer()
      ..onStart = _handleDragStart
      ..onUpdate = _handleDragUpdate
      ..onEnd = _handleDragEnd;
    _minPosition = AnimationController(
      value: minValue,
      duration: _kDiscreteTransitionDuration,
      vsync: vsync,
    )..addListener(markNeedsPaint);
    _maxPosition = AnimationController(
      value: maxValue,
      duration: _kDiscreteTransitionDuration,
      vsync: vsync,
    )..addListener(markNeedsPaint);
  }

  //double get value => _value;
  //double _value;

  double get minValue => _minValue;
  double _minValue;

  double get maxValue => _maxValue;
  double _maxValue;

  set minValue(double newValue) {
    assert(newValue >= 0.0 && newValue <= 1.0);
    if (newValue == _minValue) return;
    _minValue = newValue;
    if (divisions != null)
      _minPosition.animateTo(newValue, curve: Curves.fastOutSlowIn);
    else
      _minPosition.value = newValue;
  }

  set maxValue(double newValue) {
    assert(newValue >= 0.0 && newValue <= 1.0);
    if (newValue == _maxValue) return;
    _maxValue = newValue;
    if (divisions != null)
      _maxPosition.animateTo(newValue, curve: Curves.fastOutSlowIn);
    else
      _maxPosition.value = newValue;
  }

  int? get divisions => _divisions;
  int? _divisions;

  set divisions(int? value) {
    if (value == _divisions) return;
    _divisions = value;
    markNeedsPaint();
  }

  Color? _activeColor;
  Color? get activeColor => _activeColor;

  set activeColor(Color? value) {
    if (value == _activeColor) return;
    _activeColor = value;
    markNeedsPaint();
  }

  Color? _trackColor;
  Color? get trackColor => _activeColor;

  set trackColor(Color? value) {
    if (value == _trackColor) return;
    _trackColor = value;
    markNeedsPaint();
  }

  Color? _thumbColor;
  Color? get thumbColor => _activeColor;

  set thumbColor(Color? value) {
    if (value == _thumbColor) return;
    _thumbColor = value;
    markNeedsPaint();
  }

  ValueChanged<double>? get onMinChanged => _onMinChanged;
  ValueChanged<double>? _onMinChanged;

  ValueChanged<double>? get onMaxChanged => _onMaxChanged;
  ValueChanged<double>? _onMaxChanged;

  set onMinChanged(ValueChanged<double>? value) {
    if (value == _onMinChanged) return;
    final bool wasInteractive = isInteractive;
    _onMinChanged = value;
    if (wasInteractive != isInteractive) markNeedsSemanticsUpdate();
  }

  set onMaxChanged(ValueChanged<double>? value) {
    if (value == _onMaxChanged) return;
    final bool wasInteractive = isInteractive;
    _onMaxChanged = value;
    if (wasInteractive != isInteractive) markNeedsSemanticsUpdate();
  }

  TextDirection get textDirection => _textDirection;
  TextDirection _textDirection;

  set textDirection(TextDirection value) {
    if (_textDirection == value) return;
    _textDirection = value;
    markNeedsPaint();
  }

  late AnimationController _minPosition;
  late AnimationController _maxPosition;

  late HorizontalDragGestureRecognizer _drag;
  double _currentDragValue = 0.0;
  int pickedThumb = 123;

  double get _discretizedCurrentDragValue {
    double dragValue = _currentDragValue.clamp(0.0, 1.0);
    if (divisions != null) dragValue = (dragValue * divisions!).round() / divisions!;
    return dragValue;
  }

  double get _trackLeft => _kPadding;

  double get _trackRight => size.width - _kPadding;

  double? get _minThumbCenter {
    double? visualPosition;
    switch (textDirection) {
      case TextDirection.rtl:
        visualPosition = 1.0 - _minValue;
        break;
      case TextDirection.ltr:
        visualPosition = _minValue;
        break;
    }
    return lerpDouble(_trackLeft + CupertinoThumbPainter.radius, _trackRight - CupertinoThumbPainter.radius, visualPosition);
  }

  double? get _maxThumbCenter {
    double? visualPosition;
    switch (textDirection) {
      case TextDirection.rtl:
        visualPosition = 1.0 - _maxValue;
        break;
      case TextDirection.ltr:
        visualPosition = _maxValue;
        break;
    }
    return lerpDouble(_trackLeft + CupertinoThumbPainter.radius, _trackRight - CupertinoThumbPainter.radius, visualPosition);
  }

  bool get isInteractive => (onMinChanged != null && onMaxChanged != null);

  void _handleDragStart(DragStartDetails details) {
    if (isInteractive) {
      _currentDragValue = pickedThumb == _kMinThumb ? _minValue : _maxValue;
      if (pickedThumb == _kMinThumb) {
        onMinChanged!(_discretizedCurrentDragValue);
      } else {
        onMaxChanged!(_discretizedCurrentDragValue);
      }
    }
  }

  void _handleDragUpdate(DragUpdateDetails details) {
    if (isInteractive) {
      final double extent = math.max(_kPadding, size.width - 2.0 * (_kPadding + CupertinoThumbPainter.radius));
      final double valueDelta = details.primaryDelta! / extent;
      switch (textDirection) {
        case TextDirection.rtl:
          _currentDragValue -= valueDelta;
          break;
        case TextDirection.ltr:
          _currentDragValue += valueDelta;
          break;
      }

      if (pickedThumb == _kMinThumb) {
        onMinChanged!(_discretizedCurrentDragValue);
      } else {
        onMaxChanged!(_discretizedCurrentDragValue);
      }
    }
  }

  void _handleDragEnd(DragEndDetails details) {
    _currentDragValue = 0.0;
  }

  @override
  bool hitTestSelf(Offset position) {
    // If both thumbs are at the same place and at the start or the end
    if (_minThumbCenter == _maxThumbCenter) {
      if (_minThumbCenter! >= (size.width - CupertinoThumbPainter.radius + _kPadding)) {
        pickedThumb = _kMinThumb;
        return true;
      } else if ((_minThumbCenter! <= (CupertinoThumbPainter.radius + _kPadding)) || position.dx > _maxThumbCenter!) {
        pickedThumb = _kMaxThumb;
        return true;
      }
    }

    if ((position.dx - _minThumbCenter!).abs() < CupertinoThumbPainter.radius + _kPadding) {
      pickedThumb = _kMinThumb;
      return true;
    }

    if ((position.dx - _maxThumbCenter!).abs() < CupertinoThumbPainter.radius + _kPadding) {
      pickedThumb = _kMaxThumb;
      return true;
    }

    return false;
  }

  @override
  void handleEvent(PointerEvent event, BoxHitTestEntry entry) {
    assert(debugHandleEvent(event, entry));
    if (event is PointerDownEvent && isInteractive) _drag.addPointer(event);
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    final CupertinoThumbPainter _thumbPainter = CupertinoThumbPainter(color: _thumbColor!);
    final Color betweenColor = _activeColor!;
    final Color aroundColor = _trackColor!;

    final double trackCenter = offset.dy + size.height / 2.0;
    final double trackLeft = offset.dx + _trackLeft;
    final double trackTop = trackCenter - 1.0;
    final double trackBottom = trackCenter + 1.0;
    final double trackRight = offset.dx + _trackRight;

    final double trackMinActive = offset.dx + _minThumbCenter!;
    final double trackMaxActive = offset.dx + _maxThumbCenter!;

    final Canvas canvas = context.canvas;
    final Paint paint = Paint();

    paint.color = aroundColor;
    canvas.drawRRect(RRect.fromLTRBXY(trackLeft, trackTop, trackRight, trackBottom, 1.0, 1.0), paint);

    paint.color = betweenColor;
    canvas.drawRRect(RRect.fromLTRBXY(trackMinActive, trackTop, trackMaxActive, trackBottom, 1.0, 1.0), paint);

    final Offset minThumbCenter = Offset(trackMinActive, trackCenter);
    final Offset maxThumbCenter = Offset(trackMaxActive, trackCenter);

    _thumbPainter.paint(canvas, Rect.fromCircle(center: minThumbCenter, radius: CupertinoThumbPainter.radius));

    _thumbPainter.paint(canvas, Rect.fromCircle(center: maxThumbCenter, radius: CupertinoThumbPainter.radius));
  }

  @override
  void describeSemanticsConfiguration(SemanticsConfiguration config) {
    super.describeSemanticsConfiguration(config);

    config.isSemanticBoundary = isInteractive;
    if (isInteractive) {
      config.onIncrease = _increaseAction;
      config.onDecrease = _decreaseAction;
    }
  }

  double get _semanticActionUnit => divisions != null ? 1.0 / divisions! : _kAdjustmentUnit;

  void _increaseAction() {
    if (isInteractive) {
      if (pickedThumb == _kMinThumb) {
        onMinChanged!((minValue + _semanticActionUnit).clamp(0.0, 1.0));
      } else {
        onMaxChanged!((maxValue + _semanticActionUnit).clamp(0.0, 1.0));
      }
    }
  }

  void _decreaseAction() {
    if (isInteractive) {
      if (pickedThumb == _kMinThumb) {
        onMinChanged!((minValue - _semanticActionUnit).clamp(0.0, 1.0));
      } else {
        onMaxChanged!((maxValue - _semanticActionUnit).clamp(0.0, 1.0));
      }
    }
  }
}
