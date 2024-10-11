library env.dart;

import 'package:auctionvillage/core/data/index.dart';
import 'package:auctionvillage/manager/locator/locator.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';

BuildEnvironment get env => _env!;
BuildEnvironment? _env;

class BuildEnvironment with Secrets {
  final Uri? baseUri;
  final BuildFlavor flavor;

  BuildEnvironment._({this.flavor = BuildFlavor.dev, this.baseUri});

  factory BuildEnvironment.factory({required BuildFlavor flavor, Uri? uri}) => BuildEnvironment._(flavor: flavor, baseUri: uri);

  String get appApiKey => env.flavor.maybeWhen(dev: () => appAPIKeyDebug, orElse: () => appAPIKeyLive);

  String get appName => env.flavor.maybeWhen(dev: () => Const.appNameDev, orElse: () => Const.appName);

  String get cloudName => cloudNameSecret;

  int get connectTimeout => 16000;

  String get googleMapsAPI => Utils.platform_(material: androidAPIKey, cupertino: iOSAPIKey)!;

  String get packageName =>
      env.flavor.maybeWhen(dev: () => Const.packageNameDev, beta: () => Const.packageNameBeta, orElse: () => Const.packageNameProd);

  // Flutterwave keys
  String get flutterwaveKey =>
      flavor.maybeWhen(dev: () => flutterwaveKeyDebug, beta: () => flutterwaveKeyLive, orElse: () => flutterwaveKeyLive);
  String get flutterwaveSecretKey =>
      flavor.maybeWhen(dev: () => flutterwaveSecretKeyDebug, beta: () => flutterwaveSecretKeyLive, orElse: () => flutterwaveSecretKeyLive);

  // Paystack keys
  String get paystackKey => flavor.maybeWhen(dev: () => paystackKeyDebug, beta: () => paystackKeyLive, orElse: () => paystackKeyLive);
  String get paystackSecretKey =>
      flavor.maybeWhen(dev: () => paystackSecretKeyDebug, beta: () => paystackSecretKeyLive, orElse: () => paystackSecretKeyLive);

  int get receiveTimeout => 16000;

  String get sentryDSN => sentryDsnSecret;

  Duration get splashDuration =>
      flavor.maybeWhen(dev: () => const Duration(milliseconds: 700), orElse: () => const Duration(milliseconds: 1300));

  String get uploadPreset => uploadPresetSecret;

  static String domain([BuildFlavor? value]) => (value ?? env.flavor).maybeWhen(
        dev: () => EndPoints.APP_DEV_DOMAIN,
        beta: () => kDebugMode ? EndPoints.APP_PROD_DOMAIN : EndPoints.APP_PROD_DOMAIN,
        orElse: () => kDebugMode ? EndPoints.APP_DEV_DOMAIN : EndPoints.APP_PROD_DOMAIN,
      );

  /// Sets up the top-level [env] getter on the first call only.
  static Future<void> init({required BuildFlavor flavor}) async {
    final baseURL = const bool.hasEnvironment('BASE_URL') ? const String.fromEnvironment('BASE_URL') : domain(flavor);
    _env ??= BuildEnvironment.factory(flavor: flavor, uri: Uri.https(baseURL, EndPoints.API_ENDPOINT));

    // initialize dependencies
    await locator(env.flavor.name);
    // download ios font family
    if (App.platform.isIOS)
      FontManager.loadFontFamily(FontManager.ios);
    else if (App.platform.isAndroid) FontManager.loadFontFamily(FontManager.android);
    // initialize hive client
    await HiveClient.initialize();
    // enable crashlytics
    await getIt<FirebaseCrashlytics>().setCrashlyticsCollectionEnabled(!kDebugMode);
  }

  static Future<void> isolate(BuildFlavor flavor, {Future<void> Function()? callback}) async {
    final baseURL = const bool.hasEnvironment('BASE_URL') ? const String.fromEnvironment('BASE_URL') : domain(flavor);
    _env ??= BuildEnvironment.factory(flavor: flavor, uri: Uri.https(baseURL, EndPoints.API_ENDPOINT));
    await callback?.call();
  }
}

class BuildFlavor {
  /// preset of common env name 'beta'
  static const beta = BuildFlavor('beta');

  /// preset of common env name 'dev'
  static const dev = BuildFlavor('dev');

  /// preset of common env name 'prod'
  static const prod = BuildFlavor('prod');

  /// name of the environment
  final String name;

  /// default constructor
  const BuildFlavor(this.name);

  @override
  bool operator ==(other) {
    if (identical(this, other)) return true;
    return other is BuildFlavor && other.name == name;
  }

  @override
  int get hashCode => name.hashCode;

  @override
  String toString() => name;

  bool get isDev => this == dev;
  bool get isBeta => this == beta;
  bool get isProd => this == prod;

  U maybeWhen<U>({
    U Function()? dev,
    U Function()? beta,
    U Function()? prod,
    required U Function() orElse,
  }) {
    if (this == BuildFlavor.dev) return dev?.call() ?? orElse.call();
    if (this == BuildFlavor.beta) return beta?.call() ?? orElse.call();
    if (this == BuildFlavor.prod) return prod?.call() ?? orElse.call();
    return orElse.call();
  }
}
