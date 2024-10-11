// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of app_http_response.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppHttpResponse _$AppHttpResponseFromJson(Map<String, dynamic> json) {
  return _AppHttpResponse.fromJson(json);
}

/// @nodoc
mixin _$AppHttpResponse {
  @AnyResponseSerializer()
  AnyResponse get response => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  dynamic get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  dio.DioError? get exception => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  AppNetworkExceptionReason? get failureReason =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppHttpResponseCopyWith<AppHttpResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppHttpResponseCopyWith<$Res> {
  factory $AppHttpResponseCopyWith(
          AppHttpResponse value, $Res Function(AppHttpResponse) then) =
      _$AppHttpResponseCopyWithImpl<$Res, AppHttpResponse>;
  @useResult
  $Res call(
      {@AnyResponseSerializer() AnyResponse response,
      @JsonKey(ignore: true) dynamic data,
      @JsonKey(ignore: true) dio.DioError? exception,
      @JsonKey(ignore: true) AppNetworkExceptionReason? failureReason});

  $AnyResponseCopyWith<$Res> get response;
}

/// @nodoc
class _$AppHttpResponseCopyWithImpl<$Res, $Val extends AppHttpResponse>
    implements $AppHttpResponseCopyWith<$Res> {
  _$AppHttpResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
    Object? data = freezed,
    Object? exception = freezed,
    Object? failureReason = freezed,
  }) {
    return _then(_value.copyWith(
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as AnyResponse,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as dio.DioError?,
      failureReason: freezed == failureReason
          ? _value.failureReason
          : failureReason // ignore: cast_nullable_to_non_nullable
              as AppNetworkExceptionReason?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AnyResponseCopyWith<$Res> get response {
    return $AnyResponseCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AppHttpResponseCopyWith<$Res>
    implements $AppHttpResponseCopyWith<$Res> {
  factory _$$_AppHttpResponseCopyWith(
          _$_AppHttpResponse value, $Res Function(_$_AppHttpResponse) then) =
      __$$_AppHttpResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@AnyResponseSerializer() AnyResponse response,
      @JsonKey(ignore: true) dynamic data,
      @JsonKey(ignore: true) dio.DioError? exception,
      @JsonKey(ignore: true) AppNetworkExceptionReason? failureReason});

  @override
  $AnyResponseCopyWith<$Res> get response;
}

/// @nodoc
class __$$_AppHttpResponseCopyWithImpl<$Res>
    extends _$AppHttpResponseCopyWithImpl<$Res, _$_AppHttpResponse>
    implements _$$_AppHttpResponseCopyWith<$Res> {
  __$$_AppHttpResponseCopyWithImpl(
      _$_AppHttpResponse _value, $Res Function(_$_AppHttpResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
    Object? data = freezed,
    Object? exception = freezed,
    Object? failureReason = freezed,
  }) {
    return _then(_$_AppHttpResponse(
      null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as AnyResponse,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as dio.DioError?,
      failureReason: freezed == failureReason
          ? _value.failureReason
          : failureReason // ignore: cast_nullable_to_non_nullable
              as AppNetworkExceptionReason?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppHttpResponse extends _AppHttpResponse {
  const _$_AppHttpResponse(@AnyResponseSerializer() this.response,
      {@JsonKey(ignore: true) this.data,
      @JsonKey(ignore: true) this.exception,
      @JsonKey(ignore: true) this.failureReason})
      : super._();

  factory _$_AppHttpResponse.fromJson(Map<String, dynamic> json) =>
      _$$_AppHttpResponseFromJson(json);

  @override
  @AnyResponseSerializer()
  final AnyResponse response;
  @override
  @JsonKey(ignore: true)
  final dynamic data;
  @override
  @JsonKey(ignore: true)
  final dio.DioError? exception;
  @override
  @JsonKey(ignore: true)
  final AppNetworkExceptionReason? failureReason;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppHttpResponse &&
            (identical(other.response, response) ||
                other.response == response) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.exception, exception) ||
                other.exception == exception) &&
            (identical(other.failureReason, failureReason) ||
                other.failureReason == failureReason));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, response,
      const DeepCollectionEquality().hash(data), exception, failureReason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppHttpResponseCopyWith<_$_AppHttpResponse> get copyWith =>
      __$$_AppHttpResponseCopyWithImpl<_$_AppHttpResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppHttpResponseToJson(
      this,
    );
  }
}

abstract class _AppHttpResponse extends AppHttpResponse {
  const factory _AppHttpResponse(
      @AnyResponseSerializer()
          final AnyResponse response,
      {@JsonKey(ignore: true)
          final dynamic data,
      @JsonKey(ignore: true)
          final dio.DioError? exception,
      @JsonKey(ignore: true)
          final AppNetworkExceptionReason? failureReason}) = _$_AppHttpResponse;
  const _AppHttpResponse._() : super._();

  factory _AppHttpResponse.fromJson(Map<String, dynamic> json) =
      _$_AppHttpResponse.fromJson;

  @override
  @AnyResponseSerializer()
  AnyResponse get response;
  @override
  @JsonKey(ignore: true)
  dynamic get data;
  @override
  @JsonKey(ignore: true)
  dio.DioError? get exception;
  @override
  @JsonKey(ignore: true)
  AppNetworkExceptionReason? get failureReason;
  @override
  @JsonKey(ignore: true)
  _$$_AppHttpResponseCopyWith<_$_AppHttpResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
