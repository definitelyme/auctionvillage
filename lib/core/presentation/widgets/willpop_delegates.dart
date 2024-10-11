// ignore_for_file: library_private_types_in_public_api

library willpop_delegates.dart;

import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

mixin _WillPopDelegate {
  Future<bool> maybePop();
}

class DoubleTapToPop implements _WillPopDelegate {
  DateTime _timestampPressed = localTime;

  @override
  Future<bool> maybePop() async {
    final ctx = navigator.navigatorKey.currentContext;

    try {
      if (ctx != null && ctx.watchRouter.canPop()) return Future.value(true);
    } catch (_) {
      if (kDebugMode) rethrow;
      return Future.value(true);
    }

    final now = localTime;
    final difference = now.difference(_timestampPressed);
    final _showWarn = difference >= Utils.willPopTimeout;

    _timestampPressed = localTime;

    if (_showWarn) {
      await ToastManager.short('Tap again to exit');
      return Future.value(false);
    } else {
      await ToastManager.cancel();
      return Future.value(true);
    }
  }
}

/// A stateful widget to render DoubleTapClose.
class DoubleTapClose extends StatefulWidget {
  final Widget child;

  const DoubleTapClose({super.key, required this.child});

  @override
  _DoubleTapCloseState createState() => _DoubleTapCloseState();
}

class _DoubleTapCloseState extends State<DoubleTapClose> with DoubleTapToPop {
  @override
  Widget build(BuildContext context) {
    if (!context.watchRouter.canPop() && !(App.platform.isIOS || App.platform.isMacOS))
      return WillPopScope(onWillPop: maybePop, child: widget.child);
    return widget.child;
  }
}

class ConfirmMaybePop extends StatefulWidget {
  final bool active;
  final String? title;
  final double? width;
  final String message;
  final Alignment titleAlignment;
  final Widget child;
  final bool autoPop;
  final TextAlign contentTextAlign;

  /// The callback to be called when the leading button is pressed.
  /// NOTE: Do not call `Navigator.pop()` in this callback.
  final VoidCallback? onLeadingButtonPressed;

  /// The callback to be called when the second button is pressed.
  /// NOTE: Do not call `Navigator.pop()` in this callback.
  final VoidCallback? onTrailingButtonPressed;

  final AlertDialogButtonConfig<dynamic>? leadingButtonConfig;
  final AlertDialogButtonConfig<dynamic>? trailingButtonConfig;

  const ConfirmMaybePop({
    super.key,
    this.title,
    this.width,
    this.active = true,
    required this.message,
    required this.child,
    this.autoPop = false,
    this.titleAlignment = Alignment.center,
    this.contentTextAlign = TextAlign.left,
    this.onLeadingButtonPressed,
    this.onTrailingButtonPressed,
    this.leadingButtonConfig,
    this.trailingButtonConfig,
  });

  static FutureOr<A?> popup<A>(
    BuildContext context, {
    String? title,
    double? width,
    required String message,
    bool autoPop = false,
    Alignment titleAlignment = Alignment.center,
    TextAlign contentTextAlign = TextAlign.center,
    VoidCallback? onLeadingButtonPressed,
    VoidCallback? onTrailingButtonPressed,
    AlertDialogButtonConfig<A?>? leadingButtonConfig,
    AlertDialogButtonConfig<A?>? trailingButtonConfig,
  }) {
    return Utils.showAlertDialog(
      context: context,
      builder: (_) => AdaptiveAlertdialog<A?>(
        title: title,
        width: width ?? 0.65.w,
        titleTextStyle: App.platform.cupertino(const TextStyle(fontSize: 18)),
        titleHeight: App.platform.cupertino(0.035.h),
        titleAlignment: titleAlignment,
        content: message,
        contentTextAlignment: contentTextAlign,
        materialActionsPadding: const EdgeInsets.only(bottom: 5, right: 5),
        leadingButtonConfig: (config) => config
            .copyWith(
              text: 'NO',
              width: 0.2.w,
              autoPop: autoPop,
              isDestructiveAction: false,
              isDefaultAction: true,
              onPressed: () {
                navigator.pop(true).then((_) => onLeadingButtonPressed?.call());
                return;
              },
            )
            .merge(leadingButtonConfig),
        trailingButtonConfig: (config) => config
            .copyWith(
              text: 'YES',
              width: 0.2.w,
              autoPop: autoPop,
              isDestructiveAction: true,
              isDefaultAction: false,
              onPressed: () {
                navigator.pop(false).then((_) => onTrailingButtonPressed?.call());
                return;
              },
            )
            .merge(trailingButtonConfig),
      ),
    );
  }

  @override
  State<ConfirmMaybePop> createState() => _ConfirmMaybePopState();
}

class _ConfirmMaybePopState extends State<ConfirmMaybePop> implements _WillPopDelegate {
  @override
  Future<bool> maybePop() async {
    final context = navigator.navigatorKey.currentContext;

    try {
      final value = await context?.let(
        (it) => ConfirmMaybePop.popup(
          context,
          title: widget.title,
          message: widget.message,
          width: widget.width,
          autoPop: widget.autoPop,
          titleAlignment: widget.titleAlignment,
          contentTextAlign: widget.contentTextAlign,
          leadingButtonConfig: widget.leadingButtonConfig,
          onLeadingButtonPressed: widget.onLeadingButtonPressed,
          onTrailingButtonPressed: widget.onTrailingButtonPressed,
          trailingButtonConfig: widget.trailingButtonConfig,
        ),
      );

      return value == null ? false : value as bool;
    } catch (_) {
      if (kDebugMode) rethrow;
      return Future.value(true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return widget.active ? WillPopScope(onWillPop: maybePop, child: widget.child) : widget.child;
  }
}
