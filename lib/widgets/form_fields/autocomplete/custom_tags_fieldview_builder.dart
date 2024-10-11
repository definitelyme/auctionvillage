part of 'autocomplete_form_field.dart';

/// A stateful widget that renders _CustomTagsFieldviewBuilder.
class _CustomTagsFieldviewBuilder extends StatefulWidget {
  final void Function(String)? onChanged;
  final void Function(String)? onFieldSubmitted;
  final String? Function(String?)? tagsValidator;
  final String Function(String)? tagTextBuilder;
  final bool? autofocus;
  final TextCapitalization capitalization;
  final Color? chipBgColor;
  final bool? disabled;
  final bool enforceSuggestions;
  final String? errorText;
  final FocusNode focusNode;
  final TextStyle? hintStyle;
  final String? hintText;
  final List<String>? initial;
  final List<TextInputFormatter>? inputFormatters;
  final LetterCase letterCase;
  final int? maxLines;
  final FocusNode? nextFocus;
  final void Function(List<String>) onTagsChanged;
  final bool? readOnly;
  final TextStyle? style;
  final List<String>? suggesstions;
  final Color? tagTextColor;
  final Color? tagTextColorDark;
  final double? tagTextFontSize;
  final FontWeight tagTextFontWeight;
  final TagsEditingController tagsController;
  final TextEditingController textEditingController;
  final TextInputType textInputType;
  final List<String> textSeparators;
  final bool? validate;

  const _CustomTagsFieldviewBuilder({
    this.onChanged,
    this.onFieldSubmitted,
    this.tagsValidator,
    this.tagTextBuilder,
    this.initial,
    this.autofocus,
    this.capitalization = TextCapitalization.none,
    this.chipBgColor,
    this.disabled,
    this.enforceSuggestions = false,
    this.errorText,
    required this.focusNode,
    this.hintStyle,
    this.hintText,
    this.inputFormatters,
    this.letterCase = LetterCase.normal,
    this.maxLines,
    this.nextFocus,
    required this.onTagsChanged,
    this.readOnly,
    this.style,
    this.suggesstions,
    this.tagTextColor,
    this.tagTextColorDark,
    this.tagTextFontSize,
    required this.tagsController,
    required this.textEditingController,
    this.tagTextFontWeight = FontWeight.w500,
    this.textInputType = TextInputType.text,
    this.textSeparators = const [',', ' '],
    this.validate,
  });

  @override
  _CustomTagsFieldviewBuilderState createState() => _CustomTagsFieldviewBuilderState();
}

class _CustomTagsFieldviewBuilderState extends State<_CustomTagsFieldviewBuilder> {
  late double _distanceToInput;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _distanceToInput = MediaQuery.of(context).size.width;
  }

  Color get _chipBgColor => widget.chipBgColor ?? Palette.primary;
  TextEditingController? get _controller => widget.textEditingController;
  FocusNode get _focusNode => widget.focusNode;
  TagsEditingController get _tagsController => widget.tagsController;
  double get _textFontSize => widget.tagTextFontSize ?? 15.sp;

  void onTagSelected(String value) {
    _tagsController.setCurrentTag(value);

    // _tagsController.onTagDelete(value);
    _tagsController.textEditingController?.text = value;
  }

  Widget prefix(List<String> tags, ScrollController scrollController, void Function(String) onDelete) => ConstrainedBox(
        constraints: BoxConstraints(maxWidth: _distanceToInput * 0.70),
        child: SingleChildScrollView(
          controller: scrollController,
          scrollDirection: Axis.horizontal,
          physics: Utils.physics,
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            children: tags
                .map(
                  (tag) => GestureDetector(
                    onTap: () => onTagSelected(tag),
                    child: Container(
                      decoration: BoxDecoration(borderRadius: Utils.chipBorderRadius, color: _chipBgColor),
                      margin: const EdgeInsets.only(right: 10.0),
                      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AdaptiveText(
                            widget.tagTextBuilder?.call(tag) ?? '#$tag',
                            maxLines: 1,
                            maxFontSize: 17,
                            minFontSize: 14,
                            softWrap: false,
                            wrapWords: false,
                            textColor: widget.tagTextColor ?? _chipBgColor.invertLuminance,
                            textColorDark: widget.tagTextColorDark ?? _chipBgColor.invertLuminance,
                            fontSize: _textFontSize,
                            fontWeight: widget.tagTextFontWeight,
                            semanticsLabel: widget.tagTextBuilder?.call(tag) ?? '#$tag',
                          ),
                          //
                          0.02.horizontalw,
                          //
                          AdaptiveInkWell(
                            child: Icon(
                              Icons.cancel,
                              size: 20.0,
                              color: _chipBgColor.alpha == 0 ? Palette.iconColor : _chipBgColor.invertLuminance,
                            ),
                            onTap: () => onDelete(tag),
                          )
                        ],
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return TextFieldTags(
      textEditingController: _controller,
      focusNode: _focusNode,
      textfieldTagsController: _tagsController,
      initialTags: widget.initial,
      textSeparators: widget.textSeparators,
      letterCase: widget.letterCase,
      validator: widget.tagsValidator,
      inputfieldBuilder: (c, textEditingController, focusNode, error, onChanged, onSubmitted) => (c, sc, tags, onDelete) {
        widget.onTagsChanged(tags);

        return AdaptiveTextFormInput(
          maxLines: widget.maxLines,
          controller: textEditingController,
          focus: focusNode,
          next: widget.nextFocus,
          style: widget.style,
          autoFocus: widget.autofocus ?? false,
          dense: false,
          autoCorrect: false,
          hintText: _tagsController.hasTags ? '' : widget.hintText,
          hintStyle: widget.hintStyle,
          readOnly: widget.readOnly,
          validate: widget.validate ?? false,
          disabled: widget.disabled ?? false,
          keyboardType: widget.textInputType,
          capitalization: widget.capitalization,
          inputFormatters: widget.inputFormatters,
          errorText: error ?? widget.errorText,
          materialData: (d) => d.copyWith(
            padding: (d) => d.copyWith(top: 0, bottom: 0),
            prefixIcon: tags.isNotEmpty ? prefix(tags, sc, onDelete) : null,
          ),
          cupertinoData: (d) => d.copyWith(
            padding: (d) => d,
            prefixMode: OverlayVisibilityMode.always,
            prefix: tags.isNotEmpty ? prefix(tags, sc, onDelete) : null,
          ),
          onChanged: (val) {
            onChanged?.call(val);
            widget.onChanged?.call(val);
          },
          onFieldSubmitted: (val) {
            onSubmitted?.call(val);
            widget.onFieldSubmitted?.call(val);
          },
        );
      },
    );
  }
}
