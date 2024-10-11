// ignore_for_file: unused_element

import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:kt_dart/collection.dart';

class AdaptiveDropdown<Model> extends StatelessWidget {
  static const double kErrorHeightDiff = 21;
  static const EdgeInsetsGeometry kdropdownContentPadding = EdgeInsets.symmetric(vertical: 7.0, horizontal: 12.0);
  static const double kdropdownHeight = 46;

  final String? Function(Model?)? text;
  final Widget? Function(Model?)? child;
  final void Function(Model?) onChanged;
  final List<Widget> Function(BuildContext)? selectedItemBuilder;
  final bool alignedDropdown;
  final AlignmentDirectional alignment;
  final Color? backgroundColorDark;
  final Color? backgroundColorLight;
  final Color? borderColorDark;
  final Color? borderColorLight;
  final InputBorder? border;
  final BorderRadius? borderRadius;
  final Color? buttonColor;
  final ColorScheme? colorScheme;
  final EdgeInsetsGeometry? contentPadding;
  final InputDecoration? decoration;
  final double diameterRatio;
  final bool disabled;
  final String disabledHint;
  final Widget? disabledHintWidget;
  final Color? dropdownColor;
  final int elevation;
  final InputBorder? errorBorder;
  final String? Function(Model?)? errorText;
  final InputBorder? focusedErrorBorder;
  final double? height;
  final Color? highlightColor;
  final String hint;
  final Widget? hintWidget;
  final Color? iconDisabledColor;
  final Color? iconEnabledColor;
  final double iconSize;
  final bool isDense;
  final bool isExpanded;
  final double? itemFontSize;
  final FontWeight? itemFontWeight;
  final List<Model> items;
  //
  final int maxLines;
  final double? menuMaxHeight;
  final double minFontSize;
  final double maxFontSize;
  final double offAxisFraction;
  final double? radius;
  final Model groupValue;
  final bool looping;
  final double magnification;
  final Widget? selectionOverlay;
  final ShapeBorder? shape;
  final Color? splashColor;
  final bool useMagnifier;
  final bool validate;
  final double? pickerHeight;
  final PlatformType? platform;

  const AdaptiveDropdown({
    Key? key,
    this.radius,
    required this.items,
    this.text,
    this.child,
    this.hint = '-- Choose --',
    this.hintWidget,
    this.disabledHint = '-- Invalid selection --',
    this.disabledHintWidget,
    required this.groupValue,
    this.validate = false,
    this.errorText,
    this.disabled = false,
    this.iconSize = 19.0,
    this.isDense = false,
    this.isExpanded = true,
    this.alignedDropdown = false,
    required this.onChanged,
    this.maxLines = 1,
    this.minFontSize = 12,
    this.maxFontSize = double.infinity,
    this.buttonColor,
    this.itemFontSize,
    this.itemFontWeight,
    this.highlightColor,
    this.backgroundColorLight,
    this.backgroundColorDark,
    this.borderColorLight,
    this.borderColorDark,
    this.colorScheme,
    this.splashColor,
    this.border,
    this.errorBorder,
    this.focusedErrorBorder,
    this.shape,
    this.contentPadding,
    this.alignment = AlignmentDirectional.centerStart,
    this.borderRadius,
    this.elevation = 8,
    this.dropdownColor,
    this.height,
    this.iconDisabledColor,
    this.iconEnabledColor,
    this.menuMaxHeight,
    this.decoration,
    this.selectedItemBuilder,
    this.pickerHeight,
    this.magnification = 1.0,
    this.looping = false,
    this.useMagnifier = true,
    this.diameterRatio = 1.07,
    this.offAxisFraction = 0.0,
    this.selectionOverlay = const CupertinoPickerDefaultSelectionOverlay(),
    this.platform,
  }) : super(key: key);

  double get _height => _hasError && !App.platform.isIOS
      ? height != null
          ? height! + AdaptiveDropdown.kErrorHeightDiff
          : AdaptiveDropdown.kdropdownHeight + AdaptiveDropdown.kErrorHeightDiff
      : height ?? AdaptiveDropdown.kdropdownHeight;

  bool get _hasError => errorText?.call(groupValue) != null && validate;

