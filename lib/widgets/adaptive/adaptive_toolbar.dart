import 'package:auctionvillage/manager/locator/locator.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter/services.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class AdaptiveToolbar {
  final Key? key;
  final String? title;
  final Widget headline;
  final IconData? leadingIcon;
  final double leadingElevation;
  final double? leadingSplashRadius;
  final Widget? materialLeadingWidget;
  final TextStyle? titleStyle;
  final bool centerTitle;
  final bool implyLeading;
  final bool? showCupertinoCustomLeading;
  final bool? showMaterialCustomLeading;
  final VoidCallback? leadingAction;
  final double elevation;
  final double? fontSize;
  final FontWeight? fontWeight;
  final double? height;
  final Color? backgroundColor;
  final Color? leadingIconColor;
  final Color? leadingBgColor;
  final BorderRadius? leadingBorderRadius;
  final List<Widget> actions;
  final String? tooltip;
  final String? semantics;
  final double? leadingWidth;
  final SystemUiOverlayStyle? overlayStyle;
  final WidgetBuilder? builder;
  final Color? materialTitleColor;
  // Cupertino
  final Widget? titleWidget;
  // final Widget? cupertinoLeadingIcon;
  final Color? cupertinoTitleColor;
  final Color? cupertinoLeadingColor;
  final bool cupertinoImplyLeading;
  final bool implyMiddle;
  final AlignmentGeometry cupertinoLeadingAlignment;
  final Alignment? cupertinoTitleAlignment;
  final Widget? Function(bool)? cupertinoLeadingWidget;
  final Color? cupertinoLeadingBackgroundColor;
  final String cupertinoLeading;
  final EdgeInsetsGeometry cupertinoLeadingPadding;
  final TextStyle? cupertinoLeadingStyle;
  final String? previousPageTitle;
  final Brightness? brightness;
  final EdgeInsetsDirectional? padding;
  final bool transitionBetweenRoutes;
  final bool noCupertinoBorder;
  // Adaptive
  final MaterialAppBarData Function(MaterialAppBarData)? materialConfig;
  final CupertinoNavigationBarData Function(CupertinoNavigationBarData)? cupertinoConfig;
  final bool material;
  final bool cupertino;
  final Object? heroTag;

  const AdaptiveToolbar({
    this.key,
    this.title,
    this.titleWidget,
    this.headline = const SizedBox.shrink(),
    this.leadingIcon,
    this.leadingElevation = 2,
    this.leadingSplashRadius,
    this.materialLeadingWidget,
    this.titleStyle,
    this.centerTitle = true,
    this.implyLeading = true,
    this.showCupertinoCustomLeading,
    this.showMaterialCustomLeading,
    this.leadingAction,
    this.elevation = 0.0,
    this.fontSize,
    this.fontWeight,
    this.height,
    this.backgroundColor,
    this.leadingIconColor,
    this.leadingBgColor,
    this.leadingBorderRadius,
    this.actions = const [],
    this.tooltip,
    this.builder,
    this.overlayStyle,
    this.leadingWidth,
    this.semantics,
    this.cupertinoImplyLeading = true,
    this.implyMiddle = false,
    this.materialTitleColor,
    // this.cupertinoLeadingIcon,
    this.cupertinoTitleColor,
    this.cupertinoLeadingColor,
    this.cupertinoLeadingWidget,
    this.cupertinoLeading = 'Close',
    this.cupertinoLeadingStyle,
    this.cupertinoLeadingAlignment = Alignment.center,
    this.cupertinoLeadingBackgroundColor,
    this.cupertinoTitleAlignment,
    this.cupertinoLeadingPadding = EdgeInsets.zero,
    this.padding,
    this.previousPageTitle,
    this.brightness,
    this.noCupertinoBorder = false,
    this.transitionBetweenRoutes = true,
    this.materialConfig,
    this.cupertinoConfig,
    this.material = true,
    this.cupertino = true,
    this.heroTag,
  });

  static AdaptiveToolbar selection({
    int? count,
    String Function(int?)? countBuilder,
    Color? backgroundColor,
    VoidCallback? onBackPressed,
    SystemUiOverlayStyle? overlayStyle,
    Color? leadingIconColor,
    bool? showCupertinoCustomLeading,
    bool? showMaterialCustomLeading,
    Color? materialTitleColor,
    List<Widget> actions = const [],
  }) {
    return AdaptiveToolbar(
      leadingSplashRadius: 20,
      showCupertinoCustomLeading: showCupertinoCustomLeading,
      showMaterialCustomLeading: showMaterialCustomLeading,
      centerTitle: false,
      implyLeading: false,
      cupertinoImplyLeading: false,
      leadingIconColor: leadingIconColor,
      elevation: 1,
      backgroundColor: backgroundColor ??
          App.resolveColor(
            Palette.neutralF4,
            dark: Palette.elevationOverlayDark,
            ctx: getIt<AppRouter>().navigatorKey.currentContext,
          ),
      title: App.platform.material(countBuilder?.call(count) ?? '$count selected'),
      materialTitleColor: materialTitleColor,
      implyMiddle: true,
      cupertinoLeading: 'Cancel',
      overlayStyle: overlayStyle,
      leadingAction: onBackPressed,
      actions: actions,
    );
  }

  BuildContext? get _context {
    try {
      return navigator.navigatorKey.currentContext;
    } catch (_) {
      if (kDebugMode) rethrow;
      return null;
    }
  }

  bool get canPop => (_context != null && _context!.watchRouter.canPop());

  Border? get _cupertinoBorder => noCupertinoBorder ? Border.all(color: Palette.transparent, width: 0) : null;

  String get _titleText => title ?? '';

  Widget get _title => Visibility(
        visible: !_titleText.isNullOrBlank,
        replacement: headline,
        child: AdaptiveText(
          _titleText,
          style: fontSize != null && fontSize! >= 0.0
              ? TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: fontSize,
                  color: materialTitleColor ?? App.resolveColor(Palette.onSurfaceLight, dark: Palette.headingDark, ctx: _context),
                ).merge(titleStyle)
              : TextStyle(
                  fontWeight: FontWeight.w600,
                  color: materialTitleColor ?? App.resolveColor(Palette.onSurfaceLight, dark: Palette.headingDark, ctx: _context),
                ).merge(titleStyle),
          wrapWords: false,
          softWrap: false,
          maxLines: 1,
          fontSize: 17.sp,
          overflow: TextOverflow.ellipsis,
        ),
      );

  SystemUiOverlayStyle get systemUIOverlayStyle => overlayStyle ?? App.systemUIOverlayStyle(_context);

  static String _tooltip(String? value) => value ?? Utils.platform_(material: 'Back', cupertino: 'Close')!;

  Widget? get _materialLeading => (showMaterialCustomLeading == true || canPop)
      ? materialLeadingWidget ??
          materialToolbarAction(
            tooltip: _tooltip(tooltip),
            label: _tooltip(tooltip),
            alignment: Alignment.center,
            backgroundColor: leadingBgColor,
            onPressed: leadingAction,
            icon: leadingIcon,
            iconColor: leadingIconColor,
            borderRadius: leadingBorderRadius,
            splashRadius: leadingSplashRadius,
          )
      : null;

  static Widget materialToolbarAction({
    String? tooltip,
    String? label,
    VoidCallback? onPressed,
    Color? backgroundColor,
    Color? focusColor,
    Color? splashColor,
    Color? disabledColor,
    Color? highlightColor,
    BorderRadius? borderRadius,
    double? splashRadius,
    IconData? icon,
    double? iconSize,
    Color? iconColor,
    Size? size,
    EdgeInsetsGeometry padding = EdgeInsets.zero,
    AlignmentGeometry? alignment,
    Widget? child,
  }) {
    final __tooltip = _tooltip(tooltip);
    final _label = label ?? 'Back';
    final _splashRadius = splashRadius ?? 20;
    final _size = size ?? const Size(37, 37);
    final _iconButton = Ink(
      width: _size.width,
      height: _size.height,
      decoration: ShapeDecoration(
        color: backgroundColor,
        shape: RoundedRectangleBorder(borderRadius: borderRadius ?? 100.br),
      ),
      child: IconButton(
        icon: child ?? Icon(icon ?? Icons.keyboard_arrow_left_rounded),
        onPressed: onPressed ?? navigator.pop,
        splashRadius: _splashRadius,
        padding: padding,
        focusColor: focusColor,
        splashColor: splashColor,
        disabledColor: disabledColor,
        highlightColor: highlightColor,
        iconSize: iconSize ?? 28,
        enableFeedback: true,
        color: iconColor,
      ),
    );

    return Semantics.fromProperties(
      properties: SemanticsProperties(label: _label, hint: __tooltip, button: true),
      child: Tooltip(
        message: __tooltip,
        child: SizedBox(
          width: _size.width,
          height: _size.height,
          child: _maybeAlign(alignment: alignment, child: _iconButton),
        ),
      ),
    );
  }

  static Widget cupertinoToolbarAction({
    String? tooltip,
    String? label,
    VoidCallback? onPressed,
    Color? backgroundColor,
    BorderRadius? borderRadius,
    AlignmentGeometry? alignment,
    EdgeInsetsGeometry padding = EdgeInsets.zero,
    bool? noAlignment,
    Size? size,
    IconData? icon,
    double? iconSize,
    Color? iconColor,
    Widget? child,
  }) {
    final _size = size ?? const Size(35, 35);
    return Semantics.fromProperties(
      properties: SemanticsProperties(label: label, hint: _tooltip(tooltip), button: true),
      child: Tooltip(
        message: _tooltip(tooltip),
        child: _maybeAlign(
          alignment: noAlignment == true ? null : alignment ?? Alignment.centerLeft,
          child: SizedBox(
            width: _size.width,
            height: _size.height,
            child: CupertinoButton(
              minSize: 20,
              padding: padding,
              onPressed: onPressed ?? navigator.pop,
              color: backgroundColor,
              borderRadius: borderRadius ?? 100.br,
              child: child ??
                  Icon(
                    icon ?? CupertinoIcons.back,
                    color: iconColor ?? Palette.primaryColor,
                    size: iconSize,
                  ),
            ),
          ),
        ),
      ),
    );
  }

  static Widget _maybeAlign({required Widget child, AlignmentGeometry? alignment}) {
    if (alignment == null) return child;
    return Align(alignment: alignment, child: child);
  }

  static Widget adaptiveToolbarAction({
    String? tooltip,
    String? label,
    VoidCallback? onPressed,
    Color? backgroundColor,
    Color? focusColor,
    Color? splashColor,
    Color? disabledColor,
    Color? highlightColor,
    BorderRadius? borderRadius,
    double? splashRadius,
    IconData? icon,
    double? iconSize,
    Color? iconColor,
    Size? size,
    EdgeInsetsGeometry padding = EdgeInsets.zero,
    AlignmentGeometry? alignment,
    bool? noAlignment,
    Widget? child,
  }) {
    return Utils.platform_(
      material: materialToolbarAction(
        tooltip: tooltip,
        label: label,
        onPressed: onPressed,
        backgroundColor: backgroundColor,
        focusColor: focusColor,
        splashColor: splashColor,
        disabledColor: disabledColor,
        highlightColor: highlightColor,
        borderRadius: borderRadius,
        splashRadius: splashRadius,
        size: size,
        icon: icon,
        iconSize: iconSize,
        iconColor: iconColor,
        padding: padding,
        alignment: alignment,
        child: child,
      ),
      cupertino: cupertinoToolbarAction(
        tooltip: tooltip,
        label: label,
        onPressed: onPressed,
        backgroundColor: backgroundColor,
        borderRadius: borderRadius,
        alignment: alignment,
        padding: padding,
        size: size,
        icon: icon,
        iconSize: iconSize,
        iconColor: iconColor,
        noAlignment: noAlignment,
        child: child,
      ),
    )!;
  }

  Widget? get _cupertinoLeading => (showCupertinoCustomLeading == true || canPop)
      ? Semantics.fromProperties(
          properties: SemanticsProperties(label: tooltip, hint: tooltip, button: true),
          child: Tooltip(
            message: _tooltip(tooltip),
            child: GestureDetector(
              onTap: leadingAction ?? navigator.pop,
              child: CupertinoButton(
                onPressed: leadingAction ?? navigator.pop,
                padding: EdgeInsets.zero,
                alignment: cupertinoLeadingAlignment,
                color: cupertinoLeadingBackgroundColor,
                child: AdaptiveText(
                  cupertinoLeading,
                  style: cupertinoLeadingStyle,
                  textColor: cupertinoLeadingColor ?? Palette.primary,
                  textColorDark: cupertinoLeadingColor ?? Palette.primary,
                ),
              ),
            ),
          ),
        )
      : null;

  Color get _cupertinoBackgroundColor =>
      backgroundColor ??
      App.resolveColor(
        CupertinoColors.lightBackgroundGray.withAlpha(254),
        dark: CupertinoColors.quaternarySystemFill,
        ctx: _context,
      )!;

  MaterialAppBarData get _materialAppBarData => MaterialAppBarData(
        toolbarHeight: height ?? kToolbarHeight,
        titleTextStyle: titleStyle,
        automaticallyImplyLeading: implyLeading,
        centerTitle: centerTitle,
        systemOverlayStyle: systemUIOverlayStyle,
        elevation: elevation,
        backgroundColor: backgroundColor ?? Palette.background,
        actions: actions,
        leading: MyHero(tag: heroTag, child: _materialLeading ?? Utils.nothing),
        title: titleWidget ?? _title,
        leadingWidth: leadingWidth,
      );

  CupertinoNavigationBarData get _cupertinoNavigationBarData => CupertinoNavigationBarData(
        backgroundColor: _cupertinoBackgroundColor,
        automaticallyImplyLeading: cupertinoImplyLeading,
        automaticallyImplyMiddle: implyMiddle,
        padding: padding,
        heroTag: heroTag,
        border: _cupertinoBorder,
        previousPageTitle: previousPageTitle,
        brightness: brightness,
        transitionBetweenRoutes: transitionBetweenRoutes,
        title: !implyMiddle ? (cupertinoTitleAlignment != null ? Align(alignment: cupertinoTitleAlignment!, child: _title) : _title) : null,
        trailing: Row(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.end, children: actions),
        leading: cupertinoLeadingWidget?.call(canPop) ?? (cupertinoImplyLeading ? null : _cupertinoLeading),
      );

  PlatformAppBar? build() {
    if (!material)
      return null;
    else if (!cupertino)
      return null;
    else
      return PlatformAppBar(
        widgetKey: key,
        automaticallyImplyLeading: implyLeading,
        backgroundColor: backgroundColor,
        trailingActions: actions,
        material: (_, __) => materialConfig?.call(_materialAppBarData) ?? _materialAppBarData,
        cupertino: (_, __) => cupertinoConfig?.call(_cupertinoNavigationBarData) ?? _cupertinoNavigationBarData,
      );
  }
}

