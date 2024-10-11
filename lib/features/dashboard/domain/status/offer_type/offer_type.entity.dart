library offer_type.entity.dart;

import 'package:auctionvillage/utils/utils.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:json_annotation/json_annotation.dart';

part 'offer_type.entity.g.dart';

const OfferType defaultOfferType = OfferType.non_negotiable;

class OfferType extends EnumClass {
  static const OfferType negotiable = _$negotiable;
  @BuiltValueEnumConst(fallback: true)
  static const OfferType non_negotiable = _$non_negotiable;

  const OfferType._(String name) : super(name);

  static BuiltSet<OfferType> get values => _$values;

  static OfferType valueOf(String name) => _$valueOf(name);

  @override
  String toString() => name.replaceAll('_', ' ').sentenceCase();
}

class OfferTypeSerializer implements JsonConverter<OfferType?, String?> {
  const OfferTypeSerializer();

  @override
  OfferType fromJson(String? value) => OfferType.valueOf('$value'.toLowerCase());

  static String? toJsonString(OfferType? instance) => instance?.name.toUpperCase();

  @override
  String? toJson(OfferType? instance) => toJsonString(instance);
}

extension OfferTypeX on OfferType {
  T when<T>({
    required T Function() negotiable,
    required T Function() nonNegotiable,
  }) {
    switch (this) {
      case OfferType.negotiable:
        return negotiable.call();
      case OfferType.non_negotiable:
      default:
        return nonNegotiable.call();
    }
  }
}
