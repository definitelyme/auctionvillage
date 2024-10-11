library main.dart;

import 'dart:async';

import 'package:auctionvillage/app.dart';
import 'package:auctionvillage/core/data/index.dart';
import 'package:auctionvillage/core/domain/facades/index.dart';
import 'package:auctionvillage/core/domain/response/index.dart';
import 'package:auctionvillage/core/presentation/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

void main() async {
  await runZonedGuarded(
    () async {
      // Preserve Native Splash Screen
      FlutterNativeSplash.preserve(widgetsBinding: WidgetsFlutterBinding.ensureInitialized());

      // This app is designed only to work vertically, so we limit
      // orientations to portrait up and down.
      await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
      await SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge, overlays: [SystemUiOverlay.bottom, SystemUiOverlay.top]);

      // Add Google Fonts Licensing
      LicenseRegistry.addLicense(() async* {
        final license = await rootBundle.loadString(AssetsFontsGoogleFonts.oflTXT);
        yield LicenseEntryWithLineBreaks(['google_fonts'], license);
      });

      // Register custom BlocObserver
      Bloc.observer = AppBlocObserver();

      // Initialize awesome notifications
      await AwesomeNotifications().initialize('resource://drawable/res_notification_app_icon', MessagingFacade.channels);

      // Setup Environmental variables & Service provider
      await BuildEnvironment.init(flavor: BuildFlavor.prod);

      if ((env.flavor == BuildFlavor.prod || env.flavor == BuildFlavor.beta) && kReleaseMode) {
        final packageInfo = await PackageInfo.fromPlatform();
        await SentryFlutter.init(
          (options) {
            options.dsn = env.sentryDSN;
            options.tracesSampleRate = 1.0;
            options.reportPackages = true;
            options.addInAppInclude(Const.sentryPub);
            options.considerInAppFramesByDefault = false;
            options.release = '${env.packageName}@${packageInfo.version}+${packageInfo.buildNumber}';
            options.serverName = BuildEnvironment.domain();
            options.sendDefaultPii = true;
            options.attachStacktrace = true;
            options.enableAutoSessionTracking = true;
            options.enableNativeCrashHandling = true;
            options.autoSessionTrackingInterval = const Duration(minutes: 5);
          },
        );
      }

      // Pass all uncaught errors from the framework to Sentry.
      // final sentry = SentryClient(SentryOptions(dsn: env.sentryDSN));
      // FlutterError.onError = (o) => sentry.captureException(o.exception, stackTrace: o.stack);
      // Sentry.bindClient(sentry);

      if ((env.flavor == BuildFlavor.prod || env.flavor == BuildFlavor.beta) && kReleaseMode) {
        runApp(DefaultAssetBundle(
          bundle: SentryAssetBundle(enableStructuredDataTracing: true),
          child: const AppView(),
        ));
      } else {
        runApp(const AppView());
      }

      // Remove Native splash
      FlutterNativeSplash.remove();
    },
    (e, tr) {
      const title = kDebugMode ? 'Whoops! That\'s a 🐛!!' : '🐛 Hmm...';
      const prodMsg = 'Something isn\'t quite right..\n'
          'All necessary details about this bug will be sent to the technical team.\nWe will fix it soon.';

      if (e is AppHttpClient && kReleaseMode) return;

      if (e is BaseException) {
        final devMsg = 'Zoned Error: ${e.message}';

        final msg = kDebugMode ? devMsg : prodMsg;
        PopupDialog.error(title: title, message: msg, duration: const Duration(seconds: 8)).render();
      } else {
        final devMsg = 'Zoned Error: $e';
        final msg = kDebugMode ? devMsg : prodMsg;
        PopupDialog.error(title: title, message: msg, duration: const Duration(seconds: 8)).render();
      }

      Utils.report(e, tr, reason: '$e', fatal: true);

      if (kDebugMode) throw e;
    },
  );
}
