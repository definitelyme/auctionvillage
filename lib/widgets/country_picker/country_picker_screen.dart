library country_picker_screen.dart;

import 'dart:io';

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kt_dart/collection.dart';

part '_country_picker_screen.dart';

enum _CountryPickerView { flag, dialcode, flagAndCode, none }

Widget _flagSVG(Country? country, {double? width, String? label}) {
  const loader = CircularProgressBar.adaptive(
    height: 20,
    width: 20,
    colorDark: Colors.white70,
    strokeWidth: 1.5,
  );

  return country?.flag.getOrNull?.let((it) {
        if (country.isNetwork) {
          return SvgPicture.network(
            it,
            width: width,
            semanticsLabel: label ?? country.name.getOrNull,
            placeholderBuilder: (c) => loader,
          );
        } else {
          return SvgPicture.file(
            File(it),
            width: width,
            semanticsLabel: label ?? country.name.getOrNull,
            placeholderBuilder: (c) => loader,
          );
        }
      }) ??
      Utils.nothing;
}

class CountryPicker extends StatefulWidget {
  final String? initialValue;
  final Country? selected;
  final ValueChanged<Country?> onChanged;
  final Widget Function(BuildContext context, Country? country)? pickerBuilder;
  final _CountryPickerView _view;
  final KtList<Country> countries;
  //
  final EdgeInsets? padding;
  final double? flagWidth;
  //
  final int? maxLines;
  final double? minFontSize;
  final double? fontSize;
  final double? maxFontSize;
  final bool? softWrap;
  final bool? wrapWords;
  final FontWeight? fontWeight;
  final TextStyle? style;
  final TextAlign? textAlign;
  final Color? textColor;
  final Color? textColorDark;
  final StrutStyle? strutStyle;
  final Color? dividerColorLight;
  final Color? dividerColorDark;

  const CountryPicker({
    Key? key,
    this.initialValue,
    this.countries = const KtList.empty(),
    this.dividerColorLight,
    this.dividerColorDark,
    required this.selected,
    required this.onChanged,
    required Widget Function(BuildContext context, Country? country) builder,
  })  : _view = _CountryPickerView.none,
        pickerBuilder = builder,
        flagWidth = null,
        padding = null,
        maxLines = null,
        minFontSize = null,
        fontSize = null,
        maxFontSize = null,
        softWrap = null,
        wrapWords = null,
        fontWeight = null,
        style = null,
        textAlign = null,
        textColor = null,
        textColorDark = null,
        strutStyle = null,
        super(key: key);

  const CountryPicker.flag({
    Key? key,
    this.initialValue,
    this.countries = const KtList.empty(),
    required this.selected,
    required this.onChanged,
    this.padding,
    this.flagWidth,
    this.dividerColorLight,
    this.dividerColorDark,
  })  : _view = _CountryPickerView.flag,
        pickerBuilder = null,
        maxLines = null,
        minFontSize = null,
        fontSize = null,
        maxFontSize = null,
        softWrap = null,
        wrapWords = null,
        fontWeight = null,
        style = null,
        textAlign = null,
        textColor = null,
        textColorDark = null,
        strutStyle = null,
        super(key: key);

  const CountryPicker.flagAndCode({
    Key? key,
    this.initialValue,
    this.countries = const KtList.empty(),
    required this.selected,
    required this.onChanged,
    this.padding,
    this.flagWidth,
    this.maxLines,
    this.minFontSize,
    this.fontSize,
    this.maxFontSize,
    this.softWrap,
    this.wrapWords,
    this.fontWeight,
    this.style,
    this.textAlign,
    this.textColor,
    this.textColorDark,
    this.strutStyle,
    this.dividerColorLight,
    this.dividerColorDark,
  })  : _view = _CountryPickerView.flagAndCode,
        pickerBuilder = null,
        super(key: key);

  const CountryPicker.dialcode({
    Key? key,
    this.initialValue,
    this.countries = const KtList.empty(),
    required this.selected,
    required this.onChanged,
    this.maxLines,
    this.minFontSize,
    this.fontSize,
    this.maxFontSize,
    this.softWrap,
    this.wrapWords,
    this.fontWeight,
    this.style,
    this.textAlign,
    this.textColor,
    this.textColorDark,
    this.strutStyle,
    this.dividerColorLight,
    this.dividerColorDark,
  })  : _view = _CountryPickerView.dialcode,
        pickerBuilder = null,
        flagWidth = null,
        padding = null,
        super(key: key);

