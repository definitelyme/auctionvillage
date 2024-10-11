library app_settings.dart;

import 'package:auctionvillage/core/data/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:hive_flutter/hive_flutter.dart';

abstract class AppSettings {
  const AppSettings();

  Box<dynamic>? get box;

  static AppSettings get instance => throw UnimplementedError();

  void storeEmail(String? email);

  String? get email;

  void storePhone(String? phone);

  String? get phone;

  void deleteEmail();

  void deletePhone();
}

class AppSettingsImpl extends AppSettings {
  const AppSettingsImpl._();

  static const AppSettingsImpl _instance = AppSettingsImpl._();

  static AppSettingsImpl get instance => _instance;

  @override
  Box<dynamic>? get box => HiveClient.settingsBox;

  @override
  void storeEmail(String? email) => box?.put(Const.kEmailPrefKey, email);

  @override
  String? get email => box?.get(Const.kEmailPrefKey) as String?;

  @override
  void storePhone(String? phone) => box?.put(Const.kPhoneNumberPrefKey, phone);

  @override
  String? get phone => box?.get(Const.kPhoneNumberPrefKey) as String?;

  @override
  void deleteEmail() => box?.delete(Const.kEmailPrefKey);

  @override
  void deletePhone() => box?.delete(Const.kPhoneNumberPrefKey);
}
