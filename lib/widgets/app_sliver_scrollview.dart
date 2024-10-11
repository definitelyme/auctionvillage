library app_sliver_scrollview.dart;

import 'package:flutter/material.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:flutter/services.dart';

/// A stateless widget to render AppSliverScrollView.
class AppSliverScrollView extends StatelessWidget {
  final String? title;
  final bool showTitle;
  final Widget? titleWidget;
  final String? subtitle;
  final Widget? subtitleWidget;
  final bool showSubtitle;
  final bool hasAppBar;
  final bool implyMiddle;
  final bool? autoImplyLeading;
  final bool? cupertinoAutoImplyLeading;
  final List<Widget> slivers;
  final ScrollPhysics? physics;
  final ScrollController? controller;
  final Color? scaffoldBackgroundColor;
  final bool useSafeArea;
  final double? titleTopPadding;
  final double? subtitleTopPadding;
  final List<Widget> Function(Widget)? stackChildren;
  final ScrollViewKeyboardDismissBehavior? keyboardDismissBehavior;
  final List<Widget> actions;
  final bool initialRefresh;
  final bool isPaginated;
  final bool enablePullDown;
  final bool enablePullUp;
  final bool? showCupertinoCustomLeading;
  final bool? showMaterialCustomLeading;
  final Widget? customLeading;
  final SystemUiOverlayStyle? scaffoldOverlayStyle;
  final SystemUiOverlayStyle? toolbarOverlayStyle;
  final void Function(DragToRefreshState)? onRefresh;
  final void Function(DragToRefreshState)? onLoading;
  final bool resizeToAvoidBottomInsetTab;
  final bool resizeToAvoidBottomInset;
  final bool _scaffold;
  final List<Widget> Function(BuildContext)? sliverBuilder;
  final bool widgetFocus;
  final double Function(double)? footerHeight;

  AppSliverScrollView({
    Key? key,
    this.slivers = const [],
    this.sliverBuilder,
    this.title,
    this.titleWidget,
    this.showTitle = true,
    this.subtitle,
    this.subtitleWidget,
    this.showSubtitle = true,
    this.hasAppBar = true,
    this.implyMiddle = false,
    this.autoImplyLeading,
    this.cupertinoAutoImplyLeading,
    this.physics,
    this.controller,
    this.useSafeArea = false,
    this.titleTopPadding,
    this.subtitleTopPadding,
    this.scaffoldBackgroundColor,
    this.keyboardDismissBehavior,
    this.stackChildren,
    this.actions = const [],
    this.initialRefresh = true,
    this.isPaginated = false,
    this.enablePullDown = true,
    this.enablePullUp = false,
    this.showCupertinoCustomLeading,
    this.showMaterialCustomLeading,
    this.customLeading,
    this.onRefresh,
    this.onLoading,
    this.resizeToAvoidBottomInsetTab = false,
    this.resizeToAvoidBottomInset = false,
    this.scaffoldOverlayStyle,
    this.toolbarOverlayStyle,
    this.widgetFocus = false,
    this.footerHeight,
  })  : assert((slivers.isEmpty && sliverBuilder != null) ||
            (sliverBuilder == null && slivers.isNotEmpty) ||
            (slivers.isEmpty && sliverBuilder == null)),
        _scaffold = false,
        super(key: key);

