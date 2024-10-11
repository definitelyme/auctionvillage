import 'package:json_annotation/json_annotation.dart';

class TimestampConverter implements JsonConverter<DateTime?, String?> {
  const TimestampConverter();

  @override
  DateTime? fromJson(String? value) => value == null || value.isEmpty ? null : DateTime.tryParse(value)?.toLocal();

  @override
  String? toJson(DateTime? instance) => instance?.toIso8601String();
}
