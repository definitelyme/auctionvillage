library html_renderer.dart;

import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

/// A stateless widget to render HtmlRenderer.
class HtmlRenderer extends StatelessWidget {
  final String? html;
  final bool noMedia;
  final TextStyle Function(String)? textStyle;
  final TextStyle Function(String)? titleStyle;

  const HtmlRenderer(this.html, {super.key, this.noMedia = false, this.textStyle, this.titleStyle});

  TextStyle get _textStyle => TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.normal,
        letterSpacing: Utils.letterSpacing,
        color: Palette.onSurface,
      );

  TextStyle get _h1 =>
      TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w600, letterSpacing: Utils.letterSpacing, color: Palette.onSurface);

  TextStyle get _h2 =>
      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600, letterSpacing: Utils.letterSpacing, color: Palette.onSurface);

  TextStyle get _h3 =>
      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600, letterSpacing: Utils.letterSpacing, color: Palette.onSurface);

  TextStyle get _h4 =>
      TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w600, letterSpacing: Utils.letterSpacing, color: Palette.onSurface);

  TextStyle get _h5 =>
      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600, letterSpacing: Utils.letterSpacing, color: Palette.onSurface);

  TextStyle get _h6 =>
      TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w600, letterSpacing: Utils.letterSpacing, color: Palette.onSurface);

  @override
  Widget build(BuildContext context) {
    return Html(
      data: html,
      tagsList: Html.tags
        ..removeWhere(
          (tag) => (noMedia && (tag == 'img' || tag == 'iframe' || tag == 'video' || tag == 'audio' || tag == 'source')),
        ),
      navigationDelegateForIframe: (request) => NavigationDecision.navigate,
      onAnchorTap: (url, _, __, ___) => UrlLauncher.url(url),
      onLinkTap: (url, _, __, ___) => UrlLauncher.url(url),

      // custom render for links
      customRender: {
        'a': (context, child) {
          final text = context.tree.element?.text;
          final href = context.tree.element?.attributes['href'];
          var clicked = false;

          return StatefulBuilder(
            builder: (_, setState) {
              return AdaptiveInkWell(
                enableFeedback: true,
                containedInkWell: true,
                onLongPress: href == null ? null : () => ClipboardManager.copy(href, msg: 'Link copied to clipboard'),
                onTap: () {
                  setState(() => clicked = true);
                  UrlLauncher.url(href);
                },
                child: AdaptiveText(
                  text ?? '',
                  style: (textStyle?.call(text ?? '') ?? _textStyle).copyWith(
                    color: !clicked ? Colors.blueAccent : Colors.deepPurpleAccent,
                    decoration: TextDecoration.underline,
                    fontSize: 15.5.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              );
            },
          );
        },
      },
      customImageRenders: {
        networkSourceMatcher(): (_, attributes, el) {
          final width = attributes['width'];
          final height = attributes['height'];

          if (width == null || height == null || double.tryParse(width) == null || double.tryParse(height) == null) {
            return ImageBox.network(
              heroTag: 'web-render-${attributes['src']}--${attributes['alt']}--$el',
              photo: attributes['src']!,
              expandsFullscreen: true,
              progressIndicatorColorDark: Colors.white,
            );
          } else {
            return AspectRatio(
              aspectRatio: double.parse('${attributes['width']}') / double.parse('${attributes['height']}'),
              child: ImageBox.network(
                heroTag: 'web-render-${attributes['src']}--${attributes['alt']}--$el',
                photo: attributes['src'],
                expandsFullscreen: true,
                progressIndicatorColorDark: Colors.white,
              ),
            );
          }
        },
      },
      style: {
        'h1': titleStyle?.call('h1').toStyle ?? _h1.toStyle,
        'h2': titleStyle?.call('h2').toStyle ?? _h2.toStyle,
        'h3': titleStyle?.call('h3').toStyle ?? _h3.toStyle,
        'h4': titleStyle?.call('h4').toStyle ?? _h4.toStyle,
        'h5': titleStyle?.call('h5').toStyle ?? _h5.toStyle,
        'h6': titleStyle?.call('h6').toStyle ?? _h6.toStyle,
        'body': textStyle?.call('body').toStyle ?? _textStyle.toStyle,
        'p': textStyle?.call('p').toStyle ?? _textStyle.toStyle,
        'div': textStyle?.call('div').toStyle ?? _textStyle.toStyle,
        'span': textStyle?.call('span').toStyle ?? _textStyle.toStyle,
      },
    );
  }
}

extension _StyleX on TextStyle {
  Style get toStyle => Style(
        color: color,
        fontSize: FontSize.em(fontSize! * 0.0624),
        fontWeight: fontWeight,
        fontStyle: fontStyle,
        letterSpacing: letterSpacing,
        wordSpacing: wordSpacing,
        height: height,
        fontFamily: fontFamily,
      );
}
