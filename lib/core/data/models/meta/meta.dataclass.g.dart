// GENERATED CODE - DO NOT MODIFY BY HAND

part of meta.dataclass.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MetaDTO _$$_MetaDTOFromJson(Map<String, dynamic> json) => _$_MetaDTO(
      statusCode: json['statusCode'] as int?,
      status: json['status'] as bool?,
      message: json['message'] as String?,
      pagination: json['pagination'] == null
          ? null
          : PaginationDTO.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MetaDTOToJson(_$_MetaDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('statusCode', instance.statusCode);
  writeNotNull('status', instance.status);
  writeNotNull('message', instance.message);
  writeNotNull('pagination', instance.pagination?.toJson());
  return val;
}
