import 'package:auctionvillage/core/data/response/index.dart';

mixin BaseException implements Exception {
  String get message;
}

mixin _BaseResponse implements BaseException {
  bool? get status;
  String? get details;

  @override
  String get message;
}

mixin Response implements _BaseResponse {
  // bool get show;
  // String? get uuid;
}

abstract class Failure with _FailureMixin implements Response {
  static const int UNAUTHENTICATED = 401;
  static const int INCOMPLETE_PROFILE = 41101;
  static const int UNVERIFIED_PHONE = 4031;

  int? get code;
  bool get show;
  Exception? get exception;
}

abstract class Success implements Response {
  bool get pop;
}

abstract class Info implements Response {
  bool get pop;
}

mixin _FailureMixin {
  // String? get error;
  ServerFieldErrors? get errors;
}

class UnExpectedFailure implements Failure {
  @override
  final int? code;

  @override
  final String? details;

  @override
  final bool show;

  @override
  final String message;

  @override
  final bool? status;

  UnExpectedFailure({
    required this.message,
    this.status,
    this.show = true,
    this.code,
    this.details,
  });

  @override
  ServerFieldErrors? get errors => null;

  @override
  Exception get exception => Exception(message);
}