  String? get _text {
    if (groupValue != null) {
      if (text != null) {
        return text?.call(groupValue) ?? (items.isEmpty ? disabledHint : hint);
      } else {
        return "- Please set 'text' property -";
      }
    } else {
      return items.isEmpty ? disabledHint : hint;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Disabled(
      disabled: disabled,
      child: PlatformBuilder(
        material: _MaterialDropdown(
          child: child,
          hint: hint,
          hintWidget: hintWidget,
          disabledHint: disabledHint,
          disabledHintWidget: disabledHintWidget,
          text: text,
          items: items,
          groupValue: groupValue,
          onChanged: onChanged,
          disabled: disabled,
          iconSize: iconSize,
          isDense: isDense,
          isExpanded: isExpanded,
          alignedDropdown: alignedDropdown,
          buttonColor: buttonColor,
          itemFontSize: itemFontSize,
          itemFontWeight: itemFontWeight,
          highlightColor: highlightColor,
          backgroundColorLight: backgroundColorLight,
          backgroundColorDark: backgroundColorDark,
          borderColorLight: borderColorLight,
          borderColorDark: borderColorDark,
          colorScheme: colorScheme,
          splashColor: splashColor,
          border: border,
          errorBorder: errorBorder,
          focusedErrorBorder: focusedErrorBorder,
          shape: shape,
          contentPadding: contentPadding,
          alignment: alignment,
          borderRadius: borderRadius,
          elevation: elevation,
          dropdownColor: dropdownColor,
          height: _height,
          iconDisabledColor: iconDisabledColor,
          iconEnabledColor: iconEnabledColor,
          menuMaxHeight: menuMaxHeight,
          decoration: decoration,
          selectedItemBuilder: selectedItemBuilder,
          magnification: magnification,
          looping: looping,
          useMagnifier: useMagnifier,
          diameterRatio: diameterRatio,
          offAxisFraction: offAxisFraction,
          selectionOverlay: selectionOverlay,
          errorText: errorText,
          maxLines: maxLines,
          minFontSize: minFontSize,
          maxFontSize: maxFontSize,
          radius: radius,
          validate: validate,
          platform: platform,
        ),
        cupertino: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: ConstrainedBox(
                constraints: BoxConstraints(maxHeight: _height),
                child: Row(
                  children: [
                    if (decoration?.prefixIcon != null) decoration!.prefixIcon!,
                    //
                    Flexible(
                      child: Material(
                        shape: shape,
                        color: App.resolveColor(backgroundColorLight ?? Palette.inputBgColorLight,
                            dark: backgroundColorDark ?? Palette.inputBgColorDark, ctx: context),
                        borderRadius: borderRadius ?? BorderRadius.circular(radius ?? Utils.inputBorderRadius),
                        child: AdaptiveInkWell(
                          onTap: () async {
                            if (disabled || items.isEmpty) return;
                            //
                            final result = await App.showAdaptiveBottomSheet<Model?>(
                              context,
                              bounce: true,
                              // isDismissible: false,
                              useRootNavigator: false,
                              builder: (_) => _CupertinoPicker(
                                items: items,
                                groupValue: groupValue,
                                itemFontSize: itemFontSize,
                                itemFontWeight: itemFontWeight,
                                maxLines: maxLines,
                                minFontSize: minFontSize,
                                maxFontSize: maxFontSize,
                                useMagnifier: useMagnifier,
                                magnification: magnification,
                                diameterRatio: diameterRatio,
                                offAxisFraction: offAxisFraction,
                                looping: looping,
                                selectionOverlay: selectionOverlay,
                                backgroundColorLight: backgroundColorLight,
                                backgroundColorDark: backgroundColorDark,
                                onSelectedChanged: onChanged,
                                height: pickerHeight,
                                text: text,
                                child: child,
                              ),
                            );

                            if (result != null) onChanged(result);
                          },
                          borderRadius: Utils.inputBorderRadius.br,
                          containedInkWell: true,
                          customBorder: Border.all(
                            width: 1,
                            color: _hasError
                                ? Palette.errorRed
                                : App.resolveColor(
                                    borderColorLight ?? Palette.inputBorderColorLight,
                                    dark: borderColorDark ?? borderColorLight ?? Palette.inputBorderColorDark,
                                    ctx: context,
                                  )!,
                          ),
                          highlightColor: App.resolveColor(
                            backgroundColorLight ?? Palette.inputBgColorLight,
                            dark: backgroundColorDark ?? Palette.inputBgColorDark,
                            ctx: context,
                          ),
                          child: DropdownMenuItem<Model?>(
                            value: groupValue,
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: contentPadding?.let((it) => AdaptiveDropdown.kdropdownContentPadding.add(it)) ??
                                  AdaptiveDropdown.kdropdownContentPadding,
                              child: child?.call(groupValue) ??
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        flex: 2,
                                        child: AdaptiveText(
                                          '$_text',
                                          maxLines: maxLines,
                                          minFontSize: minFontSize,
                                          maxFontSize: maxFontSize,
                                          softWrap: false,
                                          wrapWords: false,
                                          fontSize: itemFontSize ?? 14.sp,
                                          fontWeight: itemFontWeight,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                      //
                                      Icon(
                                        CupertinoIcons.chevron_down,
                                        size: 20,
                                        color: CupertinoDynamicColor.resolve(
                                          App.resolveColor(Palette.iconLight, dark: Palette.iconDark, ctx: context)!,
                                          context,
                                        ),
                                      ),
                                    ],
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //
            if (_hasError)
              AdaptiveText(
                '${errorText?.call(groupValue)}',
                maxLines: 1,
                softWrap: false,
                wrapWords: false,
                minFontSize: 14,
                fontSize: 15.sp,
                textColor: Palette.errorRed,
                overflow: TextOverflow.ellipsis,
              ),
          ],
        ),
      ),
    );
  }
}

class _CupertinoPicker<Model> extends StatefulWidget {
  final String? Function(Model)? text;
  final Color? backgroundColorDark;
  final Color? backgroundColorLight;
  final double diameterRatio;
  final double? itemFontSize;
  final FontWeight? itemFontWeight;
  final List<Model> items;
  final bool looping;
  final double magnification;
  final int maxLines;
  final double minFontSize;
  final double maxFontSize;
  final double offAxisFraction;
  final ValueChanged<Model>? onSelectedChanged;
  final Model groupValue;
  final Widget? selectionOverlay;
  final bool useMagnifier;
  final Widget? Function(Model)? child;
  final double? height;

  const _CupertinoPicker({
    Key? key,
    required this.items,
    required this.groupValue,
    this.height,
    this.onSelectedChanged,
    this.magnification = 1.1,
    this.looping = false,
    this.useMagnifier = true,
    this.diameterRatio = 1.07,
    this.offAxisFraction = 0.0,
    this.selectionOverlay = const CupertinoPickerDefaultSelectionOverlay(),
    this.backgroundColorDark,
    this.backgroundColorLight,
    this.maxLines = 1,
    this.minFontSize = 12,
    this.maxFontSize = double.infinity,
    this.itemFontSize,
    this.itemFontWeight,
    this.text,
    this.child,
  }) : super(key: key);

  @override
  State<_CupertinoPicker<Model>> createState() => _CupertinoPickerState<Model>();
}

class _CupertinoPickerState<Model> extends State<_CupertinoPicker<Model>> {
  late int _selectedItemIndex;

  late FixedExtentScrollController scrollController;

  double get _height => widget.height ?? 0.35.h;

  @override
  void initState() {
    scrollController = FixedExtentScrollController(initialItem: widget.groupValue != null ? widget.items.indexOf(widget.groupValue!) : 0);
    try {
      _selectedItemIndex = widget.items.indexOf(widget.groupValue ?? widget.items[0]);
    } catch (_) {
      _selectedItemIndex = 0;
    }
    super.initState();
  }

  Color get _backgroundLight => widget.backgroundColorLight ?? CupertinoColors.lightBackgroundGray;

  Color get _backgroundDark => widget.backgroundColorDark ?? CupertinoColors.darkBackgroundGray;

  double get fontSize => widget.itemFontSize ?? 14.sp;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _height,
      child: Stack(
        children: [
          CupertinoPicker(
            scrollController: scrollController,
            itemExtent: kMinInteractiveDimensionCupertino,
            backgroundColor: App.resolveColor(_backgroundLight, dark: _backgroundDark, ctx: context),
            magnification: widget.magnification,
            looping: widget.looping,
            useMagnifier: widget.useMagnifier,
            diameterRatio: widget.diameterRatio,
            offAxisFraction: widget.offAxisFraction,
            selectionOverlay: widget.selectionOverlay,
            onSelectedItemChanged: (index) => setState(() => _selectedItemIndex = index),
            children: widget.items
                .toImmutableList()
                .mapIndexed((i, item) =>
                    widget.child?.call(item) ??
                    Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
                        child: AdaptiveText(
                          widget.text?.call(item) ?? "- Please set 'text' property -",
                          maxLines: widget.maxLines,
                          minFontSize: widget.minFontSize,
                          overflow: TextOverflow.ellipsis,
                          softWrap: widget.maxLines != 1,
                          wrapWords: widget.maxLines != 1,
                          fontSize: i == _selectedItemIndex ? fontSize + 2 : fontSize,
                          fontWeight: i == _selectedItemIndex ? FontWeight.w600 : widget.itemFontWeight,
                        ),
                      ),
                    ))
                .asList(),
          ),
          //
          Positioned(
            top: 0,
            right: 0,
            child: CupertinoButton(
              borderRadius: 8.br,
              onPressed: () {
                try {
                  final selected = widget.items[_selectedItemIndex];
                  Navigator.pop(context, selected);
                } catch (_) {
                  Navigator.pop(context);
                }
              },
              child: AdaptiveText(
                'Done',
                maxLines: 1,
                fontSize: 17.sp,
                fontWeight: FontWeight.bold,
                textColor: Palette.primaryColor,
                textColorDark: Palette.primaryColor,
                letterSpacing: Utils.letterSpacing,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _MaterialDropdown<Model> extends StatelessWidget {
  final String? Function(Model?)? text;
  final Widget? Function(Model?)? child;
  final void Function(Model?) onChanged;
  final List<Widget> Function(BuildContext)? selectedItemBuilder;
  final bool alignedDropdown;
  final AlignmentDirectional alignment;
  final Color? backgroundColorDark;
  final Color? backgroundColorLight;
  final Color? borderColorLight;
  final Color? borderColorDark;
  final InputBorder? border;
  final BorderRadius? borderRadius;
  final Color? buttonColor;
  final ColorScheme? colorScheme;
  final EdgeInsetsGeometry? contentPadding;
  final InputDecoration? decoration;
  final double diameterRatio;
  final bool disabled;
  final String disabledHint;
  final Widget? disabledHintWidget;
  final Color? dropdownColor;
  final int elevation;
  final InputBorder? errorBorder;
  final String? Function(Model?)? errorText;
  final InputBorder? focusedErrorBorder;
  final double? height;
  final Color? highlightColor;
  final String hint;
  final Widget? hintWidget;
  final Color? iconDisabledColor;
  final Color? iconEnabledColor;
  final double iconSize;
  final bool isDense;
  final bool isExpanded;
  final double? itemFontSize;
  final FontWeight? itemFontWeight;
  final List<Model> items;
  final bool looping;
  //
  final double magnification;
  final int maxLines;
  final double? menuMaxHeight;
  final double minFontSize;
  final double maxFontSize;
  final double offAxisFraction;
  final double? radius;
  final Model groupValue;
  final Widget? selectionOverlay;
  final ShapeBorder? shape;
  final Color? splashColor;
  final bool useMagnifier;
  final bool validate;
  final PlatformType? platform;

  const _MaterialDropdown({
    Key? key,
    this.radius,
    required this.items,
    this.text,
    this.child,
    this.hint = '-- Choose --',
    this.hintWidget,
    this.disabledHint = '-- Invalid selection --',
    this.disabledHintWidget,
    required this.groupValue,
    this.validate = false,
    this.errorText,
    this.disabled = false,
    this.iconSize = 19.0,
    this.isDense = false,
    this.isExpanded = true,
    this.alignedDropdown = false,
    required this.onChanged,
    this.maxLines = 1,
    this.minFontSize = 12,
    this.maxFontSize = double.infinity,
    this.buttonColor,
    this.itemFontSize,
    this.itemFontWeight,
    this.highlightColor,
    this.backgroundColorLight,
    this.backgroundColorDark,
    this.borderColorLight,
    this.borderColorDark,
    this.colorScheme,
    this.splashColor,
    this.border,
    this.errorBorder,
    this.focusedErrorBorder,
    this.shape,
    this.contentPadding,
    this.alignment = AlignmentDirectional.centerStart,
    this.borderRadius,
    this.elevation = 8,
    this.dropdownColor,
    this.height,
    this.iconDisabledColor,
    this.iconEnabledColor,
    this.menuMaxHeight,
    this.decoration,
    this.selectedItemBuilder,
    this.magnification = 1.0,
    this.looping = false,
    this.useMagnifier = true,
    this.diameterRatio = 1.07,
    this.offAxisFraction = 0.0,
    this.platform,
    this.selectionOverlay = const CupertinoPickerDefaultSelectionOverlay(),
  }) : super(key: key);

  PlatformType get _platform => platform ?? Utils.platform_(material: PlatformType.android, cupertino: PlatformType.ios)!;

  bool get _hasErrors => validate && errorText?.call(groupValue) != null;

  String? get _text {
    if (groupValue != null) {
      if (text != null) {
        return text?.call(groupValue);
      } else {
        return "- Please set 'text' property -";
      }
    } else {
      return hint;
    }
  }

  @override
  Widget build(BuildContext context) {
    return LimitedBox(
      maxHeight: height ?? AdaptiveDropdown.kdropdownHeight,
      child: DropdownButtonHideUnderline(
        child: ButtonTheme(
          alignedDropdown: alignedDropdown,
          layoutBehavior: ButtonBarLayoutBehavior.constrained,
          materialTapTargetSize: MaterialTapTargetSize.padded,
          buttonColor: buttonColor,
          highlightColor: highlightColor,
          splashColor: splashColor,
          colorScheme: colorScheme,
          shape: shape ??
              RoundedRectangleBorder(
                side: BorderSide(
                  color: App.resolveColor(
                    borderColorLight ?? Palette.inputBorderColorLight,
                    dark: borderColorDark ?? borderColorLight ?? Palette.inputBorderColorDark,
                    ctx: context,
                  )!,
                ),
                borderRadius: borderRadius ?? BorderRadius.circular(radius ?? Utils.inputBorderRadius),
              ),
          child: DropdownButtonFormField<Model?>(
            autovalidateMode: validate ? AutovalidateMode.always : AutovalidateMode.disabled,
            decoration: InputDecoration(
              border: border,
              errorBorder: errorBorder,
              focusedErrorBorder: focusedErrorBorder,
              contentPadding: contentPadding?.let(
                    (it) => AdaptiveDropdown.kdropdownContentPadding.add(it),
                  ) ??
                  AdaptiveDropdown.kdropdownContentPadding,
            ).merge(decoration),
            alignment: alignment,
            elevation: elevation,
            dropdownColor: dropdownColor,
            isDense: isDense,
            itemHeight: kMinInteractiveDimension,
            validator: (it) => _hasErrors ? errorText?.call(groupValue) : null,
            iconDisabledColor: iconDisabledColor,
            iconEnabledColor: iconEnabledColor,
            menuMaxHeight: menuMaxHeight,
            selectedItemBuilder: (_) => items
                .map((iv) =>
                    child?.call(iv) ??
                    Align(
                      alignment: Alignment.centerLeft,
                      child: AdaptiveText(
                        '$_text',
                        maxLines: maxLines,
                        minFontSize: minFontSize,
                        maxFontSize: maxFontSize,
                        overflow: TextOverflow.ellipsis,
                        softWrap: true,
                        fontSize: itemFontSize,
                        fontWeight: itemFontWeight,
                      ),
                    ))
                .toList(),
            items: items
                .map(
                  (item) => DropdownMenuItem<Model?>(
                    value: item,
                    alignment: Alignment.centerLeft,
                    enabled: !disabled,
                    child: child?.call(item) ??
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 2,
                              child: AdaptiveText(
                                text?.call(item) ?? "- Please set 'text' property -",
                                maxLines: maxLines,
                                minFontSize: minFontSize,
                                maxFontSize: maxFontSize,
                                overflow: TextOverflow.ellipsis,
                                softWrap: true,
                                fontSize: itemFontSize,
                                fontWeight: itemFontWeight,
                              ),
                            ),
                            if (item == groupValue)
                              Icon(
                                Icons.check_circle,
                                size: 20,
                                color: iconEnabledColor ?? Palette.primaryColor.shade400,
                              ),
                          ],
                        ),
                  ),
                )
                .toList(),
            disabledHint: disabledHintWidget ??
                Align(
                  alignment: Alignment.centerLeft,
                  child: AdaptiveText(
                    disabledHint,
                    maxLines: 1,
                    minFontSize: minFontSize,
                    maxFontSize: maxFontSize,
                    fontSize: itemFontSize,
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                  ),
                ),
            hint: hintWidget ??
                Align(
                  alignment: Alignment.centerLeft,
                  child: AdaptiveText(
                    hint,
                    maxLines: 1,
                    minFontSize: minFontSize,
                    maxFontSize: maxFontSize,
                    fontSize: itemFontSize,
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                  ),
                ),
            value: groupValue,
            // isExpanded: isExpanded,
            icon: const Icon(Icons.keyboard_arrow_down),
            iconSize: iconSize,
            onChanged: onChanged,
          ),
        ),
      ),
    );
  }
}
