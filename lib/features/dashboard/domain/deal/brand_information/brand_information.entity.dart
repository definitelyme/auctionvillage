library brand_information.entity.dart;

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/core/domain/response/index.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'brand_information.entity.freezed.dart';

@freezed
@immutable
class BrandInformation with _$BrandInformation {
  const BrandInformation._();

  const factory BrandInformation({
    required BasicTextField brand,
    required BasicTextField brandModel,
    @Default(ItemCondition.brand_new) ItemCondition condition,
    @Default(false) bool hasRepairHistory,
    required BasicTextField warranty,
    required BasicTextField description,
  }) = _BrandInformation;

  bool get hasWarranty => warranty.getOrNull != null && warranty.getOrNull!.isNotEmpty;

  factory BrandInformation.blank({
    String? brand,
    String? brandModel,
    ItemCondition? condition,
    bool? repairHistory,
    String? warranty,
    String? description,
  }) =>
      BrandInformation(
        brand: BasicTextField(brand),
        brandModel: BasicTextField(brandModel),
        condition: condition ?? ItemCondition.brand_new,
        description: BasicTextField(description),
        warranty: BasicTextField(warranty),
        hasRepairHistory: repairHistory ?? false,
      );

  BrandInformation merge(BrandInformation? other) => copyWith(
        brand: other?.brand.isNotNull((it) => it as BasicTextField, orElse: (_) => brand) ?? brand,
        brandModel: other?.brandModel.isNotNull((it) => it as BasicTextField, orElse: (_) => brandModel) ?? brandModel,
        condition: other?.condition ?? condition,
        description: other?.description.isNotNull((it) => it as BasicTextField, orElse: (_) => description) ?? description,
        hasRepairHistory: other?.hasRepairHistory ?? hasRepairHistory,
        warranty: other?.warranty.isNotNull((it) => it as BasicTextField, orElse: (_) => warranty) ?? warranty,
      );

  Either<FieldObjectException<dynamic>, Unit> get maybeFailure => description.mapped.andThen(warranty.mapped);

  Option<FieldObjectException<dynamic>> get failure => maybeFailure.fold((f) => some(f), (_) => none());
}
