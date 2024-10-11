library main_dev.dart;

import 'package:auctionvillage/app.dart';
import 'package:auctionvillage/core/domain/facades/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() async {
  // Preserve Native Splash Screen
  FlutterNativeSplash.preserve(widgetsBinding: WidgetsFlutterBinding.ensureInitialized());

  // This app is designed only to work vertically, so we limit
  // orientations to portrait up and down.
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge, overlays: [SystemUiOverlay.bottom, SystemUiOverlay.top]);

  // Initialize awesome notifications
  await AwesomeNotifications().initialize('resource://drawable/res_notification_app_icon', MessagingFacade.channels);

  // Setup Environmental variables & Service provider
  await BuildEnvironment.init(flavor: BuildFlavor.dev);

  runApp(const AppView());

  // Remove Native splash
  FlutterNativeSplash.remove();
}
