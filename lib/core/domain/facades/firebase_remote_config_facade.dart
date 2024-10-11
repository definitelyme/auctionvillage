library firebase_remote_config_facade.dart;

import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';

abstract class FirebaseRemoteConfigFacade {
  final FirebaseRemoteConfig remoteConfig;

  const FirebaseRemoteConfigFacade(this.remoteConfig);

  List<PaymentMethod> get supportedPaymentMethods;
}
