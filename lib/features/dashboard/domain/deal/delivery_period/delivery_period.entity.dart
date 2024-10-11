library delivery_period.entity.dart;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:json_annotation/json_annotation.dart';

part 'delivery_period.entity.g.dart';

class DeliveryPeriod extends EnumClass {
  @BuiltValueEnumConst(fallback: true)
  static const DeliveryPeriod immediate = _$immediate;
  static const DeliveryPeriod later = _$later;

  const DeliveryPeriod._(String name) : super(name);

  static BuiltSet<DeliveryPeriod> get values => _$values;

  static DeliveryPeriod valueOf(String name) => _$valueOf(name);
}

class DeliveryPeriodSerializer
    implements JsonConverter<DeliveryPeriod?, String?> {
  const DeliveryPeriodSerializer();

  @override
  DeliveryPeriod fromJson(String? value) => DeliveryPeriod.valueOf(value ?? '');

  @override
  String? toJson(DeliveryPeriod? instance) => '${instance?.name}';
}
