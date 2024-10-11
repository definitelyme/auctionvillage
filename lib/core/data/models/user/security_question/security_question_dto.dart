// ignore_for_file: unused_element

library security_question_dto.dart;

import 'package:auctionvillage/core/data/models/index.dart';
import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/manager/serializer/serializers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'security_question_dto.g.dart';
part 'security_question_dto.freezed.dart';

@Freezed(when: FreezedWhenOptions.none, map: FreezedMapOptions.none)
class _SecurityQuestionDTOData with _$_SecurityQuestionDTOData {
  const _SecurityQuestionDTOData._();

  const factory _SecurityQuestionDTOData({
    @JsonKey(name: '_id') @StringSerializer() String? id,
    @StringSerializer() String? userId,
    @StringSerializer() String? question,
    @StringSerializer() String? answer,
    @TimestampConverter() DateTime? createdAt,
    @TimestampConverter() DateTime? updatedAt,
  }) = __SecurityQuestionDTOData;

  /// Maps SecurityQuestion to a Data Transfer Object.
  factory _SecurityQuestionDTOData.fromDomain(SecurityQuestion instance) =>
      _SecurityQuestionDTOData(question: instance.question.getOrNull, answer: instance.answer.getOrNull);

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory _SecurityQuestionDTOData.fromJson(Map<String, dynamic> json) => _$_SecurityQuestionDTODataFromJson(json);

  /// Maps the Data Transfer Object to a SecurityQuestion Object.
  SecurityQuestion get domain => SecurityQuestion.blank(
        id: id,
        userId: userId,
        question: question,
        answer: answer,
        createdAt: createdAt,
        updatedAt: updatedAt,
      );
}

SecurityQuestionDTO deserializeSecurityQuestionDTO(Map<String, dynamic> json) => SecurityQuestionDTO.fromJson(json);
Map<String, dynamic> serializeSecurityQuestionDTO(SecurityQuestionDTO object) => object.toJson();

@Freezed(when: FreezedWhenOptions.none, map: FreezedMapOptions.none)
class SecurityQuestionDTO with _$SecurityQuestionDTO {
  const factory SecurityQuestionDTO({
    @JsonKey(name: '_meta') MetaDTO? meta,
    required _SecurityQuestionDTOData data,
  }) = _SecurityQuestionDTO;

  const SecurityQuestionDTO._();

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory SecurityQuestionDTO.fromJson(Map<String, dynamic> json) => _$SecurityQuestionDTOFromJson(json);

  /// Maps the Data Transfer Object to a SecurityQuestion Object.
  SecurityQuestion get domain => data.domain;
}

SecurityQuestionListDTO deserializeSecurityQuestionListDTO(Map<String, dynamic> json) => SecurityQuestionListDTO.fromJson(json);
Map<String, dynamic> serializeSecurityQuestionListDTO(SecurityQuestionListDTO object) => object.toJson();

@Freezed(when: FreezedWhenOptions.none, map: FreezedMapOptions.none)
class SecurityQuestionListDTO with _$SecurityQuestionListDTO {
  const factory SecurityQuestionListDTO({
    @Default([]) Iterable<_SecurityQuestionDTOData> data,
    @JsonKey(name: '_meta') MetaDTO? meta,
  }) = _SecurityQuestionListDTO;

  const SecurityQuestionListDTO._();

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory SecurityQuestionListDTO.fromJson(Map<String, dynamic> json) => _$SecurityQuestionListDTOFromJson(json);

  /// Maps the Data Transfer Object to a KtList<SecurityQuestion> Object.
  KtList<SecurityQuestion> get domain => KtList.from(data.map((e) => e.domain));
}
