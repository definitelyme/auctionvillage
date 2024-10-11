library firebase_remote_config_service.dart;

import 'dart:convert';

import 'package:auctionvillage/core/domain/facades/index.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/foundation.dart';

class FirebaseRemoteConfigService extends FirebaseRemoteConfigFacade {
  const FirebaseRemoteConfigService(super.remoteConfig);

  @override
  List<PaymentMethod> get supportedPaymentMethods => _getList('supported_payment_methods').map((e) => PaymentMethod.valueOf('$e')).toList();

  List<dynamic> _getList(String key) => json.decode(remoteConfig.getValue(key).asString()) as List<dynamic>;

  Map<dynamic, dynamic> _getMap(String key) => json.decode(remoteConfig.getValue(key).asString()) as Map<dynamic, dynamic>;

  static List<Future<void>> _setup(FirebaseRemoteConfig config) => [
        config.setConfigSettings(RemoteConfigSettings(
          fetchTimeout: const Duration(seconds: 60),
          minimumFetchInterval: kDebugMode ? const Duration(minutes: 2) : const Duration(hours: 24),
        )),
        config.activate(),
        Future.delayed(const Duration(seconds: 1)),
        config.fetchAndActivate(),
      ];

  static Future<FirebaseRemoteConfigService> initialize(FirebaseRemoteConfig config) async {
    try {
      await Future.wait(_setup(config));
    } on FirebaseException catch (e) {
      debugPrint('Remote config error: $e');
      return initialize(config);
    } catch (e) {
      debugPrint('Remote config error: $e');
      return initialize(config);
    }

    return FirebaseRemoteConfigService(config);
  }
}
