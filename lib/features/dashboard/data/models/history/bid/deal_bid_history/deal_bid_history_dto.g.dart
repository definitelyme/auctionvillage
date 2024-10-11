// GENERATED CODE - DO NOT MODIFY BY HAND

part of deal_bid_history_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DealBidHistoryDTO _$$_DealBidHistoryDTOFromJson(Map<String, dynamic> json) =>
    _$_DealBidHistoryDTO(
      users: (json['users'] as List<dynamic>?)
              ?.map((e) => UserDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      meta: json['_meta'] == null
          ? null
          : MetaDTO.fromJson(json['_meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DealBidHistoryDTOToJson(
    _$_DealBidHistoryDTO instance) {
  final val = <String, dynamic>{
    'users': instance.users.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('_meta', instance.meta?.toJson());
  return val;
}
