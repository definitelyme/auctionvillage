import 'package:auctionvillage/core/data/response/index.dart';
import 'package:auctionvillage/core/domain/response/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure_response.g.dart';
part 'failure_response.freezed.dart';

@Freezed(when: FreezedWhenOptions.none, map: FreezedMapOptions.none)
class FailureResponse with _$FailureResponse implements Failure {
  static const String _kAborted = '';
  static const String _kInProgress = 'Please wait!';
  static const String _kNotFound = 'Resource was not found on this server!';

  @Implements<Failure>()
  const factory FailureResponse({
    int? code,
    @JsonKey(defaultValue: false) bool? status,
    @JsonKey(name: 'error') ServerFieldErrors? errors,
    @JsonKey(defaultValue: '') required String message,
    @JsonKey(ignore: true) String? details,
    @JsonKey(ignore: true) @Default(true) bool pop,
    @JsonKey(ignore: true) @Default(true) bool show,
  }) = _FailureResponse;

  const FailureResponse._();

  factory FailureResponse.aborted() => const FailureResponse(message: _kAborted);

  factory FailureResponse.inProgress() => const FailureResponse(message: _kInProgress);

  factory FailureResponse.alreadyExists(String message) => FailureResponse(message: message);

  factory FailureResponse.cancelled(String message) => FailureResponse(message: message);

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory FailureResponse.fromJson(Map<String, dynamic> json) => _$FailureResponseFromJson(json);

  factory FailureResponse.insufficientPermissions(String message) => FailureResponse(message: message);

  factory FailureResponse.invalidArguments(String message) => FailureResponse(message: message);

  factory FailureResponse.notFound() => const FailureResponse(message: _kNotFound);

  factory FailureResponse.unImplemented(String message) => FailureResponse(message: message);

  factory FailureResponse.timeout() => FailureResponse(message: const NetworkFailure.timeout().message, show: true);

  factory FailureResponse.unknown({String? message, int? code}) =>
      FailureResponse(message: message ?? 'Unknown error! Please contact support.', code: code);

  @override
  Exception? get exception => Exception(message);
}
