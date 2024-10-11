// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FailureResponse _$FailureResponseFromJson(Map<String, dynamic> json) {
  return _FailureResponse.fromJson(json);
}

/// @nodoc
mixin _$FailureResponse {
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: false)
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'error')
  ServerFieldErrors? get errors => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  String? get details => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  bool get pop => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  bool get show => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FailureResponseCopyWith<FailureResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureResponseCopyWith<$Res> {
  factory $FailureResponseCopyWith(
          FailureResponse value, $Res Function(FailureResponse) then) =
      _$FailureResponseCopyWithImpl<$Res, FailureResponse>;
  @useResult
  $Res call(
      {int? code,
      @JsonKey(defaultValue: false) bool? status,
      @JsonKey(name: 'error') ServerFieldErrors? errors,
      @JsonKey(defaultValue: '') String message,
      @JsonKey(ignore: true) String? details,
      @JsonKey(ignore: true) bool pop,
      @JsonKey(ignore: true) bool show});

  $ServerFieldErrorsCopyWith<$Res>? get errors;
}

/// @nodoc
class _$FailureResponseCopyWithImpl<$Res, $Val extends FailureResponse>
    implements $FailureResponseCopyWith<$Res> {
  _$FailureResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? status = freezed,
    Object? errors = freezed,
    Object? message = null,
    Object? details = freezed,
    Object? pop = null,
    Object? show = null,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      errors: freezed == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as ServerFieldErrors?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
      pop: null == pop
          ? _value.pop
          : pop // ignore: cast_nullable_to_non_nullable
              as bool,
      show: null == show
          ? _value.show
          : show // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ServerFieldErrorsCopyWith<$Res>? get errors {
    if (_value.errors == null) {
      return null;
    }

    return $ServerFieldErrorsCopyWith<$Res>(_value.errors!, (value) {
      return _then(_value.copyWith(errors: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FailureResponseCopyWith<$Res>
    implements $FailureResponseCopyWith<$Res> {
  factory _$$_FailureResponseCopyWith(
          _$_FailureResponse value, $Res Function(_$_FailureResponse) then) =
      __$$_FailureResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? code,
      @JsonKey(defaultValue: false) bool? status,
      @JsonKey(name: 'error') ServerFieldErrors? errors,
      @JsonKey(defaultValue: '') String message,
      @JsonKey(ignore: true) String? details,
      @JsonKey(ignore: true) bool pop,
      @JsonKey(ignore: true) bool show});

  @override
  $ServerFieldErrorsCopyWith<$Res>? get errors;
}

/// @nodoc
class __$$_FailureResponseCopyWithImpl<$Res>
    extends _$FailureResponseCopyWithImpl<$Res, _$_FailureResponse>
    implements _$$_FailureResponseCopyWith<$Res> {
  __$$_FailureResponseCopyWithImpl(
      _$_FailureResponse _value, $Res Function(_$_FailureResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? status = freezed,
    Object? errors = freezed,
    Object? message = null,
    Object? details = freezed,
    Object? pop = null,
    Object? show = null,
  }) {
    return _then(_$_FailureResponse(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      errors: freezed == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as ServerFieldErrors?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
      pop: null == pop
          ? _value.pop
          : pop // ignore: cast_nullable_to_non_nullable
              as bool,
      show: null == show
          ? _value.show
          : show // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FailureResponse extends _FailureResponse {
  const _$_FailureResponse(
      {this.code,
      @JsonKey(defaultValue: false) this.status,
      @JsonKey(name: 'error') this.errors,
      @JsonKey(defaultValue: '') required this.message,
      @JsonKey(ignore: true) this.details,
      @JsonKey(ignore: true) this.pop = true,
      @JsonKey(ignore: true) this.show = true})
      : super._();

  factory _$_FailureResponse.fromJson(Map<String, dynamic> json) =>
      _$$_FailureResponseFromJson(json);

  @override
  final int? code;
  @override
  @JsonKey(defaultValue: false)
  final bool? status;
  @override
  @JsonKey(name: 'error')
  final ServerFieldErrors? errors;
  @override
  @JsonKey(defaultValue: '')
  final String message;
  @override
  @JsonKey(ignore: true)
  final String? details;
  @override
  @JsonKey(ignore: true)
  final bool pop;
  @override
  @JsonKey(ignore: true)
  final bool show;

  @override
  String toString() {
    return 'FailureResponse(code: $code, status: $status, errors: $errors, message: $message, details: $details, pop: $pop, show: $show)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FailureResponse &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errors, errors) || other.errors == errors) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.details, details) || other.details == details) &&
            (identical(other.pop, pop) || other.pop == pop) &&
            (identical(other.show, show) || other.show == show));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, code, status, errors, message, details, pop, show);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailureResponseCopyWith<_$_FailureResponse> get copyWith =>
      __$$_FailureResponseCopyWithImpl<_$_FailureResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FailureResponseToJson(
      this,
    );
  }
}

abstract class _FailureResponse extends FailureResponse implements Failure {
  const factory _FailureResponse(
      {final int? code,
      @JsonKey(defaultValue: false) final bool? status,
      @JsonKey(name: 'error') final ServerFieldErrors? errors,
      @JsonKey(defaultValue: '') required final String message,
      @JsonKey(ignore: true) final String? details,
      @JsonKey(ignore: true) final bool pop,
      @JsonKey(ignore: true) final bool show}) = _$_FailureResponse;
  const _FailureResponse._() : super._();

  factory _FailureResponse.fromJson(Map<String, dynamic> json) =
      _$_FailureResponse.fromJson;

  @override
  int? get code;
  @override
  @JsonKey(defaultValue: false)
  bool? get status;
  @override
  @JsonKey(name: 'error')
  ServerFieldErrors? get errors;
  @override
  @JsonKey(defaultValue: '')
  String get message;
  @override
  @JsonKey(ignore: true)
  String? get details;
  @override
  @JsonKey(ignore: true)
  bool get pop;
  @override
  @JsonKey(ignore: true)
  bool get show;
  @override
  @JsonKey(ignore: true)
  _$$_FailureResponseCopyWith<_$_FailureResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
