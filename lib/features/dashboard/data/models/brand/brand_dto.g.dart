// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brand_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BrandDTO _$$_BrandDTOFromJson(Map<String, dynamic> json) => _$_BrandDTO(
      active: const BooleanSerializer().fromJson(json['active']),
      id: json['_id'] as String?,
      createdBy:
          const TimestampConverter().fromJson(json['createdBy'] as String?),
      name: json['name'] as String?,
      description: json['description'] as String?,
      slug: json['slug'] as String?,
      createdAt:
          const TimestampConverter().fromJson(json['createdAt'] as String?),
      updatedAt:
          const TimestampConverter().fromJson(json['updatedAt'] as String?),
    );

Map<String, dynamic> _$$_BrandDTOToJson(_$_BrandDTO instance) {
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
  writeNotNull('slug', instance.slug);
  writeNotNull(
      'createdAt', const TimestampConverter().toJson(instance.createdAt));
  writeNotNull(
      'updatedAt', const TimestampConverter().toJson(instance.updatedAt));
  return val;
}
