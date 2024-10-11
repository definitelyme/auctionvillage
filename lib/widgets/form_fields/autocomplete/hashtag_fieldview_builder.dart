part of 'autocomplete_form_field.dart';

class _HashtagFieldViewBuilder extends StatefulWidget {
  final void Function(String)? onChanged;
  final void Function()? onEditingComplete;
  final String? Function(String?)? validator;
  final bool? autofocus;
  final TextCapitalization capitalization;
  final DetectableTextEditingController controller;
  final bool? disabled;
  final bool enforceSuggestions;
  final FocusNode focusNode;
  final TextStyle? hintStyle;
  final String? hintText;
  final List<TextInputFormatter>? inputFormatters;
  final int? maxLines;
  final FocusNode? nextFocus;
  final void Function(List<String>) onTagsChanged;
  final bool? readOnly;
  final TextStyle? style;
  final List<String>? suggesstions;
  final TextInputType textInputType;
  final bool? validate;

  const _HashtagFieldViewBuilder({
    this.validate,
    this.disabled,
    this.hintText,
    this.readOnly,
    this.onChanged,
    this.onEditingComplete,
    this.suggesstions,
    this.autofocus,
    this.capitalization = TextCapitalization.none,
    this.enforceSuggestions = false,
    required this.focusNode,
    this.hintStyle,
    this.inputFormatters,
    this.maxLines,
    this.nextFocus,
    required this.onTagsChanged,
    this.style,
    required this.controller,
    this.textInputType = TextInputType.text,
    this.validator,
  });

  @override
  State<_HashtagFieldViewBuilder> createState() => _TagFieldViewBuilderState();
}

class _TagFieldViewBuilderState extends State<_HashtagFieldViewBuilder> {
  DetectableTextEditingController get _controller => widget.controller;
  FocusNode get _focusNode => widget.focusNode;

  @override
  Widget build(BuildContext context) {
    return AdaptiveTextFormInput(
      maxLines: widget.maxLines,
      dense: true,
      autoCorrect: false,
      controller: _controller,
      focus: _focusNode,
      next: widget.nextFocus,
      style: widget.style,
      autoFocus: widget.autofocus ?? false,
      autoDisposeController: false,
      hintText: widget.hintText,
      hintStyle: widget.hintStyle,
      readOnly: widget.readOnly,
      validate: widget.validate ?? false,
      disabled: widget.disabled ?? false,
      keyboardType: widget.textInputType,
      capitalization: widget.capitalization,
      inputFormatters: widget.inputFormatters,
      onChanged: widget.onChanged,
      onFieldSubmitted: (_) => widget.onEditingComplete?.call(),
      validator: widget.validator,
    );
  }
}
