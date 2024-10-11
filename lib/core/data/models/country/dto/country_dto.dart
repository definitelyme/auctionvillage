library country_dto.dart;

import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:isolate';

import 'package:auctionvillage/core/data/index.dart';
import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:isolate_handler/isolate_handler.dart';
import 'package:kt_dart/kt.dart' hide StandardKt;
import 'package:path/path.dart' as p show join, setExtension, extension;

part 'country_dto.freezed.dart';
part 'country_dto.g.dart';
part 'country_dto.hive.dart';

CountryDTO deserializeCountryDTO(Map<String, dynamic> json) => CountryDTO.fromJson(json);
Map<String, dynamic> serializeCountryDTO(CountryDTO object) => object.toJson();

@unfreezed
class CountryDTO extends HiveObject with _$CountryDTO {
  static final IsolateHandler _isolateHandler = IsolateHandler();
  static final _isolateName = 'country_dto_isolate-${UniqueId.v4().value}';

  @HiveType(typeId: 6, adapterName: 'CountryDTOAdapter')
  factory CountryDTO({
    @HiveField(1) String? id,
    @HiveField(2) String? name,
    @HiveField(3) @JsonKey(name: 'code') String? iso,
    @HiveField(4) @JsonKey(name: 'dialCode') String? dialCode,
    @HiveField(5) @JsonKey(name: 'flag') String? flagUrl,
    @HiveField(6) @CurrencyTypeSerializer() CurrencyType? currency,
    @HiveField(7) @JsonKey(name: 'currency_icon') String? currencyIcon,
    @HiveField(8) String? locale,
  }) = _CountryDTO;

  CountryDTO._();

  factory CountryDTO.fromDomain(Country? instance) => CountryDTO(
        id: instance?.id?.value,
        iso: instance?.iso.getOrNull,
        name: instance?.name.getOrNull,
        dialCode: instance?.dialCode.getOrNull,
      );

  factory CountryDTO.fromJson(Map<String, dynamic> json) => _$CountryDTOFromJson(json);

  static Future<bool> get _hasPermissions async {
    if (Platform.isIOS) return true;

    final sdkInt = (await Utils.androidDeviceInfo)?.version.sdkInt;
    if (sdkInt != null && sdkInt > 28) return true;

    final status = await PermissionManager.storage();

    return status.maybeWhen(granted: () => true, limited: () => true, orElse: () => false);
  }

  Country get domain => Country(
        id: UniqueId.fromExternal(id),
        iso: BasicTextField(iso?.toLowerCase(), validate: false),
        name: BasicTextField(name ?? '', validate: false),
        dialCode: BasicTextField(dialCode),
        flag: BasicTextField(flagUrl),
        currencyIcon: BasicTextField(currencyIcon),
        locale: locale,
        type: currency,
      );

  bool get isNetworkUrl =>
      (flagUrl != null && (flagUrl!.contains('http://') || flagUrl!.contains('https://') || flagUrl!.startsWith('data:image')));

  static void _onMessageReceived(dynamic data) async {
    if (data == null) _isolateHandler.kill(_isolateName);

    final box = HiveClient.countriesBox;

    if (box != null && box.isOpen && data is Map) {
      final filePath = data['path'] as String?;
      final url = data['url'] as String?;
      final iso = data['iso'] as String;
      final country = box.values.firstOrNull((o) => o.iso?.toLowerCase().contains(iso) ?? false);

      if (country != null && country.isInBox) {
        if (url != null && (country.flagUrl == null || country.flagUrl!.isEmpty)) {
          country.flagUrl = url;
          await country.save();
          PrecacheManager.networkSVG(url);
        } else if (filePath != null) {
          final file = File(filePath);
          country.flagUrl = file.path;
          await country.save();
          PrecacheManager.fileSVG(file);
        }
      }
    }
  }

  static Future<List<CountryDTO>> _parseJsonToCountryDTO(String data) async {
    final json = jsonDecode(data) as List<dynamic>;
    final countries = json.map((e) => CountryDTO.fromJson((e as Map).mapToStringDynamic)).toList();

    return countries.map((e) => e.copyWith(iso: e.iso?.toLowerCase())).toList();
  }

