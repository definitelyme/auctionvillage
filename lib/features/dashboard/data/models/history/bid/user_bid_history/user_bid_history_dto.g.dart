// GENERATED CODE - DO NOT MODIFY BY HAND

part of user_bid_history_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserBidHistoryDTO _$$_UserBidHistoryDTOFromJson(Map<String, dynamic> json) =>
    _$_UserBidHistoryDTO(
      meta: json['_meta'] == null
          ? null
          : MetaDTO.fromJson(json['_meta'] as Map<String, dynamic>),
      data:
          _UserBidHistoryDTOData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserBidHistoryDTOToJson(
    _$_UserBidHistoryDTO instance) {
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

_$__UserBidHistoryDTOData _$$__UserBidHistoryDTODataFromJson(
        Map<String, dynamic> json) =>
    _$__UserBidHistoryDTOData(
      id: json['_id'] as String?,
      totalAuctionsParticipated:
          (json['totalAuctionsParticipated'] as num?)?.toDouble(),
      totalWinningBid: (json['totalWinningBid'] as num?)?.toDouble(),
      totalAmountSpent: (json['totalAmountSpent'] as num?)?.toDouble(),
      dealHistory: (json['dealHistory'] as List<dynamic>?)
              ?.map((e) => DealDTOData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      amount: (json['amount'] as num?)?.toDouble(),
      deal: json['deal'] == null
          ? null
          : DealDTOData.fromJson(json['deal'] as Map<String, dynamic>),
      createdAt:
          const TimestampConverter().fromJson(json['createdAt'] as String?),
      updatedAt:
          const TimestampConverter().fromJson(json['updatedAt'] as String?),
    );

Map<String, dynamic> _$$__UserBidHistoryDTODataToJson(
    _$__UserBidHistoryDTOData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('_id', instance.id);
  writeNotNull('totalAuctionsParticipated', instance.totalAuctionsParticipated);
  writeNotNull('totalWinningBid', instance.totalWinningBid);
  writeNotNull('totalAmountSpent', instance.totalAmountSpent);
  val['dealHistory'] = instance.dealHistory.map((e) => e.toJson()).toList();
  writeNotNull('amount', instance.amount);
  writeNotNull('deal', instance.deal?.toJson());
  writeNotNull(
      'createdAt', const TimestampConverter().toJson(instance.createdAt));
  writeNotNull(
      'updatedAt', const TimestampConverter().toJson(instance.updatedAt));
  return val;
}

_$_UserBidHistoryListDTO _$$_UserBidHistoryListDTOFromJson(
        Map<String, dynamic> json) =>
    _$_UserBidHistoryListDTO(
      meta: json['_meta'] == null
          ? null
          : MetaDTO.fromJson(json['_meta'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>?)
              ?.map((e) =>
                  _UserBidHistoryDTOData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_UserBidHistoryListDTOToJson(
    _$_UserBidHistoryListDTO instance) {
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
