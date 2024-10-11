// GENERATED CODE - DO NOT MODIFY BY HAND

part of deal_plan.dataclass.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DealPlanDTO _$$_DealPlanDTOFromJson(Map<String, dynamic> json) =>
    _$_DealPlanDTO(
      meta: json['_meta'] == null
          ? null
          : MetaDTO.fromJson(json['_meta'] as Map<String, dynamic>),
      data: DealPlanDTOData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DealPlanDTOToJson(_$_DealPlanDTO instance) {
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

_$_DealPlanDTOData _$$_DealPlanDTODataFromJson(Map<String, dynamic> json) =>
    _$_DealPlanDTOData(
      id: const StringSerializer().fromJson(json['_id']),
      name: const DealPlanTypeSerializer().fromJson(json['name'] as String?),
      amount: const DoubleSerializer().fromJson(json['amount']),
      priority: const IntegerSerializer().fromJson(json['priority']),
      features: (json['features'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      country: const StringSerializer().fromJson(json['country']),
      createdAt:
          const TimestampConverter().fromJson(json['createdAt'] as String?),
      updatedAt:
          const TimestampConverter().fromJson(json['updatedAt'] as String?),
    );

Map<String, dynamic> _$$_DealPlanDTODataToJson(_$_DealPlanDTOData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('_id', const StringSerializer().toJson(instance.id));
  writeNotNull('name', const DealPlanTypeSerializer().toJson(instance.name));
  writeNotNull('amount', const DoubleSerializer().toJson(instance.amount));
  writeNotNull('priority', const IntegerSerializer().toJson(instance.priority));
  val['features'] = instance.features;
  writeNotNull('country', const StringSerializer().toJson(instance.country));
  writeNotNull(
      'createdAt', const TimestampConverter().toJson(instance.createdAt));
  writeNotNull(
      'updatedAt', const TimestampConverter().toJson(instance.updatedAt));
  return val;
}

_$_DealPlanListDTO _$$_DealPlanListDTOFromJson(Map<String, dynamic> json) =>
    _$_DealPlanListDTO(
      meta: json['_meta'] == null
          ? null
          : MetaDTO.fromJson(json['_meta'] as Map<String, dynamic>),
      data: json['data'] == null
          ? const []
          : _deserializeDealPlanList(json['data']),
    );

Map<String, dynamic> _$$_DealPlanListDTOToJson(_$_DealPlanListDTO instance) {
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
