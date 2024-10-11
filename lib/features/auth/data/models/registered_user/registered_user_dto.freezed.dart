// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of registered_user_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisteredUserDTO _$RegisteredUserDTOFromJson(Map<String, dynamic> json) {
  return _RegisteredUserDTO.fromJson(json);
}

/// @nodoc
mixin _$RegisteredUserDTO {
  @JsonKey(includeIfNull: false)
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  UserDTO? get data => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  UserDTO? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisteredUserDTOCopyWith<RegisteredUserDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisteredUserDTOCopyWith<$Res> {
  factory $RegisteredUserDTOCopyWith(
          RegisteredUserDTO value, $Res Function(RegisteredUserDTO) then) =
      _$RegisteredUserDTOCopyWithImpl<$Res, RegisteredUserDTO>;
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) String? status,
      @JsonKey(includeIfNull: false) UserDTO? data,
      @JsonKey(includeIfNull: false) UserDTO? user});

  $UserDTOCopyWith<$Res>? get data;
  $UserDTOCopyWith<$Res>? get user;
}

/// @nodoc
class _$RegisteredUserDTOCopyWithImpl<$Res, $Val extends RegisteredUserDTO>
    implements $RegisteredUserDTOCopyWith<$Res> {
  _$RegisteredUserDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_RegisteredUserDTOCopyWith<$Res>
    implements $RegisteredUserDTOCopyWith<$Res> {
  factory _$$_RegisteredUserDTOCopyWith(_$_RegisteredUserDTO value,
          $Res Function(_$_RegisteredUserDTO) then) =
      __$$_RegisteredUserDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) String? status,
      @JsonKey(includeIfNull: false) UserDTO? data,
      @JsonKey(includeIfNull: false) UserDTO? user});

  @override
  $UserDTOCopyWith<$Res>? get data;
  @override
  $UserDTOCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_RegisteredUserDTOCopyWithImpl<$Res>
    extends _$RegisteredUserDTOCopyWithImpl<$Res, _$_RegisteredUserDTO>
    implements _$$_RegisteredUserDTOCopyWith<$Res> {
  __$$_RegisteredUserDTOCopyWithImpl(
      _$_RegisteredUserDTO _value, $Res Function(_$_RegisteredUserDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
    Object? user = freezed,
  }) {
    return _then(_$_RegisteredUserDTO(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
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
class _$_RegisteredUserDTO extends _RegisteredUserDTO {
  const _$_RegisteredUserDTO(
      {@JsonKey(includeIfNull: false) this.status,
      @JsonKey(includeIfNull: false) this.data,
      @JsonKey(includeIfNull: false) this.user})
      : super._();

  factory _$_RegisteredUserDTO.fromJson(Map<String, dynamic> json) =>
      _$$_RegisteredUserDTOFromJson(json);

  @override
  @JsonKey(includeIfNull: false)
  final String? status;
  @override
  @JsonKey(includeIfNull: false)
  final UserDTO? data;
  @override
  @JsonKey(includeIfNull: false)
  final UserDTO? user;

  @override
  String toString() {
    return 'RegisteredUserDTO(status: $status, data: $data, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisteredUserDTO &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, data, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisteredUserDTOCopyWith<_$_RegisteredUserDTO> get copyWith =>
      __$$_RegisteredUserDTOCopyWithImpl<_$_RegisteredUserDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegisteredUserDTOToJson(
      this,
    );
  }
}

abstract class _RegisteredUserDTO extends RegisteredUserDTO {
  const factory _RegisteredUserDTO(
          {@JsonKey(includeIfNull: false) final String? status,
          @JsonKey(includeIfNull: false) final UserDTO? data,
          @JsonKey(includeIfNull: false) final UserDTO? user}) =
      _$_RegisteredUserDTO;
  const _RegisteredUserDTO._() : super._();

  factory _RegisteredUserDTO.fromJson(Map<String, dynamic> json) =
      _$_RegisteredUserDTO.fromJson;

  @override
  @JsonKey(includeIfNull: false)
  String? get status;
  @override
  @JsonKey(includeIfNull: false)
  UserDTO? get data;
  @override
  @JsonKey(includeIfNull: false)
  UserDTO? get user;
  @override
  @JsonKey(ignore: true)
  _$$_RegisteredUserDTOCopyWith<_$_RegisteredUserDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
