library transaction_tile.dart;

import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/widgets/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

typedef _IOSPreviewActions = List<AdaptiveContextMenuItem> Function(BuildContext);

typedef _AndroidPopupActions = List<AdaptivePopupBottomMenuItem> Function(BuildContext);

/// A stateless widget to render TransactionTile.
class TransactionTile extends StatelessWidget {
  final IndicatorType _type;

  final _IOSPreviewActions? cupertinoActions;
  final _AndroidPopupActions? androidActions;
  final bool canCopy;
  final DateTime? createdAt;
  final VoidCallback? onPressed;
  final bool showLeading;
  final ActivityStatus status;
  final String? subtitle;
  final String? title;
  final EdgeInsets? contentPadding;
  final bool disabled;

  const TransactionTile._(
    this.title,
    this.subtitle,
    this.status,
    this.createdAt,
    this.showLeading,
    this.onPressed,
    this.canCopy,
    this.cupertinoActions,
    this.androidActions,
    this.contentPadding,
    this.disabled,
    this._type,
  );

  const TransactionTile.down({
    String? title,
    String? subtitle,
    required ActivityStatus status,
    DateTime? createdAt,
    VoidCallback? onPressed,
    bool showLeading = true,
    bool copy = true,
    _IOSPreviewActions? previewActions,
    _AndroidPopupActions? popupActions,
    EdgeInsets? contentPadding,
    bool disabled = false,
  }) : this._(
          title,
          subtitle,
          status,
          createdAt,
          showLeading,
          onPressed,
          copy,
          previewActions,
          popupActions,
          contentPadding,
          disabled,
          IndicatorType.down,
        );

  const TransactionTile.up({
    String? title,
    String? subtitle,
    required ActivityStatus status,
    DateTime? createdAt,
    VoidCallback? onPressed,
    bool showLeading = true,
    bool copy = true,
    _IOSPreviewActions? previewActions,
    _AndroidPopupActions? popupActions,
    EdgeInsets? contentPadding,
    bool disabled = false,
  }) : this._(
          title,
          subtitle,
          status,
          createdAt,
          showLeading,
          onPressed,
          copy,
          previewActions,
          popupActions,
          contentPadding,
          disabled,
          IndicatorType.up,
        );

  EdgeInsets? get _contentPadding => contentPadding ?? EdgeInsets.symmetric(horizontal: App.sidePadding);

  Widget get _leading => Material(
        color: _type.when(up: const Color(0xffC7513C), down: Palette.accentGreen).withOpacity(0.1),
        borderRadius: 8.br,
        child: SizedBox(
          width: 40,
          height: 40,
          child: RotatedBox(
            quarterTurns: _type.when(up: 1, down: 3),
            child: Icon(
              Icons.keyboard_backspace_rounded,
              color: _type.when(up: const Color(0xffC7513C), down: Palette.accentGreen),
            ),
          ),
        ),
      );

  Widget get _listTileTitle => Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(child: _titleAndSubtitle),
          //
          if (subtitle != null && canCopy)
            AppIconButton(
              onPressed: () => ClipboardManager.copy('$subtitle'),
              backgroundColor: Palette.transparent,
              cupertinoBackgroundColor: Palette.transparent,
              borderRadius: 100.br,
              tooltip: 'Copy',
              elevation: 10,
              cupertinoPadding: EdgeInsets.zero,
              child: Icon(
                Utils.platform_(material: Icons.copy, cupertino: CupertinoIcons.doc_on_clipboard),
                size: 22,
                color: Palette.primary,
              ),
            ),
        ],
      );

  Widget get _titleAndSubtitle => Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: AdaptiveText(
              '$title',
              maxLines: 1,
              minFontSize: 17,
              fontSize: 17.sp,
              textColor: Palette.onSurface,
              fontWeight: FontWeight.w600,
              textAlign: TextAlign.left,
              textColorDark: Palette.onSurfaceDark,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          //
          Flexible(
            child: AdaptiveText(
              '$subtitle',
              maxLines: 1,
              minFontSize: 14,
              fontSize: 14.sp,
              textColor: const Color(0xff58595B),
              fontWeight: FontWeight.w500,
              textAlign: TextAlign.left,
              textColorDark: Palette.onSurfaceDark.withOpacity(0.7),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      );

  Widget _previewBuilder(BuildContext context) => Material(
        color: Palette.background,
        borderRadius: 8.br,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(child: _titleAndSubtitle),
              //
              Flexible(child: _trailing(context)),
            ],
          ),
        ),
      );

  Widget _trailing(BuildContext c) => Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Flexible(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: status.bgColor,
                      borderRadius: 100.br,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                      child: AdaptiveText(
                        status.value,
                        maxLines: 1,
                        fontSize: 14.sp,
                        textColor: status.color,
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ),
                ),
                //
                if (createdAt != null)
                  Flexible(
                    child: AdaptiveText(
                      TimeOfDay.fromDateTime(createdAt!).format(c),
                    ),
                  ),
              ],
            ),
          ),
          //
          if (App.platform.isAndroid && androidActions != null && androidActions?.call(c).isNotEmpty == true) ...[
            0.015.horizontalw,
            //
            AdaptivePopupBottomMenu(
              items: androidActions!(c),
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Icon(Icons.more_vert, color: Palette.iconColor),
              ),
            ),
          ],
        ],
      );

  Widget bootstrap(BuildContext context) {
    if (!showLeading)
      return AdaptiveListTile(
        dense: true,
        noCupertinoBorder: true,
        contentPadding: _contentPadding,
        horizontalTitleGap: 10,
        onTap: onPressed,
        tileColor: Palette.background,
        title: _listTileTitle,
        trailing: _trailing(context),
      );

    return AdaptiveListTile(
      dense: true,
      noCupertinoBorder: true,
      contentPadding: _contentPadding,
      horizontalTitleGap: 10,
      onTap: onPressed,
      tileColor: Palette.background,
      title: _listTileTitle,
      leading: _leading,
      trailing: _trailing(context),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Disabled(
      opacity: 0.75,
      disabled: disabled,
      child: cupertinoActions == null
          ? bootstrap(context)
          : AdaptiveContextMenu(
              previewBuilder: (_, __, ___) => _previewBuilder(_),
              actions: cupertinoActions!,
              child: bootstrap(context),
            ),
    );
  }
}
