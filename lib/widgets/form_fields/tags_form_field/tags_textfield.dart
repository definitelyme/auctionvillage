library tags_textfield.dart;

import 'package:flutter/material.dart';

part 'tags_controller.dart';

class TextFieldTags extends StatefulWidget {
  ///[validator] allows you to validate the tag that has been entered
  final _Validator? validator;

  ///[initialTags] are optional initial tags that show up on the text field. Default is set to empty list.
  final List<String>? initialTags;

  ///Enter optional String separators to split the tags. Default is set to [","," "]
  final List<String>? textSeparators;

  ///Change the letter case of the text entered by user. Default is set to normal letter[LetterCase.normal]
  final LetterCase? letterCase;

  ///Use this to add more custumization and control over the tags and textfield
  final TagsEditingController? textfieldTagsController;

  ///This [InputFieldBuilder] allows you to build your own custom widget
  final InputFieldBuilder<Widget> inputfieldBuilder;

  ///Use this to utilize your own [TextEditingController] instance created by you or by other widgets outside of this widget.
  ///If no controller is provider by you, the widget will use its own built in default controller.
  final TextEditingController? textEditingController;

  ///Use this to utilize your own [FocusNode] instance created by you or by other widgets outside of this widget.
  ///If no focus node is provider by you, the widget will use its own built in default one.
  final FocusNode? focusNode;

  const TextFieldTags({
    Key? key,
    this.validator,
    this.initialTags,
    this.textSeparators,
    this.letterCase,
    this.textEditingController,
    this.focusNode,
    this.textfieldTagsController,
    required this.inputfieldBuilder,
  }) : super(key: key);

  @override
  _TextFieldTagsState createState() => _TextFieldTagsState();
}

class _TextFieldTagsState extends State<TextFieldTags> {
  late List<String>? _tags;
  late String? _error;
  late TagsEditingController _ttc;

  @override
  void initState() {
    super.initState();
    _ttc = (widget.textfieldTagsController ?? TagsEditingController())
      ..init(
        widget.validator,
        widget.letterCase,
        widget.initialTags,
        widget.textEditingController,
        widget.focusNode,
        widget.textSeparators,
      )
      ..scrollTags(forward: true);

    _error = _ttc.getError;
    _tags = _ttc.getTags;

    _ttc.addListener(() {
      if (mounted)
        setState(() {
          _error = _ttc.getError;
          _tags = _ttc.getTags;
        });
    });
  }

  @override
  Widget build(BuildContext context) {
    final build = widget.inputfieldBuilder(
      context,
      _ttc.textEditingController!,
      _ttc.focusNode!,
      _error,
      _ttc.onChanged,
      _ttc.onSubmitted,
    )(
      context,
      _ttc.scrollController,
      _tags!,
      _ttc.onTagDelete,
    );
    return build;
  }
}
