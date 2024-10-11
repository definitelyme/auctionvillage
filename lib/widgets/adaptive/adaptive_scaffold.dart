import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class AdaptiveScaffold extends StatelessWidget {
  final Key? scaffoldKey;
  final AdaptiveToolbar? adaptiveToolbar;
  final Widget? body;
  final WidgetBuilder? builder;
  final Color? backgroundColor;
  final SystemUiOverlayStyle? overlayStyle;
  final PlatformNavBar? adaptiveBottomNav;
  final IndexedWidgetBuilder? cupertinoTabBuilder;
  final CupertinoPageScaffoldData Function(CupertinoPageScaffoldData)? cupertino;
  final MaterialScaffoldData Function(MaterialScaffoldData)? material;
  final bool iosContentBottomPadding;
  final bool iosContentPadding;

  const AdaptiveScaffold({
    super.key,
    this.scaffoldKey,
    this.adaptiveToolbar,
    this.adaptiveBottomNav,
    this.body,
    this.builder,
    this.overlayStyle,
    this.backgroundColor,
    this.cupertinoTabBuilder,
    this.cupertino,
    this.material,
    this.iosContentBottomPadding = false,
    this.iosContentPadding = false,
  });

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: overlayStyle ?? App.systemUIOverlayStyle(context),
      child: PlatformScaffold(
        widgetKey: scaffoldKey,
        appBar: adaptiveToolbar?.build(),
        body: body ?? builder?.let((it) => Builder(builder: (c) => it(c))),
        backgroundColor: backgroundColor ?? Palette.background,
        bottomNavBar: adaptiveBottomNav,
        cupertinoTabChildBuilder: cupertinoTabBuilder,
        iosContentBottomPadding: iosContentBottomPadding,
        iosContentPadding: iosContentPadding,
        cupertino: cupertino != null ? (_, __) => cupertino!.call(CupertinoPageScaffoldData()) : null,
        material: material != null ? (_, __) => material!.call(MaterialScaffoldData()) : null,
      ),
    );
  }
}

extension MaterialScaffoldDataXX on MaterialScaffoldData {
  MaterialScaffoldData copyWith({
    Color? backgroundColor,
    Widget? body,
    Key? widgetKey,
    PreferredSizeWidget? appBar,
    Widget? bottomNavBar,
    Widget? drawer,
    Widget? endDrawer,
    Widget? floatingActionButton,
    FloatingActionButtonAnimator? floatingActionButtonAnimator,
    FloatingActionButtonLocation? floatingActionButtonLocation,
    List<Widget>? persistentFooterButtons,
    bool? primary,
    Widget? bottomSheet,
    DragStartBehavior? drawerDragStartBehavior,
    bool? extendBody,
    bool? resizeToAvoidBottomInset,
    Color? drawerScrimColor,
    double? drawerEdgeDragWidth,
    bool? extendBodyBehindAppBar,
    bool? drawerEnableOpenDragGesture,
    bool? endDrawerEnableOpenDragGesture,
    String? restorationId,
    void Function(bool)? onDrawerChanged,
    void Function(bool)? onEndDrawerChanged,
  }) {
    return MaterialScaffoldData(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      body: body ?? this.body,
      widgetKey: widgetKey ?? this.widgetKey,
      appBar: appBar ?? this.appBar,
      bottomNavBar: bottomNavBar ?? this.bottomNavBar,
      drawer: drawer ?? this.drawer,
      endDrawer: endDrawer ?? this.endDrawer,
      floatingActionButton: floatingActionButton ?? this.floatingActionButton,
      floatingActionButtonAnimator: floatingActionButtonAnimator ?? this.floatingActionButtonAnimator,
      floatingActionButtonLocation: floatingActionButtonLocation ?? this.floatingActionButtonLocation,
      persistentFooterButtons: persistentFooterButtons ?? this.persistentFooterButtons,
      primary: primary ?? this.primary,
      bottomSheet: bottomSheet ?? this.bottomSheet,
      drawerDragStartBehavior: drawerDragStartBehavior ?? this.drawerDragStartBehavior,
      extendBody: extendBody ?? this.extendBody,
      resizeToAvoidBottomInset: resizeToAvoidBottomInset ?? this.resizeToAvoidBottomInset,
      drawerScrimColor: drawerScrimColor ?? this.drawerScrimColor,
      drawerEdgeDragWidth: drawerEdgeDragWidth ?? this.drawerEdgeDragWidth,
      extendBodyBehindAppBar: extendBodyBehindAppBar ?? this.extendBodyBehindAppBar,
      drawerEnableOpenDragGesture: drawerEnableOpenDragGesture ?? this.drawerEnableOpenDragGesture,
      endDrawerEnableOpenDragGesture: endDrawerEnableOpenDragGesture ?? this.endDrawerEnableOpenDragGesture,
      restorationId: restorationId ?? this.restorationId,
      onDrawerChanged: onDrawerChanged ?? this.onDrawerChanged,
      onEndDrawerChanged: onEndDrawerChanged ?? this.onEndDrawerChanged,
    );
  }
}

extension CupertinoPageScaffoldDataXX on CupertinoPageScaffoldData {
  CupertinoPageScaffoldData copyWith({
    Color? backgroundColor,
    Widget? body,
    Key? widgetKey,
    ObstructingPreferredSizeWidget? navigationBar,
    CupertinoTabBar? bottomTabBar,
    bool? resizeToAvoidBottomInset,
    bool? resizeToAvoidBottomInsetTab,
    Color? backgroundColorTab,
    String? restorationIdTab,
    CupertinoTabController? controller,
  }) {
    return CupertinoPageScaffoldData(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      body: body ?? this.body,
      widgetKey: widgetKey ?? this.widgetKey,
      navigationBar: navigationBar ?? this.navigationBar,
      bottomTabBar: bottomTabBar ?? this.bottomTabBar,
      resizeToAvoidBottomInset: resizeToAvoidBottomInset ?? this.resizeToAvoidBottomInset,
      resizeToAvoidBottomInsetTab: resizeToAvoidBottomInsetTab ?? this.resizeToAvoidBottomInsetTab,
      backgroundColorTab: backgroundColorTab ?? this.backgroundColorTab,
      restorationIdTab: restorationIdTab ?? this.restorationIdTab,
      controller: controller ?? this.controller,
    );
  }
}
