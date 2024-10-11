library autocomplete_form_field.dart;

import 'package:auctionvillage/core/data/response/index.dart';
import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:dartz/dartz.dart' hide State;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'hashtag_fieldview_builder.dart';
part 'custom_tags_fieldview_builder.dart';

/// A stateless widget to render AutocompleteFormField.
class AutocompleteFormField<R extends BlocBase<S>, S> extends StatefulWidget {
  static const String existingTagError = 'Tag already exists!';

  final DetectableTextEditingController? Function(S)? controller;
  final TagsEditingController? Function(S)? tagsController;
  final bool Function(S)? validate;
  final bool Function(S)? disabled;
  final FieldObject<Object?>? Function(S)? field;
  final Option<AppHttpResponse?> Function(S)? response;
  final List<String?>? Function(ErrorResponse)? errorField;
  final String? Function(S)? hintText;
  final bool Function(S)? readOnly;
  final void Function(R, String)? onChanged;
  final void Function(S)? onEditingComplete;
  final List<String> Function(S)? suggesstions;
  final FocusNode Function(S)? focusNode;
  final String Function(String)? tagTextBuilder;
  final List<String>? Function(S)? initial;
  final bool? autoCorrect;
  final Iterable<String>? autoFillHints;
  final bool? autofocus;
  final TextCapitalization capitalization;
  final Color? chipBgColor;
  final bool enforceSuggestions;
  final Object? heroTag;
  final TextStyle? hintStyle;
  final List<TextInputFormatter>? inputFormatters;
  final LetterCase letterCase;
  final int? maxLines;
  final FocusNode? next;
  final void Function(R, List<String>) onTagsChanged;
  final double optionsMaxHeight;
  final String Function(String) optionsTextBuilder;
  final S? state;
  final TextStyle? style;
  final Color? tagTextColor;
  final Color? tagTextColorDark;
  final double? tagTextFontSize;
  final FontWeight tagTextFontWeight;
  final TextInputType textInputType;
  final List<String> textSeparators;
  final AutocompleteFormFieldType type;

  const AutocompleteFormField({
    super.key,
    TagsEditingController? Function(S)? controller,
    this.validate,
    this.disabled,
    this.field,
    this.response,
    this.errorField,
    this.hintText,
    this.readOnly,
    this.onChanged,
    this.onEditingComplete,
    this.suggesstions,
    this.focusNode,
    this.tagTextBuilder,
    this.initial,
    this.autoCorrect,
    this.autoFillHints,
    this.autofocus,
    this.capitalization = TextCapitalization.none,
    this.chipBgColor,
    this.enforceSuggestions = false,
    this.heroTag,
    this.hintStyle,
    this.inputFormatters,
    this.letterCase = LetterCase.normal,
    this.maxLines,
    this.next,
    required this.onTagsChanged,
    this.optionsMaxHeight = 200.0,
    this.optionsTextBuilder = AutocompleteFormField._optionsTextBuilder,
    this.state,
    this.style,
    this.tagTextColor,
    this.tagTextColorDark,
    this.tagTextFontSize,
    this.tagTextFontWeight = FontWeight.w500,
    this.textInputType = TextInputType.text,
    this.textSeparators = const [',', ' '],
  })  : controller = null,
        tagsController = controller,
        type = AutocompleteFormFieldType.tags;

  const AutocompleteFormField.hashtags({
    super.key,
    DetectableTextEditingController Function(S)? this.controller,
    this.validate,
    this.disabled,
    this.field,
    this.response,
    this.errorField,
    this.hintText,
    this.readOnly,
    this.onChanged,
    this.onEditingComplete,
    this.suggesstions,
    this.focusNode,
    this.initial,
    this.autoCorrect,
    this.autoFillHints,
    this.autofocus,
    this.capitalization = TextCapitalization.none,
    this.enforceSuggestions = false,
    this.heroTag,
    this.hintStyle,
    this.inputFormatters,
    this.maxLines,
    this.next,
    required this.onTagsChanged,
    this.optionsMaxHeight = 200.0,
    this.optionsTextBuilder = AutocompleteFormField._optionsTextBuilder,
    this.state,
    this.style,
    this.textInputType = TextInputType.text,
  })  : chipBgColor = null,
        letterCase = LetterCase.normal,
        tagTextBuilder = null,
        tagTextColor = null,
        tagTextColorDark = null,
        tagTextFontSize = null,
        tagTextFontWeight = FontWeight.w500,
        textSeparators = const [],
        tagsController = null,
        type = AutocompleteFormFieldType.hashtags;

  @override
  State<AutocompleteFormField<R, S>> createState() => _AutocompleteFormFieldState();

  static String _optionsTextBuilder(String value) => '#$value';
}

