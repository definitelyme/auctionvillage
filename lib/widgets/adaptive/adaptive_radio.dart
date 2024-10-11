library adaptive_radio.dart;

import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

typedef _StringBuilder<T> = String? Function(T?);

const _nullStringValue = '-- Invalid! [Property is null] --';

/// A stateless widget to render AdaptiveRadioList.
class AdaptiveRadioList<T> extends StatelessWidget {
  final Color? activeColor;
  final Color? activeTextColorDark;
  final Color? activeTextColorLight;
  final _StringBuilder<T> builder;
  final bool enabled;
  final Color? fillColor;
  final Color? focusColor;
  final FocusNode? focusNode;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? hoverColor;
  final Color? inActiveColor;
  final List<T> items;
  final MaterialTapTargetSize? materialTapTargetSize;
  final double? maxFontSize;
  final double? minFontSize;
  final ValueChanged<T?>? onChanged;
  final MaterialStateProperty<Color?>? overlayColor;
  final PlatformType? platform;
  final T? selected;
  final double? splashRadius;
  final Color? textColorDark;
  final Color? textColorLight;
  final VisualDensity? visualDensity;

  const AdaptiveRadioList({
    super.key,
    this.activeColor,
    this.activeTextColorDark,
    this.activeTextColorLight,
    required this.builder,
    this.enabled = true,
    this.fillColor,
    this.focusColor,
    this.focusNode,
    this.fontSize,
    this.fontWeight,
    this.hoverColor,
    this.inActiveColor,
    required this.items,
    this.materialTapTargetSize,
    this.maxFontSize,
    this.minFontSize,
    required this.onChanged,
    this.overlayColor,
    this.platform,
    this.selected,
    this.splashRadius,
    this.textColorDark,
    this.textColorLight,
    this.visualDensity,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10.0,
      runSpacing: 5.0,
      children: items
          .map((e) => AdaptiveRadio<T>(
                value: e,
                builder: builder,
                groupValue: selected,
                onChanged: onChanged,
                activeColor: activeColor,
                enabled: enabled,
                fillColor: fillColor,
                focusColor: focusColor,
                focusNode: focusNode,
                hoverColor: hoverColor,
                materialTapTargetSize: materialTapTargetSize,
                overlayColor: overlayColor,
                splashRadius: splashRadius,
                visualDensity: visualDensity,
                platform: platform,
                inActiveColor: inActiveColor,
                fontSize: fontSize,
                fontWeight: fontWeight,
                minFontSize: minFontSize,
                maxFontSize: maxFontSize,
                textColorDark: textColorDark,
                textColorLight: textColorLight,
                activeTextColorDark: activeTextColorDark,
                activeTextColorLight: activeTextColorLight,
              ))
          .toList(),
    );
  }
}

/// A stateless widget to render AdaptiveRadio.
class AdaptiveRadio<T> extends StatelessWidget {
  final Color? activeColor;
  final Color? activeTextColorDark;
  final Color? activeTextColorLight;
  final _StringBuilder<T> builder;
  final bool enabled;
  final Color? fillColor;
  final Color? focusColor;
  final FocusNode? focusNode;
  final double? fontSize;
  final FontWeight? fontWeight;
  final T? groupValue;
  final Color? hoverColor;
  final Color? inActiveColor;
  final MaterialTapTargetSize? materialTapTargetSize;
  final double? maxFontSize;
  final double? minFontSize;
  final ValueChanged<T?>? onChanged;
  final MaterialStateProperty<Color?>? overlayColor;
  final PlatformType? platform;
  final double? splashRadius;
  final Color? textColorDark;
  final Color? textColorLight;
  final T value;
  final VisualDensity? visualDensity;

