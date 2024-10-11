library shipping_information.entity.dart;

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/core/domain/response/index.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'shipping_information.entity.freezed.dart';

@freezed
@immutable
class ShippingInformation with _$ShippingInformation {
  const ShippingInformation._();

  const factory ShippingInformation({
    required BasicTextField description,
    required BasicTextField deliveryPeriod,
    @Default(false) bool isPickup,
    required ImmutableStrings regions,
  }) = _ShippingInformation;

  bool get hasDeliverPeriod => deliveryPeriod.getOrNull != null && deliveryPeriod.getOrNull!.isNotEmpty;

  factory ShippingInformation.blank({
    String? description,
    String? deliveryPeriod,
    bool? isPickup,
    List<String>? regions,
  }) =>
      ShippingInformation(
        description: BasicTextField(description),
        deliveryPeriod: BasicTextField(deliveryPeriod),
        isPickup: isPickup ?? false,
        regions: ImmutableStrings(KtList.from((regions ?? []))),
      );

  ShippingInformation merge(ShippingInformation? other) => copyWith(
        description: other?.description.isNotNull((it) => it as BasicTextField, orElse: (_) => description) ?? description,
        deliveryPeriod: other?.deliveryPeriod.isNotNull((it) => it as BasicTextField, orElse: (_) => deliveryPeriod) ?? deliveryPeriod,
        isPickup: other?.isPickup ?? isPickup,
        regions: regions.merge(other?.regions),
      );

  Either<FieldObjectException<dynamic>, Unit> get maybeFailure => deliveryPeriod.mapped.andThen(description.mapped).andThen(regions.mapped);

  Option<FieldObjectException<dynamic>> get failure => maybeFailure.fold((f) => some(f), (_) => none());
}
