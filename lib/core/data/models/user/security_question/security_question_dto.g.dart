// GENERATED CODE - DO NOT MODIFY BY HAND

part of security_question_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$__SecurityQuestionDTOData _$$__SecurityQuestionDTODataFromJson(
        Map<String, dynamic> json) =>
    _$__SecurityQuestionDTOData(
      id: const StringSerializer().fromJson(json['_id']),
      userId: const StringSerializer().fromJson(json['userId']),
      question: const StringSerializer().fromJson(json['question']),
      answer: const StringSerializer().fromJson(json['answer']),
      createdAt:
          const TimestampConverter().fromJson(json['createdAt'] as String?),
      updatedAt:
          const TimestampConverter().fromJson(json['updatedAt'] as String?),
    );

Map<String, dynamic> _$$__SecurityQuestionDTODataToJson(
    _$__SecurityQuestionDTOData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('_id', const StringSerializer().toJson(instance.id));
  writeNotNull('userId', const StringSerializer().toJson(instance.userId));
  writeNotNull('question', const StringSerializer().toJson(instance.question));
  writeNotNull('answer', const StringSerializer().toJson(instance.answer));
  writeNotNull(
      'createdAt', const TimestampConverter().toJson(instance.createdAt));
  writeNotNull(
      'updatedAt', const TimestampConverter().toJson(instance.updatedAt));
  return val;
}

_$_SecurityQuestionDTO _$$_SecurityQuestionDTOFromJson(
        Map<String, dynamic> json) =>
    _$_SecurityQuestionDTO(
      meta: json['_meta'] == null
          ? null
          : MetaDTO.fromJson(json['_meta'] as Map<String, dynamic>),
      data: _SecurityQuestionDTOData.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SecurityQuestionDTOToJson(
    _$_SecurityQuestionDTO instance) {
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

_$_SecurityQuestionListDTO _$$_SecurityQuestionListDTOFromJson(
        Map<String, dynamic> json) =>
    _$_SecurityQuestionListDTO(
      data: (json['data'] as List<dynamic>?)?.map((e) =>
              _SecurityQuestionDTOData.fromJson(e as Map<String, dynamic>)) ??
          const [],
      meta: json['_meta'] == null
          ? null
          : MetaDTO.fromJson(json['_meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SecurityQuestionListDTOToJson(
    _$_SecurityQuestionListDTO instance) {
  final val = <String, dynamic>{
    'data': instance.data.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('_meta', instance.meta?.toJson());
  return val;
}
