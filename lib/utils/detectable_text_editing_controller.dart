import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:auctionvillage/utils/utils.dart';

class MatchPattern {
  final Pattern regex;
  final TextStyle? style;
  final void Function(String)? onMatchPressed;

  const MatchPattern({required this.regex, this.style, this.onMatchPressed});
}

class DetectableTextEditingController extends TextEditingController {
  final List<MatchPattern> patterns;

  DetectableTextEditingController({
    String? text,
    this.patterns = const [],
  }) : super.fromValue(text == null ? TextEditingValue.empty : TextEditingValue(text: text));

  static List<TextSpan> buildSpans(String text, List<MatchPattern> patterns, {TextStyle? style}) {
    /// match words in the [text] that starts with [pattern] and ends with space or end of the [text]
    /// e.g. @user, #tag, @user1, @user2, #tag1, #tag2
    final matches = patterns.map((e) => e.regex).map((p) => RegExp('$p\\w+').allMatches(text)).expand((i) => i).toList();

    /// sort the matches by the start index of the match
    matches.sort((a, b) => a.start.compareTo(b.start));

    /// create a list of [TextSpan] from the [matches]
    /// and add the remaining text as [TextSpan]
    final spans = <TextSpan>[];
    var start = 0;

    for (final match in matches) {
      if (match.start > start) {
        spans.add(TextSpan(text: text.substring(start, match.start)));
      }

      final _text = text.substring(match.start, match.end);

      final detectedPatternMatch = patterns.firstWhere((e) => RegExp(RegExp.escape('${e.regex}')).hasMatch(match.group(0)!));
      // final detectedPatternMatch = patterns.firstWhere((e) => RegExp('${e.regex}\\w+').hasMatch(match.group(0)!));

      // find the style of the match
      final _findStyle = detectedPatternMatch.style;

      // find the recognizer of the match
      final _findCTA = detectedPatternMatch.onMatchPressed;

      spans.add(TextSpan(
        text: _text,
        style: style?.merge(_findStyle) ?? _findStyle,
        recognizer: TapGestureRecognizer()..onTap = () => _findCTA?.call(text.substring(match.start, match.end)),
      ));

      start = match.end;
    }

    if (start < text.length) {
      spans.add(TextSpan(text: text.substring(start)));
    }

    return spans;
  }

  @override
  TextSpan buildTextSpan({required BuildContext context, TextStyle? style, required bool withComposing}) {
    if (patterns.isEmpty) return super.buildTextSpan(context: context, style: style, withComposing: withComposing);

    assert(!value.composing.isValid || !withComposing || value.isComposingRangeValid);

    final spans = buildSpans(value.text, patterns, style: style);

    return TextSpan(style: style, children: spans);
  }

  Map<String, List<String>> match({bool withDuplicates = false, bool includePattern = false}) {
    // get all text in the [text] that starts with [pattern] and ends with space or end of the [text]
    final it = patterns
        .map((p) => RegExp('${p.regex}\\w+').allMatches(value.text).map((e) => value.text.substring(e.start, e.end)))
        .expand((i) => i);

    // group the text by the [pattern] (which is the first character of the text)
    final group =
        it.groupBy((e) => e.substring(0, 1)).values.map((e) => includePattern ? e : e.map((e) => e.substring(1)).toList()).toList().asMap();

    if (!withDuplicates) {
      return group.map((key, value) => MapEntry(patterns[key].regex.toString(), value.toSet().toList()));
    } else {
      return group.map((key, value) => MapEntry(patterns[key].regex.toString(), value));
    }
  }

  List<String> matchAll(Pattern pattern, {bool withDuplicates = false, bool includePattern = false}) {
    final it = RegExp('$pattern\\w+')
        .allMatches(value.text)
        .map((e) => value.text.substring(e.start, e.end))
        .map((e) => includePattern ? e : e.substring(1));

    if (!withDuplicates) {
      return it.toSet().toList();
    } else {
      return it.toList();
    }
  }
}


// class WidgetSpanTextEditingController extends TextEditingController {
//   WidgetSpanTextEditingController({String? text}) : super.fromValue(text == null ? TextEditingValue.empty : TextEditingValue(text: text));

//   @override
//   TextSpan buildTextSpan({required BuildContext context, TextStyle? style, required bool withComposing}) {
//     TextRange? matchedRange;

//     if (text.contains('@')) {
//       matchedRange = _findMatchedRange(text);
//     }

//     if (matchedRange != null) {
//       return TextSpan(
//         children: [
//           TextSpan(text: matchedRange.textBefore(text)),
//           const WidgetSpan(child: FlutterLogo()),
//           TextSpan(text: matchedRange.textAfter(text)),
//         ],
//         style: style,
//       );
//     }

//     return TextSpan(text: text, style: style);
//   }

//   TextRange _findMatchedRange(String text) {
//     final RegExp matchPattern = RegExp(RegExp.escape('@'));

//     late TextRange matchedRange;

//     for (final Match match in matchPattern.allMatches(text)) {
//       matchedRange = TextRange(start: match.start, end: match.end);
//     }

//     return matchedRange;
//   }
// }
