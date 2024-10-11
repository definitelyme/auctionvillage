library unlist_item_widget.dart;

import 'package:auctionvillage/core/data/response/index.dart';
import 'package:auctionvillage/core/presentation/index.dart';
import 'package:auctionvillage/features/auth/presentation/managers/watcher/auth_watcher_cubit.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/managers/index.dart';
import 'package:auctionvillage/features/onboarding/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A stateless widget to render UnlistItemWidget.
class UnlistItemWidget extends StatefulWidget {
  final Deal? deal;
  final VoidCallback? onUnlist;

  const UnlistItemWidget(this.deal, {super.key, this.onUnlist});

  @override
  State<UnlistItemWidget> createState() => _UnlistItemWidgetState();
}

class _UnlistItemWidgetState extends State<UnlistItemWidget> {
  @override
  void initState() {
    if (widget.deal != null && widget.deal!.isOwner(context.read<AuthWatcherCubit>().user))
      settings.runTour(context, unlistItemKey, onTargetClick: () => _showDialog(context));

    super.initState();
  }

  void _showDialog(BuildContext ctx) {
    Utils.showAlertDialog(
      context: ctx,
      barrierDismissible: false,
      builder: (_) => ReactiveAdaptiveAlertdialog<DealCubit, DealState>.value(
        bloc: ctx.read<DealCubit>(),
        dialog: (ctx, s) => BlocListener<DealCubit, DealState>(
          listenWhen: (p, c) => p.isUnlistingItem != c.isUnlistingItem,
          listener: (c, s) => s.status.fold(
            () {},
            (response) {
              widget.onUnlist?.call();
              if (s.isUnlistingItem == false) {
                if (App.currentRoute == DealDetailRoute.name) {
                  response?.maybeMap(
                    success: (_) => navigator.popUntil((r) => r.settings.name != DealDetailRoute.name),
                    orElse: navigator.pop,
                  );
                } else {
                  navigator.pop();
                }
              }
            },
          ),
          child: AdaptiveAlertdialog(
            title: 'Remove Item',
            width: 0.7.w,
            titleTextStyle: Utils.platform_(cupertino: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
            titleHeight: App.platform.cupertino(0.035.h),
            body: [
              AdaptiveText.rich(
                TextSpan(children: [
                  ...const [TextSpan(text: 'Are you sure you want to remove the item: ')],
                  TextSpan(text: '${widget.deal?.product?.name}', style: const TextStyle(fontWeight: FontWeight.w700)),
                  ...[
                    const TextSpan(text: '?'),
                    const TextSpan(text: '\n\n'),
                    WidgetSpan(
                      baseline: TextBaseline.alphabetic,
                      alignment: PlaceholderAlignment.middle,
                      child: Icon(
                        Icons.warning_amber_rounded,
                        color: Colors.yellowAccent,
                        size: 17.sp,
                      ),
                    ),
                    //
                    TextSpan(
                      text: ' This action cannot be undone!',
                      style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400),
                    ),
                  ],
                ]),
                softWrap: true,
                isDefault: App.platform.isIOS,
                fontSize: 16.sp,
                textAlign: TextAlign.center,
                letterSpacing: Utils.letterSpacing,
              ),
            ],
            leadingButtonConfig: (d) => d.copyWith(
              text: 'No, Cancel',
              isLoading: s.isUnlistingItem,
              isDefaultAction: true,
            ),
            trailingButtonConfig: (d) => d.copyWith(
              autoPop: false,
              width: 0.4.w,
              text: 'Yes',
              isLoading: s.isUnlistingItem,
              isDestructiveAction: true,
              splashColor: Palette.destructiveRed.withOpacity(0.2),
              highlightColor: Palette.destructiveRed.withOpacity(0.09),
              onPressed: () => enqueue(() => ctx.read<DealCubit>().unlistItem(widget.deal!)),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (widget.deal != null && widget.deal!.isOwner(context.read<AuthWatcherCubit>().user))
      return TourGuide(
        key: unlistItemKey,
        title: 'Unlist Item',
        description: 'Click here to unlist this item.\n\n'
            'Please know that, you can not unlist items that have active bids or items that have been paid for.',
        targetPadding: const EdgeInsets.all(3),
        onTargetClick: () => settings.runTour(context, unlistItemKey),
        child: AppIconButton(
          backgroundColor: App.resolveColor(Palette.neutralF9, dark: Palette.cardColorDark),
          borderRadius: 100.br,
          elevation: 0,
          height: 40,
          width: 40,
          disabled: widget.deal == null,
          cupertinoPadding: EdgeInsets.zero,
          useMaterialDefaultPadding: false,
          onPressed: widget.deal == null || !settings.hasToured(unlistItemKey) ? null : () => _showDialog(context),
          child: Icon(
            Utils.platform_(material: Icons.delete_rounded, cupertino: CupertinoIcons.delete_solid),
            color: Palette.errorRed,
          ),
        ),
      );

    return Utils.nothing;
  }
}
