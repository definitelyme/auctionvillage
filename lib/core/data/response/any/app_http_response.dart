// ignore_for_file: non_constant_identifier_names

library app_http_response.dart;

import 'package:auctionvillage/core/data/http_client/index.dart';
import 'package:auctionvillage/core/data/response/index.dart';
import 'package:auctionvillage/core/domain/response/index.dart';
import 'package:auctionvillage/features/auth/domain/index.dart';
import 'package:auctionvillage/manager/locator/locator.dart';
import 'package:auctionvillage/manager/serializer/serializers.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart' as dio;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_http_response.freezed.dart';

AppHttpResponse deserializeAppHttpResponse(Map<String, dynamic> json) => AppHttpResponse.fromMap(json) ?? AppHttpResponse.fromJson(json);
Map<String, dynamic> serializeAppHttpResponse(AppHttpResponse object) => object.toJson();

_$_AppHttpResponse _$$_AppHttpResponseFromJson(Map<String, dynamic> json) =>
    _$_AppHttpResponse(const AnyResponseSerializer().fromJson(json), data: json);

Map<String, dynamic> _$$_AppHttpResponseToJson(_$_AppHttpResponse i) => const AnyResponseSerializer().toJson(i.response);

@Freezed()
@immutable
class AppHttpResponse extends AppNetworkResponseException<dio.DioError, dynamic> with _$AppHttpResponse implements Failure, Response {
  const factory AppHttpResponse(
    @AnyResponseSerializer() AnyResponse response, {
    @JsonKey(ignore: true) dynamic data,
    @JsonKey(ignore: true) dio.DioError? exception,
    @JsonKey(ignore: true) AppNetworkExceptionReason? failureReason,
  }) = _AppHttpResponse;

  const AppHttpResponse._();

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory AppHttpResponse.fromJson(Map<String, dynamic> json) => _$AppHttpResponseFromJson(json);

  factory AppHttpResponse.successful(String? message, {bool pop = true}) =>
      AppHttpResponse(AnyResponse.success(pop: pop, messageTxt: message ?? 'Successful!'));

  factory AppHttpResponse.info(String? message, [bool pop = false]) => AppHttpResponse(AnyResponse.info(messageTxt: message, pop: pop));

  factory AppHttpResponse.failure(String? message, {int? code}) =>
      AppHttpResponse(AnyResponse.error(code: code, messageTxt: message ?? 'Whoops! An error occurred.'));

  static AppHttpResponse get endOfList => AppHttpResponse(AnyResponse.fromInfo(InfoResponse.endOfList()));

  bool get isEndOfList => this == endOfList;

  @override
  int? get code => response.maybeMap(error: (e) => e.code, orElse: () => null);

  @override
  AppNetworkExceptionReason get reason => failureReason ?? super.reason;

  @override
  bool get hasData => data != null;

  @override
  String? get details => response.maybeMap(orElse: () => null, success: (s) => s.details);

  @override
  ServerFieldErrors? get errors => response.maybeMap(error: (e) => e.errors, orElse: () => null);

  @override
  String get message => response.message;

  @override
  bool get show => response.maybeMap(orElse: () => message.isNotEmpty, error: (e) => e.show);

  @override
  bool? get status => response.status;

  bool get isSuccess => response.isSuccess;

  bool get isFailure => response.isError;

  bool get isInfo => response.isInfo;

  static AppHttpResponse? fromMap<T>(Map<String, dynamic> json) {
    final AppHttpResponse response;

    final data = json['data'];

    if ((data != null && data is Map<String, dynamic>) && (data.containsKey('status') && data.containsKey('message'))) {
      response = AppHttpResponse.fromJson(data);
    } else {
      final parsed =
          json.containsKey('_meta') ? AppHttpResponse.fromJson(json['_meta'] as Map<String, dynamic>) : AppHttpResponse.fromJson(json);

      response = parsed.copyWith(
        data: json,
        response: parsed.response.maybeMap(
          error: (e) => AnyResponse.error(
            code: e.code,
            messageTxt: e.message,
            errors: e.errors,
            status: e.status,
            exception: e.exception,
            pop: e.pop,
            show: e.show,
          ),
          orElse: () => parsed.response,
        ),
      );

      response.fold(
        is401: () => getIt<AuthFacade>().sink(left(response)),
        orElse: () => null,
      );
    }

    return response;
  }

  static AppHttpResponse? fromDioResponse<T>(dio.Response<T>? response) {
    final data = response?.data;
    if (data != null && data is Map<String, dynamic>) {
      return AppHttpResponse.fromMap(data);
    }
    return null;
  }
}

extension AppHttpResponseX on AppHttpResponse? {
  T maybeMap<T>({
    T Function(SuccessfulResponse)? success,
    T Function(ErrorResponse)? error,
    T Function(InfoResponseType)? info,
    required T Function() orElse,
  }) {
    if (this != null) {
      return this!.response.maybeMap(
            success: (s) => success != null ? success(this!.response.type()) : orElse(),
            error: (e) => error != null ? error(this!.response.type()) : orElse(),
            info: (i) => info != null ? info(this!.response.type()) : orElse(),
            orElse: orElse,
          );
    } else {
      return orElse();
    }
  }

  T? success<T>(T Function(SuccessfulResponse)? runner) => maybeMap(success: (s) => runner != null ? runner(s) : null, orElse: () => null);

  T? error<T>(T Function(ErrorResponse)? runner) => maybeMap(error: (e) => runner != null ? runner(e) : null, orElse: () => null);
}
