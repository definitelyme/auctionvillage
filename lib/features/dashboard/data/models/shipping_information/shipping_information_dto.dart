library shipping_information_dto.dart;

import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/manager/serializer/serializers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shipping_information_dto.g.dart';
part 'shipping_information_dto.freezed.dart';

@freezed
class ShippingInformationDTO with _$ShippingInformationDTO {
  const ShippingInformationDTO._();

  factory ShippingInformationDTO({
    String? deliveryPeriod,
    @JsonKey(toJson: BooleanSerializer.toJsonString) @BooleanSerializer() bool? pickUpAvailable,
    String? description,
    List<String>? regions,
  }) = _ShippingInformationDTO;

  /// Maps ShippingInformation to a Data Transfer Object.
  factory ShippingInformationDTO.fromDomain(ShippingInformation? instance) => ShippingInformationDTO(
        pickUpAvailable: instance?.isPickup,
        deliveryPeriod: instance?.deliveryPeriod.getOrNull,
        description: instance?.description.getOrNull,
        regions: instance?.regions.getOrNull?.asList(),
      );

  factory ShippingInformationDTO.fromJson(Map<String, dynamic> json) => _$ShippingInformationDTOFromJson(json);

  /// Maps the Data Transfer Object to a ShippingInformation Object.
  ShippingInformation get domain => ShippingInformation.blank(
        description: description,
        deliveryPeriod: deliveryPeriod,
        isPickup: pickUpAvailable,
        regions: regions,
      );
}
