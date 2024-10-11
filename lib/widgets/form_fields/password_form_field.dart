import 'package:auctionvillage/core/data/response/index.dart';
import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A stateless widget to render Form Field for Passwords.
// ignore: must_be_immutable
class PasswordFormField<Reactive extends BlocBase<ReactiveState>, ReactiveState> extends StatelessWidget {
  late ReactiveState _state;

  final bool Function(ReactiveState)? validate;
  final bool Function(ReactiveState)? disabled;
  final FieldObject<String?>? Function(ReactiveState)? field;
  final void Function(Reactive, String)? onChanged;
  final bool Function(ReactiveState) isObscured;
  final Widget? Function(ReactiveState)? suffixIcon;
  final void Function(ReactiveState)? onEditingComplete;
  final OverlayVisibilityMode Function(ReactiveState)? suffixMode;
  final void Function(Reactive)? onToggle;
  final Option<AppHttpResponse?> Function(ReactiveState)? response;
  final List<String?>? Function(ErrorResponse)? errorField;
  final String? Function(ReactiveState)? hintText;

  final void Function(Reactive, ReactiveState)? onFieldSubmitted;
  final FocusNode? focus;
  final Object? heroTag;
  final bool isNew;
  final FocusNode? next;
  final EdgeInsets? materialPadding;
  final EdgeInsets? cupertinoPadding;
  final String? prefix;
  final bool useHero;

  PasswordFormField({
    Key? key,
    this.prefix,
    this.validate,
    this.disabled,
    this.field,
    this.onChanged,
    this.focus,
    this.next,
    this.response,
    this.useHero = true,
    this.isNew = true,
    required this.isObscured,
    this.onToggle,
    this.suffixIcon,
    this.errorField,
    this.heroTag,
    this.hintText,
    this.materialPadding,
    this.cupertinoPadding,
    this.suffixMode,
    this.onEditingComplete,
    this.onFieldSubmitted,
  })  : assert((useHero == false && heroTag != null) || (useHero == false && heroTag == null) || (useHero == true && heroTag != null)),
        super(key: key);

  ReactiveState get state => _state;

  set __state(ReactiveState value) => _state = value;

  Widget _passwordToggle(BuildContext c, ReactiveState s) => Material(
        type: MaterialType.transparency,
        shape: const CircleBorder(),
        clipBehavior: Clip.hardEdge,
        child: IconButton(
          onPressed: () => onToggle?.call(c.read<Reactive>()),
          icon: Icon(
            isObscured.call(s) ? AVIcons.eye_closed : AVIcons.eye_open,
            color: App.resolveColor(
              Palette.onSurface60,
              dark: Palette.onSurfaceDark.withOpacity(0.7),
            ),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Reactive, ReactiveState>(
      builder: (c, s) {
        __state = s;

        var _input = AdaptiveTextFormInput(
          cupertinoData: (d) => d.copyWith(
            padding: (_) => cupertinoPadding,
            prefixMode: OverlayVisibilityMode.always,
            suffix: suffixIcon?.call(s) ?? _passwordToggle(c, s),
            suffixMode: suffixMode?.call(s) ?? OverlayVisibilityMode.always,
          ),
          materialData: (d) => d.copyWith(
            outerClipRadius: BorderRadius.zero,
            padding: (_) => materialPadding,
            suffixIcon: suffixIcon?.call(s) ?? _passwordToggle(c, s),
          ),
          maxLines: 1,
          enableSuggestions: false,
          autoCorrect: false,
          obscureText: isObscured(s),
          hintText: hintText?.call(s),
          disabled: disabled?.call(s) ?? false,
          validate: validate?.call(s) ?? false,
          capitalization: TextCapitalization.none,
          keyboardType: TextInputType.visiblePassword,
          autoFillHints: [
            if (isNew) AutofillHints.newPassword,
            AutofillHints.password,
          ],
          focus: focus,
          next: next,
          onChanged: (val) => onChanged?.call(c.read<Reactive>(), val),
          errorText: field?.call(s)?.value.fold(
                (f) => f.message,
                (_) => response?.call(s).fold(
                      () => null,
                      (http) => http?.response.maybeMap(
                        error: (f) => errorField?.call(f)?.firstOrNone,
                        orElse: () => null,
                      ),
                    ),
              ),
          decoration: suffixIcon?.call(s) == null ? InputDecoration(suffixIcon: _passwordToggle(c, s)) : null,
          onEditingComplete: () => onEditingComplete?.call(s),
          onFieldSubmitted: (_) => onFieldSubmitted?.call(c.read<Reactive>(), s),
        );

        return useHero && !heroTag.isNullOrBlank ? Hero(tag: heroTag!, child: _input) : _input;
      },
    );
  }
}
