library hive_client.dart;

import 'dart:async';

import 'package:auctionvillage/core/data/index.dart';
import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/features/auth/domain/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

/// State of HiveClient initialization
/// - [HiveClientStatus.loading] - When Hive is initializing
/// - [HiveClientStatus.loaded] - When Hive has been initialized
/// - [HiveClientStatus.error] - When Hive failed to initialize with an error
enum HiveClientStatus {
  loading,
  loaded,
  error;

  T? when<T>({T Function()? loading, T Function()? loaded, T Function()? error}) {
    switch (this) {
      case HiveClientStatus.loading:
        return loading?.call();
      case HiveClientStatus.loaded:
        return loaded?.call();
      case HiveClientStatus.error:
        return error?.call();
      default:
        return null;
    }
  }
}

class HiveClient {
  static const _accessTokenBox = '${_hiveBoxPrefix}_-_${Const.kAccessTokenBoxKey}';
  static const _countriesBox = '${_hiveBoxPrefix}__countries_-_listing';
  static const _hiveBoxPrefix = 'ac.village_hive_box';
  static const _settingsBox = '${_hiveBoxPrefix}__device-preferences.';
  static const _tabNavigationIndexBox = '${_hiveBoxPrefix}__tab_navigation_cubit';
  static const _userDTOBox = '${_hiveBoxPrefix}__user_dto';
  static const _fontsBox = '${_hiveBoxPrefix}__fonts_box.';

  static const countriesBoxName = _countriesBox;

  const HiveClient._();

  static final StreamController<HiveClientStatus> _hiveStatusController = StreamController<HiveClientStatus>.broadcast();

  static Box<AccessToken>? get accessTokenBox => isOpen(_accessTokenBox) ? box<AccessToken>(_accessTokenBox) : null;
  static Box<CountryDTO>? get countriesBox => isOpen(_countriesBox) ? box<CountryDTO>(_countriesBox) : null;
  static Box<dynamic>? get settingsBox => isOpen(_settingsBox) ? box<dynamic>(_settingsBox) : null;
  static Box<int>? get tabNavBox => isOpen(_tabNavigationIndexBox) ? box<int>(_tabNavigationIndexBox) : null;
  static Box<UserDTO>? get userDTOBox => isOpen(_userDTOBox) ? box<UserDTO>(_userDTOBox) : null;
  static Box<FontManager>? get fontsBox => isOpen(_fontsBox) ? box<FontManager>(_fontsBox) : null;

  static Future<void> _openHiveBoxes() async {
    try {
      await openBox(_settingsBox);
      await openBox<UserDTO>(_userDTOBox);
      await openBox<int>(_tabNavigationIndexBox);
      await openBox<AccessToken>(_accessTokenBox);
      await openBox<CountryDTO>(_countriesBox);
      await openBox<FontManager>(_fontsBox);
    } on HiveError catch (e, tr) {
      if (!_hiveStatusController.isClosed) {
        _hiveStatusController.sink.add(HiveClientStatus.error);
      }

      await ToastManager.long(e.message);
      await Utils.report(e, tr);

      if (kDebugMode) rethrow;
    }
  }

  /// Register all [Box]es that are used in the app
  static void _registerAdapters() async {
    try {
      UserDTO.registerAdapter(); // 1
      AuthProvider.registerAdapter(); // 2
      AccessToken.registerAdapter(); // 3
      TokenType.registerAdapter(); // 4
      CurrencyType.registerAdapter(); // 5
      CountryDTO.registerAdapter(); // 6
      FontManager.registerAdapter(); // 7
    } on HiveError catch (e, tr) {
      if (!_hiveStatusController.isClosed) {
        _hiveStatusController.sink.add(HiveClientStatus.error);
      }

      await ToastManager.long(e.message);
      await Utils.report(e, tr);

      if (kDebugMode) rethrow;
    }
  }

  static Box<E> box<E>(String name) => Hive.box<E>(name);

  /// This method should be called `once` preferably on app launch
  ///
  /// - It initializes `Hive`
  ///
  /// - It opens all `Box`es that are used in the app
  ///
  /// - It registers all `TypeAdapter`s that are used in the app
  ///
  /// See also:
  /// * [StreamSubscription.subscribe] - for listening to the status of the initialization
  /// * [HiveClientStatus] - for the possible statuses of the initialization
  static Future<HiveClient> initialize([String? directory]) async {
    if (!_hiveStatusController.isClosed) {
      _hiveStatusController.sink.add(HiveClientStatus.loading);
    }

    await Hive.initFlutter(directory);
    HiveClient._registerAdapters();
    await HiveClient._openHiveBoxes();

    if (!_hiveStatusController.isClosed) {
      _hiveStatusController.sink.add(HiveClientStatus.loaded);
    }

    return const HiveClient._();
  }

  static bool isOpen(String name) => Hive.isBoxOpen(name);

  static Future<Box<E>?> openBox<E>(String name, {bool report = true}) async {
    try {
      return await Hive.openBox<E>(name);
    } on HiveError catch (e, tr) {
      if (!_hiveStatusController.isClosed) {
        _hiveStatusController.sink.add(HiveClientStatus.error);
      }

      if (report) {
        await ToastManager.long(e.message);
        await Utils.report(e, tr);
      }

      if (kDebugMode) rethrow;

      return null;
    }
  }

  /// Subscribe to changes to [HiveClientStatus]
  /// - [HiveClientStatus.loading] - When Hive is initializing
  /// - [HiveClientStatus.loaded] - When Hive has been initialized
  /// - [HiveClientStatus.error] - When Hive failed to initialize with an error
  ///
  /// You can subscribe to this stream to get updates:
  /// ```dart
  /// HiveClient.subscribe((status) {
  ///  print(status);
  /// });
  /// ```
  static StreamSubscription<HiveClientStatus> subscribe(
    void Function(HiveClientStatus) onUpdate, {
    bool autoDispose = true,
    void Function(Object?)? onError,
  }) {
    StreamSubscription<HiveClientStatus>? _subscription;

    return _subscription ??= _hiveStatusController.stream.listen((value) {
      onUpdate(value);

      if (autoDispose && (value == HiveClientStatus.loaded || value == HiveClientStatus.error)) {
        _subscription?.cancel();
      }
    }, onError: onError, cancelOnError: autoDispose);
  }

  @visibleForTesting
  @disposeMethod
  void dispose() {
    _hiveStatusController.close();
  }
}
