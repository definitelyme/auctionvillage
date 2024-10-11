library adaptive_bottomsheet.dart;

import 'package:flutter/material.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

enum _AdaptiveBottomSheetType {
  normal,
  column;

  T when<T>({required T Function() normal, required T Function() column}) {
    switch (this) {
      case _AdaptiveBottomSheetType.column:
        return column();
      case _AdaptiveBottomSheetType.normal:
      default:
        return normal();
    }
  }
}

/// A stateless widget to render AdaptiveBottomSheet.
class AdaptiveBottomSheet extends StatelessWidget {
  final _AdaptiveBottomSheetType _type;

  final Color? backgroundColor;
  final double? backgroundOpacity;
  final double barHeight;
  final double barWidth;
  final Widget? child;
  final List<Widget>? children;
  final CrossAxisAlignment crossAxisAlignment;
  final double? gapBeforeBar;
  final double? gapBetweenBarAndContent;
  final MainAxisAlignment mainAxisAlignment;
  final MainAxisSize mainAxisSize;
  final EdgeInsetsGeometry padding;
  final bool reverse;
  final bool? safeAreaBottom;
  final bool? safeAreaTop;
  final bool showBar;
  final bool showCloseButton;
  final String? subtitle;
  final int? subtitleMaxLines;
  final EdgeInsetsGeometry? subtitlePadding;
  final TextStyle? subtitleStyle;
  final TextAlign? subtitleTextAlign;
  final String? title;
  final int? titleMaxLines;
  final EdgeInsetsGeometry? titlePadding;
  final TextStyle? titleStyle;
  final TextAlign? titleTextAlign;
  final Widget Function(Widget)? topBar;
  final CrossAxisAlignment topBarCrossAxisAlignment;
  final MainAxisAlignment topBarMainAxisAlignment;
  final Radius? topRadius;

  const AdaptiveBottomSheet({
    Key? key,
    required Widget this.child,
    this.backgroundColor,
    this.topRadius,
    this.safeAreaTop,
    this.safeAreaBottom,
    this.backgroundOpacity,
    this.showBar = true,
    this.gapBeforeBar,
    this.gapBetweenBarAndContent,
    this.barHeight = 0.006,
    this.barWidth = 0.2,
    this.reverse = false,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.topBar,
    this.topBarMainAxisAlignment = MainAxisAlignment.start,
    this.topBarCrossAxisAlignment = CrossAxisAlignment.center,
  })  : children = null,
        title = null,
        subtitle = null,
        titleMaxLines = null,
        subtitleMaxLines = null,
        showCloseButton = false,
        titleStyle = null,
        subtitleStyle = null,
        titlePadding = null,
        titleTextAlign = null,
        subtitlePadding = null,
        subtitleTextAlign = null,
        padding = EdgeInsets.zero,
        mainAxisSize = MainAxisSize.min,
        crossAxisAlignment = CrossAxisAlignment.start,
        _type = _AdaptiveBottomSheetType.normal,
        super(key: key);

  const AdaptiveBottomSheet.column({
    Key? key,
    required List<Widget> this.children,
    this.title,
    this.subtitle,
    this.titlePadding,
    this.titleTextAlign,
    this.subtitlePadding,
    this.subtitleTextAlign,
    this.backgroundColor,
    this.topRadius,
    this.safeAreaTop,
    this.safeAreaBottom,
    this.reverse = false,
    this.backgroundOpacity,
    this.showBar = true,
    this.titleMaxLines,
    this.subtitleMaxLines,
    this.showCloseButton = true,
    this.titleStyle,
    this.subtitleStyle,
    double? gapBeforeBar,
    EdgeInsetsGeometry? padding,
    this.gapBetweenBarAndContent,
    this.barHeight = 0.006,
    this.barWidth = 0.2,
    this.mainAxisSize = MainAxisSize.min,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.crossAxisAlignment = CrossAxisAlignment.stretch,
    this.topBar,
    this.topBarMainAxisAlignment = MainAxisAlignment.start,
    this.topBarCrossAxisAlignment = CrossAxisAlignment.center,
  })  : child = null,
        gapBeforeBar = gapBeforeBar ?? (showCloseButton ? 0.01 : 0),
        padding = padding ?? EdgeInsets.zero,
        _type = _AdaptiveBottomSheetType.column,
        super(key: key);

  bool get _safeAreaTop => safeAreaTop ?? Utils.platform_(material: false, cupertino: true)!;

  Color? _backgroundColor(BuildContext ctx) => backgroundOpacity == null
      ? (backgroundColor ?? App.resolveColor(Palette.elevationOverlayLight, dark: Palette.elevationOverlay07Dark))
      : (backgroundColor ?? App.resolveColor(Palette.elevationOverlayLight, dark: Palette.elevationOverlay07Dark))
          ?.withOpacity(backgroundOpacity!);

