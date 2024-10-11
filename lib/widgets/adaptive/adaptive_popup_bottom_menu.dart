library adaptive_popup_bottom_menu.dart;

import 'package:flutter/material.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';

/// A stateless widget to render AdaptivePopupBottomMenu.
class AdaptivePopupBottomMenu extends StatelessWidget {
  final AdaptivePopupBottomMenuItem? _topItem;
  final AdaptivePopupBottomMenuItem? _bottomItem;
  final List<AdaptivePopupBottomMenuItem> _items;
  final BorderRadius? _borderRadius;
  final Widget child;
  final bool? _swapIcons;

  const AdaptivePopupBottomMenu({
    Key? key,
    AdaptivePopupBottomMenuItem? topItem,
    AdaptivePopupBottomMenuItem? bottomItem,
    BorderRadius? borderRadius,
    List<AdaptivePopupBottomMenuItem> items = const [],
    bool? swapIcons,
    required this.child,
  })  : _topItem = topItem,
        _bottomItem = bottomItem,
        _borderRadius = borderRadius,
        _swapIcons = swapIcons,
        _items = items,
        super(key: key);

  void _showBottomsheet(BuildContext context) {
    if (_hasItems)
      App.showAdaptiveBottomSheet(
        context,
        topRadius: const Radius.circular(25),
        elevation: 3,
        backgroundColor: Palette.secondaryColor,
        backgroundOpacity: 0.85,
        builder: (_) => _AdaptivePopupBottomMenu(
          topItem: _topItem,
          bottomItem: _bottomItem,
          swapIcons: _swapIcons,
          items: _items,
        ),
      );
  }

  bool get _hasItems => _items.isNotEmpty || _topItem != null || _bottomItem != null;

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      borderRadius: _borderRadius ?? 100.br,
      child: AdaptiveInkWell(
        onTap: () => _showBottomsheet(context),
        borderRadius: _borderRadius ?? 100.br,
        child: child,
      ),
    );
  }
}

class _AdaptivePopupBottomMenu extends StatelessWidget {
  final AdaptivePopupBottomMenuItem? topItem;
  final AdaptivePopupBottomMenuItem? bottomItem;
  final List<AdaptivePopupBottomMenuItem> items;
  final bool? swapIcons;

  const _AdaptivePopupBottomMenu({
    Key? key,
    this.topItem,
    this.bottomItem,
    this.swapIcons,
    this.items = const [],
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AdaptiveBottomSheet(
      topRadius: const Radius.circular(25),
      // backgroundOpacity: 0.85,
      safeAreaTop: false,
      child: Column(
        children: [
          0.02.verticalh,
          //
          ClipRRect(
            borderRadius: BorderRadius.circular(Utils.cardRadius),
            child: DecoratedBox(
              decoration: BoxDecoration(color: App.resolveColor(Colors.grey.shade400, dark: Colors.grey.shade700, ctx: context)),
              child: SizedBox(height: 0.015.sw, width: 0.2.sw),
            ),
          ),
          //
          0.014.verticalh,
          //
          if (topItem != null) ...[
            Builder(builder: (c) => topItem!.copyWith(swapIcons: swapIcons).build(c)),
            //
            Divider(
              height: 0,
              thickness: 1.2,
              indent: App.sidePadding,
              endIndent: App.sidePadding,
              color: App.resolveColor(Colors.grey.shade400, dark: Colors.grey.shade600, ctx: context),
            ),
          ],
          //
          ...items.map((e) => Builder(builder: (c) => e.copyWith(swapIcons: swapIcons).build(c))),
          //
          if (bottomItem != null) ...[
            Divider(
              height: 0,
              thickness: 1.2,
              indent: App.sidePadding,
              endIndent: App.sidePadding,
              color: App.resolveColor(Colors.grey.shade400, dark: Colors.grey.shade600, ctx: context),
            ),
            //
            Builder(builder: (c) => bottomItem!.copyWith(swapIcons: swapIcons).build(c)),
          ],
        ],
      ),
    );
  }
}

class AdaptivePopupBottomMenuItem {
  final String _title;
  final Color? _titleColor;
  final Color? _titleColorDark;
  final String? _subtitle;
  final IconData? _leading;
  final Color? _leadingColor;
  final IconData? _trailing;
  final Color? _trailingColor;
  final bool? _swapIcons;
  final void Function(BuildContext)? _onTap;
  final void Function(BuildContext)? _onLongPress;

