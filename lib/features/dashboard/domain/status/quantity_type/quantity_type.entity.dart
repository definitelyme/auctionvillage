library quantity_type.entity.dart;

import 'package:auctionvillage/utils/utils.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:json_annotation/json_annotation.dart';

part 'quantity_type.entity.g.dart';

const QuantityType defaultQuantityType = QuantityType.single_item;

class QuantityType extends EnumClass {
  static const QuantityType lot = _$lot;
  @BuiltValueEnumConst(fallback: true)
  static const QuantityType single_item = _$single_item;

  const QuantityType._(String name) : super(name);

  static BuiltSet<QuantityType> get values => _$values;

  static List<int> get figures => List.generate(100, (i) => i + 1);

  static QuantityType valueOf(String name) => _$valueOf(name);

  @override
  String toString() => name.replaceAll('_', ' ').sentenceCase();
}

class QuantityTypeSerializer implements JsonConverter<QuantityType?, String?> {
  const QuantityTypeSerializer();

  @override
  QuantityType fromJson(String? value) => QuantityType.valueOf('$value'.toLowerCase());

  static String? toJsonString(QuantityType? instance) => instance?.name.toUpperCase();

  @override
  String? toJson(QuantityType? instance) => toJsonString(instance);
}

extension QuantityTypeX on QuantityType {
  T when<T>({
    required T Function() lot,
    required T Function() singleItem,
  }) {
    switch (this) {
      case QuantityType.lot:
        return lot.call();
      case QuantityType.single_item:
      default:
        return singleItem.call();
    }
  }
}
