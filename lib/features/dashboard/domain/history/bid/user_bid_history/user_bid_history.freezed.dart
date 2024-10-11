// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of user_bid_history.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserBidHistory {
  UniqueId<String?> get id => throw _privateConstructorUsedError;
  NumField<double> get totalAuctionsParticipated =>
      throw _privateConstructorUsedError;
  NumField<double> get totalWinningBid => throw _privateConstructorUsedError;
  NumField<double> get totalAmountSpent => throw _privateConstructorUsedError;
  KtList<Deal> get deals => throw _privateConstructorUsedError;
  NumField<double> get amount => throw _privateConstructorUsedError;
  Deal? get deal => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserBidHistoryCopyWith<UserBidHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserBidHistoryCopyWith<$Res> {
  factory $UserBidHistoryCopyWith(
          UserBidHistory value, $Res Function(UserBidHistory) then) =
      _$UserBidHistoryCopyWithImpl<$Res, UserBidHistory>;
  @useResult
  $Res call(
      {UniqueId<String?> id,
      NumField<double> totalAuctionsParticipated,
      NumField<double> totalWinningBid,
      NumField<double> totalAmountSpent,
      KtList<Deal> deals,
      NumField<double> amount,
      Deal? deal,
      DateTime? createdAt,
      DateTime? updatedAt});

  $DealCopyWith<$Res>? get deal;
}

/// @nodoc
class _$UserBidHistoryCopyWithImpl<$Res, $Val extends UserBidHistory>
    implements $UserBidHistoryCopyWith<$Res> {
  _$UserBidHistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? totalAuctionsParticipated = null,
    Object? totalWinningBid = null,
    Object? totalAmountSpent = null,
    Object? deals = null,
    Object? amount = null,
    Object? deal = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      totalAuctionsParticipated: null == totalAuctionsParticipated
          ? _value.totalAuctionsParticipated
          : totalAuctionsParticipated // ignore: cast_nullable_to_non_nullable
              as NumField<double>,
      totalWinningBid: null == totalWinningBid
          ? _value.totalWinningBid
          : totalWinningBid // ignore: cast_nullable_to_non_nullable
              as NumField<double>,
      totalAmountSpent: null == totalAmountSpent
          ? _value.totalAmountSpent
          : totalAmountSpent // ignore: cast_nullable_to_non_nullable
              as NumField<double>,
      deals: null == deals
          ? _value.deals
          : deals // ignore: cast_nullable_to_non_nullable
              as KtList<Deal>,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as NumField<double>,
      deal: freezed == deal
          ? _value.deal
          : deal // ignore: cast_nullable_to_non_nullable
              as Deal?,
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
}

/// @nodoc
abstract class _$$_UserBidHistoryCopyWith<$Res>
    implements $UserBidHistoryCopyWith<$Res> {
  factory _$$_UserBidHistoryCopyWith(
          _$_UserBidHistory value, $Res Function(_$_UserBidHistory) then) =
      __$$_UserBidHistoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId<String?> id,
      NumField<double> totalAuctionsParticipated,
      NumField<double> totalWinningBid,
      NumField<double> totalAmountSpent,
      KtList<Deal> deals,
      NumField<double> amount,
      Deal? deal,
      DateTime? createdAt,
      DateTime? updatedAt});

  @override
  $DealCopyWith<$Res>? get deal;
}

/// @nodoc
class __$$_UserBidHistoryCopyWithImpl<$Res>
    extends _$UserBidHistoryCopyWithImpl<$Res, _$_UserBidHistory>
    implements _$$_UserBidHistoryCopyWith<$Res> {
  __$$_UserBidHistoryCopyWithImpl(
      _$_UserBidHistory _value, $Res Function(_$_UserBidHistory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? totalAuctionsParticipated = null,
    Object? totalWinningBid = null,
    Object? totalAmountSpent = null,
    Object? deals = null,
    Object? amount = null,
    Object? deal = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_UserBidHistory(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      totalAuctionsParticipated: null == totalAuctionsParticipated
          ? _value.totalAuctionsParticipated
          : totalAuctionsParticipated // ignore: cast_nullable_to_non_nullable
              as NumField<double>,
      totalWinningBid: null == totalWinningBid
          ? _value.totalWinningBid
          : totalWinningBid // ignore: cast_nullable_to_non_nullable
              as NumField<double>,
      totalAmountSpent: null == totalAmountSpent
          ? _value.totalAmountSpent
          : totalAmountSpent // ignore: cast_nullable_to_non_nullable
              as NumField<double>,
      deals: null == deals
          ? _value.deals
          : deals // ignore: cast_nullable_to_non_nullable
              as KtList<Deal>,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as NumField<double>,
      deal: freezed == deal
          ? _value.deal
          : deal // ignore: cast_nullable_to_non_nullable
              as Deal?,
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

class _$_UserBidHistory extends _UserBidHistory {
  const _$_UserBidHistory(
      {required this.id,
      required this.totalAuctionsParticipated,
      required this.totalWinningBid,
      required this.totalAmountSpent,
      this.deals = const KtList.empty(),
      required this.amount,
      this.deal,
      this.createdAt,
      this.updatedAt})
      : super._();

  @override
  final UniqueId<String?> id;
  @override
  final NumField<double> totalAuctionsParticipated;
  @override
  final NumField<double> totalWinningBid;
  @override
  final NumField<double> totalAmountSpent;
  @override
  @JsonKey()
  final KtList<Deal> deals;
  @override
  final NumField<double> amount;
  @override
  final Deal? deal;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'UserBidHistory(id: $id, totalAuctionsParticipated: $totalAuctionsParticipated, totalWinningBid: $totalWinningBid, totalAmountSpent: $totalAmountSpent, deals: $deals, amount: $amount, deal: $deal, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserBidHistory &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.totalAuctionsParticipated,
                    totalAuctionsParticipated) ||
                other.totalAuctionsParticipated == totalAuctionsParticipated) &&
            (identical(other.totalWinningBid, totalWinningBid) ||
                other.totalWinningBid == totalWinningBid) &&
            (identical(other.totalAmountSpent, totalAmountSpent) ||
                other.totalAmountSpent == totalAmountSpent) &&
            (identical(other.deals, deals) || other.deals == deals) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.deal, deal) || other.deal == deal) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      totalAuctionsParticipated,
      totalWinningBid,
      totalAmountSpent,
      deals,
      amount,
      deal,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserBidHistoryCopyWith<_$_UserBidHistory> get copyWith =>
      __$$_UserBidHistoryCopyWithImpl<_$_UserBidHistory>(this, _$identity);
}

abstract class _UserBidHistory extends UserBidHistory {
  const factory _UserBidHistory(
      {required final UniqueId<String?> id,
      required final NumField<double> totalAuctionsParticipated,
      required final NumField<double> totalWinningBid,
      required final NumField<double> totalAmountSpent,
      final KtList<Deal> deals,
      required final NumField<double> amount,
      final Deal? deal,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$_UserBidHistory;
  const _UserBidHistory._() : super._();

  @override
  UniqueId<String?> get id;
  @override
  NumField<double> get totalAuctionsParticipated;
  @override
  NumField<double> get totalWinningBid;
  @override
  NumField<double> get totalAmountSpent;
  @override
  KtList<Deal> get deals;
  @override
  NumField<double> get amount;
  @override
  Deal? get deal;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_UserBidHistoryCopyWith<_$_UserBidHistory> get copyWith =>
      throw _privateConstructorUsedError;
}
