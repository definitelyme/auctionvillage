library any_response_serializer.dart;

import 'package:auctionvillage/core/data/response/index.dart';
import 'package:json_annotation/json_annotation.dart';

class AnyResponseSerializer implements JsonConverter<AnyResponse, Map<String, dynamic>> {
  const AnyResponseSerializer();

  @override
  AnyResponse fromJson(Map<String, dynamic>? json) {
    if (json == null) return const ErrorResponse(messageTxt: 'Fatal: No response from server! Pls contact support.');

    if (!json.containsKey('status'))
      return ErrorResponse.fromJson(json);
    else if ((json.containsKey('status') && json['status'] is num)) {
      return ErrorResponse.fromJson(json);
    } else if ((json.containsKey('status') && json['status'] is String)) {
      switch (json['status']) {
        case 'success':
          return SuccessfulResponse.fromJson(json.map((key, value) => key == 'status' ? MapEntry(key, true) : MapEntry(key, value)));
        case 'error':
        case 'failure':
        default:
          return ErrorResponse.fromJson(json.map((key, value) => key == 'status' ? MapEntry(key, false) : MapEntry(key, value)));
      }
    } else {
      switch (json['status'] as bool) {
        case true:
          return SuccessfulResponse.fromJson(json);
        case false:
        default:
          return ErrorResponse.fromJson(json);
      }
    }
  }

  @override
  Map<String, dynamic> toJson(AnyResponse instance) => instance.toJson();
}
