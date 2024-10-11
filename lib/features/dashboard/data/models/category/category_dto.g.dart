// GENERATED CODE - DO NOT MODIFY BY HAND

part of category_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoryDTO _$$_CategoryDTOFromJson(Map<String, dynamic> json) =>
    _$_CategoryDTO(
      meta: json['_meta'] == null
          ? null
          : MetaDTO.fromJson(json['_meta'] as Map<String, dynamic>),
      data: CategoryDTOData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CategoryDTOToJson(_$_CategoryDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('_meta', instance.meta?.toJson());
  val['data'] = instance.data.toJson();
  return val;
}

_$_CategoryDTOData _$$_CategoryDTODataFromJson(Map<String, dynamic> json) =>
    _$_CategoryDTOData(
      productsAssigned:
          const IntegerSerializer().fromJson(json['productsAssigned']),
      percentageIncrease:
          const DoubleSerializer().fromJson(json['percentageIncrease']),
      charge: const DoubleSerializer().fromJson(json['charge']),
      active: const BooleanSerializer().fromJson(json['active']),
      id: json['_id'] as String?,
      image: json['image'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      slug: json['slug'] as String?,
      deal: json['deal'] == null
          ? null
          : DealDTOData.fromJson(json['deal'] as Map<String, dynamic>),
      createdAt:
          const TimestampConverter().fromJson(json['createdAt'] as String?),
      updatedAt:
          const TimestampConverter().fromJson(json['updatedAt'] as String?),
    );

Map<String, dynamic> _$$_CategoryDTODataToJson(_$_CategoryDTOData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('productsAssigned',
      const IntegerSerializer().toJson(instance.productsAssigned));
  writeNotNull('percentageIncrease',
      const DoubleSerializer().toJson(instance.percentageIncrease));
  writeNotNull('charge', const DoubleSerializer().toJson(instance.charge));
  writeNotNull('active', const BooleanSerializer().toJson(instance.active));
  writeNotNull('_id', instance.id);
  writeNotNull('image', instance.image);
  writeNotNull('name', instance.name);
  writeNotNull('description', instance.description);
  writeNotNull('slug', instance.slug);
  writeNotNull('deal', instance.deal?.toJson());
  writeNotNull(
      'createdAt', const TimestampConverter().toJson(instance.createdAt));
  writeNotNull(
      'updatedAt', const TimestampConverter().toJson(instance.updatedAt));
  return val;
}

_$_CategoryListDTO _$$_CategoryListDTOFromJson(Map<String, dynamic> json) =>
    _$_CategoryListDTO(
      meta: json['_meta'] == null
          ? null
          : MetaDTO.fromJson(json['_meta'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => CategoryDTOData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_CategoryListDTOToJson(_$_CategoryListDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('_meta', instance.meta?.toJson());
  val['data'] = instance.data.map((e) => e.toJson()).toList();
  return val;
}
