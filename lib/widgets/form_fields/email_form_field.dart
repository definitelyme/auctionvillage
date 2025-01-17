import 'package:auctionvillage/core/data/response/index.dart';
import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A stateless widget to render Form Field for Email Address.
// ignore: must_be_immutable
class EmailFormField<Reactive extends BlocBase<ReactiveState>, ReactiveState> extends StatelessWidget {
  late ReactiveState _state;

  final bool Function(ReactiveState)? validate;
  final bool Function(ReactiveState)? disabled;
  final String? Function(ReactiveState)? initial;
  final String? Function(ReactiveState)? hintText;
  final TextStyle? hintStyle;
  final FieldObject<String?>? Function(ReactiveState)? field;
  final void Function(Reactive, String)? onChanged;
  final bool? Function(ReactiveState)? readOnly;
  final Option<AppHttpResponse?> Function(ReactiveState)? response;
  final void Function(ReactiveState)? onEditingComplete;
  final List<String?>? Function(ErrorResponse)? errorField;
  final EdgeInsets? cupertinoPadding;
  final FocusNode? focus;
  final EdgeInsets? materialPadding;
  final FocusNode? next;
  final String? prefix;
  final bool useHero;
  final Object? heroTag;

  EmailFormField({
    Key? key,
    this.heroTag = Const.emailFieldHeroTag,
    this.prefix,
    this.validate,
    this.hintText,
    this.hintStyle,
    this.disabled,
    this.initial,
    this.field,
    this.onChanged,
    this.focus,
    this.next,
    this.response,
    this.useHero = true,
    this.errorField,
    this.materialPadding,
    this.cupertinoPadding,
    this.readOnly,
    this.onEditingComplete,
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
          disabled: disabled?.call(s) ?? false,
          validate: validate?.call(s) ?? false,
          readOnly: readOnly?.call(s),
          hintText: hintText?.call(s),
          hintStyle: hintStyle,
          capitalization: TextCapitalization.none,
          keyboardType: TextInputType.emailAddress,
          autoFillHints: const [AutofillHints.email],
          focus: focus,
          next: next,
          onChanged: (val) => onChanged?.call(c.read<Reactive>(), val),
          errorText: field?.call(s)?.value.fold(
                (f) => f.message,
                (_) => response?.call(s).fold(
                      () => null,
                      (http) => http?.response.maybeMap(
                        error: (f) => f.errors?.messages?.email?.firstOrNone ?? errorField?.call(f)?.firstOrNone,
                        orElse: () => null,
                      ),
                    ),
              ),
          onEditingComplete: () => onEditingComplete?.call(s),
        );

        return MyHero(tag: heroTag, child: _input);
      },
    );
  }
}
