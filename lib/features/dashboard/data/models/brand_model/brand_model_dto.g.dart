// GENERATED CODE - DO NOT MODIFY BY HAND

part of brand_model_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BrandModelDTO _$$_BrandModelDTOFromJson(Map<String, dynamic> json) =>
    _$_BrandModelDTO(
      active: const BooleanSerializer().fromJson(json['active']),
      id: json['_id'] as String?,
      createdBy:
          const TimestampConverter().fromJson(json['createdBy'] as String?),
      name: json['name'] as String?,
      description: json['description'] as String?,
      brand: json['brand'] as String?,
      slug: json['slug'] as String?,
      createdAt:
          const TimestampConverter().fromJson(json['createdAt'] as String?),
      updatedAt:
          const TimestampConverter().fromJson(json['updatedAt'] as String?),
    );

Map<String, dynamic> _$$_BrandModelDTOToJson(_$_BrandModelDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('active', const BooleanSerializer().toJson(instance.active));
  writeNotNull('_id', instance.id);
  writeNotNull(
      'createdBy', const TimestampConverter().toJson(instance.createdBy));
  writeNotNull('name', instance.name);
  writeNotNull('description', instance.description);
  writeNotNull('brand', instance.brand);
  writeNotNull('slug', instance.slug);
  writeNotNull(
      'createdAt', const TimestampConverter().toJson(instance.createdAt));
  writeNotNull(
      'updatedAt', const TimestampConverter().toJson(instance.updatedAt));
  return val;
}
