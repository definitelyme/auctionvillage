// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of deal_bid_history.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DealBidHistory {
  KtList<User> get users => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DealBidHistoryCopyWith<DealBidHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DealBidHistoryCopyWith<$Res> {
  factory $DealBidHistoryCopyWith(
          DealBidHistory value, $Res Function(DealBidHistory) then) =
      _$DealBidHistoryCopyWithImpl<$Res, DealBidHistory>;
  @useResult
  $Res call({KtList<User> users});
}

/// @nodoc
class _$DealBidHistoryCopyWithImpl<$Res, $Val extends DealBidHistory>
    implements $DealBidHistoryCopyWith<$Res> {
  _$DealBidHistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
  }) {
    return _then(_value.copyWith(
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as KtList<User>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DealBidHistoryCopyWith<$Res>
    implements $DealBidHistoryCopyWith<$Res> {
  factory _$$_DealBidHistoryCopyWith(
          _$_DealBidHistory value, $Res Function(_$_DealBidHistory) then) =
      __$$_DealBidHistoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({KtList<User> users});
}

/// @nodoc
class __$$_DealBidHistoryCopyWithImpl<$Res>
    extends _$DealBidHistoryCopyWithImpl<$Res, _$_DealBidHistory>
    implements _$$_DealBidHistoryCopyWith<$Res> {
  __$$_DealBidHistoryCopyWithImpl(
      _$_DealBidHistory _value, $Res Function(_$_DealBidHistory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
  }) {
    return _then(_$_DealBidHistory(
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as KtList<User>,
    ));
  }
}

/// @nodoc

class _$_DealBidHistory extends _DealBidHistory {
  const _$_DealBidHistory({this.users = const KtList.empty()}) : super._();

  @override
  @JsonKey()
  final KtList<User> users;

  @override
  String toString() {
    return 'DealBidHistory(users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DealBidHistory &&
            (identical(other.users, users) || other.users == users));
  }

  @override
  int get hashCode => Object.hash(runtimeType, users);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DealBidHistoryCopyWith<_$_DealBidHistory> get copyWith =>
      __$$_DealBidHistoryCopyWithImpl<_$_DealBidHistory>(this, _$identity);
}

abstract class _DealBidHistory extends DealBidHistory {
  const factory _DealBidHistory({final KtList<User> users}) = _$_DealBidHistory;
  const _DealBidHistory._() : super._();

  @override
  KtList<User> get users;
  @override
  @JsonKey(ignore: true)
  _$$_DealBidHistoryCopyWith<_$_DealBidHistory> get copyWith =>
      throw _privateConstructorUsedError;
}