  @override
  State<CountryPicker> createState() => _CountryPickerState();
}

class _CountryPickerState extends State<CountryPicker> {
  late Country? selectedItem;

  KtList<Country> get list => widget.countries;

  Country? get _default => list.firstOrNull((e) => e.iso.getOrEmpty.toLowerCase() == Country.defaultISO.toLowerCase());

  @override
  void didUpdateWidget(covariant CountryPicker oldWidget) {
    final lastSelection = oldWidget.selected;
    if (lastSelection != widget.selected) setState(() => selectedItem = widget.selected ?? _default);
    super.didUpdateWidget(oldWidget);
  }

  @override
  void initState() {
    if (widget.initialValue != null) {
      selectedItem = list.firstOrNull(
            (e) =>
                (e.iso.getOrEmpty.toLowerCase() == widget.initialValue?.toLowerCase()) ||
                (e.dialCode.getOrNull?.toLowerCase() == widget.initialValue?.toLowerCase()),
          ) ??
          _default;
    } else {
      selectedItem = widget.selected ?? _default;
    }

    super.initState();
  }

  void showCountryPicker() async {
    final result = await navigator.push(CountryPickerRoute(initial: selectedItem, countries: list));
    final pickedCountry = result as Country?;

    setState(() {
      selectedItem = pickedCountry ?? selectedItem;
      widget.onChanged(selectedItem);
    });
  }

  Widget get _material {
    return TextButton(
      onPressed: showCountryPicker,
      clipBehavior: Clip.hardEdge,
      style: TextButton.styleFrom(
        enableFeedback: true,
        padding: widget._view.when(none: () => EdgeInsets.zero),
        minimumSize: widget._view.when(none: () => Size.zero),
        maximumSize: widget._view.when(
          flagAndCode: () => const Size.fromWidth(80),
          none: () => const Size.fromWidth(60),
        ),
      ),
      child: Center(
        child: widget._view.when(
          flag: () => _FlagView(selectedItem, flagWidth: widget.flagWidth),
          flagAndCode: () => _FlagAndCodeView(selectedItem, flagWidth: widget.flagWidth),
          none: () => widget.pickerBuilder!(context, selectedItem),
          dialcode: () => _DialCodeView(
            selectedItem,
            fontSize: widget.fontSize,
            maxFontSize: widget.maxFontSize,
            minFontSize: widget.minFontSize,
            maxLines: widget.maxLines,
            softWrap: widget.softWrap,
            wrapWords: widget.wrapWords,
            fontWeight: widget.fontWeight,
            style: widget.style,
            textAlign: widget.textAlign,
            textColor: widget.textColor,
            textColorDark: widget.textColorDark,
            strutStyle: widget.strutStyle,
          ),
        ),
      ),
    );
  }