  static void _persistCountries(Map<String, dynamic> context) async {
    final messenger = HandledIsolate.initialize(context);

    messenger.listen((_) async {
      await BuildEnvironment.isolate(BuildFlavor.prod, callback: () async {
        await Firebase.initializeApp();
        await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(kReleaseMode);
        await HiveClient.initialize();
      });

      final box = HiveClient.countriesBox;

      if (box != null && box.isOpen) {
        final destination = p.join((await Utils.documentsDir).path, Const.countriesFolder);
        final folder = Directory(destination);

        if (!folder.existsSync()) await folder.create(recursive: true);

        final storageRef = FirebaseStorage.instance.ref().child(Const.countriesFolder);

        for (final e in box.values) {
          await e.iso?.let((it) async {
            final _name = it.split('/').lastOrNull() ?? it;
            final filename = p.extension(_name).isEmpty ? p.setExtension(_name, Country.extension) : _name;
            final file = File(p.join(destination, filename));
            final fileExists = await file.exists();
            final hasPermission = await _hasPermissions;

            if (!fileExists) {
              if (hasPermission) {
                try {
                  final childRef = storageRef.child(filename);
                  final task = childRef.writeToFile(file);
                  task.whenComplete(() => messenger.send({'iso': it, 'path': file.path}));

                  final downloadUrl = await childRef.getDownloadURL();
                  messenger.send({'iso': it, 'url': downloadUrl});
                } on Exception catch (e, tr) {
                  Utils.reportFlutterError(e, tr,
                      reason: 'Error downloading: $e\nFlag ==> $filename', crashlytics: FirebaseCrashlytics.instance);
                }
              }
            } else {
              PrecacheManager.fileSVG(file);
            }
          });
        }

        messenger.send(null);
      }
    });
  }

  static void persistCountries([BuildContext? context]) async {
    final box = HiveClient.countriesBox;
    final ctx = context ?? navigator.navigatorKey.currentContext;

    if (box != null && box.values.isEmpty) {
      String? data;

      try {
        data = await ctx?.let((it) => DefaultAssetBundle.of(it).loadString(AppAssets.countries));
      } catch (_) {
        // data = await navigator.navigatorKey.currentContext?.let((it) => DefaultAssetBundle.of(it).loadString(AppAssets.countries));
        data = null;
        if (kDebugMode) rethrow;
      }

      if (data != null) {
        final countries = await compute(_parseJsonToCountryDTO, data);
        await box.addAll(countries);
      }
    }

    final errorPort = ReceivePort();

    errorPort.listen((msg) {
      log.e('An error occured in Isolate: $_isolateName');
      if (kDebugMode) throw Exception('$msg');
      _isolateHandler.kill(_isolateName);
    });

    _isolateHandler.spawn(
      _persistCountries,
      name: _isolateName,
      onReceive: _onMessageReceived,
      errorsAreFatal: true,
      onError: errorPort.sendPort,
      debugName: _isolateName,
      onInitialized: () => _isolateHandler.send({}, to: _isolateName),
    );
  }

  static void registerAdapter() => Hive.registerAdapter(CountryDTOAdapter());
}

CountryDTOList deserializeCountryDTOList(Map<String, dynamic> json) => CountryDTOList.fromJson(json);
Map<String, dynamic> serializeCountryDTOList(CountryDTOList object) => object.toJson();

@freezed
@immutable
class CountryDTOList with _$CountryDTOList {
  const factory CountryDTOList({
    @JsonKey(includeIfNull: false) @Default([]) List<CountryDTO> data,
  }) = _CountryDTOList;

  const CountryDTOList._();

  factory CountryDTOList.fromJson(Map<String, dynamic> json) => _$CountryDTOListFromJson(json);

  KtList<Country> get domain => KtList.from(data.map((e) => e.domain).toList());
}

extension CountryDTOListX on List<CountryDTO> {
  KtList<Country> get domain => KtList.from(map((e) => e.domain).toList());
}
