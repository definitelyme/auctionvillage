import 'package:auctionvillage/manager/theme/theme.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

enum _AutoSizeTextType { standard, rich }

/// A stateless widget to render AdaptiveText.
class AdaptiveText extends StatelessWidget {
  final _AutoSizeTextType _type;

  final String data;
  final TextDecoration? decoration;
  final String? fontFamily;
  final double? fontSize;
  final FontWeight? fontWeight;
  final AutoSizeGroup? group;
  final double? height;
  final bool? isDefault;
  final double? letterSpacing;
  final Locale? locale;
  final double? maxFontSize;
  final int? maxLines;
  final double? minFontSize;
  final TextOverflow? overflow;
  final Widget? overflowReplacement;
  final List<double>? presetFontSizes;
  final String? semanticsLabel;
  final bool? softWrap;
  final double? stepGranularity;
  final StrutStyle? strutStyle;
  final TextStyle? style;
  final TextAlign? textAlign;
  //
  final Color textColor;

  final Color textColorDark;
  final TextDirection? textDirection;
  final Key? textKey;
  final double? textScaleFactor;
  final TextSpan textSpan;
  final Key? widgetKey;
  final double? wordSpacing;
  final bool? wrapWords;

  const AdaptiveText(
    this.data, {
    Key? key,
    this.widgetKey,
    this.group,
    this.locale,
    this.maxFontSize,
    this.maxLines,
    this.minFontSize,
    this.overflow,
    this.overflowReplacement,
    this.presetFontSizes,
    this.semanticsLabel,
    this.softWrap,
    this.stepGranularity = 1,
    this.strutStyle,
    this.style,
    this.textAlign,
    this.textDirection,
    this.textKey,
    this.textScaleFactor,
    this.fontFamily,
    this.wrapWords = true,
    bool? isDefault,
    Color? textColor,
    Color? textColorDark,
    this.fontSize,
    this.fontWeight,
    this.height,
    this.letterSpacing,
    this.wordSpacing,
    this.decoration,
  })  : _type = _AutoSizeTextType.standard,
        textSpan = const TextSpan(),
        textColor = textColor ?? Palette.onSurfaceLight,
        textColorDark = textColorDark ?? (textColor != Palette.onSurfaceLight ? textColor : null) ?? Palette.onSurfaceDark,
        isDefault = isDefault ?? false,
        super(key: key);

  const AdaptiveText.rich(
    this.textSpan, {
    Key? key,
    this.widgetKey,
    this.group,
    this.locale,
    this.maxFontSize,
    this.maxLines,
    this.minFontSize,
    this.overflow,
    this.overflowReplacement,
    this.presetFontSizes,
    this.semanticsLabel,
    this.softWrap,
    this.stepGranularity = 1,
    this.strutStyle,
    this.style,
    this.textAlign,
    this.textDirection,
    this.textKey,
    this.textScaleFactor,
    this.fontFamily,
    this.wrapWords = true,
    bool? isDefault,
    Color? textColor,
    Color? textColorDark,
    this.fontSize,
    this.fontWeight,
    this.height,
    this.letterSpacing,
    this.wordSpacing,
    this.decoration,
  })  : _type = _AutoSizeTextType.rich,
        data = '',
        textColor = textColor ?? Palette.onSurfaceLight,
        textColorDark = textColorDark ?? Palette.onSurfaceDark,
        isDefault = isDefault ?? false,
        super(key: key);

  String? get _fontFamily => fontFamily ?? Utils.platform_(cupertino: FontManager.ios);
  double get _maxFontSize => maxFontSize ?? 20;
  double get _minFontSize => minFontSize ?? 12;
  String get _semanticsLabel => semanticsLabel ?? (_type == _AutoSizeTextType.standard ? data : textSpan.toPlainText());
  bool get _softWrap => softWrap ?? true;
  double get _stepGranularity => stepGranularity ?? 1;
  bool get _wrapWords => wrapWords ?? true;

  TextStyle? _style(BuildContext ctx) => Theme.of(ctx).platform.fold(
        material: () => TextStyle(
          color: App.resolveColor(textColor, dark: textColorDark, ctx: ctx),
          fontSize: fontSize,
          fontWeight: fontWeight,
          fontFamily: _fontFamily,
          height: height,
          letterSpacing: letterSpacing,
          decoration: decoration,
          wordSpacing: wordSpacing,
          overflow: overflow,
        ),
        cupertino: () => AppTheme.cupertinoTextStyle(ctx)?.merge(
          TextStyle(
            color: App.resolveColor(textColor, dark: textColorDark, ctx: ctx),
            fontSize: fontSize,
            fontWeight: fontWeight,
            fontFamily: _fontFamily,
            height: height,
            letterSpacing: letterSpacing,
            decoration: decoration,
            wordSpacing: wordSpacing,
            overflow: overflow,
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return _type == _AutoSizeTextType.standard
        ? isDefault != null && isDefault!
            ? Text(
                data,
                key: widgetKey,
                locale: locale,
                maxLines: maxLines,
                overflow: overflow,
                semanticsLabel: _semanticsLabel,
                softWrap: _softWrap,
                strutStyle: strutStyle,
                textAlign: textAlign,
                textDirection: textDirection,
                textScaleFactor: textScaleFactor,
                style: _style(context)?.merge(style),
              )
            : AutoSizeText(
                data,
                key: widgetKey,
                group: group,
                locale: locale,
                maxFontSize: _maxFontSize,
                maxLines: maxLines,
                minFontSize: _minFontSize,
                overflow: overflow,
                overflowReplacement: overflowReplacement,
                presetFontSizes: presetFontSizes,
                semanticsLabel: _semanticsLabel,
                softWrap: _softWrap,
                stepGranularity: _stepGranularity,
                strutStyle: strutStyle,
                style: _style(context)?.merge(style),
                textAlign: textAlign,
                textDirection: textDirection,
                textKey: textKey,
                textScaleFactor: textScaleFactor,
                wrapWords: _wrapWords,
              )
        : isDefault != null && isDefault!
            ? Text.rich(
                textSpan,
                key: widgetKey,
                locale: locale,
                maxLines: maxLines,
                overflow: overflow,
                semanticsLabel: _semanticsLabel,
                softWrap: _softWrap,
                strutStyle: strutStyle,
                textAlign: textAlign,
                textDirection: textDirection,
                textScaleFactor: textScaleFactor,
                style: _style(context)?.merge(style),
              )
            : AutoSizeText.rich(
                textSpan,
                key: widgetKey,
                group: group,
                locale: locale,
                maxFontSize: _maxFontSize,
                maxLines: maxLines,
                minFontSize: _minFontSize,
                overflow: overflow,
                overflowReplacement: overflowReplacement,
                presetFontSizes: presetFontSizes,
                semanticsLabel: _semanticsLabel,
                softWrap: _softWrap,
                stepGranularity: _stepGranularity,
                strutStyle: strutStyle,
                style: _style(context)?.merge(style),
                textAlign: textAlign,
                textDirection: textDirection,
                textKey: textKey,
                textScaleFactor: textScaleFactor,
                wrapWords: _wrapWords,
              );
  }
}
