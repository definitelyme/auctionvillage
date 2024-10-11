// ignore_for_file: constant_identifier_names

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:auctionvillage/core/presentation/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'currency_type.hive.dart';
part 'currency_type.gen.dart';

@HiveType(typeId: 5)
class CurrencyType extends HiveEnumClass {
  @BuiltValueEnumConst(fallback: true)
  static const CurrencyType NGN = _$NGN;
  static const CurrencyType USD = _$USD;
  static const CurrencyType GBP = _$GBP;

  factory CurrencyType(String name) => CurrencyType._(name);

  const CurrencyType._(super.name);

  static BuiltSet<CurrencyType> get values => _$currencyTypeValues;

  static CurrencyType valueOf(String name) => _$currencyTypeValueOf(name);

  static Serializer<CurrencyType> get serializer => _$currencyTypeSerializer;

  static void registerAdapter() => Hive.registerAdapter(CurrencyTypeAdapter());
}

class CurrencyTypeSerializer implements JsonConverter<CurrencyType?, String?> {
  const CurrencyTypeSerializer();

  @override
  CurrencyType fromJson(String? value) => CurrencyType.valueOf('$value');

  static String? toJsonString(CurrencyType? instance) => instance?.name.toUpperCase();

  @override
  String? toJson(CurrencyType? instance) => toJsonString(instance);
}