  const AdaptiveRadio({
    super.key,
    this.activeColor,
    this.activeTextColorDark,
    this.activeTextColorLight,
    required this.builder,
    this.enabled = true,
    this.fillColor,
    this.focusColor,
    this.focusNode,
    this.fontSize,
    this.fontWeight,
    required this.groupValue,
    this.hoverColor,
    this.inActiveColor,
    this.materialTapTargetSize,
    this.maxFontSize,
    this.minFontSize,
    required this.onChanged,
    this.overlayColor,
    this.platform,
    this.splashRadius,
    this.textColorDark,
    this.textColorLight,
    required this.value,
    this.visualDensity,
  });

  double get _fontSize => fontSize ?? 15.sp;
  FontWeight get _fontWeight => fontWeight ?? FontWeight.w400;

  @override
  Widget build(BuildContext context) {
    return PlatformBuilder.builder(
      platform: platform,
      material: (c) => _MaterialRadioChoice<T>(
        value: value,
        groupValue: groupValue,
        builder: builder,
        onChanged: onChanged,
        fontSize: _fontSize,
        fontWeight: _fontWeight,
        minFontSize: minFontSize,
        maxFontSize: maxFontSize,
        textColorDark: textColorDark,
        textColorLight: textColorLight,
        activeTextColorDark: activeTextColorDark,
        activeTextColorLight: activeTextColorLight,
        child: Radio<T>(
          value: value,
          groupValue: groupValue,
          onChanged: onChanged,
          activeColor: activeColor,
          fillColor: MaterialStateProperty.resolveWith((st) {
            if (st.toList(growable: false).firstOrNull() == MaterialState.selected) return fillColor;
            return inActiveColor;
          }),
          visualDensity: visualDensity,
          focusColor: focusColor,
          hoverColor: hoverColor,
          overlayColor: overlayColor,
          splashRadius: splashRadius,
          focusNode: focusNode,
          materialTapTargetSize: materialTapTargetSize,
        ),
      ),
      cupertino: (c) => CupertinoRadioChoice(
        groupValue: groupValue,
        onChanged: onChanged,
        value: value,
        builder: builder,
        enabled: enabled,
        selectedColor: activeColor,
        unSelectedColor: inActiveColor,
        fontSize: _fontSize,
        fontWeight: _fontWeight,
        minFontSize: minFontSize,
        maxFontSize: maxFontSize,
        textColorDark: textColorDark,
        textColorLight: textColorLight,
        activeTextColorDark: activeTextColorDark,
        activeTextColorLight: activeTextColorLight,
      ),
    );
  }
}

class CupertinoRadioChoice<T> extends StatefulWidget {
  /// Text color for the selected radio choice in Dark mode
  final Color? activeTextColorDark;

  /// Text color for the selected radio choice in Light mode
  final Color? activeTextColorLight;

  final _StringBuilder<T> builder;

  /// Defines if the widget shall be enabled (clickable) or not
  final bool enabled;

  /// Font size for Radio text
  final double? fontSize;

  /// Font weight for Radio text
  final FontWeight? fontWeight;

  /// Contains a map which defines which choices shall be displayed (key => value).
  /// Values are the values displyed in the choices
  final T? groupValue;

  /// Max font size
  final double? maxFontSize;

  /// Min font size
  final double? minFontSize;

  /// Function is called if the user selects another choice
  final ValueChanged<T?>? onChanged;

  /// The color of the selected radio choice
  final Color? selectedColor;

  /// The color of the text in Dark mode
  final Color? textColorDark;

  /// The color of the text in Light mode
  final Color? textColorLight;

  /// The color of the not selected radio choice(s)
  final Color? unSelectedColor;

  /// Defines which choice shall be selected initally by key
  final T value;

  const CupertinoRadioChoice({
    super.key,
    required this.groupValue,
    required this.onChanged,
    required this.value,
    required this.builder,
    this.selectedColor,
    this.fontSize,
    this.fontWeight,
    this.maxFontSize,
    this.minFontSize,
    this.unSelectedColor,
    this.enabled = true,
    this.textColorDark,
    this.textColorLight,
    this.activeTextColorDark,
    this.activeTextColorLight,
  });

