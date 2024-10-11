// GENERATED CODE - DO NOT MODIFY BY HAND

part of wishlist_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WishDTO _$$_WishDTOFromJson(Map<String, dynamic> json) => _$_WishDTO(
      meta: json['_meta'] == null
          ? null
          : MetaDTO.fromJson(json['_meta'] as Map<String, dynamic>),
      data: _WishDTOData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_WishDTOToJson(_$_WishDTO instance) {
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

_$__WishDTOData _$$__WishDTODataFromJson(Map<String, dynamic> json) =>
    _$__WishDTOData(
      id: json['_id'] as String?,
      active: const BooleanSerializer().fromJson(json['active']),
      deal: json['deal'] == null
          ? null
          : DealDTOData.fromJson(json['deal'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : UserDTO.fromJson(json['user'] as Map<String, dynamic>),
      createdAt:
          const TimestampConverter().fromJson(json['createdAt'] as String?),
      updatedAt:
          const TimestampConverter().fromJson(json['updatedAt'] as String?),
    );

Map<String, dynamic> _$$__WishDTODataToJson(_$__WishDTOData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('_id', instance.id);
  writeNotNull('active', const BooleanSerializer().toJson(instance.active));
  writeNotNull('deal', instance.deal?.toJson());
  writeNotNull('user', instance.user?.toJson());
  writeNotNull(
      'createdAt', const TimestampConverter().toJson(instance.createdAt));
  writeNotNull(
      'updatedAt', const TimestampConverter().toJson(instance.updatedAt));
  return val;
}

_$_WishListDTO _$$_WishListDTOFromJson(Map<String, dynamic> json) =>
    _$_WishListDTO(
      meta: json['_meta'] == null
          ? null
          : MetaDTO.fromJson(json['_meta'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => _WishDTOData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_WishListDTOToJson(_$_WishListDTO instance) {
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
