library product_brand.entity.dart;

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_brand.entity.freezed.dart';

@freezed
@immutable
class ProductBrand extends BaseEntity with _$ProductBrand {
  const ProductBrand._();

  const factory ProductBrand({
    required UniqueId<String?> id,
    @Default(false) bool isActive,
    required BasicTextField name,
    required BasicTextField description,
    required BasicTextField slug,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _ProductBrand;

  factory ProductBrand.blank({
    String? id,
    bool? active,
    String? name,
    String? description,
    String? slug,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) =>
      ProductBrand(
        id: UniqueId.fromExternal(id),
        isActive: active ?? false,
        name: BasicTextField(name),
        description: BasicTextField(description),
        slug: BasicTextField(slug),
        createdAt: createdAt,
        updatedAt: updatedAt,
      );
}
