library country.dart;

import 'dart:async';

import 'package:auctionvillage/core/data/index.dart';
import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:kt_dart/collection.dart';
import 'package:retry/retry.dart';

part 'country.freezed.dart';

@freezed
@immutable
class Country with _$Country implements Comparable<Country> {
  static const String defaultISO = Const.defaultISO;
  static const String defaultLocale = Const.defaultLocale;
  static const String defaultCurrencyIcon = Const.defaultCurrencyIcon;
  static const String extension = '.svg';

  static const kDefault = Country(
    iso: BasicTextField.DEFAULT_STRING,
    name: BasicTextField.DEFAULT_STRING,
    flag: BasicTextField.DEFAULT_STRING,
    dialCode: BasicTextField.DEFAULT_STRING,
    currencyIcon: BasicTextField.DEFAULT_STRING,
  );

  const factory Country({
    UniqueId<String?>? id,
    required BasicTextField name,
    required BasicTextField iso,
    required BasicTextField dialCode,
    required BasicTextField flag,
    required BasicTextField currencyIcon,
    @Default('en') String? locale,
    CurrencyType? type,
  }) = _Country;

  const Country._();

  bool get isNetwork => (flag.getOrNull != null &&
      (flag.getOrNull!.contains('http://') || flag.getOrNull!.contains('https://') || flag.getOrNull!.startsWith('data:image')));

  @override
  int compareTo(Country other) {
    if (!name.isValid) return -1;
    return name.getOrEmpty.compareTo(other.name.getOrEmpty);
  }

  static Country? get defaultCountry => countries.firstOrNull((e) => e.iso.getExact().toLowerCase() == defaultISO.toLowerCase());

  static List<String> get _supportedISO => ['ng', 'gb'];

  // static KtList<Country> get supportedCountries {
  //   final box = HiveClient.countriesBox;
  //   if (box == null || box.isEmpty) return emptyList();
  //   return box.values.where((i) => _supportedISO.contains(i.iso?.toLowerCase())).map((dto) => dto.domain).toImmutableList();
  // }

  static KtList<Country> get countries {
    final box = HiveClient.countriesBox;
    if (box == null || box.isEmpty) return emptyList();

    return box.values
        .where((dto) => _supportedISO.isNotEmpty ? _supportedISO.contains(dto.iso?.toLowerCase()) : true)
        .map((dto) => dto.domain)
        .toImmutableList();
  }

  static Country? fromName(String? name) {
    return countries.firstOrNull((e) => e.name.getExact().toLowerCase() == name?.toLowerCase());
  }

  static Country? fromISO(String? iso) {
    return countries.firstOrNull((e) => e.iso.getExact().toLowerCase() == iso?.toLowerCase());
  }

  static Stream<KtList<Country>> get watch async* {
    final box = await retry(
      () async {
        return HiveClient.isOpen(HiveClient.countriesBoxName)
            ? HiveClient.box<CountryDTO>(HiveClient.countriesBoxName)
            : (await HiveClient.openBox<CountryDTO>(HiveClient.countriesBoxName));
      },
      retryIf: (e) => e is HiveError,
    );

    yield* box!.watch().transform(StreamTransformer<BoxEvent, KtList<Country>>.fromHandlers(
      handleData: (event, sink) {
        final countries = box.values.map((dto) => dto.domain).toImmutableList();
        sink.add(countries);
      },
    ));
  }

  String get symbol =>
      currencyIcon.getOrNull != null && currencyIcon.getOrNull!.isNotEmpty ? '${currencyIcon.getOrNull}' : defaultCurrencyIcon;
  String get symbolPadded =>
      currencyIcon.getOrNull != null && currencyIcon.getOrNull!.isNotEmpty ? '${currencyIcon.getOrNull} ' : '${Const.defaultCurrencyIcon} ';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is Country &&
          const DeepCollectionEquality().equals(id, other.id) &&
          const DeepCollectionEquality().equals(name, other.name) &&
          const DeepCollectionEquality().equals(iso, other.iso) &&
          const DeepCollectionEquality().equals(dialCode, other.dialCode) &&
          const DeepCollectionEquality().equals(flag, other.flag) &&
          const DeepCollectionEquality().equals(currencyIcon, other.currencyIcon) &&
          const DeepCollectionEquality().equals(locale, other.locale) &&
          const DeepCollectionEquality().equals(type, other.type));

  @override
  int get hashCode => Object.hash(
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(name),
        const DeepCollectionEquality().hash(iso),
        const DeepCollectionEquality().hash(dialCode),
        const DeepCollectionEquality().hash(flag),
        const DeepCollectionEquality().hash(currencyIcon),
        const DeepCollectionEquality().hash(locale),
        const DeepCollectionEquality().hash(type),
      );
}
