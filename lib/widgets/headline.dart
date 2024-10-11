import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Headline extends StatelessWidget {
  final String title;
  final int? maxLines;
  final double? fontSize;
  final double minFontSize;
  final double maxFontSize;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  final TextStyle? style;
  final Color? textColor;
  final Color? textColorDark;
  final TextOverflow? overflow;
  final double letterSpacing;
  final TextDecoration? decoration;

  const Headline(
    this.title, {
    Key? key,
    this.maxLines,
    this.fontSize,
    this.minFontSize = 12,
    this.maxFontSize = double.infinity,
    this.textAlign,
    this.fontWeight,
    this.style,
    this.textColor,
    this.textColorDark,
    this.overflow,
    this.letterSpacing = Utils.letterSpacing,
    this.decoration = TextDecoration.none,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AdaptiveText(
      title,
      softWrap: true,
      maxLines: maxLines,
      minFontSize: minFontSize,
      maxFontSize: maxFontSize,
      textAlign: textAlign,
      overflow: overflow,
      fontSize: fontSize ?? 20.sp,
      fontWeight: fontWeight ?? FontWeight.w600,
      letterSpacing: letterSpacing,
      textColor: textColor ?? Palette.onSurface100Light,
      textColorDark: textColorDark ?? textColor ?? Palette.onSurface100Dark,
      style: style?.copyWith(fontStyle: FontStyle.normal),
      decoration: decoration,
    );
  }
}
