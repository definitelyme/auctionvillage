// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of product.entity.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Product {
  UniqueId<String?> get id => throw _privateConstructorUsedError;
  BasicTextField get name => throw _privateConstructorUsedError;
  BasicTextField get description => throw _privateConstructorUsedError;
  KtList<UploadableMedia> get photos => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  bool? get isFavorite => throw _privateConstructorUsedError;
  DealStatus get dealStatus => throw _privateConstructorUsedError;
  BasicTextField get lga => throw _privateConstructorUsedError;
  BasicTextField get state => throw _privateConstructorUsedError;
  User? get owner => throw _privateConstructorUsedError;
  Deal? get deal => throw _privateConstructorUsedError;
  Country? get country => throw _privateConstructorUsedError;
  DealCategory? get category => throw _privateConstructorUsedError;
  BrandInformation? get brandInformation => throw _privateConstructorUsedError;
  ShippingInformation? get shippingInformation =>
      throw _privateConstructorUsedError;
  ImmutableStrings get tags => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {UniqueId<String?> id,
      BasicTextField name,
      BasicTextField description,
      KtList<UploadableMedia> photos,
      bool isActive,
      bool? isFavorite,
      DealStatus dealStatus,
      BasicTextField lga,
      BasicTextField state,
      User? owner,
      Deal? deal,
      Country? country,
      DealCategory? category,
      BrandInformation? brandInformation,
      ShippingInformation? shippingInformation,
      ImmutableStrings tags,
      DateTime? createdAt,
      DateTime? updatedAt});

  $UserCopyWith<$Res>? get owner;
  $DealCopyWith<$Res>? get deal;
  $CountryCopyWith<$Res>? get country;
  $DealCategoryCopyWith<$Res>? get category;
  $BrandInformationCopyWith<$Res>? get brandInformation;
  $ShippingInformationCopyWith<$Res>? get shippingInformation;
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? photos = null,
    Object? isActive = null,
    Object? isFavorite = freezed,
    Object? dealStatus = null,
    Object? lga = null,
    Object? state = null,
    Object? owner = freezed,
    Object? deal = freezed,
    Object? country = freezed,
    Object? category = freezed,
    Object? brandInformation = freezed,
    Object? shippingInformation = freezed,
    Object? tags = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      photos: null == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as KtList<UploadableMedia>,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      isFavorite: freezed == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool?,
      dealStatus: null == dealStatus
          ? _value.dealStatus
          : dealStatus // ignore: cast_nullable_to_non_nullable
              as DealStatus,
      lga: null == lga
          ? _value.lga
          : lga // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as User?,
      deal: freezed == deal
          ? _value.deal
          : deal // ignore: cast_nullable_to_non_nullable
              as Deal?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as DealCategory?,
      brandInformation: freezed == brandInformation
          ? _value.brandInformation
          : brandInformation // ignore: cast_nullable_to_non_nullable
              as BrandInformation?,
      shippingInformation: freezed == shippingInformation
          ? _value.shippingInformation
          : shippingInformation // ignore: cast_nullable_to_non_nullable
              as ShippingInformation?,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as ImmutableStrings,
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
  $UserCopyWith<$Res>? get owner {
    if (_value.owner == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.owner!, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
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
  $CountryCopyWith<$Res>? get country {
    if (_value.country == null) {
      return null;
    }

    return $CountryCopyWith<$Res>(_value.country!, (value) {
      return _then(_value.copyWith(country: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DealCategoryCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $DealCategoryCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BrandInformationCopyWith<$Res>? get brandInformation {
    if (_value.brandInformation == null) {
      return null;
    }

    return $BrandInformationCopyWith<$Res>(_value.brandInformation!, (value) {
      return _then(_value.copyWith(brandInformation: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ShippingInformationCopyWith<$Res>? get shippingInformation {
    if (_value.shippingInformation == null) {
      return null;
    }

    return $ShippingInformationCopyWith<$Res>(_value.shippingInformation!,
        (value) {
      return _then(_value.copyWith(shippingInformation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$_ProductCopyWith(
          _$_Product value, $Res Function(_$_Product) then) =
      __$$_ProductCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId<String?> id,
      BasicTextField name,
      BasicTextField description,
      KtList<UploadableMedia> photos,
      bool isActive,
      bool? isFavorite,
      DealStatus dealStatus,
      BasicTextField lga,
      BasicTextField state,
      User? owner,
      Deal? deal,
      Country? country,
      DealCategory? category,
      BrandInformation? brandInformation,
      ShippingInformation? shippingInformation,
      ImmutableStrings tags,
      DateTime? createdAt,
      DateTime? updatedAt});

  @override
  $UserCopyWith<$Res>? get owner;
  @override
  $DealCopyWith<$Res>? get deal;
  @override
  $CountryCopyWith<$Res>? get country;
  @override
  $DealCategoryCopyWith<$Res>? get category;
  @override
  $BrandInformationCopyWith<$Res>? get brandInformation;
  @override
  $ShippingInformationCopyWith<$Res>? get shippingInformation;
}

/// @nodoc
class __$$_ProductCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$_Product>
    implements _$$_ProductCopyWith<$Res> {
  __$$_ProductCopyWithImpl(_$_Product _value, $Res Function(_$_Product) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? photos = null,
    Object? isActive = null,
    Object? isFavorite = freezed,
    Object? dealStatus = null,
    Object? lga = null,
    Object? state = null,
    Object? owner = freezed,
    Object? deal = freezed,
    Object? country = freezed,
    Object? category = freezed,
    Object? brandInformation = freezed,
    Object? shippingInformation = freezed,
    Object? tags = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_Product(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      photos: null == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as KtList<UploadableMedia>,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      isFavorite: freezed == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool?,
      dealStatus: null == dealStatus
          ? _value.dealStatus
          : dealStatus // ignore: cast_nullable_to_non_nullable
              as DealStatus,
      lga: null == lga
          ? _value.lga
          : lga // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as User?,
      deal: freezed == deal
          ? _value.deal
          : deal // ignore: cast_nullable_to_non_nullable
              as Deal?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as DealCategory?,
      brandInformation: freezed == brandInformation
          ? _value.brandInformation
          : brandInformation // ignore: cast_nullable_to_non_nullable
              as BrandInformation?,
      shippingInformation: freezed == shippingInformation
          ? _value.shippingInformation
          : shippingInformation // ignore: cast_nullable_to_non_nullable
              as ShippingInformation?,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as ImmutableStrings,
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

class _$_Product extends _Product {
  const _$_Product(
      {required this.id,
      required this.name,
      required this.description,
      this.photos = const KtList.empty(),
      this.isActive = false,
      this.isFavorite,
      this.dealStatus = DealStatus.pending,
      required this.lga,
      required this.state,
      this.owner,
      this.deal,
      this.country,
      this.category,
      this.brandInformation,
      this.shippingInformation,
      required this.tags,
      this.createdAt,
      this.updatedAt})
      : super._();

  @override
  final UniqueId<String?> id;
  @override
  final BasicTextField name;
  @override
  final BasicTextField description;
  @override
  @JsonKey()
  final KtList<UploadableMedia> photos;
  @override
  @JsonKey()
  final bool isActive;
  @override
  final bool? isFavorite;
  @override
  @JsonKey()
  final DealStatus dealStatus;
  @override
  final BasicTextField lga;
  @override
  final BasicTextField state;
  @override
  final User? owner;
  @override
  final Deal? deal;
  @override
  final Country? country;
  @override
  final DealCategory? category;
  @override
  final BrandInformation? brandInformation;
  @override
  final ShippingInformation? shippingInformation;
  @override
  final ImmutableStrings tags;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Product(id: $id, name: $name, description: $description, photos: $photos, isActive: $isActive, isFavorite: $isFavorite, dealStatus: $dealStatus, lga: $lga, state: $state, owner: $owner, deal: $deal, country: $country, category: $category, brandInformation: $brandInformation, shippingInformation: $shippingInformation, tags: $tags, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Product &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.photos, photos) || other.photos == photos) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite) &&
            (identical(other.dealStatus, dealStatus) ||
                other.dealStatus == dealStatus) &&
            (identical(other.lga, lga) || other.lga == lga) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.deal, deal) || other.deal == deal) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.brandInformation, brandInformation) ||
                other.brandInformation == brandInformation) &&
            (identical(other.shippingInformation, shippingInformation) ||
                other.shippingInformation == shippingInformation) &&
            (identical(other.tags, tags) || other.tags == tags) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      photos,
      isActive,
      isFavorite,
      dealStatus,
      lga,
      state,
      owner,
      deal,
      country,
      category,
      brandInformation,
      shippingInformation,
      tags,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductCopyWith<_$_Product> get copyWith =>
      __$$_ProductCopyWithImpl<_$_Product>(this, _$identity);
}

abstract class _Product extends Product {
  const factory _Product(
      {required final UniqueId<String?> id,
      required final BasicTextField name,
      required final BasicTextField description,
      final KtList<UploadableMedia> photos,
      final bool isActive,
      final bool? isFavorite,
      final DealStatus dealStatus,
      required final BasicTextField lga,
      required final BasicTextField state,
      final User? owner,
      final Deal? deal,
      final Country? country,
      final DealCategory? category,
      final BrandInformation? brandInformation,
      final ShippingInformation? shippingInformation,
      required final ImmutableStrings tags,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$_Product;
  const _Product._() : super._();

  @override
  UniqueId<String?> get id;
  @override
  BasicTextField get name;
  @override
  BasicTextField get description;
  @override
  KtList<UploadableMedia> get photos;
  @override
  bool get isActive;
  @override
  bool? get isFavorite;
  @override
  DealStatus get dealStatus;
  @override
  BasicTextField get lga;
  @override
  BasicTextField get state;
  @override
  User? get owner;
  @override
  Deal? get deal;
  @override
  Country? get country;
  @override
  DealCategory? get category;
  @override
  BrandInformation? get brandInformation;
  @override
  ShippingInformation? get shippingInformation;
  @override
  ImmutableStrings get tags;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_ProductCopyWith<_$_Product> get copyWith =>
      throw _privateConstructorUsedError;
}
