// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of info_response.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InfoResponse {
  bool? get status => throw _privateConstructorUsedError;
  String? get details => throw _privateConstructorUsedError;
  InfoType get type => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  bool get pop => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InfoResponseCopyWith<InfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfoResponseCopyWith<$Res> {
  factory $InfoResponseCopyWith(
          InfoResponse value, $Res Function(InfoResponse) then) =
      _$InfoResponseCopyWithImpl<$Res, InfoResponse>;
  @useResult
  $Res call(
      {bool? status,
      String? details,
      InfoType type,
      String message,
      @JsonKey(ignore: true) bool pop});
}

/// @nodoc
class _$InfoResponseCopyWithImpl<$Res, $Val extends InfoResponse>
    implements $InfoResponseCopyWith<$Res> {
  _$InfoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? details = freezed,
    Object? type = null,
    Object? message = null,
    Object? pop = null,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InfoType,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      pop: null == pop
          ? _value.pop
          : pop // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InfoResponseCopyWith<$Res>
    implements $InfoResponseCopyWith<$Res> {
  factory _$$_InfoResponseCopyWith(
          _$_InfoResponse value, $Res Function(_$_InfoResponse) then) =
      __$$_InfoResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? status,
      String? details,
      InfoType type,
      String message,
      @JsonKey(ignore: true) bool pop});
}

/// @nodoc
class __$$_InfoResponseCopyWithImpl<$Res>
    extends _$InfoResponseCopyWithImpl<$Res, _$_InfoResponse>
    implements _$$_InfoResponseCopyWith<$Res> {
  __$$_InfoResponseCopyWithImpl(
      _$_InfoResponse _value, $Res Function(_$_InfoResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? details = freezed,
    Object? type = null,
    Object? message = null,
    Object? pop = null,
  }) {
    return _then(_$_InfoResponse(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InfoType,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      pop: null == pop
          ? _value.pop
          : pop // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_InfoResponse extends _InfoResponse {
  const _$_InfoResponse(
      {this.status,
      this.details,
      this.type = InfoType.any,
      required this.message,
      @JsonKey(ignore: true) this.pop = false})
      : super._();

  @override
  final bool? status;
  @override
  final String? details;
  @override
  @JsonKey()
  final InfoType type;
  @override
  final String message;
  @override
  @JsonKey(ignore: true)
  final bool pop;

  @override
  String toString() {
    return 'InfoResponse(status: $status, details: $details, type: $type, message: $message, pop: $pop)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InfoResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.details, details) || other.details == details) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.pop, pop) || other.pop == pop));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, details, type, message, pop);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InfoResponseCopyWith<_$_InfoResponse> get copyWith =>
      __$$_InfoResponseCopyWithImpl<_$_InfoResponse>(this, _$identity);
}

abstract class _InfoResponse extends InfoResponse {
  const factory _InfoResponse(
      {final bool? status,
      final String? details,
      final InfoType type,
      required final String message,
      @JsonKey(ignore: true) final bool pop}) = _$_InfoResponse;
  const _InfoResponse._() : super._();

  @override
  bool? get status;
  @override
  String? get details;
  @override
  InfoType get type;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  bool get pop;
  @override
  @JsonKey(ignore: true)
  _$$_InfoResponseCopyWith<_$_InfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