  AppSliverScrollView.scaffold({
    Key? key,
    this.slivers = const [],
    this.sliverBuilder,
    this.title,
    this.titleWidget,
    this.showTitle = true,
    this.subtitle,
    this.subtitleWidget,
    this.showSubtitle = true,
    this.hasAppBar = true,
    this.implyMiddle = false,
    this.autoImplyLeading,
    this.cupertinoAutoImplyLeading,
    this.physics,
    this.controller,
    this.useSafeArea = false,
    this.titleTopPadding,
    this.subtitleTopPadding,
    this.scaffoldBackgroundColor,
    this.keyboardDismissBehavior,
    this.stackChildren,
    this.actions = const [],
    this.initialRefresh = true,
    this.isPaginated = false,
    this.enablePullDown = true,
    this.enablePullUp = false,
    this.showCupertinoCustomLeading,
    this.showMaterialCustomLeading,
    this.customLeading,
    this.onRefresh,
    this.onLoading,
    this.resizeToAvoidBottomInsetTab = false,
    this.resizeToAvoidBottomInset = false,
    this.scaffoldOverlayStyle,
    this.toolbarOverlayStyle,
    this.widgetFocus = false,
    this.footerHeight,
  })  : assert((slivers.isEmpty && sliverBuilder != null) ||
            (sliverBuilder == null && slivers.isNotEmpty) ||
            (slivers.isEmpty && sliverBuilder == null)),
        _scaffold = true,
        super(key: key);

  Widget _scrollView(BuildContext? context) => CustomScrollView(
        primary: isPaginated ? false : null,
        physics: physics ?? Utils.physics,
        scrollDirection: Axis.vertical,
        controller: isPaginated ? null : (controller ?? ScrollController()),
        keyboardDismissBehavior: keyboardDismissBehavior ?? ScrollViewKeyboardDismissBehavior.onDrag,
        slivers: [
          if ((subtitle != null || subtitleWidget != null) && showSubtitle)
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: App.sidePadding).copyWith(top: subtitleTopPadding ?? 0.014.h),
              sliver: SliverToBoxAdapter(
                child: subtitleWidget ??
                    AdaptiveText(
                      '$subtitle',
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w400,
                    ),
              ),
            ),
          //
          ...(sliverBuilder?.call(context!) ?? slivers),
        ],
      );

  Widget _maybeFocus({required Widget child}) => widgetFocus ? WidgetFocus(child: child) : child;

  Widget get _body => SafeArea(
        top: title != null && App.platform.isIOS,
        left: false,
        right: false,
        bottom: false,
        child: !isPaginated
            ? sliverBuilder != null
                ? Builder(builder: (c) => _scrollView(c))
                : _scrollView(null)
            : Builder(
                builder: (c) => DragToRefresh(
                  initialRefresh: initialRefresh,
                  enablePullDown: enablePullDown,
                  enablePullUp: enablePullUp,
                  onRefresh: onRefresh,
                  onLoading: onLoading,
                  scrollController: controller,
                  footerHeight: footerHeight,
                  child: sliverBuilder != null ? _scrollView(c) : _scrollView(null),
                ),
              ),
      );

  @override
  Widget build(BuildContext context) {
    return _scaffold
        ? AdaptiveScaffold(
            backgroundColor: scaffoldBackgroundColor,
            overlayStyle: scaffoldOverlayStyle,
            cupertino: (data) => data.copyWith(
              resizeToAvoidBottomInsetTab: resizeToAvoidBottomInsetTab,
              resizeToAvoidBottomInset: resizeToAvoidBottomInset,
            ),
            adaptiveToolbar: hasAppBar
                ? AdaptiveToolbar(
                    implyMiddle: implyMiddle,
                    title: title,
                    centerTitle: false,
                    implyLeading: autoImplyLeading ?? true,
                    showCupertinoCustomLeading: showCupertinoCustomLeading,
                    showMaterialCustomLeading: showMaterialCustomLeading,
                    materialLeadingWidget: customLeading,
                    // cupertinoLeadingWidget: customLeading,
                    cupertinoImplyLeading: cupertinoAutoImplyLeading ?? App.platform.isIOS,
                    actions: actions,
                    overlayStyle: toolbarOverlayStyle,
                  )
                : null,
            body: _maybeFocus(
              child: stackChildren == null
                  ? AdaptiveScaffoldBody(body: _body)
                  : Stack(children: stackChildren!.call(AdaptiveScaffoldBody(body: _body))),
            ),
          )
        : _body;
  }
}