  const AdaptivePopupBottomMenuItem({
    required String title,
    Color? titleColor,
    Color? titleColorDark,
    String? subtitle,
    IconData? leading,
    Color? leadingColor,
    IconData? trailing,
    Color? trailingColor,
    bool? swapIcons,
    void Function(BuildContext)? onTap,
    void Function(BuildContext)? onLongPress,
  })  : _title = title,
        _titleColor = titleColor,
        _titleColorDark = titleColorDark,
        _subtitle = subtitle,
        _leading = leading,
        _leadingColor = leadingColor,
        _trailing = trailing,
        _trailingColor = trailingColor,
        _swapIcons = swapIcons,
        _onTap = onTap,
        _onLongPress = onLongPress;

  Color leadingColor(BuildContext c) => _leadingColor ?? App.resolveColor(Colors.black54, dark: Colors.white70, ctx: c)!;

  Color trailingColor(BuildContext c) => _trailingColor ?? App.resolveColor(Colors.black54, dark: Colors.white70, ctx: c)!;

  Widget? leading(BuildContext c) => _leading != null ? Icon(_leading, size: 25, color: leadingColor(c)) : null;

  Widget? trailing(BuildContext c) => _trailing != null ? Icon(_trailing, size: 25, color: trailingColor(c)) : null;

  AdaptivePopupBottomMenuItem copyWith({
    String? title,
    Color? titleColor,
    Color? titleColorDark,
    String? subtitle,
    IconData? leading,
    Color? leadingColor,
    IconData? trailing,
    Color? trailingColor,
    bool? swapIcons,
    void Function(BuildContext)? onTap,
    void Function(BuildContext)? onLongPress,
  }) =>
      AdaptivePopupBottomMenuItem(
        title: title ?? _title,
        titleColor: titleColor ?? _titleColor,
        titleColorDark: titleColorDark ?? _titleColorDark,
        subtitle: subtitle ?? _subtitle,
        leading: leading ?? _leading,
        leadingColor: leadingColor ?? _leadingColor,
        trailing: trailing ?? _trailing,
        trailingColor: trailingColor ?? _trailingColor,
        swapIcons: swapIcons ?? _swapIcons,
        onTap: onTap ?? _onTap,
        onLongPress: onLongPress ?? _onLongPress,
      );

  Widget build(BuildContext c) {
    return AdaptiveListTile(
      title: AdaptiveText(
        _title,
        maxLines: 1,
        fontSize: 16.sp,
        minFontSize: 13,
        fontWeight: FontWeight.w600,
        textColor: _titleColor,
        textColorDark: _titleColorDark,
      ),
      leading: _swapIcons != null && _swapIcons! ? trailing(c) : leading(c),
      trailing: _swapIcons != null && _swapIcons! ? leading(c) : trailing(c),
      contentPadding: Utils.platform_(cupertino: const EdgeInsets.fromLTRB(25, 0, 25, 0)),
      noCupertinoBorder: true,
      dense: Utils.platform_(material: true),
      horizontalTitleGap: 6,
      minVerticalPadding: 16,
      // material: true,
      // minLeadingWidth: 30,
      onTap: () => navigator.pop().then((_) => _onTap?.call(c)),
      onLongPress: () => navigator.pop().then((_) => _onLongPress?.call(c)),
      subtitle: _subtitle != null && _subtitle!.isNotEmpty
          ? AdaptiveText(
              _subtitle!,
              maxLines: 2,
              fontSize: 15.sp,
              minFontSize: 15,
              maxFontSize: 15,
              fontWeight: FontWeight.w500,
              softWrap: true,
              wrapWords: true,
              textAlign: TextAlign.left,
              overflow: TextOverflow.ellipsis,
            )
          : null,
    );
  }
}
