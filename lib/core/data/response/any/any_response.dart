library any_response.dart;

import 'package:auctionvillage/core/data/response/index.dart';
import 'package:auctionvillage/core/domain/response/response.dart';
import 'package:auctionvillage/utils/extensions/dynamic_extension.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'any_response.g.dart';
part 'any_response.freezed.dart';

@immutable
@Freezed(unionKey: 'status', unionValueCase: FreezedUnionCase.snake, fallbackUnion: 'error')
class AnyResponse with _$AnyResponse, Response {
  static const String _kdefaultMsg = '';

  const AnyResponse._();

  @Implements<Failure>()
  const factory AnyResponse.error({
    @JsonKey(name: 'statusCode') int? code,
    bool? status,
    @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
    @JsonKey(ignore: true) String? details,
    ServerFieldErrors? errors,
    @JsonKey(ignore: true) @Default(false) bool pop,
    @JsonKey(ignore: true) @Default(true) bool show,
    @JsonKey(ignore: true) Exception? exception,
  }) = ErrorResponse;

  factory AnyResponse.fromFailure(Failure failure) {
    return AnyResponse.error(
      code: failure.code,
      status: failure.status,
      messageTxt: failure.message,
      details: failure.details,
      errors: failure.errors,
      exception: failure.exception,
    );
  }

  factory AnyResponse.fromInfo(Info info) {
    return AnyResponse.info(
      status: info.status,
      messageTxt: info.message,
      details: info.details,
      pop: info.pop,
    );
  }

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory AnyResponse.fromJson(Map<String, dynamic> json) => _$AnyResponseFromJson(json);

  @With<Info>()
  const factory AnyResponse.info({
    bool? status,
    @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
    @JsonKey(ignore: true) String? details,
    @JsonKey(ignore: true) @Default(false) bool pop,
  }) = InfoResponseType;

  @With<Success>()
  const factory AnyResponse.success({
    bool? status,
    @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
    @JsonKey(ignore: true) String? details,
    @JsonKey(ignore: true) @Default(false) bool pop,
  }) = SuccessfulResponse;

  B type<B extends AnyResponse>() => map(success: (s) => s as B, error: (e) => e as B, info: (i) => i as B);

  bool get isSuccess => this is SuccessfulResponse;

  bool get isError => this is ErrorResponse;

  bool get isInfo => this is InfoResponseType;

  @override
  String get message => messageTxt?.let((m) => m.isNotEmpty ? m : _kdefaultMsg) ?? _kdefaultMsg;
}
