library splash_screen.dart;

import 'package:auctionvillage/core/data/models/index.dart';
import 'package:auctionvillage/features/auth/presentation/managers/managers.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A stateless widget to render SplashScreen.
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static void navigateIfNotAuthenticated() {
    if (navigator.current.name == DashboardRoute.name)
      navigator.replaceAll([const GetStartedRoute()]);
    else
      navigator.navigatorKey.currentContext?.let((it) => _navigateUser(it));
  }

  static void _navigateUser(BuildContext c) {
    final option = c.read<AuthWatcherCubit>().state.status;
    final stack = navigator.stack.map((e) => e.name).where((i) => !guestRoutes.contains(i));

    option.fold(
      () {
        if (App.currentRoute != GetStartedRoute.name) navigator.replaceAll([const GetStartedRoute()]);
      },
      (o) {
        if (o != null)
          o.maybeWhen(
            is401: () {
              if (!guestRoutes.contains(App.currentRoute)) navigator.replaceAll([LoginRoute()]);
            },
            orElse: () {
              if (App.currentRoute != GetStartedRoute.name) navigator.replaceAll([const GetStartedRoute()]);
            },
          );
        else {
          if (stack.isNotEmpty) {
            navigator.popUntil((e) => e.settings.name == stack.lastOrNull());
          } else {
            if (guestRoutes.contains(App.currentRoute)) navigator.replaceAll([const DashboardRoute()]);
          }
        }
      },
    );
  }

  static void navigateAuthenticated() {
    final stack = navigator.stack.map((e) => e.name).where((i) => !guestRoutes.contains(i));

    if (stack.isNotEmpty) {
      navigator.popUntil((e) => e.settings.name == stack.last);
    } else {
      WidgetsBinding.instance.endOfFrame.then((_) => navigator.replaceAll([const DashboardRoute()]));
    }
  }

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late AuthWatcherCubit _authCubit;

  @override
  void initState() {
    super.initState();
    _authCubit = context.read<AuthWatcherCubit>();
    _authCubit.subscribeToAuthChanges(
      (either) => either.fold(
        (_) => SplashScreen.navigateIfNotAuthenticated(),
        (option) => option.fold(SplashScreen.navigateIfNotAuthenticated, (_) => SplashScreen.navigateAuthenticated()),
      ),
    );

    _authCubit.fire();

    PrecacheManager.precacheLocalAssets();
    CountryDTO.persistCountries(context);
  }

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      body: Stack(
        children: [
          Center(
            child: ImageBox.asset(
              photo: AppAssets.logo,
              elevation: 0.0,
              width: 0.43.w,
              borderRadius: BorderRadius.zero,
              // useDefaultRadius: false,
              fit: BoxFit.contain,
            ),
          ),
          //
          Positioned(
            left: 0.0,
            right: 0.0,
            bottom: 1.h * 0.05,
            child: const Center(child: SpinKitLoader(strokeWidth: 3, radius: 14)),
          ),
        ],
      ),
    );
  }
}
