// GENERATED CODE - DO NOT MODIFY BY HAND

part of rating_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RatingDTO _$$_RatingDTOFromJson(Map<String, dynamic> json) => _$_RatingDTO(
      meta: json['_meta'] == null
          ? null
          : MetaDTO.fromJson(json['_meta'] as Map<String, dynamic>),
      data: _RatingDTOData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RatingDTOToJson(_$_RatingDTO instance) {
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

_$__RatingDTOData _$$__RatingDTODataFromJson(Map<String, dynamic> json) =>
    _$__RatingDTOData(
      reviews: (json['value'] as List<dynamic>?)
              ?.map((e) => ReviewDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      average: json['average'] == null
          ? null
          : ReviewDTO.fromJson(json['average'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$__RatingDTODataToJson(_$__RatingDTOData instance) {
  final val = <String, dynamic>{
    'value': instance.reviews.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('average', instance.average?.toJson());
  return val;
}
