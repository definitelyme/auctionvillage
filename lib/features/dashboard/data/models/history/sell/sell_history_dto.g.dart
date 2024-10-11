// GENERATED CODE - DO NOT MODIFY BY HAND

part of sell_history_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SellHistoryDTO _$$_SellHistoryDTOFromJson(Map<String, dynamic> json) =>
    _$_SellHistoryDTO(
      meta: json['_meta'] == null
          ? null
          : MetaDTO.fromJson(json['_meta'] as Map<String, dynamic>),
      data: _SellHistoryDTOData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SellHistoryDTOToJson(_$_SellHistoryDTO instance) {
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

_$__SellHistoryDTOData _$$__SellHistoryDTODataFromJson(
        Map<String, dynamic> json) =>
    _$__SellHistoryDTOData(
      totalProducts: (json['totalProducts'] as num?)?.toDouble(),
      totalSold: (json['totalSold'] as num?)?.toDouble(),
      revenue: (json['revenue'] as num?)?.toDouble(),
      deals: (json['deals'] as List<dynamic>?)
              ?.map((e) => DealDTOData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$__SellHistoryDTODataToJson(
    _$__SellHistoryDTOData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('totalProducts', instance.totalProducts);
  writeNotNull('totalSold', instance.totalSold);
  writeNotNull('revenue', instance.revenue);
  val['deals'] = instance.deals.map((e) => e.toJson()).toList();
  return val;
}
