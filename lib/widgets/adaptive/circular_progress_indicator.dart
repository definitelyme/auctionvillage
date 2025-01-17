import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:auctionvillage/utils/utils.dart';

enum _CircularProgressBarType { material, adaptive }

class CircularProgressBar extends StatelessWidget {
  static const double _kDefaultIndicatorRadius = 10.0;
  final double? height;
  final double? width;
  final Color? color;
  final Color? colorDark;
  final Color? background;
  final double? value;
  final double strokeWidth;
  final _CircularProgressBarType _type;

  /// [Cupertino] Whether the activity indicator is running its animation.
  final bool isAnimating;

  /// [Cupertino] Radius of the activity indicator.
  final double radius;

  /// [Cupertino] Force show CupertinoActivityIndicator
  final bool forceShowIOS;

  const CircularProgressBar({
    Key? key,
    this.width,
    this.height,
    this.color,
    this.colorDark,
    this.value,
    this.strokeWidth = 4.0,
    this.background,
    this.isAnimating = true,
    this.radius = _kDefaultIndicatorRadius,
    this.forceShowIOS = false,
  })  : _type = _CircularProgressBarType.material,
        super(key: key);

  const CircularProgressBar.adaptive({
    Key? key,
    this.width,
    this.height,
    this.color,
    this.colorDark,
    this.value,
    this.strokeWidth = 4.0,
    this.background,
    this.isAnimating = true,
    this.radius = _kDefaultIndicatorRadius,
    this.forceShowIOS = false,
  })  : _type = _CircularProgressBarType.adaptive,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: _progressIndicator(context),
    );
  }

  Color get _colorLight => color ?? Palette.primaryColor;

  Color get _colorDark => colorDark ?? Palette.onSurfaceDark;

  Color? _color(BuildContext ctx) => App.resolveColor(_colorLight, dark: _colorDark, ctx: ctx);

  Widget _progressIndicator(BuildContext c) {
    if (_type == _CircularProgressBarType.adaptive && (Platform.isMacOS || Platform.isIOS || forceShowIOS)) {
      if (value != null) {
        return CupertinoActivityIndicator.partiallyRevealed(progress: value! <= 1 ? value! : 1, color: _color(c), radius: radius);
      }
      return CupertinoActivityIndicator(animating: isAnimating, radius: radius, color: _color(c));
    }

    return CircularProgressIndicator(
      value: (value != null && value! <= 1) ? value! : null,
      valueColor: AlwaysStoppedAnimation(_color(c)),
      backgroundColor: background,
      strokeWidth: strokeWidth,
      semanticsLabel: 'Progress Indicator',
      semanticsValue: '$value% completed.',
    );
  }
}
