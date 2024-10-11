library brand_model_dto.dart;

import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/manager/serializer/serializers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'brand_model_dto.g.dart';
part 'brand_model_dto.freezed.dart';

@freezed
class BrandModelDTO with _$BrandModelDTO {
  const BrandModelDTO._();

  factory BrandModelDTO({
    @BooleanSerializer() bool? active,
    @JsonKey(name: '_id') String? id,
    @TimestampConverter() DateTime? createdBy,
    String? name,
    String? description,
    String? brand,
    String? slug,
    @TimestampConverter() DateTime? createdAt,
    @TimestampConverter() DateTime? updatedAt,
  }) = _BrandModelDTO;

  factory BrandModelDTO.fromJson(Map<String, dynamic> json) =>
      _$BrandModelDTOFromJson(json);

  /// Maps the Data Transfer Object to a ProductBrandModel Object.
  ProductBrandModel get domain => ProductBrandModel.blank(
        id: id,
        active: active,
        name: name,
        description: description,
        slug: slug,
        createdAt: createdAt ?? createdBy,
        updatedAt: updatedAt,
      );
}
