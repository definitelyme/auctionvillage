library pin_input_form_field.dart;

import 'package:dartz/dartz.dart' hide State;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pinput/pinput.dart';
import 'package:auctionvillage/core/data/response/index.dart';
import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/utils/utils.dart';

enum PinInputAnimation {
  slide,
  fade,
  rotation,
  none,
  scale;

  PinAnimationType get value {
    switch (this) {
      case PinInputAnimation.slide:
        return PinAnimationType.slide;
      case PinInputAnimation.fade:
        return PinAnimationType.fade;
      case PinInputAnimation.rotation:
        return PinAnimationType.rotation;
      case PinInputAnimation.none:
        return PinAnimationType.none;
      case PinInputAnimation.scale:
        return PinAnimationType.scale;
    }
  }
}

/// A stateful widget to render PinInputFormField.
class PinInputFormField<R extends BlocBase<S>, S> extends StatefulWidget {
  final TextEditingController? Function(S)? controller;
  final bool Function(S)? validate;
  final bool Function(S)? disabled;
  final FieldObject<Object?>? Function(S)? field;
  final Option<AppHttpResponse?> Function(S)? response;
  final List<String?>? Function(ErrorResponse)? errorField;
  final void Function(R, String)? onCompleted;
  final void Function(R, String)? onSubmitted;
  final String? Function(S)? initialText;
  final RegExp Function(int)? clipboardRegex;
  final Widget? obscuringWidget;
  final PinInputAnimation animation;
  final Iterable<String>? autoFillHints;
  final bool? autofocus;
  final Color? borderColor;
  final CrossAxisAlignment crossAxisAlignment;
  final Color? cursorColor;
  final TextStyle? errorStyle;
  final FocusNode? focus;
  final double height;
  final Object? heroTag;
  final List<TextInputFormatter> inputFormatters;
  final Brightness? keyboardAppearance;
  final TextInputType keyboardType;
  final int length;
  final MainAxisAlignment mainAxisAlignment;
  final MainAxisSize mainAxisSize;
  final FocusNode? next;
  final bool obscureText;
  final void Function(R, String) onChanged;
  final S? state;
  final TextStyle? style;
  final TextCapitalization textCapitalization;
  final TextInputAction? textInputAction;
  final double width;

  const PinInputFormField({
    super.key,
    required this.length,
    this.controller,
    this.validate,
    this.disabled,
    this.field,
    this.response,
    this.errorField,
    required this.onChanged,
    this.onCompleted,
    this.onSubmitted,
    this.autoFillHints,
    this.autofocus,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.clipboardRegex,
    this.obscuringWidget,
    this.cursorColor,
    this.borderColor,
    this.errorStyle,
    this.focus,
    this.height = 50,
    this.heroTag,
    this.initialText,
    this.animation = PinInputAnimation.slide,
    this.inputFormatters = const [],
    this.keyboardAppearance,
    this.keyboardType = TextInputType.text,
    this.mainAxisAlignment = MainAxisAlignment.center,
    this.mainAxisSize = MainAxisSize.max,
    this.next,
    this.obscureText = false,
    this.state,
    this.style,
    this.textCapitalization = TextCapitalization.none,
    this.textInputAction,
    this.width = 50,
  });

  @override
  PinInputFormFieldState<R, S> createState() => PinInputFormFieldState();
}

class PinInputFormFieldState<R extends BlocBase<S>, S> extends State<PinInputFormField<R, S>> with AutomaticKeepAliveClientMixin {
  late R _bloc;
  late FocusNode _defaultFocusNode;
  late TextEditingController _defaultTextController;

  @override
  void dispose() {
    _defaultTextController.dispose();
    _defaultFocusNode.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _bloc = context.read<R>();
    _defaultTextController = TextEditingController();
    _defaultFocusNode = FocusNode();

    final _initialText = widget.initialText?.call(_bloc.state);
    if (_initialText != null) {
      _textController(_bloc.state).text = _initialText;
      widget.onChanged(_bloc, _initialText);
    }
  }

  @override
  bool get wantKeepAlive => true;

