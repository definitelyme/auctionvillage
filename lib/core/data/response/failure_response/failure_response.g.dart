// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'failure_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FailureResponse _$$_FailureResponseFromJson(Map<String, dynamic> json) =>
    _$_FailureResponse(
      code: json['code'] as int?,
      status: json['status'] as bool? ?? false,
      errors: json['error'] == null
          ? null
          : ServerFieldErrors.fromJson(json['error'] as Map<String, dynamic>),
      message: json['message'] as String? ?? '',
    );

Map<String, dynamic> _$$_FailureResponseToJson(_$_FailureResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', instance.code);
  writeNotNull('status', instance.status);
  writeNotNull('error', instance.errors?.toJson());
  val['message'] = instance.message;
  return val;
}
