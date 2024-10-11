import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/manager/serializer/serializers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'brand_dto.g.dart';
part 'brand_dto.freezed.dart';

@freezed
class BrandDTO with _$BrandDTO {
  const BrandDTO._();

  factory BrandDTO({
    @BooleanSerializer() bool? active,
    @JsonKey(name: '_id') String? id,
    @TimestampConverter() DateTime? createdBy,
    String? name,
    String? description,
    String? slug,
    @TimestampConverter() DateTime? createdAt,
    @TimestampConverter() DateTime? updatedAt,
  }) = _BrandDTO;

  factory BrandDTO.fromJson(Map<String, dynamic> json) => _$BrandDTOFromJson(json);

  /// Maps the Data Transfer Object to a ProductBrandModel Object.
  ProductBrand get domain => ProductBrand.blank(
        id: id,
        active: active,
        name: name,
        description: description,
        slug: slug,
        createdAt: createdAt ?? createdBy,
        updatedAt: updatedAt,
      );
}
