library modules.dart;

import 'package:auctionvillage/core/data/index.dart';
import 'package:auctionvillage/core/domain/facades/index.dart';
import 'package:auctionvillage/core/presentation/index.dart';
import 'package:auctionvillage/features/auth/data/repositories/repos.dart';
import 'package:auctionvillage/manager/settings/app_settings.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:cloudinary_public/cloudinary_public.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_paystack/flutter_paystack.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'http_client_module.part.dart';

@module
abstract class FirebaseModules {
  @lazySingleton
  FirebaseAnalytics get firebaseAnalytics => FirebaseAnalytics.instance..logAppOpen();

  @preResolve
  @singleton
  Future<FirebaseApp> get firebaseApp => Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  @lazySingleton
  FirebaseCrashlytics get firebaseCrashlytics => FirebaseCrashlytics.instance..sendUnsentReports();

  @lazySingleton
  FirebaseMessaging get firebaseMessaging => FirebaseMessaging.instance;

  @singleton
  CloudinaryPublic get cloudinary => CloudinaryPublic(env.cloudName, env.uploadPreset, cache: false);

  @lazySingleton
  FirebaseStorage get firebaseStorage => FirebaseStorage.instance;

  @lazySingleton
  FirebaseRemoteConfig get firebaseRemoteConfig => FirebaseRemoteConfig.instance;
}

@module
abstract class AppModules {
  @preResolve
  @LazySingleton(as: FirebaseRemoteConfigFacade)
  Future<FirebaseRemoteConfigService> remoteConfigService(FirebaseRemoteConfig _) => FirebaseRemoteConfigService.initialize(_);

  @lazySingleton
  AccessTokenManager get accessTokenManager => AccessTokenManager.instance;

  @singleton
  AppHttpClient get httpClient => _HttpClients._clientv2();

  @singleton
  AppRouter get router => AppRouter(authGuard: AuthGuard(), guestGuard: GuestGuard());

  @Singleton(as: AppSettings)
  AppSettingsImpl get appSettings => AppSettingsImpl.instance;

  @singleton
  RootCubit rootCubit(FirebaseRemoteConfigFacade facade) => RootCubit(facade);
}

@module
abstract class ServiceModules {
  @lazySingleton
  AwesomeNotifications get awesomeNotifications => AwesomeNotifications();

  @lazySingleton
  InternetConnectionChecker get connectionChecker => InternetConnectionChecker();

  @lazySingleton
  Connectivity get connectionStatus => Connectivity();

  @preResolve
  Future<SharedPreferences> get preferences => SharedPreferences.getInstance();

  @lazySingleton
  PaystackPlugin get paystackInit => PaystackPlugin()..initialize(publicKey: env.paystackKey);
}
