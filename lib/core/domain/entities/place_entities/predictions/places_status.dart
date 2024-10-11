library places_status.dart;

import 'package:kt_dart/kt.dart';
import 'package:json_annotation/json_annotation.dart';

enum PlaceStatus {
  OK('OK'),
  ZERO_RESULTS('ZERO_RESULTS'),
  INVALID_REQUEST('INVALID_REQUEST'),
  OVER_QUERY_LIMIT('OVER_QUERY_LIMIT'),
  REQUEST_DENIED('REQUEST_DENIED'),
  UNKNOWN_ERROR('UNKNOWN_ERROR');

  final String name;

  const PlaceStatus(this.name);

  static Set<PlaceStatus> get items => values.toSet();

  static KtList<PlaceStatus> get names => values.toList().toImmutableList();

  static PlaceStatus valueOf(String name) {
    switch (name) {
      case 'OK':
        return OK;
      case 'ZERO_RESULTS':
        return ZERO_RESULTS;
      case 'INVALID_REQUEST':
        return INVALID_REQUEST;
      case 'OVER_QUERY_LIMIT':
        return OVER_QUERY_LIMIT;
      case 'REQUEST_DENIED':
        return REQUEST_DENIED;
      case 'UNKNOWN_ERROR':
      default:
        return UNKNOWN_ERROR;
    }
  }
}

class PlaceStatusSerializer implements JsonConverter<PlaceStatus, String?> {
  const PlaceStatusSerializer();

  @override
  PlaceStatus fromJson(String? value) => PlaceStatus.valueOf(value ?? '');

  @override
  String? toJson(PlaceStatus instance) => instance.name;
}

extension PlaceStatusX on PlaceStatus {
  T maybeWhen<T>({
    T Function()? ok,
    T Function()? zeroResults,
    T Function()? invalidRequest,
    T Function()? overQueryLimit,
    T Function()? requestDenied,
    T Function()? unknownError,
    required T Function() orElse,
  }) {
    switch (this) {
      case PlaceStatus.OK:
        return ok?.call() ?? orElse.call();
      case PlaceStatus.ZERO_RESULTS:
        return zeroResults?.call() ?? orElse.call();
      case PlaceStatus.INVALID_REQUEST:
        return invalidRequest?.call() ?? orElse.call();
      case PlaceStatus.OVER_QUERY_LIMIT:
        return overQueryLimit?.call() ?? orElse.call();
      case PlaceStatus.REQUEST_DENIED:
        return requestDenied?.call() ?? orElse.call();
      case PlaceStatus.UNKNOWN_ERROR:
        return unknownError?.call() ?? orElse.call();
    }
  }
}
