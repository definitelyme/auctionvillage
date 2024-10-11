import 'package:auctionvillage/features/auth/presentation/managers/managers.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    final context = router.navigatorKey.currentContext;

    if (context != null) {
      final authenticated = BlocProvider.of<AuthWatcherCubit>(context).isAuthenticated;

      if (authenticated)
        resolver.next();
      else {
        WidgetsBinding.instance.endOfFrame.then((_) {
          if (App.currentRoute != GetStartedRoute.name) router.replaceAll([const GetStartedRoute()]);
        });
      }
    } else
      resolver.next();
  }
}
