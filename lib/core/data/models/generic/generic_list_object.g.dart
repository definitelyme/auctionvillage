// GENERATED CODE - DO NOT MODIFY BY HAND

part of generic_list_object.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenericListDTO<T> _$GenericListDTOFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    GenericListDTO<T>(
      data: (json['data'] as List<dynamic>).map(fromJsonT).toList(),
      meta: json['_meta'] == null
          ? null
          : MetaDTO.fromJson(json['_meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GenericListDTOToJson<T>(
  GenericListDTO<T> instance,
  Object? Function(T value) toJsonT,
) {
  final val = <String, dynamic>{
    'data': instance.data.map(toJsonT).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('_meta', instance.meta?.toJson());
  return val;
}