  Widget get _cupertino {
    return CupertinoButton(
      onPressed: showCountryPicker,
      // minSize: ,
      padding: widget._view.when(none: () => EdgeInsets.zero),
      child: Center(
        child: widget._view.when(
          flag: () => _FlagView(selectedItem, flagWidth: widget.flagWidth),
          flagAndCode: () => _FlagAndCodeView(selectedItem, flagWidth: widget.flagWidth),
          none: () => widget.pickerBuilder!(context, selectedItem),
          dialcode: () => _DialCodeView(
            selectedItem,
            fontSize: widget.fontSize,
            maxFontSize: widget.maxFontSize,
            minFontSize: widget.minFontSize,
            maxLines: widget.maxLines,
            softWrap: widget.softWrap,
            wrapWords: widget.wrapWords,
            fontWeight: widget.fontWeight,
            style: widget.style,
            textAlign: widget.textAlign,
            textColor: widget.textColor,
            textColorDark: widget.textColorDark,
            strutStyle: widget.strutStyle,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return App.platform.fold(
      material: () => Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: widget._view.when(
              flagAndCode: () => Center(child: _material),
              none: () => _material,
            ),
          ),
          //
          SizedBox(
            height: 25,
            child: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: VerticalDivider(
                thickness: 1,
                width: 0,
                color: App.resolveColor(
                  widget.dividerColorLight ?? Colors.grey.shade300,
                  dark: widget.dividerColorDark ?? Colors.grey.shade800,
                  ctx: context,
                ),
              ),
            ),
          ),
        ],
      ),
      cupertino: () => Row(
        children: [
          Flexible(
            child: widget._view.when(
              flagAndCode: () => Center(child: _cupertino),
              none: () => _cupertino,
            ),
          ),
          //
          SizedBox(
            height: 25,
            child: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: VerticalDivider(
                thickness: 1,
                width: 0,
                color: App.resolveColor(
                  widget.dividerColorLight ?? Colors.grey.shade300,
                  dark: widget.dividerColorDark ?? Colors.grey.shade800,
                  ctx: context,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _FlagView extends StatelessWidget {
  final Country? country;
  final double? flagWidth;

  const _FlagView(this.country, {Key? key, this.flagWidth}) : super(key: key);

  double? get _flagWidth => flagWidth ?? 35;

  @override
  Widget build(BuildContext context) {
    return country?.flag.getOrNull == null || country!.flag.getOrNull!.isEmpty
        ? _DialCodeView(country)
        : _flagSVG(country, width: _flagWidth, label: '${country!.name.getOrNull}');
  }
}

class _DialCodeView extends StatelessWidget {
  final Country? country;
  final int? maxLines;
  final double? minFontSize;
  final double? fontSize;
  final double? maxFontSize;
  final bool? softWrap;
  final bool? wrapWords;
  final FontWeight? fontWeight;
  final TextStyle? style;
  final TextAlign? textAlign;
  final Color? textColor;
  final Color? textColorDark;
  final StrutStyle? strutStyle;

  const _DialCodeView(
    this.country, {
    Key? key,
    this.maxLines,
    this.minFontSize,
    this.fontSize,
    this.maxFontSize,
    this.softWrap,
    this.wrapWords,
    this.fontWeight,
    this.style,
    this.textAlign,
    this.textColor,
    this.textColorDark,
    this.strutStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AdaptiveText(
      '${country?.dialCode.getOrNull}',
      maxLines: maxLines ?? 1,
      minFontSize: minFontSize ?? 12,
      fontSize: fontSize ?? 16.sp,
      maxFontSize: maxFontSize ?? 16,
      softWrap: softWrap ?? true,
      wrapWords: wrapWords ?? true,
      fontWeight: fontWeight ?? FontWeight.w500,
      style: style,
      textAlign: textAlign,
      textColor: textColor,
      textColorDark: textColorDark,
      strutStyle: StrutStyle(
        forceStrutHeight: strutStyle?.forceStrutHeight ?? true,
        leading: strutStyle?.leading ?? 1,
        fontSize: strutStyle?.fontSize ?? 17.sp,
        fontWeight: strutStyle?.fontWeight ?? FontWeight.w500,
      ),
    );
  }
}

class _FlagAndCodeView extends StatelessWidget {
  final Country? country;
  final double? flagWidth;

  const _FlagAndCodeView(this.country, {Key? key, this.flagWidth}) : super(key: key);

  double? get _flagWidth => flagWidth ?? 20;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Flexible(flex: 10, child: _flagSVG(country, width: _flagWidth, label: '${country!.name.getOrNull}')),
        const SizedBox(width: 4),
        Flexible(flex: 9, child: _DialCodeView(country)),
      ],
    );
  }
}

extension on _CountryPickerView {
  T when<T>({
    T Function()? flag,
    T Function()? dialcode,
    T Function()? flagAndCode,
    required T Function() none,
  }) {
    switch (this) {
      case _CountryPickerView.flag:
        return flag != null ? flag() : none();
      case _CountryPickerView.dialcode:
        return dialcode != null ? dialcode() : none();
      case _CountryPickerView.flagAndCode:
        return flagAndCode != null ? flagAndCode() : none();
      case _CountryPickerView.none:
      default:
        return none();
    }
  }
}
