// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of payable.entity.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Payable {
  Deal get deal => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CloseBidPayableEntity value) closeBid,
    required TResult Function(_UpgradePayableEntity value) upgradePlan,
    required TResult Function(_ClearanceDealPayableEntity value) clearanceDeal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CloseBidPayableEntity value)? closeBid,
    TResult? Function(_UpgradePayableEntity value)? upgradePlan,
    TResult? Function(_ClearanceDealPayableEntity value)? clearanceDeal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CloseBidPayableEntity value)? closeBid,
    TResult Function(_UpgradePayableEntity value)? upgradePlan,
    TResult Function(_ClearanceDealPayableEntity value)? clearanceDeal,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PayableCopyWith<Payable> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayableCopyWith<$Res> {
  factory $PayableCopyWith(Payable value, $Res Function(Payable) then) =
      _$PayableCopyWithImpl<$Res, Payable>;
  @useResult
  $Res call({Deal deal, User user});

  $DealCopyWith<$Res> get deal;
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$PayableCopyWithImpl<$Res, $Val extends Payable>
    implements $PayableCopyWith<$Res> {
  _$PayableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deal = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      deal: null == deal
          ? _value.deal
          : deal // ignore: cast_nullable_to_non_nullable
              as Deal,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DealCopyWith<$Res> get deal {
    return $DealCopyWith<$Res>(_value.deal, (value) {
      return _then(_value.copyWith(deal: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CloseBidPayableEntityCopyWith<$Res>
    implements $PayableCopyWith<$Res> {
  factory _$$_CloseBidPayableEntityCopyWith(_$_CloseBidPayableEntity value,
          $Res Function(_$_CloseBidPayableEntity) then) =
      __$$_CloseBidPayableEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Deal deal, NumField<double> bidAmount, User user});

  @override
  $DealCopyWith<$Res> get deal;
  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_CloseBidPayableEntityCopyWithImpl<$Res>
    extends _$PayableCopyWithImpl<$Res, _$_CloseBidPayableEntity>
    implements _$$_CloseBidPayableEntityCopyWith<$Res> {
  __$$_CloseBidPayableEntityCopyWithImpl(_$_CloseBidPayableEntity _value,
      $Res Function(_$_CloseBidPayableEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deal = null,
    Object? bidAmount = null,
    Object? user = null,
  }) {
    return _then(_$_CloseBidPayableEntity(
      null == deal
          ? _value.deal
          : deal // ignore: cast_nullable_to_non_nullable
              as Deal,
      bidAmount: null == bidAmount
          ? _value.bidAmount
          : bidAmount // ignore: cast_nullable_to_non_nullable
              as NumField<double>,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$_CloseBidPayableEntity extends _CloseBidPayableEntity {
  const _$_CloseBidPayableEntity(this.deal,
      {required this.bidAmount, required this.user})
      : super._();

  @override
  final Deal deal;
  @override
  final NumField<double> bidAmount;
  @override
  final User user;

  @override
  String toString() {
    return 'Payable.closeBid(deal: $deal, bidAmount: $bidAmount, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CloseBidPayableEntity &&
            (identical(other.deal, deal) || other.deal == deal) &&
            (identical(other.bidAmount, bidAmount) ||
                other.bidAmount == bidAmount) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, deal, bidAmount, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CloseBidPayableEntityCopyWith<_$_CloseBidPayableEntity> get copyWith =>
      __$$_CloseBidPayableEntityCopyWithImpl<_$_CloseBidPayableEntity>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CloseBidPayableEntity value) closeBid,
    required TResult Function(_UpgradePayableEntity value) upgradePlan,
    required TResult Function(_ClearanceDealPayableEntity value) clearanceDeal,
  }) {
    return closeBid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CloseBidPayableEntity value)? closeBid,
    TResult? Function(_UpgradePayableEntity value)? upgradePlan,
    TResult? Function(_ClearanceDealPayableEntity value)? clearanceDeal,
  }) {
    return closeBid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CloseBidPayableEntity value)? closeBid,
    TResult Function(_UpgradePayableEntity value)? upgradePlan,
    TResult Function(_ClearanceDealPayableEntity value)? clearanceDeal,
    required TResult orElse(),
  }) {
    if (closeBid != null) {
      return closeBid(this);
    }
    return orElse();
  }
}

abstract class _CloseBidPayableEntity extends Payable {
  const factory _CloseBidPayableEntity(final Deal deal,
      {required final NumField<double> bidAmount,
      required final User user}) = _$_CloseBidPayableEntity;
  const _CloseBidPayableEntity._() : super._();

  @override
  Deal get deal;
  NumField<double> get bidAmount;
  @override
  User get user;
  @override
  @JsonKey(ignore: true)
  _$$_CloseBidPayableEntityCopyWith<_$_CloseBidPayableEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpgradePayableEntityCopyWith<$Res>
    implements $PayableCopyWith<$Res> {
  factory _$$_UpgradePayableEntityCopyWith(_$_UpgradePayableEntity value,
          $Res Function(_$_UpgradePayableEntity) then) =
      __$$_UpgradePayableEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Product product, Deal deal, User user, DealPlan plan});

  $ProductCopyWith<$Res> get product;
  @override
  $DealCopyWith<$Res> get deal;
  @override
  $UserCopyWith<$Res> get user;
  $DealPlanCopyWith<$Res> get plan;
}

/// @nodoc
class __$$_UpgradePayableEntityCopyWithImpl<$Res>
    extends _$PayableCopyWithImpl<$Res, _$_UpgradePayableEntity>
    implements _$$_UpgradePayableEntityCopyWith<$Res> {
  __$$_UpgradePayableEntityCopyWithImpl(_$_UpgradePayableEntity _value,
      $Res Function(_$_UpgradePayableEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? deal = null,
    Object? user = null,
    Object? plan = null,
  }) {
    return _then(_$_UpgradePayableEntity(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      deal: null == deal
          ? _value.deal
          : deal // ignore: cast_nullable_to_non_nullable
              as Deal,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      plan: null == plan
          ? _value.plan
          : plan // ignore: cast_nullable_to_non_nullable
              as DealPlan,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DealPlanCopyWith<$Res> get plan {
    return $DealPlanCopyWith<$Res>(_value.plan, (value) {
      return _then(_value.copyWith(plan: value));
    });
  }
}

/// @nodoc

class _$_UpgradePayableEntity extends _UpgradePayableEntity {
  const _$_UpgradePayableEntity(this.product,
      {required this.deal, required this.user, required this.plan})
      : super._();

  @override
  final Product product;
  @override
  final Deal deal;
  @override
  final User user;
  @override
  final DealPlan plan;

  @override
  String toString() {
    return 'Payable.upgradePlan(product: $product, deal: $deal, user: $user, plan: $plan)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpgradePayableEntity &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.deal, deal) || other.deal == deal) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.plan, plan) || other.plan == plan));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product, deal, user, plan);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpgradePayableEntityCopyWith<_$_UpgradePayableEntity> get copyWith =>
      __$$_UpgradePayableEntityCopyWithImpl<_$_UpgradePayableEntity>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CloseBidPayableEntity value) closeBid,
    required TResult Function(_UpgradePayableEntity value) upgradePlan,
    required TResult Function(_ClearanceDealPayableEntity value) clearanceDeal,
  }) {
    return upgradePlan(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CloseBidPayableEntity value)? closeBid,
    TResult? Function(_UpgradePayableEntity value)? upgradePlan,
    TResult? Function(_ClearanceDealPayableEntity value)? clearanceDeal,
  }) {
    return upgradePlan?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CloseBidPayableEntity value)? closeBid,
    TResult Function(_UpgradePayableEntity value)? upgradePlan,
    TResult Function(_ClearanceDealPayableEntity value)? clearanceDeal,
    required TResult orElse(),
  }) {
    if (upgradePlan != null) {
      return upgradePlan(this);
    }
    return orElse();
  }
}

abstract class _UpgradePayableEntity extends Payable {
  const factory _UpgradePayableEntity(final Product product,
      {required final Deal deal,
      required final User user,
      required final DealPlan plan}) = _$_UpgradePayableEntity;
  const _UpgradePayableEntity._() : super._();

  Product get product;
  @override
  Deal get deal;
  @override
  User get user;
  DealPlan get plan;
  @override
  @JsonKey(ignore: true)
  _$$_UpgradePayableEntityCopyWith<_$_UpgradePayableEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ClearanceDealPayableEntityCopyWith<$Res>
    implements $PayableCopyWith<$Res> {
  factory _$$_ClearanceDealPayableEntityCopyWith(
          _$_ClearanceDealPayableEntity value,
          $Res Function(_$_ClearanceDealPayableEntity) then) =
      __$$_ClearanceDealPayableEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Deal deal, User user});

  @override
  $DealCopyWith<$Res> get deal;
  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_ClearanceDealPayableEntityCopyWithImpl<$Res>
    extends _$PayableCopyWithImpl<$Res, _$_ClearanceDealPayableEntity>
    implements _$$_ClearanceDealPayableEntityCopyWith<$Res> {
  __$$_ClearanceDealPayableEntityCopyWithImpl(
      _$_ClearanceDealPayableEntity _value,
      $Res Function(_$_ClearanceDealPayableEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deal = null,
    Object? user = null,
  }) {
    return _then(_$_ClearanceDealPayableEntity(
      null == deal
          ? _value.deal
          : deal // ignore: cast_nullable_to_non_nullable
              as Deal,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$_ClearanceDealPayableEntity extends _ClearanceDealPayableEntity {
  const _$_ClearanceDealPayableEntity(this.deal, {required this.user})
      : super._();

  @override
  final Deal deal;
  @override
  final User user;

  @override
  String toString() {
    return 'Payable.clearanceDeal(deal: $deal, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClearanceDealPayableEntity &&
            (identical(other.deal, deal) || other.deal == deal) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, deal, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClearanceDealPayableEntityCopyWith<_$_ClearanceDealPayableEntity>
      get copyWith => __$$_ClearanceDealPayableEntityCopyWithImpl<
          _$_ClearanceDealPayableEntity>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CloseBidPayableEntity value) closeBid,
    required TResult Function(_UpgradePayableEntity value) upgradePlan,
    required TResult Function(_ClearanceDealPayableEntity value) clearanceDeal,
  }) {
    return clearanceDeal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CloseBidPayableEntity value)? closeBid,
    TResult? Function(_UpgradePayableEntity value)? upgradePlan,
    TResult? Function(_ClearanceDealPayableEntity value)? clearanceDeal,
  }) {
    return clearanceDeal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CloseBidPayableEntity value)? closeBid,
    TResult Function(_UpgradePayableEntity value)? upgradePlan,
    TResult Function(_ClearanceDealPayableEntity value)? clearanceDeal,
    required TResult orElse(),
  }) {
    if (clearanceDeal != null) {
      return clearanceDeal(this);
    }
    return orElse();
  }
}

abstract class _ClearanceDealPayableEntity extends Payable {
  const factory _ClearanceDealPayableEntity(final Deal deal,
      {required final User user}) = _$_ClearanceDealPayableEntity;
  const _ClearanceDealPayableEntity._() : super._();

  @override
  Deal get deal;
  @override
  User get user;
  @override
  @JsonKey(ignore: true)
  _$$_ClearanceDealPayableEntityCopyWith<_$_ClearanceDealPayableEntity>
      get copyWith => throw _privateConstructorUsedError;
}
