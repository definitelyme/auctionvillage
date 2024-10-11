import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';

class AppIconButton extends StatelessWidget {
  final double? height;
  final double? width;
  final Color? backgroundColor;
  final Color? cupertinoBackgroundColor;
  final double elevation;
  final Clip clipBehavior;
  final MaterialType type;
  final EdgeInsets? materialPadding;
  final EdgeInsets? cupertinoPadding;
  final bool useMaterialDefaultPadding;
  final bool disabled;
  final Widget? child;
  final String tooltip;
  final Function()? onPressed;
  final Function()? onLongPressed;
  final ShapeBorder? shape;
  final Color? splashColor;
  final double? splashRadius;

  // Cupertino
  final Color disabledColor;
  final BorderRadius? borderRadius;
  final AlignmentGeometry alignment;
  final double minSize;
  final double pressedOpacity;
  final ButtonType buttonType;

  AppIconButton({
    Key? key,
    this.height,
    this.width,
    this.backgroundColor,
    this.cupertinoBackgroundColor,
    this.elevation = 2.0,
    this.clipBehavior = Clip.antiAlias,
    this.type = MaterialType.circle,
    this.materialPadding,
    this.cupertinoPadding,
    this.tooltip = '',
    this.borderRadius,
    this.disabled = false,
    this.useMaterialDefaultPadding = true,
    this.onPressed,
    this.onLongPressed,
    this.splashColor,
    this.splashRadius,
    this.shape,
    this.child,
    this.alignment = Alignment.center,
    this.disabledColor = CupertinoColors.quaternarySystemFill,
    this.minSize = kMinInteractiveDimensionCupertino,
    this.pressedOpacity = 0.4,
    ButtonType? buttonType,
  })  : buttonType = buttonType ?? (disabled && (Platform.isIOS || Platform.isMacOS) ? ButtonType.elevated : ButtonType.text),
        super(key: key);

  const AppIconButton.filled({
    Key? key,
    this.height,
    this.width,
    this.backgroundColor,
    this.cupertinoBackgroundColor,
    this.elevation = 2.0,
    this.clipBehavior = Clip.antiAlias,
    this.type = MaterialType.circle,
    this.materialPadding,
    this.cupertinoPadding,
    this.tooltip = '',
    this.borderRadius,
    this.disabled = false,
    this.useMaterialDefaultPadding = true,
    this.onPressed,
    this.onLongPressed,
    this.splashColor,
    this.splashRadius,
    this.shape,
    this.child,
    this.alignment = Alignment.center,
    this.disabledColor = CupertinoColors.quaternarySystemFill,
    this.minSize = kMinInteractiveDimensionCupertino,
    this.pressedOpacity = 0.4,
    ButtonType? buttonType,
  })  : buttonType = buttonType ?? ButtonType.elevated,
        super(key: key);

  Widget get cupertinoButton => buttonType.when(
        elevated: () => CupertinoButton.filled(
          key: key,
          alignment: alignment,
          borderRadius: borderRadius,
          pressedOpacity: pressedOpacity,
          minSize: minSize,
          disabledColor: disabledColor,
          padding: EdgeInsets.zero.merge(cupertinoPadding),
          onPressed: onPressed,
          child: Center(child: child),
        ),
        text: () => CupertinoButton(
          key: key,
          alignment: alignment,
          borderRadius: borderRadius,
          pressedOpacity: pressedOpacity,
          color: cupertinoBackgroundColor,
          minSize: minSize,
          disabledColor: disabledColor,
          padding: EdgeInsets.zero.merge(cupertinoPadding),
          onPressed: onPressed,
          child: Center(child: child),
        ),
      );

  Widget get materialButton => Align(
        alignment: alignment,
        child: ClipRRect(
          borderRadius: borderRadius ?? BorderRadius.zero,
          child: Material(
            color: backgroundColor ?? Palette.primaryColor,
            elevation: elevation,
            clipBehavior: clipBehavior,
            // borderRadius: type == MaterialType.circle ? null : borderRadius,
            borderRadius: type == MaterialType.circle
                ? null
                : shape == null
                    ? borderRadius
                    : null,
            shape: type == MaterialType.circle ? null : shape,
            type: type,
            child: AdaptiveInkWell(
              onTap: disabled ? null : onPressed,
              onLongPress: onLongPressed,
              borderRadius: borderRadius,
              splashColor: splashColor,
              radius: splashRadius,
              child: Padding(
                padding:
                    useMaterialDefaultPadding ? EdgeInsets.all(0.03.sw).merge(materialPadding) : EdgeInsets.zero.merge(materialPadding),
                child: Center(child: child),
              ),
            ),
          ).addPadding(const EdgeInsets.all(2), pad: elevation > 0),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: tooltip,
      child: SizedBox(
        width: width,
        height: height,
        child: PlatformBuilder(cupertino: cupertinoButton, material: materialButton),
      ),
    );
  }
}
