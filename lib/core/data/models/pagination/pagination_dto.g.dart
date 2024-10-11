// GENERATED CODE - DO NOT MODIFY BY HAND

part of meta_field;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaginationDTO _$$_PaginationDTOFromJson(Map<String, dynamic> json) =>
    _$_PaginationDTO(
      currentPage: json['current'] as int?,
      next: json['next'] as int?,
      perPage: json['per_page'] as int?,
      total: json['total_count'] as int?,
    );

Map<String, dynamic> _$$_PaginationDTOToJson(_$_PaginationDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('current', instance.currentPage);
  writeNotNull('next', instance.next);
  writeNotNull('per_page', instance.perPage);
  writeNotNull('total_count', instance.total);
  return val;
}
