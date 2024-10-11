import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:flutter/material.dart';

/// A stateless widget to render AppOutlinedButton.
class AppOutlinedButton extends StatelessWidget {
  final double? height;
  final double? width;
  final bool disabled;
  final double? cupertinoHeight;
  final double? cupertinoWidth;
  final String? text;
  final Color textColor;
  final Color textColorDark;
  final Widget Function(Widget)? child;
  final double? fontSize;
  final EdgeInsets? padding;
  final FontWeight? fontWeight;
  final VoidCallback? onPressed;
  final bool expand;
  final bool isLoading;
  final double? loaderHeight;
  final double? loaderWidth;
  final Color? borderColor;
  final Color? borderColorDark;
  final double borderWidth;
  final BorderRadius? borderRadius;
  final Color? splashColor;
  final Color? splashColorDark;
  final Color? highlightColorLight;
  final Color? highlightColorDark;
  final bool? isDefaultText;
  final Color backgroundColor;

  const AppOutlinedButton({
    Key? key,
    this.text,
    Color? textColor,
    Color? textColorDark,
    this.height,
    this.width,
    this.cupertinoHeight,
    this.cupertinoWidth,
    this.disabled = false,
    this.child,
    this.fontSize,
    this.fontWeight,
    this.onPressed,
    this.expand = true,
    this.padding,
    this.isLoading = false,
    this.loaderHeight,
    this.loaderWidth,
    this.borderColor,
    this.borderColorDark,
    this.borderWidth = 1,
    this.borderRadius,
    this.splashColor,
    this.splashColorDark,
    this.highlightColorLight,
    this.highlightColorDark,
    this.isDefaultText,
    this.backgroundColor = Colors.transparent,
  })  : textColor = textColor ?? Palette.primaryColor,
        textColorDark = textColorDark ?? textColor ?? Palette.primaryColor,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AdaptiveButton(
      text: text,
      expand: expand,
      materialData: (d) => d.copyWith(
        height: height,
        width: width,
        highlightColor: App.resolveColor(highlightColorLight, dark: highlightColorDark),
        splashColor: Utils.foldTheme(
          light: () => splashColor ?? Colors.grey.shade300,
          dark: () => splashColorDark ?? Colors.grey.shade700,
          context: context,
        ),
      ),
      cupertinoData: (d) => d.copyWith(
        height: cupertinoHeight,
        width: cupertinoWidth,
      ),
      loadingData: (d) => d.copyWith(
        isLoading: isLoading,
        height: loaderHeight,
        width: loaderWidth,
        colorLight: Palette.primaryColor,
      ),
      disabled: disabled,
      fontSize: fontSize,
      isDefaultText: isDefaultText,
      fontWeight: fontWeight,
      padding: padding,
      borderRadius: borderRadius,
      textColor: textColor,
      textColorDark: textColorDark,
      textStyle: const TextStyle(letterSpacing: Utils.labelLetterSpacing),
      backgroundColor: backgroundColor,
      side: BorderSide(
        width: borderWidth,
        color: App.resolveColor(
          borderColor ?? Palette.primaryColor,
          dark: borderColorDark ?? borderColor ?? Palette.primaryDark,
          ctx: context,
        )!,
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