  RegExp get _clipboardRegExp => widget.clipboardRegex?.call(_pinLength) ?? RegExp('^[0-9]{$_pinLength}\$');
  PinTheme get _defaultPinTheme => PinTheme(
        width: _pinWidth,
        height: _pinHeight,
        textStyle: widget.style ?? TextStyle(fontSize: 23, color: widget.borderColor ?? Palette.onSurface),
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: widget.borderColor ?? Palette.onSurface, width: 2)),
        ),
      );

  PinTheme get _disabledTheme => _defaultPinTheme.copyWith(
        decoration: _defaultPinTheme.decoration?.copyWith(
          border: Border(bottom: BorderSide(color: Palette.disabledInputBorderColor, width: 2)),
        ),
      );

  PinTheme get _errorTheme => _defaultPinTheme.copyWith(
        decoration: _defaultPinTheme.decoration?.copyWith(
          border: Border(bottom: BorderSide(color: widget.errorStyle?.color ?? Palette.errorRed, width: 2)),
        ),
      );

  PinTheme get _focusedTheme => _defaultPinTheme.copyWith(
        decoration: _defaultPinTheme.decoration?.copyWith(
          border: const Border(bottom: BorderSide(color: Palette.transparent, width: 0)),
        ),
      );

  double get _pinHeight => widget.height;
  int get _pinLength => widget.length;
  double get _pinWidth => widget.width;
  PinTheme get _submittedTheme => _defaultPinTheme.copyWith(
        decoration: _defaultPinTheme.decoration?.copyWith(
          border: Border(bottom: BorderSide(color: widget.borderColor ?? Palette.onSurface, width: 2)),
        ),
      );

  PinTheme get _transparentTheme => _defaultPinTheme.copyWith(
        decoration: _defaultPinTheme.decoration?.copyWith(
          color: Palette.transparent,
          border: const Border(bottom: BorderSide(color: Palette.transparent, width: 0)),
        ),
      );

  Widget get horizontalCursor => Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: _pinWidth,
            height: 3,
            decoration: BoxDecoration(
              color: widget.cursorColor ?? App.resolveColor(Palette.primaryColor, dark: Colors.white, ctx: context),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ],
      );

  Widget get verticalCursor => Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 1.5,
              height: _pinHeight,
              decoration: BoxDecoration(
                color: widget.cursorColor ?? App.resolveColor(Palette.primaryColor, dark: Colors.white, ctx: context),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ],
        ),
      );

  Widget _child(BuildContext c, S s) =>
      widget.heroTag != null && !widget.heroTag.isBlank ? Hero(tag: widget.heroTag!, child: _input(c, s)) : _input(c, s);

  String? _errorText(S s) => widget.field?.call(s)?.value.fold(
        (f) => f.message,
        (_) => widget.response?.call(s).fold(
              () => null,
              (it) => it?.response.maybeMap(error: (f) => widget.errorField?.call(f)?.firstOrNull(), orElse: () => null),
            ),
      );

  FocusNode _focusNode(S s) => widget.focus ?? _defaultFocusNode;

  Widget _input(BuildContext c, S s) {
    return Material(
      elevation: 0,
      type: MaterialType.transparency,
      child: Pinput(
        length: widget.length,
        autofocus: widget.autofocus ?? true,
        autofillHints: widget.autoFillHints,
        enabled: !(widget.disabled?.call(s) ?? false),
        controller: _textController(s),
        focusNode: _focusNode(s),
        hapticFeedbackType: HapticFeedbackType.lightImpact,
        defaultPinTheme: _showErrors(s) ? _transparentTheme : _defaultPinTheme,
        submittedPinTheme: _showErrors(s) ? _transparentTheme : _submittedTheme,
        disabledPinTheme: _showErrors(s) ? _transparentTheme : _disabledTheme,
        errorPinTheme: _errorTheme,
        // focusedPinTheme: _focusedTheme,
        // followingPinTheme: _transparentTheme,
        showCursor: true,
        cursor: verticalCursor,
        keyboardAppearance: _keyboardAppearance(c),
        inputFormatters: widget.inputFormatters,
        keyboardType: widget.keyboardType,
        textCapitalization: widget.textCapitalization,
        textInputAction: widget.textInputAction,
        mainAxisAlignment: widget.mainAxisAlignment,
        crossAxisAlignment: widget.crossAxisAlignment,
        animationCurve: Curves.easeInOutCubic,
        forceErrorState: _showErrors(s),
        errorText: _errorText(s),
        errorTextStyle: widget.errorStyle,
        obscureText: widget.obscureText,
        obscuringWidget: widget.obscuringWidget,
        pinAnimationType: widget.animation.value,
        androidSmsAutofillMethod: AndroidSmsAutofillMethod.smsRetrieverApi,
        closeKeyboardWhenCompleted: widget.next == null,
        listenForMultipleSmsOnAndroid: true,
        pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
        onChanged: (str) => widget.onChanged(_bloc, str),
        onCompleted: (str) {
          widget.onCompleted?.call(_bloc, str);
          if (widget.next != null && _textController(s).length == _pinLength) {
            _setNewFocus(widget.next);
          }
        },
        onSubmitted: (str) {
          widget.onSubmitted?.call(_bloc, str);
          if (widget.next != null && _textController(s).length == _pinLength) {
            _setNewFocus(widget.next);
          }
        },
        onClipboardFound: (value) {
          final clipboard = value.trim();
          final hasMatch = _clipboardRegExp.hasMatch(clipboard);
          final hasInputs = _textController(s).length > 0;

          if (hasMatch && !hasInputs) {
            widget.onChanged(_bloc, clipboard);
            _textController(s).setText(clipboard);
            _focusNode(s).unfocus();
            // Clear the clipboard
            Clipboard.setData(const ClipboardData(text: ''));
          }
        },
      ),
    );
  }

  Brightness _keyboardAppearance(BuildContext c) =>
      widget.keyboardAppearance ?? Utils.foldTheme(light: () => Brightness.light, dark: () => Brightness.dark, context: c);

  void _setNewFocus(FocusNode? node) {
    try {
      FocusScope.of(context).unfocus();
      FocusScope.of(context).requestFocus(node);
    } catch (_) {}
  }

  bool _showErrors(S s) => (widget.validate?.call(s) ?? false) && _errorText(s) != null;

  TextEditingController _textController(S s) => widget.controller?.call(s) ?? _defaultTextController;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    if (widget.state == null)
      return BlocBuilder<R, S>(builder: (c, s) => _child(c, s));
    else
      return Builder(builder: (c) => _child(c, widget.state as S));
  }
}