  Radius get _topRadius => topRadius ?? const Radius.circular(24);

  Widget _build(BuildContext ctx) {
    return _type.when(
      normal: () => child!,
      column: () => Column(
        mainAxisSize: mainAxisSize,
        mainAxisAlignment: mainAxisAlignment,
        crossAxisAlignment: crossAxisAlignment,
        children: <Widget>[
          if (gapBeforeBar != null) gapBeforeBar!.verticalh,
          //
          _topBar(ctx),
          //
          if (gapBetweenBarAndContent != null) gapBetweenBarAndContent!.verticalh,
          //
          if (title != null)
            Padding(
              padding: titlePadding ?? EdgeInsets.symmetric(horizontal: App.sidePadding).copyWith(bottom: 8),
              child: AdaptiveText(
                title!,
                maxLines: titleMaxLines,
                textAlign: titleTextAlign,
                style: Theme.of(ctx)
                    .textTheme
                    .headline6
                    ?.copyWith(color: Utils.isDarkMode(ctx) && App.platform.isIOS ? Palette.headingDark : null)
                    .merge(titleStyle),
              ),
            ),
          //
          if (subtitle != null)
            Padding(
              padding: subtitlePadding ?? EdgeInsets.symmetric(horizontal: App.sidePadding).copyWith(bottom: 8),
              child: AdaptiveText(
                subtitle!,
                maxLines: subtitleMaxLines,
                textAlign: subtitleTextAlign,
                style: Theme.of(ctx)
                    .textTheme
                    .subtitle1
                    ?.copyWith(color: Utils.isDarkMode(ctx) && App.platform.isIOS ? Palette.onSurfaceDark : null)
                    .merge(subtitleStyle),
              ),
            ),
          //
          Padding(
            padding: padding,
            child: Column(
              mainAxisSize: mainAxisSize,
              mainAxisAlignment: mainAxisAlignment,
              crossAxisAlignment: crossAxisAlignment,
              children: children!,
            ),
          ),
        ],
      ),
    );
  }

  Widget _topBar(BuildContext ctx) {
    final bar = ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: DecoratedBox(
        decoration: const BoxDecoration(color: Colors.grey),
        child: SizedBox(height: barHeight.h, width: barWidth.w),
      ),
    );

    if (topBar != null) return topBar!(bar);

    return Row(
      mainAxisAlignment: topBarMainAxisAlignment,
      crossAxisAlignment: topBarCrossAxisAlignment,
      children: [
        if (showCloseButton) Expanded(child: Align(alignment: Alignment.centerLeft, child: BottomsheetTop.close(ctx))),
        if (showBar) Expanded(child: Center(child: bar)),
        if (showCloseButton) const Spacer(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: ModalScrollController.of(context),
      physics: const ClampingScrollPhysics(),
      padding: MediaQuery.of(context).viewInsets,
      reverse: reverse,
      child: Material(
        color: _backgroundColor(context),
        borderRadius: BorderRadius.only(topLeft: _topRadius, topRight: _topRadius),
        child: WidgetFocus(
          unfocus: false,
          child: _build(context).safeArea(top: _safeAreaTop, bottom: safeAreaBottom),
        ),
      ),
    ).safeTop;
  }
}

mixin BottomsheetTop {
  static Widget action(
    Widget action, {
    bool isLoading = false,
  }) {
    return AnimatedVisibility(
      visible: isLoading,
      replacement: action,
      child: const Center(
        child: Padding(
          padding: EdgeInsets.all(4.0),
          child: CircularProgressBar.adaptive(height: 23, width: 23, strokeWidth: 2),
        ),
      ),
    );
  }

  static Widget close(BuildContext ctx) => Padding(
        padding: EdgeInsets.symmetric(
          horizontal: Utils.platform_(material: 0.01.w, cupertino: App.sidePadding)!,
        ),
        child: Utils.platform_(
          material: AdaptiveToolbar.materialToolbarAction(
            onPressed: navigator.pop,
            tooltip: 'Close',
            backgroundColor: Theme.of(ctx).scaffoldBackgroundColor,
            child: const Icon(Icons.close),
            size: const Size.square(38),
            iconSize: 21,
          ),
          cupertino: AdaptiveButton(
            text: 'Close',
            materialData: (d) => d.copyWith(
              elevation: 0.0,
              width: 0.1.w,
              splashColor: App.resolveColor(Colors.grey.shade300, dark: Colors.grey.shade800),
            ),
            cupertinoData: (d) => d.copyWith(height: 0.04.h),
            padding: EdgeInsets.zero,
            fontSize: 18.5.sp,
            backgroundColor: App.resolveColor(Colors.transparent),
            textColor: Palette.primary,
            onPressed: navigator.pop,
          ),
        ),
      );
}