extension MaterialAppBarDataX on MaterialAppBarData {
  MaterialAppBarData copyWith({
    Widget? title,
    Color? backgroundColor,
    Widget? leading,
    Key? widgetKey,
    bool? automaticallyImplyLeading,
    List<Widget>? actions,
    PreferredSizeWidget? bottom,
    double? bottomOpacity,
    bool? centerTitle,
    double? elevation,
    Widget? flexibleSpace,
    IconThemeData? iconTheme,
    bool? primary,
    double? titleSpacing,
    double? toolbarOpacity,
    IconThemeData? actionsIconTheme,
    ShapeBorder? shape,
    bool? excludeHeaderSemantics,
    Color? shadowColor,
    double? toolbarHeight,
    double? leadingWidth,
    Color? foregroundColor,
    SystemUiOverlayStyle? systemOverlayStyle,
    TextStyle? titleTextStyle,
    TextStyle? toolbarTextStyle,
    double? scrolledUnderElevation,
  }) =>
      MaterialAppBarData(
        title: title ?? this.title,
        backgroundColor: backgroundColor ?? this.backgroundColor,
        leading: leading ?? this.leading,
        widgetKey: widgetKey ?? this.widgetKey,
        automaticallyImplyLeading: automaticallyImplyLeading ?? this.automaticallyImplyLeading,
        actions: actions ?? this.actions,
        bottom: bottom ?? this.bottom,
        bottomOpacity: bottomOpacity ?? this.bottomOpacity,
        centerTitle: centerTitle ?? this.centerTitle,
        elevation: elevation ?? this.elevation,
        flexibleSpace: flexibleSpace ?? this.flexibleSpace,
        iconTheme: iconTheme ?? this.iconTheme,
        primary: primary ?? this.primary,
        titleSpacing: titleSpacing ?? this.titleSpacing,
        toolbarOpacity: toolbarOpacity ?? this.toolbarOpacity,
        actionsIconTheme: actionsIconTheme ?? this.actionsIconTheme,
        shape: shape ?? this.shape,
        excludeHeaderSemantics: excludeHeaderSemantics ?? this.excludeHeaderSemantics,
        shadowColor: shadowColor ?? this.shadowColor,
        toolbarHeight: toolbarHeight ?? this.toolbarHeight,
        leadingWidth: leadingWidth ?? this.leadingWidth,
        foregroundColor: foregroundColor ?? this.foregroundColor,
        systemOverlayStyle: systemOverlayStyle ?? this.systemOverlayStyle,
        titleTextStyle: titleTextStyle ?? this.titleTextStyle,
        toolbarTextStyle: toolbarTextStyle ?? this.toolbarTextStyle,
        scrolledUnderElevation: scrolledUnderElevation ?? this.scrolledUnderElevation,
      );
}

