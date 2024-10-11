// GENERATED CODE - DO NOT MODIFY BY HAND

part of brand_information_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BrandInformationDTO _$$_BrandInformationDTOFromJson(
        Map<String, dynamic> json) =>
    _$_BrandInformationDTO(
      brand: json['brand'] as String?,
      brandModel: json['brandModel'] as String?,
      condition: const ItemConditionSerializer()
          .fromJson(json['condition'] as String?),
      repairHistory: const BooleanSerializer().fromJson(json['repairHistory']),
      warranty: json['warranty'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$_BrandInformationDTOToJson(
    _$_BrandInformationDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('brand', instance.brand);
  writeNotNull('brandModel', instance.brandModel);
  writeNotNull(
      'condition', ItemConditionSerializer.toJsonString(instance.condition));
  writeNotNull(
      'repairHistory', BooleanSerializer.toJsonString(instance.repairHistory));
  writeNotNull('warranty', instance.warranty);
  writeNotNull('description', instance.description);
  return val;
}
