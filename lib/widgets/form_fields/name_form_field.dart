import 'package:auctionvillage/core/data/index.dart';
import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

/// A stateless widget to render Form Fields for Name.
// ignore: must_be_immutable
class NameFormField<Reactive extends BlocBase<ReactiveState>, ReactiveState> extends StatelessWidget {
  late ReactiveState _state;

  final String? Function(ReactiveState)? hintText;
  final bool Function(ReactiveState)? validate;
  final bool Function(ReactiveState)? disabled;
  final String? Function(ReactiveState)? initial;
  final FieldObject<String?>? Function(ReactiveState)? field;
  final void Function(Reactive, String)? onChanged;
  final void Function(ReactiveState)? onEditingComplete;
  final Option<AppHttpResponse?> Function(ReactiveState)? response;
  final List<String?>? Function(ErrorResponse)? errorField;

  final EdgeInsets? cupertinoPadding;
  final FocusNode? focus;
  final String? heroTag;
  final TextStyle? hintStyle;
  final EdgeInsets? materialPadding;
  final FocusNode? next;
  final String? prefix;

  NameFormField({
    Key? key,
    this.prefix,
    this.hintText,
    this.hintStyle,
    this.validate,
    this.disabled,
    this.initial,
    this.field,
    this.onChanged,
    this.focus,
    this.next,
    this.heroTag,
    this.materialPadding,
    this.cupertinoPadding,
    this.onEditingComplete,
    this.response,
    this.errorField,
  }) : super(key: key);

  ReactiveState get state => _state;

  set __state(ReactiveState value) => _state = value;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Reactive, ReactiveState>(
      builder: (c, s) {
        __state = s;

        var _input = AdaptiveTextFormInput(
          cupertinoData: (d) => d.copyWith(
            prefixMode: OverlayVisibilityMode.always,
            padding: (_) => cupertinoPadding,
          ),
          materialData: (d) => d.copyWith(
            outerClipRadius: BorderRadius.zero,
            padding: (_) => materialPadding,
          ),
          initial: initial?.call(s),
          keyboardType: TextInputType.name,
          disabled: disabled?.call(s) ?? false,
          capitalization: TextCapitalization.words,
          hintText: hintText?.call(s),
          hintStyle: hintStyle,
          autoFillHints: const [
            AutofillHints.name,
            AutofillHints.givenName,
            AutofillHints.familyName,
            AutofillHints.middleName,
          ],
          focus: focus,
          next: next,
          validate: validate?.call(s) ?? false,
          onChanged: (val) => onChanged?.call(c.read<Reactive>(), val),
          errorText: field?.call(s)?.value.fold(
                (f) => f.message,
                (_) => response?.call(s).fold(
                      () => null,
                      (http) => http?.response.maybeMap(
                        error: (f) =>
                            f.errors?.messages?.name?.firstOrNone ??
                            f.errors?.messages?.fullName?.firstOrNone ??
                            errorField?.call(f)?.firstOrNone,
                        orElse: () => null,
                      ),
                    ),
              ),
          onEditingComplete: () => onEditingComplete?.call(s),
        );

        return heroTag != null && !heroTag.isBlank ? Hero(tag: heroTag!, child: _input) : _input;
      },
    );
  }
}
