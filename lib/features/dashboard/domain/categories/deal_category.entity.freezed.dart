// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of deal_category.entity.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DealCategory {
  UniqueId<String?> get id => throw _privateConstructorUsedError;
  MediaField get asset => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  BasicTextField get name => throw _privateConstructorUsedError;
  BasicTextField get slug => throw _privateConstructorUsedError;
  BasicTextField get description => throw _privateConstructorUsedError;
  NumField<double?> get charge => throw _privateConstructorUsedError;
  NumField<double?> get percentageIncrease =>
      throw _privateConstructorUsedError;
  NumField<int> get productsAssigned => throw _privateConstructorUsedError;
  Deal? get deal => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DealCategoryCopyWith<DealCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DealCategoryCopyWith<$Res> {
  factory $DealCategoryCopyWith(
          DealCategory value, $Res Function(DealCategory) then) =
      _$DealCategoryCopyWithImpl<$Res, DealCategory>;
  @useResult
  $Res call(
      {UniqueId<String?> id,
      MediaField asset,
      bool isActive,
      BasicTextField name,
      BasicTextField slug,
      BasicTextField description,
      NumField<double?> charge,
      NumField<double?> percentageIncrease,
      NumField<int> productsAssigned,
      Deal? deal,
      DateTime? createdAt,
      DateTime? updatedAt});

  $DealCopyWith<$Res>? get deal;
}

/// @nodoc
class _$DealCategoryCopyWithImpl<$Res, $Val extends DealCategory>
    implements $DealCategoryCopyWith<$Res> {
  _$DealCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? asset = null,
    Object? isActive = null,
    Object? name = null,
    Object? slug = null,
    Object? description = null,
    Object? charge = null,
    Object? percentageIncrease = null,
    Object? productsAssigned = null,
    Object? deal = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      asset: null == asset
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as MediaField,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      charge: null == charge
          ? _value.charge
          : charge // ignore: cast_nullable_to_non_nullable
              as NumField<double?>,
      percentageIncrease: null == percentageIncrease
          ? _value.percentageIncrease
          : percentageIncrease // ignore: cast_nullable_to_non_nullable
              as NumField<double?>,
      productsAssigned: null == productsAssigned
          ? _value.productsAssigned
          : productsAssigned // ignore: cast_nullable_to_non_nullable
              as NumField<int>,
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
abstract class _$$_DealCategoryCopyWith<$Res>
    implements $DealCategoryCopyWith<$Res> {
  factory _$$_DealCategoryCopyWith(
          _$_DealCategory value, $Res Function(_$_DealCategory) then) =
      __$$_DealCategoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId<String?> id,
      MediaField asset,
      bool isActive,
      BasicTextField name,
      BasicTextField slug,
      BasicTextField description,
      NumField<double?> charge,
      NumField<double?> percentageIncrease,
      NumField<int> productsAssigned,
      Deal? deal,
      DateTime? createdAt,
      DateTime? updatedAt});

  @override
  $DealCopyWith<$Res>? get deal;
}

/// @nodoc
class __$$_DealCategoryCopyWithImpl<$Res>
    extends _$DealCategoryCopyWithImpl<$Res, _$_DealCategory>
    implements _$$_DealCategoryCopyWith<$Res> {
  __$$_DealCategoryCopyWithImpl(
      _$_DealCategory _value, $Res Function(_$_DealCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? asset = null,
    Object? isActive = null,
    Object? name = null,
    Object? slug = null,
    Object? description = null,
    Object? charge = null,
    Object? percentageIncrease = null,
    Object? productsAssigned = null,
    Object? deal = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_DealCategory(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      asset: null == asset
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as MediaField,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      charge: null == charge
          ? _value.charge
          : charge // ignore: cast_nullable_to_non_nullable
              as NumField<double?>,
      percentageIncrease: null == percentageIncrease
          ? _value.percentageIncrease
          : percentageIncrease // ignore: cast_nullable_to_non_nullable
              as NumField<double?>,
      productsAssigned: null == productsAssigned
          ? _value.productsAssigned
          : productsAssigned // ignore: cast_nullable_to_non_nullable
              as NumField<int>,
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

class _$_DealCategory extends _DealCategory {
  const _$_DealCategory(
      {required this.id,
      required this.asset,
      this.isActive = false,
      required this.name,
      required this.slug,
      required this.description,
      required this.charge,
      required this.percentageIncrease,
      required this.productsAssigned,
      this.deal,
      this.createdAt,
      this.updatedAt})
      : super._();

  @override
  final UniqueId<String?> id;
  @override
  final MediaField asset;
  @override
  @JsonKey()
  final bool isActive;
  @override
  final BasicTextField name;
  @override
  final BasicTextField slug;
  @override
  final BasicTextField description;
  @override
  final NumField<double?> charge;
  @override
  final NumField<double?> percentageIncrease;
  @override
  final NumField<int> productsAssigned;
  @override
  final Deal? deal;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'DealCategory(id: $id, asset: $asset, isActive: $isActive, name: $name, slug: $slug, description: $description, charge: $charge, percentageIncrease: $percentageIncrease, productsAssigned: $productsAssigned, deal: $deal, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DealCategory &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.asset, asset) || other.asset == asset) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.charge, charge) || other.charge == charge) &&
            (identical(other.percentageIncrease, percentageIncrease) ||
                other.percentageIncrease == percentageIncrease) &&
            (identical(other.productsAssigned, productsAssigned) ||
                other.productsAssigned == productsAssigned) &&
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
      asset,
      isActive,
      name,
      slug,
      description,
      charge,
      percentageIncrease,
      productsAssigned,
      deal,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DealCategoryCopyWith<_$_DealCategory> get copyWith =>
      __$$_DealCategoryCopyWithImpl<_$_DealCategory>(this, _$identity);
}

abstract class _DealCategory extends DealCategory {
  const factory _DealCategory(
      {required final UniqueId<String?> id,
      required final MediaField asset,
      final bool isActive,
      required final BasicTextField name,
      required final BasicTextField slug,
      required final BasicTextField description,
      required final NumField<double?> charge,
      required final NumField<double?> percentageIncrease,
      required final NumField<int> productsAssigned,
      final Deal? deal,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$_DealCategory;
  const _DealCategory._() : super._();

  @override
  UniqueId<String?> get id;
  @override
  MediaField get asset;
  @override
  bool get isActive;
  @override
  BasicTextField get name;
  @override
  BasicTextField get slug;
  @override
  BasicTextField get description;
  @override
  NumField<double?> get charge;
  @override
  NumField<double?> get percentageIncrease;
  @override
  NumField<int> get productsAssigned;
  @override
  Deal? get deal;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_DealCategoryCopyWith<_$_DealCategory> get copyWith =>
      throw _privateConstructorUsedError;
}