class _AutocompleteFormFieldState<R extends BlocBase<S>, S> extends State<AutocompleteFormField<R, S>>
    with AutomaticKeepAliveClientMixin<AutocompleteFormField<R, S>> {
  late FocusNode _defaultFocusNode;
  late DetectableTextEditingController _defaultTextController;
  late TagsEditingController _defaultTagsController;

  @override
  void dispose() {
    _textController.removeListener(_textEditingControllerListener);
    _textController.dispose();
    _defaultTagsController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    // Define default focus node
    _defaultFocusNode = FocusNode();

    // Define tags controller
    _defaultTagsController = TagsEditingController();

    // Define default textController
    _defaultTextController = widget.type.when(
      tags: () => DetectableTextEditingController(),
      hashtags: () => DetectableTextEditingController(patterns: [
        if (!App.platform.isCupertino) // TODO: Find an alternative for this
          MatchPattern(
            regex: '#',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Palette.primaryColor,
              decorationColor: Palette.primaryColor,
              backgroundColor: Palette.primaryColor.withOpacity(0.03),
            ),
          ),
      ]),
    );

    if (widget.type == AutocompleteFormFieldType.hashtags) {
      // Attach a listener to the text controller to add a '#' at the beginning of the textfield
      _textController.addListener(_textEditingControllerListener);

      // Listen to the space key to add a ' #' when the user types a space after a word
      _focusNode.onKeyEvent = (node, event) {
        // TODO: onKeyEvent not working on iOS softkeyboard, log an issue on Flutter
        if (event.logicalKey == LogicalKeyboardKey.space ||
            event.physicalKey == PhysicalKeyboardKey.space ||
            event.character == 'U+0020' ||
            event.character == ' ') {
          final currentText = _textController.text;
          final last = currentText.isEmpty ? '' : currentText[currentText.length - 1];

          if (currentText.trim().isNotEmpty && last.isAlphanumeric && !(last == ' ' || RegExp(r'\s{1}').hasMatch(last))) {
            final newText = '$currentText #';
            _textController.value = TextEditingValue(
              text: newText,
              selection: TextSelection.fromPosition(TextPosition(offset: newText.length)),
            );

            return KeyEventResult.handled;
          }
        }

        return KeyEventResult.ignored;
      };
    }
  }

  @override
  bool get wantKeepAlive => true;

  R get _bloc => context.read<R>();
  FocusNode get _focusNode => widget.focusNode?.call(_bloc.state) ?? _defaultFocusNode;
  DetectableTextEditingController get _textController => widget.controller?.call(_bloc.state) ?? _defaultTextController;
  TagsEditingController get _tagsController => widget.tagsController?.call(_bloc.state) ?? _defaultTagsController;

  Widget _buildAutocomplete(S s) {
    super.build(context);

    return MyHero(
      tag: widget.heroTag,
      child: RawAutocomplete<String>(
        focusNode: _focusNode,
        textEditingController: _textController,
        optionsViewBuilder: (_, onSelected, options) => _AutocompleteOptions(
          options: options,
          onSelected: onSelected,
          maxOptionsHeight: widget.optionsMaxHeight,
          displayStringForOption: widget.optionsTextBuilder,
        ),
        onSelected: onOptionSelected,
        displayStringForOption: widget.optionsTextBuilder,
        optionsBuilder: (textEditingValue) {
          if (textEditingValue.text == '') return const [];

          final suggesstions = widget.suggesstions?.call(s);
          if (suggesstions == null) return const [];
          return suggesstions.where((o) => o.toString().toLowerCase().contains(textEditingValue.text.toLowerCase()));
        },
        fieldViewBuilder: (_, tc, node, onFieldSubmitted) => widget.type.when(
          tags: () => _CustomTagsFieldviewBuilder(
            maxLines: widget.maxLines,
            tagsController: _tagsController,
            textEditingController: tc,
            focusNode: node,
            nextFocus: widget.next,
            style: widget.style,
            initial: widget.initial?.call(s),
            textSeparators: widget.textSeparators,
            letterCase: widget.letterCase,
            tagsValidator: (input) {
              if (_tagsController.getTags != null && _tagsController.getTags!.contains(input)) {
                return AutocompleteFormField.existingTagError;
              }

              if (widget.enforceSuggestions) {
                final suggestions = widget.suggesstions?.call(s);
                if (suggestions != null && !suggestions.contains(input)) {
                  return 'Select a value from the suggestions.';
                }
              }

              if (widget.validate?.call(s) == true) return _errorText(s);

              return null;
            },
            errorText: _errorText(s),
            chipBgColor: widget.chipBgColor,
            tagTextBuilder: widget.tagTextBuilder,
            tagTextColor: widget.tagTextColor,
            tagTextColorDark: widget.tagTextColorDark,
            tagTextFontSize: widget.tagTextFontSize,
            tagTextFontWeight: widget.tagTextFontWeight,
            autofocus: widget.autofocus,
            hintText: widget.hintText?.call(s),
            hintStyle: widget.hintStyle,
            readOnly: widget.readOnly?.call(s),
            validate: widget.validate?.call(s) ?? false,
            disabled: widget.disabled?.call(s) ?? false,
            suggesstions: widget.suggesstions?.call(s),
            enforceSuggestions: widget.enforceSuggestions,
            textInputType: widget.textInputType,
            capitalization: widget.capitalization,
            inputFormatters: widget.inputFormatters,
            onChanged: (value) => widget.onChanged?.call(_bloc, value),
            onFieldSubmitted: (value) {
              onFieldSubmitted();
              widget.onEditingComplete?.call(s);
            },
            onTagsChanged: (items) => widget.onTagsChanged(_bloc, items),
          ),
          hashtags: () => _HashtagFieldViewBuilder(
            maxLines: widget.maxLines,
            controller: _textController,
            focusNode: _focusNode,
            nextFocus: widget.next,
            style: widget.style,
            autofocus: widget.autofocus,
            hintText: widget.hintText?.call(s),
            hintStyle: widget.hintStyle,
            readOnly: widget.readOnly?.call(s),
            validate: widget.validate?.call(s) ?? false,
            disabled: widget.disabled?.call(s) ?? false,
            suggesstions: widget.suggesstions?.call(s),
            enforceSuggestions: widget.enforceSuggestions,
            textInputType: widget.textInputType,
            capitalization: widget.capitalization,
            inputFormatters: widget.inputFormatters,
            onChanged: (value) => widget.onChanged?.call(_bloc, value),
            onEditingComplete: () {
              onFieldSubmitted();
              widget.onEditingComplete?.call(s);
            },
            onTagsChanged: (tags) {
              // TODO: implement onTagsChanged
            },
            validator: (input) {
              if (widget.enforceSuggestions) {
                final suggestions = widget.suggesstions?.call(s);
                if (suggestions != null && !suggestions.contains(input)) {
                  return 'Select a value from the suggestions.';
                }
              }

              if (widget.validate?.call(s) == true) return _errorText(s);

              return null;
            },
          ),
        ),
      ),
    );
  }

  String? _errorText(S s) => widget.field?.call(s)?.value.fold(
        (f) => f.message,
        (_) => widget.response?.call(s).fold(
              () => null,
              (http) => http?.response.maybeMap(error: (f) => widget.errorField?.call(f)?.firstOrNone, orElse: () => null),
            ),
      );

  void _textEditingControllerListener() {
    final currentText = _textController.text;
    if (currentText.trim().isEmpty || currentText.isEmpty) {
      const newText = '#';
      _textController.value = TextEditingValue(
        text: newText,
        selection: TextSelection.fromPosition(const TextPosition(offset: newText.length)),
      );
    }
  }

  void onOptionSelected(String? value) {
    if (value == null) return;

    // final textController = _textController(_bloc.state);
    // final text = textController.text;
    // final newText = text.endsWith('#') ? '$text$value ' : '#$value ';
    // textController.value = TextEditingValue(
    //   text: newText,
    //   selection: TextSelection.fromPosition(TextPosition(offset: newText.length)),
    // );
    // _focusNode()?.requestFocus();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    if (widget.state == null)
      return BlocBuilder<R, S>(builder: (c, s) => _buildAutocomplete(s));
    else
      return _buildAutocomplete(widget.state as S);
  }
}

