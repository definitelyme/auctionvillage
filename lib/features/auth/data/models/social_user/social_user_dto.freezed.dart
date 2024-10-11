// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of social_user_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SocialUserDTO _$SocialUserDTOFromJson(Map<String, dynamic> json) {
  return _SocialUserDTO.fromJson(json);
}

/// @nodoc
mixin _$SocialUserDTO {
  String? get status => throw _privateConstructorUsedError;
  @IntegerSerializer()
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  UserDTO? get data => throw _privateConstructorUsedError;
  UserDTO? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SocialUserDTOCopyWith<SocialUserDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialUserDTOCopyWith<$Res> {
  factory $SocialUserDTOCopyWith(
          SocialUserDTO value, $Res Function(SocialUserDTO) then) =
      _$SocialUserDTOCopyWithImpl<$Res, SocialUserDTO>;
  @useResult
  $Res call(
      {String? status,
      @IntegerSerializer() int? code,
      String? message,
      UserDTO? data,
      UserDTO? user});

  $UserDTOCopyWith<$Res>? get data;
  $UserDTOCopyWith<$Res>? get user;
}

/// @nodoc
class _$SocialUserDTOCopyWithImpl<$Res, $Val extends SocialUserDTO>
    implements $SocialUserDTOCopyWith<$Res> {
  _$SocialUserDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserDTO?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDTO?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDTOCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $UserDTOCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDTOCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserDTOCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SocialUserDTOCopyWith<$Res>
    implements $SocialUserDTOCopyWith<$Res> {
  factory _$$_SocialUserDTOCopyWith(
          _$_SocialUserDTO value, $Res Function(_$_SocialUserDTO) then) =
      __$$_SocialUserDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? status,
      @IntegerSerializer() int? code,
      String? message,
      UserDTO? data,
      UserDTO? user});

  @override
  $UserDTOCopyWith<$Res>? get data;
  @override
  $UserDTOCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_SocialUserDTOCopyWithImpl<$Res>
    extends _$SocialUserDTOCopyWithImpl<$Res, _$_SocialUserDTO>
    implements _$$_SocialUserDTOCopyWith<$Res> {
  __$$_SocialUserDTOCopyWithImpl(
      _$_SocialUserDTO _value, $Res Function(_$_SocialUserDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
    Object? user = freezed,
  }) {
    return _then(_$_SocialUserDTO(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserDTO?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDTO?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SocialUserDTO extends _SocialUserDTO {
  const _$_SocialUserDTO(
      {this.status,
      @IntegerSerializer() this.code,
      this.message,
      this.data,
      this.user})
      : super._();

  factory _$_SocialUserDTO.fromJson(Map<String, dynamic> json) =>
      _$$_SocialUserDTOFromJson(json);

  @override
  final String? status;
  @override
  @IntegerSerializer()
  final int? code;
  @override
  final String? message;
  @override
  final UserDTO? data;
  @override
  final UserDTO? user;

  @override
  String toString() {
    return 'SocialUserDTO(status: $status, code: $code, message: $message, data: $data, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SocialUserDTO &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, status, code, message, data, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SocialUserDTOCopyWith<_$_SocialUserDTO> get copyWith =>
      __$$_SocialUserDTOCopyWithImpl<_$_SocialUserDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SocialUserDTOToJson(
      this,
    );
  }
}

abstract class _SocialUserDTO extends SocialUserDTO {
  const factory _SocialUserDTO(
      {final String? status,
      @IntegerSerializer() final int? code,
      final String? message,
      final UserDTO? data,
      final UserDTO? user}) = _$_SocialUserDTO;
  const _SocialUserDTO._() : super._();

  factory _SocialUserDTO.fromJson(Map<String, dynamic> json) =
      _$_SocialUserDTO.fromJson;

  @override
  String? get status;
  @override
  @IntegerSerializer()
  int? get code;
  @override
  String? get message;
  @override
  UserDTO? get data;
  @override
  UserDTO? get user;
  @override
  @JsonKey(ignore: true)
  _$$_SocialUserDTOCopyWith<_$_SocialUserDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
