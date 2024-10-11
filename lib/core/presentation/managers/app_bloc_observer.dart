library app_bloc_observer.dart;

import 'package:auctionvillage/utils/utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onTransition(Bloc<dynamic, dynamic> bloc, Transition<dynamic, dynamic> transition) {
    super.onTransition(bloc, transition);
    Sentry.addBreadcrumb(Breadcrumb(
      message: 'onChange: ${bloc.runtimeType}',
      type: 'state',
      category: bloc is Cubit ? 'change.cubit' : 'change.bloc',
      timestamp: localTime,
    ));
  }
}