class _AutocompleteOptions<T extends Object> extends StatelessWidget {
  final AutocompleteOptionToString<T> displayStringForOption;
  final double maxOptionsHeight;
  final AutocompleteOnSelected<T> onSelected;
  final Iterable<T> options;

  const _AutocompleteOptions({
    super.key,
    required this.displayStringForOption,
    required this.onSelected,
    required this.options,
    required this.maxOptionsHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Material(
        elevation: 4.0,
        child: ConstrainedBox(
          constraints: BoxConstraints(maxHeight: maxOptionsHeight),
          child: ListView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            itemCount: options.length,
            itemBuilder: (BuildContext context, int index) {
              final T option = options.elementAt(index);
              return AdaptiveInkWell(
                onTap: () => onSelected(option),
                child: Builder(builder: (BuildContext context) {
                  final bool highlight = AutocompleteHighlightedOption.of(context) == index;
                  if (highlight) {
                    SchedulerBinding.instance.addPostFrameCallback((Duration timeStamp) {
                      Scrollable.ensureVisible(context, alignment: 0.5);
                    });
                  }
                  return Container(
                    color: highlight ? Theme.of(context).focusColor : null,
                    padding: const EdgeInsets.all(16.0),
                    child: Text(displayStringForOption(option)),
                  );
                }),
              );
            },
          ),
        ),
      ),
    );
  }
}

enum AutocompleteFormFieldType {
  hashtags,
  tags;

  T when<T>({
    required T Function() hashtags,
    required T Function() tags,
  }) {
    switch (this) {
      case AutocompleteFormFieldType.hashtags:
        return hashtags();
      case AutocompleteFormFieldType.tags:
        return tags();
    }
  }

  T maybeWhen<T>({
    T Function()? hashtags,
    T Function()? tags,
    required T Function() orElse,
  }) {
    switch (this) {
      case AutocompleteFormFieldType.hashtags:
        return hashtags != null ? hashtags() : orElse();
      case AutocompleteFormFieldType.tags:
        return tags != null ? tags() : orElse();
    }
  }
}
