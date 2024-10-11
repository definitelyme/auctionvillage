// GENERATED CODE - DO NOT MODIFY BY HAND

part of shipping_information_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShippingInformationDTO _$$_ShippingInformationDTOFromJson(
        Map<String, dynamic> json) =>
    _$_ShippingInformationDTO(
      deliveryPeriod: json['deliveryPeriod'] as String?,
      pickUpAvailable:
          const BooleanSerializer().fromJson(json['pickUpAvailable']),
      description: json['description'] as String?,
      regions:
          (json['regions'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_ShippingInformationDTOToJson(
    _$_ShippingInformationDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('deliveryPeriod', instance.deliveryPeriod);
  writeNotNull('pickUpAvailable',
      BooleanSerializer.toJsonString(instance.pickUpAvailable));
  writeNotNull('description', instance.description);
  writeNotNull('regions', instance.regions);
  return val;
}
