library product_brand_model.entity.dart;

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_brand_model.entity.freezed.dart';

@freezed
@immutable
class ProductBrandModel extends BaseEntity with _$ProductBrandModel {
  const ProductBrandModel._();

  const factory ProductBrandModel({
    required UniqueId<String?> id,
    required UniqueId<String?> brandId,
    @Default(false) bool isActive,
    required BasicTextField name,
    required BasicTextField description,
    required BasicTextField slug,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _ProductBrandModel;

  factory ProductBrandModel.blank({
    String? id,
    String? brandId,
    bool? active,
    String? name,
    String? description,
    String? slug,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) =>
      ProductBrandModel(
        id: UniqueId.fromExternal(id),
        brandId: UniqueId.fromExternal(brandId),
        isActive: active ?? false,
        name: BasicTextField(name),
        description: BasicTextField(description),
        slug: BasicTextField(slug),
        createdAt: createdAt,
        updatedAt: updatedAt,
      );
}
