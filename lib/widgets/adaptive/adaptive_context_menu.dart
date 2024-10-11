library adaptive_context_menu.dart;

import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// A stateless widget to render AdaptiveContextMenu.
class AdaptiveContextMenu extends StatefulWidget {
  final Widget child;
  final bool enabled;
  final ContextMenuPreviewBuilder? previewBuilder;
  final List<AdaptiveContextMenuItem> Function(BuildContext) actions;
  final double? menuWidth;
  final double blurSize;
  final BoxDecoration? menuBoxDecoration;
  final Duration? animationDuration;
  final bool animateMenuItems;
  final Color blurBackgroundColor;
  final double? menuItemExtent;
  final bool openOnTap;
  final double menuOffset;
  final double? bottomOffsetHeight;
  final Color? menusBackgroundColor;
  final bool? material;
  final bool? cupertino;
  final bool disabled;

  const AdaptiveContextMenu({
    Key? key,
    this.enabled = true,
    this.previewBuilder,
    this.menuWidth,
    this.blurSize = 5.0,
    this.menuItemExtent,
    this.menuBoxDecoration,
    this.animationDuration = const Duration(milliseconds: 250),
    this.animateMenuItems = true,
    this.blurBackgroundColor = Colors.black54,
    this.openOnTap = false,
    this.menuOffset = 10.0,
    this.bottomOffsetHeight,
    this.menusBackgroundColor,
    this.material,
    this.cupertino,
    this.disabled = false,
    required this.child,
    required this.actions,
  }) : super(key: key);

  @override
  State<AdaptiveContextMenu> createState() => _AdaptiveContextMenuState();
}

class _AdaptiveContextMenuState extends State<AdaptiveContextMenu> with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: widget.animationDuration)..forward();
    animation = CurvedAnimation(parent: _controller, curve: Curves.easeInOutCubic);
    // animation = Tween<double>(begin: 0, end: 1).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  // double get _menuWidth => widget.menuWidth ?? 1.w;

  // double get _bottomOffsetHeight => widget.bottomOffsetHeight ?? kBottomNavigationBarHeight;

  // double get _menuItemExtent => widget.menuItemExtent ?? 45;

  Widget _cupertinoMenu(BuildContext c) => !widget.enabled
      ? widget.child
      : CupertinoContextMenu(
          previewBuilder: widget.previewBuilder,
          actions: widget
              .actions(c)
              .map((e) => Disabled(
                    disabled: !e.enabled,
                    alwaysIncludeSemantics: true,
                    child: CupertinoContextMenuAction(
                      isDefaultAction: e.isDefaultAction,
                      isDestructiveAction: e.isDestructiveAction,
                      trailingIcon: e.trailingIcon,
                      onPressed: () {
                        if (e.autopop)
                          navigator.pop().then((_) => e.onPressed.call());
                        else
                          e.onPressed.call();
                      },
                      child: e.child,
                    ),
                  ))
              .toList(),
          child: widget.child,
        );

  Widget _materialMenu(BuildContext c) => widget.child;
  // FocusedMenuHolder(
  //       menuWidth: _menuWidth,
  //       blurSize: widget.blurSize,
  //       menuItemExtent: _menuItemExtent,
  //       menuBoxDecoration: widget.menuBoxDecoration,
  //       duration: widget.animationDuration,
  //       animateMenuItems: widget.animateMenuItems,
  //       blurBackgroundColor: widget.blurBackgroundColor,
  //       openWithTap: widget.openOnTap,
  //       menuOffset: widget.menuOffset,
  //       bottomOffsetHeight: _bottomOffsetHeight,
  //       onPressed: () {
  //         print('object');
  //       },
  //       menuItems: widget
  //           .actions(c)
  //           .map((e) => FocusedMenuItem(
  //                 title: e.child,
  //                 backgroundColor: widget.menusBackgroundColor ?? e.menuBackgroundColor,
  //                 trailingIcon: Icon(e.trailingIcon, color: e.trailingIconColor, size: e.trailingIconSize),
  //                 onPressed: e.onPressed,
  //               ))
  //           .toList(),
  //       // child: widget.previewBuilder != null
  //       //     ? AnimatedBuilder(
  //       //         animation: animation,
  //       //         builder: (c, value) => widget.previewBuilder!.call(c, animation, value ?? Utils.nothing),
  //       //       )
  //       //     : widget.child,
  //       child: widget.child,
  //     );

  @override
  Widget build(BuildContext context) {
    if (widget.disabled) return widget.child;

    return PlatformBuilder.builder(
      cupertino: (c) => widget.material != null && widget.material!
          ? _materialMenu(c)
          : (widget.cupertino != null && !widget.cupertino! ? widget.child : _cupertinoMenu(c)),
      material: (c) => widget.cupertino != null && widget.cupertino!
          ? _cupertinoMenu(c)
          : (widget.material != null && !widget.material! ? widget.child : _materialMenu(c)),
    );
  }
}

class AdaptiveContextMenuItem {
  final void Function() onPressed;
  final Widget child;
  final bool enabled;

  /// Only effective on iOS
  final bool isDefaultAction;

  /// Only effective on iOS
  final bool isDestructiveAction;

  final IconData? trailingIcon;
  final double? trailingIconSize;
  final Color? trailingIconColor;
  final bool autopop;

  /// Only effective on Android
  final Color? menuBackgroundColor;

  const AdaptiveContextMenuItem({
    this.enabled = true,
    required this.onPressed,
    this.trailingIcon,
    this.trailingIconSize,
    this.trailingIconColor,
    this.autopop = true,
    required this.child,
    this.isDefaultAction = false,
    this.isDestructiveAction = false,
    this.menuBackgroundColor,
  });
}
