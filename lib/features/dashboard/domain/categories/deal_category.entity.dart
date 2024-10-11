library deal_category.entity.dart;

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'deal_category.entity.freezed.dart';

@freezed
@immutable
class DealCategory extends BaseEntity with _$DealCategory {
  const DealCategory._();

  const factory DealCategory({
    required UniqueId<String?> id,
    required MediaField asset,
    @Default(false) bool isActive,
    required BasicTextField name,
    required BasicTextField slug,
    required BasicTextField description,
    required NumField<double?> charge,
    required NumField<double?> percentageIncrease,
    required NumField<int> productsAssigned,
    Deal? deal,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _DealCategory;

  bool get isValid => name.getOrNull != null && name.getOrNull != '' && id.isValid;

  bool get isRealEstate => name.getOrNull == 'Real Estate';

  bool get isAutomobileAuction => name.getOrNull == 'Automobile Auctions';

  factory DealCategory.blank({
    String? id,
    String? photo,
    String? name,
    String? slug,
    String? description,
    bool? active,
    double? charge,
    double? percentageIncrease,
    int? productsAssigned,
    Deal? deal,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) =>
      DealCategory(
        id: UniqueId.fromExternal(id),
        isActive: active ?? false,
        asset: MediaField.network(photo),
        name: BasicTextField(name),
        slug: BasicTextField(slug),
        description: BasicTextField(description),
        charge: NumField(charge),
        percentageIncrease: NumField(percentageIncrease),
        productsAssigned: NumField(productsAssigned ?? 0),
        deal: deal,
        createdAt: createdAt,
        updatedAt: updatedAt,
      );

  DealCategory merge(DealCategory? other) => copyWith(
        id: other?.id.value != null ? other!.id : id,
        asset: other?.asset.isNotNull((it) => it as MediaField, orElse: (_) => asset) ?? asset,
        isActive: other?.isActive ?? isActive,
        name: other?.name.isNotNull((it) => it as BasicTextField, orElse: (_) => name) ?? name,
        slug: other?.slug.isNotNull((it) => it as BasicTextField, orElse: (_) => slug) ?? slug,
        description: other?.description.isNotNull((it) => it as BasicTextField, orElse: (_) => description) ?? description,
        charge: other?.charge.isNotNull((it) => it as NumField<double?>, orElse: (_) => charge) ?? charge,
        percentageIncrease:
            other?.percentageIncrease.isNotNull((it) => it as NumField<double?>, orElse: (_) => percentageIncrease) ?? percentageIncrease,
        productsAssigned:
            other?.productsAssigned.isNotNull((it) => it as NumField<int>, orElse: (_) => productsAssigned) ?? productsAssigned,
        deal: deal,
        createdAt: other?.createdAt ?? createdAt,
        updatedAt: other?.updatedAt ?? updatedAt,
      );
}