extension CupertinoNavigationBarDataX on CupertinoNavigationBarData {
  CupertinoNavigationBarData copyWIth({
    Widget? title,
    Color? backgroundColor,
    Widget? leading,
    Key? widgetKey,
    bool? automaticallyImplyLeading,
    String? previousPageTitle,
    bool? automaticallyImplyMiddle,
    EdgeInsetsDirectional? padding,
    Widget? trailing,
    Border? border,
    bool? transitionBetweenRoutes,
    Brightness? brightness,
    Object? heroTag,
    bool? noMaterialParent,
  }) =>
      CupertinoNavigationBarData(
        title: title ?? this.title,
        backgroundColor: backgroundColor ?? this.backgroundColor,
        leading: leading ?? this.leading,
        widgetKey: widgetKey ?? this.widgetKey,
        automaticallyImplyLeading: automaticallyImplyLeading ?? this.automaticallyImplyLeading,
        previousPageTitle: previousPageTitle ?? this.previousPageTitle,
        automaticallyImplyMiddle: automaticallyImplyMiddle ?? this.automaticallyImplyMiddle,
        padding: padding ?? this.padding,
        trailing: trailing ?? this.trailing,
        border: border ?? this.border,
        transitionBetweenRoutes: transitionBetweenRoutes ?? this.transitionBetweenRoutes,
        brightness: brightness ?? this.brightness,
        heroTag: heroTag ?? this.heroTag,
        noMaterialParent: noMaterialParent ?? this.noMaterialParent,
      );
}
