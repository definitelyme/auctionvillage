// GENERATED CODE - DO NOT MODIFY BY HAND

part of debit_card_dto.dataclass.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DebitCardDTO _$$_DebitCardDTOFromJson(Map<String, dynamic> json) =>
    _$_DebitCardDTO(
      meta: json['_meta'] == null
          ? null
          : MetaDTO.fromJson(json['_meta'] as Map<String, dynamic>),
      data: DebitCardDTOData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DebitCardDTOToJson(_$_DebitCardDTO instance) {
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

_$_DebitCardDTOData _$$_DebitCardDTODataFromJson(Map<String, dynamic> json) =>
    _$_DebitCardDTOData(
      uid: json['_id'] as String?,
      cardAdded: const BooleanSerializer().fromJson(json['cardAdded']),
      pinAdded: const BooleanSerializer().fromJson(json['pinAdded']),
      email: json['email'] as String?,
      cardType: const DebitCardBrandSerializer()
          .fromJson(json['cardType'] as String?),
      cardNumber: json['card'] as String?,
      cvv: json['cvv'] as String?,
      expiry: json['expiry'] as String?,
      maskedCard: json['maskedCard'] as String?,
      createdAt:
          const TimestampConverter().fromJson(json['createdAt'] as String?),
      updatedAt:
          const TimestampConverter().fromJson(json['updatedAt'] as String?),
    );

Map<String, dynamic> _$$_DebitCardDTODataToJson(_$_DebitCardDTOData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('_id', instance.uid);
  writeNotNull(
      'cardAdded', const BooleanSerializer().toJson(instance.cardAdded));
  writeNotNull('pinAdded', const BooleanSerializer().toJson(instance.pinAdded));
  writeNotNull('email', instance.email);
  writeNotNull(
      'cardType', const DebitCardBrandSerializer().toJson(instance.cardType));
  writeNotNull('card', instance.cardNumber);
  writeNotNull('cvv', instance.cvv);
  writeNotNull('expiry', instance.expiry);
  writeNotNull('maskedCard', instance.maskedCard);
  writeNotNull(
      'createdAt', const TimestampConverter().toJson(instance.createdAt));
  writeNotNull(
      'updatedAt', const TimestampConverter().toJson(instance.updatedAt));
  return val;
}

_$_DebitCardListDTO _$$_DebitCardListDTOFromJson(Map<String, dynamic> json) =>
    _$_DebitCardListDTO(
      meta: json['_meta'] == null
          ? null
          : MetaDTO.fromJson(json['_meta'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => DebitCardDTOData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_DebitCardListDTOToJson(_$_DebitCardListDTO instance) {
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
