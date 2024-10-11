library brand_information_dto.dart;

import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/manager/serializer/serializers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// import '../brand/brand_dto.dart';
// import '../brand_model/brand_model_dto.dart';

part 'brand_information_dto.g.dart';
part 'brand_information_dto.freezed.dart';

@freezed
class BrandInformationDTO with _$BrandInformationDTO {
  const BrandInformationDTO._();

  factory BrandInformationDTO({
    String? brand,
    String? brandModel,
    @JsonKey(toJson: ItemConditionSerializer.toJsonString) @ItemConditionSerializer() ItemCondition? condition,
    @JsonKey(toJson: BooleanSerializer.toJsonString) @BooleanSerializer() bool? repairHistory,
    String? warranty,
    String? description,
  }) = _BrandInformationDTO;

  /// Maps BrandInformation to a Data Transfer Object.
  factory BrandInformationDTO.fromDomain(BrandInformation? instance) => BrandInformationDTO(
        brand: instance?.brand.getOrNull,
        brandModel: instance?.brandModel.getOrNull,
        repairHistory: instance?.hasRepairHistory,
        warranty: instance?.warranty.getOrNull,
        condition: instance?.condition,
        description: instance?.description.getOrNull,
      );

  factory BrandInformationDTO.fromJson(Map<String, dynamic> json) => _$BrandInformationDTOFromJson(json);

  /// Maps the Data Transfer Object to a BrandInformation Object.
  BrandInformation get domain => BrandInformation.blank(
        brand: brand,
        brandModel: brandModel,
        condition: condition,
        description: description,
        repairHistory: repairHistory,
        warranty: warranty,
      );
}
