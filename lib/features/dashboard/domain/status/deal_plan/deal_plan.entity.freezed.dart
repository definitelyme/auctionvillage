// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of deal_plan.entity.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DealPlan {
  UniqueId<String?> get id => throw _privateConstructorUsedError;
  NumField<double> get amount => throw _privateConstructorUsedError;
  NumField<int?> get priority => throw _privateConstructorUsedError;
  KtList<String?> get features => throw _privateConstructorUsedError;
  DealPlanType get name => throw _privateConstructorUsedError;
  Country? get country => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DealPlanCopyWith<DealPlan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DealPlanCopyWith<$Res> {
  factory $DealPlanCopyWith(DealPlan value, $Res Function(DealPlan) then) =
      _$DealPlanCopyWithImpl<$Res, DealPlan>;
  @useResult
  $Res call(
      {UniqueId<String?> id,
      NumField<double> amount,
      NumField<int?> priority,
      KtList<String?> features,
      DealPlanType name,
      Country? country,
      DateTime? createdAt,
      DateTime? updatedAt});

  $CountryCopyWith<$Res>? get country;
}

/// @nodoc
class _$DealPlanCopyWithImpl<$Res, $Val extends DealPlan>
    implements $DealPlanCopyWith<$Res> {
  _$DealPlanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? priority = null,
    Object? features = null,
    Object? name = null,
    Object? country = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as NumField<double>,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as NumField<int?>,
      features: null == features
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as KtList<String?>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as DealPlanType,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country?,
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
  $CountryCopyWith<$Res>? get country {
    if (_value.country == null) {
      return null;
    }

    return $CountryCopyWith<$Res>(_value.country!, (value) {
      return _then(_value.copyWith(country: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DealPlanCopyWith<$Res> implements $DealPlanCopyWith<$Res> {
  factory _$$_DealPlanCopyWith(
          _$_DealPlan value, $Res Function(_$_DealPlan) then) =
      __$$_DealPlanCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId<String?> id,
      NumField<double> amount,
      NumField<int?> priority,
      KtList<String?> features,
      DealPlanType name,
      Country? country,
      DateTime? createdAt,
      DateTime? updatedAt});

  @override
  $CountryCopyWith<$Res>? get country;
}

/// @nodoc
class __$$_DealPlanCopyWithImpl<$Res>
    extends _$DealPlanCopyWithImpl<$Res, _$_DealPlan>
    implements _$$_DealPlanCopyWith<$Res> {
  __$$_DealPlanCopyWithImpl(
      _$_DealPlan _value, $Res Function(_$_DealPlan) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? priority = null,
    Object? features = null,
    Object? name = null,
    Object? country = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_DealPlan(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as NumField<double>,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as NumField<int?>,
      features: null == features
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as KtList<String?>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as DealPlanType,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country?,
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

class _$_DealPlan extends _DealPlan {
  const _$_DealPlan(
      {required this.id,
      required this.amount,
      required this.priority,
      this.features = const KtList.empty(),
      this.name = defaultDealPlanType,
      this.country,
      this.createdAt,
      this.updatedAt})
      : super._();

  @override
  final UniqueId<String?> id;
  @override
  final NumField<double> amount;
  @override
  final NumField<int?> priority;
  @override
  @JsonKey()
  final KtList<String?> features;
  @override
  @JsonKey()
  final DealPlanType name;
  @override
  final Country? country;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'DealPlan(id: $id, amount: $amount, priority: $priority, features: $features, name: $name, country: $country, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DealPlan &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.features, features) ||
                other.features == features) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, amount, priority, features,
      name, country, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DealPlanCopyWith<_$_DealPlan> get copyWith =>
      __$$_DealPlanCopyWithImpl<_$_DealPlan>(this, _$identity);
}

abstract class _DealPlan extends DealPlan {
  const factory _DealPlan(
      {required final UniqueId<String?> id,
      required final NumField<double> amount,
      required final NumField<int?> priority,
      final KtList<String?> features,
      final DealPlanType name,
      final Country? country,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$_DealPlan;
  const _DealPlan._() : super._();

  @override
  UniqueId<String?> get id;
  @override
  NumField<double> get amount;
  @override
  NumField<int?> get priority;
  @override
  KtList<String?> get features;
  @override
  DealPlanType get name;
  @override
  Country? get country;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_DealPlanCopyWith<_$_DealPlan> get copyWith =>
      throw _privateConstructorUsedError;
}
