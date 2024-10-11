library notifications_screen.dart;

import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

/// A stateful widget that renders NotificationsScreen.
class NotificationsScreen extends StatefulWidget with AutoRouteWrapper {
  const NotificationsScreen({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }

  @override
  NotificationsScreenState createState() => NotificationsScreenState();
}

class NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      adaptiveToolbar: const AdaptiveToolbar(title: 'Notifications', centerTitle: false),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          0.17.verticalh,
          //
          Center(
            child: Material(
              elevation: 0,
              color: App.resolveColor(Palette.fromHex('#EFF6FF'), dark: Colors.black87.withOpacity(0.4)),
              borderRadius: BorderRadius.circular(100),
              child: Padding(
                padding: const EdgeInsets.all(18),
                child: AppAssets.notificationBell(
                  size: const Size.square(40),
                  color: Palette.primaryColor,
                ),
              ),
            ),
          ),
          //
          0.02.verticalh,
          //
          AdaptiveText(
            'No Notifications',
            maxLines: 1,
            fontSize: 17.sp,
            fontWeight: FontWeight.w600,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
