import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:flutter/material.dart';

/// A stateless widget to render AppButton.
class AppButton extends StatelessWidget {
  final String? text;
  final double? height;
  final double width;
  final double? cupertinoHeight;
  final double? cupertinoWidth;
  final Widget Function(Widget)? child;
  final double? fontSize;
  final FontWeight? fontWeight;
  final VoidCallback? onPressed;
  final bool expand;
  final Color? textColor;
  final Color? textColorDark;
  final Color? backgroundColor;
  final Color? splashColor;
  final bool isLoading;
  final double? loaderHeight;
  final double? loaderWidth;
  final Color? loaderColor;
  final bool disabled;
  final BorderSide? side;
  final bool? isDefaultText;
  final BorderRadius? borderRadius;

  const AppButton({
    Key? key,
    this.text,
    this.height,
    this.width = double.infinity,
    this.cupertinoHeight,
    this.cupertinoWidth,
    this.child,
    this.fontSize,
    this.fontWeight,
    this.onPressed,
    this.expand = true,
    this.textColor,
    this.textColorDark,
    this.backgroundColor,
    this.splashColor,
    this.isLoading = false,
    this.disabled = false,
    this.loaderHeight,
    this.loaderWidth,
    this.loaderColor,
    this.side,
    this.borderRadius,
    this.isDefaultText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AdaptiveButton(
      text: text,
      fontSize: fontSize,
      expand: expand,
      fontWeight: fontWeight,
      textColor: textColor ?? Colors.white,
      textColorDark: textColorDark ?? textColor,
      materialData: (d) => d.copyWith(
        height: height,
        width: width,
        splashColor: splashColor ?? App.resolveColor(Colors.white24, dark: Colors.white12, ctx: context),
      ),
      cupertinoData: (d) => d.copyWith(
        height: cupertinoHeight,
        width: cupertinoWidth,
      ),
      loadingData: (d) => d.copyWith(
        isLoading: isLoading,
        height: loaderHeight,
        width: loaderWidth,
        colorLight: loaderColor,
        colorDark: loaderColor ?? Colors.white,
      ),
      maxFontSize: 19,
      isDefaultText: isDefaultText,
      disabled: disabled,
      padding: App.platform.cupertino(EdgeInsets.zero),
      textStyle: const TextStyle(letterSpacing: Utils.labelLetterSpacing),
      backgroundColor: backgroundColor ?? Palette.primaryColor,
      side: side,
      borderRadius: borderRadius,
      onPressed: onPressed,
      child: child,
    );
  }
}