  @override
  _CupertinoRadioChoiceState<T> createState() => _CupertinoRadioChoiceState();
}

/// State of the widget
class _CupertinoRadioChoiceState<T> extends State<CupertinoRadioChoice<T>> {
  T? _selectedValue;

  @override
  void didUpdateWidget(CupertinoRadioChoice<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.groupValue != oldWidget.groupValue || widget.value != oldWidget.value) {
      _selectedValue = widget.groupValue;
    }
  }

  @override
  void initState() {
    super.initState();
    _selectedValue = widget.groupValue;
  }

  bool get checked => widget.value == _selectedValue;
  Color get selectedColor => widget.selectedColor ?? CupertinoColors.systemBlue;
  Color get textColorDark => checked ? (widget.activeTextColorDark ?? Palette.onPrimary) : (widget.textColorDark ?? Palette.onPrimary);
  Color get textColorLight => checked ? (widget.activeTextColorLight ?? Palette.onPrimary) : (widget.textColorLight ?? Palette.onPrimary);
  Color get unSelectedColor => widget.unSelectedColor ?? CupertinoColors.inactiveGray;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      disabledColor: widget.enabled ? selectedColor : unSelectedColor,
      color: checked ? selectedColor : unSelectedColor,
      borderRadius: const BorderRadius.all(Radius.circular(8)),
      padding: const EdgeInsets.all(10.0),
      onPressed: !widget.enabled || _selectedValue == widget.value
          ? null
          : () {
              HapticFeedback.mediumImpact();
              setState(() => _selectedValue = widget.value);
              widget.onChanged?.call(widget.value);
            },
      child: AdaptiveText(
        widget.builder(widget.value) ?? _nullStringValue,
        fontSize: widget.fontSize,
        maxFontSize: widget.maxFontSize,
        minFontSize: widget.minFontSize,
        isDefault: true,
        fontWeight: widget.fontWeight,
        textColor: textColorLight,
        textColorDark: textColorDark,
      ),
    );
  }
}

class _MaterialRadioChoice<T> extends StatefulWidget {
  final Color? activeTextColorDark;
  final Color? activeTextColorLight;
  final _StringBuilder<T> builder;
  final Radio<T> child;
  final double? fontSize;
  final FontWeight? fontWeight;
  final T? groupValue;
  final double? maxFontSize;
  final double? minFontSize;
  final ValueChanged<T?>? onChanged;
  final Color? textColorDark;
  final Color? textColorLight;
  final T value;

  const _MaterialRadioChoice({
    Key? key,
    required this.builder,
    required this.child,
    required this.onChanged,
    required this.value,
    this.groupValue,
    this.fontSize,
    this.fontWeight,
    this.maxFontSize,
    this.minFontSize,
    this.textColorDark,
    this.textColorLight,
    this.activeTextColorDark,
    this.activeTextColorLight,
  }) : super(key: key);

  @override
  State<_MaterialRadioChoice<T>> createState() => __MaterialRadioChoiceState();
}

class __MaterialRadioChoiceState<T> extends State<_MaterialRadioChoice<T>> {
  bool get checked => widget.value == widget.groupValue;

  Color? get textColorDark => checked ? widget.activeTextColorDark : widget.textColorDark;
  Color? get textColorLight => checked ? widget.activeTextColorLight : widget.textColorLight;

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          widget.child,
          //
          GestureDetector(
            onTap: checked
                ? null
                : () {
                    HapticFeedback.mediumImpact();
                    widget.onChanged?.call(widget.value);
                  },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 2.0),
              child: AdaptiveText(
                widget.builder(widget.value) ?? _nullStringValue,
                fontSize: widget.fontSize,
                maxFontSize: widget.maxFontSize,
                minFontSize: widget.minFontSize,
                fontWeight: widget.fontWeight,
                isDefault: true,
                textColor: textColorLight,
                textColorDark: textColorDark,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
