library app.dart;

import 'package:auctionvillage/core/presentation/index.dart';
import 'package:auctionvillage/features/auth/presentation/managers/managers.dart';
import 'package:auctionvillage/features/dashboard/presentation/managers/index.dart';
import 'package:auctionvillage/manager/locator/locator.dart';
import 'package:auctionvillage/manager/theme/theme.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/cupertino.dart' hide Router;
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' hide Router;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:showcaseview/showcaseview.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

part 'entry.dart';

class AppView extends StatelessWidget {
  /// This is the entry point for Auction Village App
  const AppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _router = getIt<AppRouter>();

    /// Tells us which images are significantly oversized in
    /// comparison to size of the widget they are being displayed on.
    debugInvertOversizedImages = kDebugMode;

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<RootCubit>()),
        BlocProvider(create: (_) => getIt<NetworkInternetBloc>()),
        BlocProvider(create: (_) => getIt<AuthWatcherCubit>()),
        BlocProvider(create: (_) => getIt<ThemeCubit>()),
      ],
      child: BlocBuilder<ThemeCubit, AppTheme>(
        builder: (_, app) => PlatformApp.router(
          title: env.appName,
          debugShowCheckedModeBanner: false,
          useInheritedMediaQuery: true,
          material: (_, __) => MaterialAppRouterData(
            theme: app.themeData(),
            darkTheme: AppTheme.dark().themeData(),
            themeMode: app.themeMode,
          ),
          cupertino: (_, __) => CupertinoAppRouterData(
            theme: app.cupertinoThemeData(_),
            color: Palette.primary,
          ),
          localizationsDelegates: const [
            RefreshLocalizations.delegate,
            DefaultMaterialLocalizations.delegate,
            DefaultWidgetsLocalizations.delegate,
            DefaultCupertinoLocalizations.delegate,
          ],
          routeInformationParser: _router.defaultRouteParser(),
          routerDelegate: AutoRouterDelegate(
            _router,
            navigatorObservers: () => <NavigatorObserver>[
              if (env.flavor == BuildFlavor.prod || env.flavor == BuildFlavor.beta) ...[
                FirebaseAnalyticsObserver(analytics: getIt<FirebaseAnalytics>()),
                SentryNavigatorObserver(),
              ],
            ],
          ),
          builder: (_, widget) => ScreenUtilInit(
            designSize: const Size(375, 812),
            minTextAdapt: true,
            splitScreenMode: true,
            useInheritedMediaQuery: true,
            child: widget,
            builder: (_, child) => Entry(_router, child: child!),
          ),
        ),
      ),
    );
  }
}
