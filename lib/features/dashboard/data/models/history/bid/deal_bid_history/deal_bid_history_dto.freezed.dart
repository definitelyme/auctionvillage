// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of deal_bid_history_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DealBidHistoryDTO _$DealBidHistoryDTOFromJson(Map<String, dynamic> json) {
  return _DealBidHistoryDTO.fromJson(json);
}

/// @nodoc
mixin _$DealBidHistoryDTO {
  List<UserDTO> get users => throw _privateConstructorUsedError;
  @JsonKey(name: '_meta')
  MetaDTO? get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DealBidHistoryDTOCopyWith<DealBidHistoryDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DealBidHistoryDTOCopyWith<$Res> {
  factory $DealBidHistoryDTOCopyWith(
          DealBidHistoryDTO value, $Res Function(DealBidHistoryDTO) then) =
      _$DealBidHistoryDTOCopyWithImpl<$Res, DealBidHistoryDTO>;
  @useResult
  $Res call({List<UserDTO> users, @JsonKey(name: '_meta') MetaDTO? meta});

  $MetaDTOCopyWith<$Res>? get meta;
}

/// @nodoc
class _$DealBidHistoryDTOCopyWithImpl<$Res, $Val extends DealBidHistoryDTO>
    implements $DealBidHistoryDTOCopyWith<$Res> {
  _$DealBidHistoryDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
    Object? meta = freezed,
  }) {
    return _then(_value.copyWith(
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserDTO>,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDTO?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MetaDTOCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $MetaDTOCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DealBidHistoryDTOCopyWith<$Res>
    implements $DealBidHistoryDTOCopyWith<$Res> {
  factory _$$_DealBidHistoryDTOCopyWith(_$_DealBidHistoryDTO value,
          $Res Function(_$_DealBidHistoryDTO) then) =
      __$$_DealBidHistoryDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<UserDTO> users, @JsonKey(name: '_meta') MetaDTO? meta});

  @override
  $MetaDTOCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$_DealBidHistoryDTOCopyWithImpl<$Res>
    extends _$DealBidHistoryDTOCopyWithImpl<$Res, _$_DealBidHistoryDTO>
    implements _$$_DealBidHistoryDTOCopyWith<$Res> {
  __$$_DealBidHistoryDTOCopyWithImpl(
      _$_DealBidHistoryDTO _value, $Res Function(_$_DealBidHistoryDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
    Object? meta = freezed,
  }) {
    return _then(_$_DealBidHistoryDTO(
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserDTO>,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDTO?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DealBidHistoryDTO extends _DealBidHistoryDTO {
  const _$_DealBidHistoryDTO(
      {final List<UserDTO> users = const [], @JsonKey(name: '_meta') this.meta})
      : _users = users,
        super._();

  factory _$_DealBidHistoryDTO.fromJson(Map<String, dynamic> json) =>
      _$$_DealBidHistoryDTOFromJson(json);

  final List<UserDTO> _users;
  @override
  @JsonKey()
  List<UserDTO> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  @JsonKey(name: '_meta')
  final MetaDTO? meta;

  @override
  String toString() {
    return 'DealBidHistoryDTO(users: $users, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DealBidHistoryDTO &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_users), meta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DealBidHistoryDTOCopyWith<_$_DealBidHistoryDTO> get copyWith =>
      __$$_DealBidHistoryDTOCopyWithImpl<_$_DealBidHistoryDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DealBidHistoryDTOToJson(
      this,
    );
  }
}

abstract class _DealBidHistoryDTO extends DealBidHistoryDTO {
  const factory _DealBidHistoryDTO(
      {final List<UserDTO> users,
      @JsonKey(name: '_meta') final MetaDTO? meta}) = _$_DealBidHistoryDTO;
  const _DealBidHistoryDTO._() : super._();

  factory _DealBidHistoryDTO.fromJson(Map<String, dynamic> json) =
      _$_DealBidHistoryDTO.fromJson;

  @override
  List<UserDTO> get users;
  @override
  @JsonKey(name: '_meta')
  MetaDTO? get meta;
  @override
  @JsonKey(ignore: true)
  _$$_DealBidHistoryDTOCopyWith<_$_DealBidHistoryDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
