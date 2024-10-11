import 'package:auctionvillage/core/data/response/index.dart';
import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A stateless widget to render Form Fields for Name.
class ReactiveTextFormField<Reactive extends BlocBase<ReactiveState>, ReactiveState> extends StatelessWidget {
  final ReactiveState? state;
  final bool? Function(ReactiveState)? readOnly;
  final bool? autofocus;
  final String? Function(ReactiveState)? hintText;
  final TextStyle? hintStyle;
  final TextStyle? style;
  final bool Function(ReactiveState)? validate;
  final bool Function(ReactiveState)? disabled;
  final String? Function(ReactiveState)? initial;
  final TextEditingController? Function(ReactiveState)? controller;
  final FieldObject<Object?>? Function(ReactiveState)? field;
  final void Function(Reactive, String)? onChanged;
  final Option<AppHttpResponse?> Function(ReactiveState)? response;
  final void Function(ReactiveState)? onEditingComplete;
  final List<String?>? Function(ErrorResponse)? errorField;
  final void Function(Reactive, ReactiveState)? onTap;
  final TextInputAction? action;
  final Iterable<String>? autoFillHints;
  final TextCapitalization capitalization;

  final EdgeInsets Function(EdgeInsets)? cupertinoPadding;
  final FocusNode? focus;
  final String? heroTag;
  final List<TextInputFormatter> inputFormatters;
  final TextInputType keyboardType;
  final EdgeInsets Function(EdgeInsets)? materialPadding;
  final int? minLines;
  final int? maxLines;
  final int? maxLength;
  final bool? Function(ReactiveState)? showMaxLength;
  final MaxLengthEnforcement? maxLengthEnforcement;
  final InputDecoration? decoration;
  final FocusNode? next;
  final String? prefix;
  final Color? fillColor;
  final Widget? Function(ReactiveState)? prefixIcon;
  final Widget? Function(ReactiveState)? suffixIcon;
  final OverlayVisibilityMode Function(ReactiveState)? prefixMode;
  final OverlayVisibilityMode Function(ReactiveState)? suffixMode;
  final Color? cupertinoBorderColorLight;
  final Color? cupertinoBorderColorDark;
  final bool autoDisposeController;

  const ReactiveTextFormField({
    Key? key,
    this.state,
    this.minLines,
    this.maxLines,
    this.prefix,
    this.prefixIcon,
    this.suffixIcon,
    this.validate,
    this.disabled,
    this.initial,
    this.field,
    this.onChanged,
    this.focus,
    this.next,
    this.heroTag,
    this.hintText,
    this.hintStyle,
    this.style,
    this.readOnly,
    this.controller,
    this.materialPadding,
    this.cupertinoPadding,
    this.autoFillHints,
    this.decoration,
    this.inputFormatters = const [],
    this.action,
    this.keyboardType = TextInputType.none,
    this.capitalization = TextCapitalization.none,
    this.response,
    this.autofocus,
    this.errorField,
    this.onTap,
    this.onEditingComplete,
    this.showMaxLength,
    this.maxLength,
    this.maxLengthEnforcement,
    this.prefixMode,
    this.suffixMode,
    this.fillColor,
    this.cupertinoBorderColorLight,
    this.cupertinoBorderColorDark,
    this.autoDisposeController = true,
  }) : super(key: key);

  Widget _input(ReactiveState s) => Builder(
        builder: (c) => AdaptiveTextFormInput(
          minLines: minLines,
          maxLines: maxLines,
          autoFocus: autofocus ?? false,
          cupertinoData: (d) => d.copyWith(
            prefix: prefixIcon?.call(s),
            suffix: suffixIcon?.call(s),
            prefixMode: prefixMode?.call(s),
            suffixMode: suffixMode?.call(s),
            padding: cupertinoPadding,
            decoration: AdaptiveTextFormInput.defaultDecoration(
              borderColor: cupertinoBorderColorLight != null || cupertinoBorderColorDark != null
                  ? App.resolveColor(cupertinoBorderColorLight, dark: cupertinoBorderColorDark)
                  : null,
            ),
          ),
          materialData: (d) => d.copyWith(
            outerClipRadius: BorderRadius.zero,
            padding: materialPadding,
            prefixIcon: prefixIcon?.call(s),
            suffixIcon: suffixIcon?.call(s),
          ),
          showMaxLength: showMaxLength?.call(s) ?? false,
          maxLength: maxLength,
          maxLengthEnforcement: maxLengthEnforcement,
          initial: initial?.call(s),
          controller: controller?.call(s),
          keyboardType: keyboardType,
          action: action,
          disabled: disabled?.call(s) ?? false,
          capitalization: capitalization,
          autoFillHints: autoFillHints,
          decoration: decoration,
          focus: focus,
          next: next,
          fillColor: fillColor,
          hintStyle: hintStyle,
          autoDisposeController: autoDisposeController,
          style: style,
          inputFormatters: inputFormatters,
          readOnly: readOnly?.call(s),
          hintText: hintText?.call(s),
          validate: validate?.call(s) ?? false,
          onTap: () => onTap?.call(c.read<Reactive>(), s),
          onChanged: (val) => onChanged?.call(c.read<Reactive>(), val),
          onEditingComplete: () => onEditingComplete?.call(s),
          errorText: field?.call(s)?.value.fold(
                (f) => f.message,
                (_) => response?.call(s).fold(
                      () => null,
                      (it) => it?.response.maybeMap(
                        error: (f) => errorField?.call(f)?.firstOrNone,
                        orElse: () => null,
                      ),
                    ),
              ),
        ),
      );

  Widget _child(ReactiveState s) => heroTag != null && !heroTag.isBlank ? Hero(tag: heroTag!, child: _input(s)) : _input(s);

  @override
  Widget build(BuildContext context) {
    if (state != null) return _child(state as ReactiveState);
    return BlocBuilder<Reactive, ReactiveState>(builder: (c, s) => _child(s));
  }
}
