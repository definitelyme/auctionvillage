library item_condition.entity.dart;

import 'package:auctionvillage/utils/utils.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:json_annotation/json_annotation.dart';

part 'item_condition.entity.g.dart';

const ItemCondition defaultItemCondition = ItemCondition.brand_new;

class ItemCondition extends EnumClass {
  @BuiltValueEnumConst(fallback: true)
  static const ItemCondition brand_new = _$brand_new;
  static const ItemCondition used = _$used;
  static const ItemCondition seller_refurbished = _$seller_refurbished;
  static const ItemCondition manufacturer_refurbished = _$manufacturer_refurbished;

  const ItemCondition._(String name) : super(name);

  static BuiltSet<ItemCondition> get values => _$values;

  String get formatted => name.replaceAll('_', ' ').sentenceCase();

  static ItemCondition valueOf(String name) => _$valueOf(name);
}

class ItemConditionSerializer implements JsonConverter<ItemCondition?, String?> {
  const ItemConditionSerializer();

  @override
  ItemCondition fromJson(String? value) => ItemCondition.valueOf('$value'.replaceAll(' ', '_').toLowerCase());

  static String? toJsonString(ItemCondition? instance) => instance?.name.replaceAll('_', ' ').sentenceCase();

  @override
  String? toJson(ItemCondition? instance) => toJsonString(instance);
}

extension ItemConditionX on ItemCondition {
  T when<T>({
    required T Function() manufacturerRefurbished,
    required T Function() used,
    required T Function() sellerRefurbished,
    required T Function() brandNew,
  }) {
    switch (this) {
      case ItemCondition.manufacturer_refurbished:
        return manufacturerRefurbished.call();
      case ItemCondition.used:
        return used.call();
      case ItemCondition.seller_refurbished:
        return sellerRefurbished.call();
      case ItemCondition.brand_new:
      default:
        return brandNew.call();
    }
  }
}
