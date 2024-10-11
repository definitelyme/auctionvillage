// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of my_wish.entity.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MyWish {
  UniqueId<String?> get id => throw _privateConstructorUsedError;
  bool get active => throw _privateConstructorUsedError;
  Deal? get deal => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MyWishCopyWith<MyWish> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyWishCopyWith<$Res> {
  factory $MyWishCopyWith(MyWish value, $Res Function(MyWish) then) =
      _$MyWishCopyWithImpl<$Res, MyWish>;
  @useResult
  $Res call(
      {UniqueId<String?> id,
      bool active,
      Deal? deal,
      User? user,
      DateTime? createdAt,
      DateTime? updatedAt});

  $DealCopyWith<$Res>? get deal;
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$MyWishCopyWithImpl<$Res, $Val extends MyWish>
    implements $MyWishCopyWith<$Res> {
  _$MyWishCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? active = null,
    Object? deal = freezed,
    Object? user = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      deal: freezed == deal
          ? _value.deal
          : deal // ignore: cast_nullable_to_non_nullable
              as Deal?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DealCopyWith<$Res>? get deal {
    if (_value.deal == null) {
      return null;
    }

    return $DealCopyWith<$Res>(_value.deal!, (value) {
      return _then(_value.copyWith(deal: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MyWishCopyWith<$Res> implements $MyWishCopyWith<$Res> {
  factory _$$_MyWishCopyWith(_$_MyWish value, $Res Function(_$_MyWish) then) =
      __$$_MyWishCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId<String?> id,
      bool active,
      Deal? deal,
      User? user,
      DateTime? createdAt,
      DateTime? updatedAt});

  @override
  $DealCopyWith<$Res>? get deal;
  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_MyWishCopyWithImpl<$Res>
    extends _$MyWishCopyWithImpl<$Res, _$_MyWish>
    implements _$$_MyWishCopyWith<$Res> {
  __$$_MyWishCopyWithImpl(_$_MyWish _value, $Res Function(_$_MyWish) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? active = null,
    Object? deal = freezed,
    Object? user = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_MyWish(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      deal: freezed == deal
          ? _value.deal
          : deal // ignore: cast_nullable_to_non_nullable
              as Deal?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_MyWish extends _MyWish {
  const _$_MyWish(
      {required this.id,
      this.active = false,
      required this.deal,
      required this.user,
      this.createdAt,
      this.updatedAt})
      : super._();

  @override
  final UniqueId<String?> id;
  @override
  @JsonKey()
  final bool active;
  @override
  final Deal? deal;
  @override
  final User? user;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'MyWish(id: $id, active: $active, deal: $deal, user: $user, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MyWish &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.deal, deal) || other.deal == deal) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, active, deal, user, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MyWishCopyWith<_$_MyWish> get copyWith =>
      __$$_MyWishCopyWithImpl<_$_MyWish>(this, _$identity);
}

abstract class _MyWish extends MyWish {
  const factory _MyWish(
      {required final UniqueId<String?> id,
      final bool active,
      required final Deal? deal,
      required final User? user,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$_MyWish;
  const _MyWish._() : super._();

  @override
  UniqueId<String?> get id;
  @override
  bool get active;
  @override
  Deal? get deal;
  @override
  User? get user;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_MyWishCopyWith<_$_MyWish> get copyWith =>
      throw _privateConstructorUsedError;
}
