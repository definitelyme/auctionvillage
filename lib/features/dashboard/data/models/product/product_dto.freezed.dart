// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of product_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductDTO _$ProductDTOFromJson(Map<String, dynamic> json) {
  return _ProductDTO.fromJson(json);
}

/// @nodoc
mixin _$ProductDTO {
  @JsonKey(name: '_meta')
  MetaDTO? get meta => throw _privateConstructorUsedError;
  ProductDTOData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDTOCopyWith<ProductDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDTOCopyWith<$Res> {
  factory $ProductDTOCopyWith(
          ProductDTO value, $Res Function(ProductDTO) then) =
      _$ProductDTOCopyWithImpl<$Res, ProductDTO>;
  @useResult
  $Res call({@JsonKey(name: '_meta') MetaDTO? meta, ProductDTOData data});

  $MetaDTOCopyWith<$Res>? get meta;
  $ProductDTODataCopyWith<$Res> get data;
}

/// @nodoc
class _$ProductDTOCopyWithImpl<$Res, $Val extends ProductDTO>
    implements $ProductDTOCopyWith<$Res> {
  _$ProductDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = freezed,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDTO?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ProductDTOData,
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

  @override
  @pragma('vm:prefer-inline')
  $ProductDTODataCopyWith<$Res> get data {
    return $ProductDTODataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProductDTOCopyWith<$Res>
    implements $ProductDTOCopyWith<$Res> {
  factory _$$_ProductDTOCopyWith(
          _$_ProductDTO value, $Res Function(_$_ProductDTO) then) =
      __$$_ProductDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: '_meta') MetaDTO? meta, ProductDTOData data});

  @override
  $MetaDTOCopyWith<$Res>? get meta;
  @override
  $ProductDTODataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_ProductDTOCopyWithImpl<$Res>
    extends _$ProductDTOCopyWithImpl<$Res, _$_ProductDTO>
    implements _$$_ProductDTOCopyWith<$Res> {
  __$$_ProductDTOCopyWithImpl(
      _$_ProductDTO _value, $Res Function(_$_ProductDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = freezed,
    Object? data = null,
  }) {
    return _then(_$_ProductDTO(
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDTO?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ProductDTOData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductDTO extends _ProductDTO {
  const _$_ProductDTO({@JsonKey(name: '_meta') this.meta, required this.data})
      : super._();

  factory _$_ProductDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ProductDTOFromJson(json);

  @override
  @JsonKey(name: '_meta')
  final MetaDTO? meta;
  @override
  final ProductDTOData data;

  @override
  String toString() {
    return 'ProductDTO(meta: $meta, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductDTO &&
            (identical(other.meta, meta) || other.meta == meta) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, meta, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductDTOCopyWith<_$_ProductDTO> get copyWith =>
      __$$_ProductDTOCopyWithImpl<_$_ProductDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductDTOToJson(
      this,
    );
  }
}

abstract class _ProductDTO extends ProductDTO {
  const factory _ProductDTO(
      {@JsonKey(name: '_meta') final MetaDTO? meta,
      required final ProductDTOData data}) = _$_ProductDTO;
  const _ProductDTO._() : super._();

  factory _ProductDTO.fromJson(Map<String, dynamic> json) =
      _$_ProductDTO.fromJson;

  @override
  @JsonKey(name: '_meta')
  MetaDTO? get meta;
  @override
  ProductDTOData get data;
  @override
  @JsonKey(ignore: true)
  _$$_ProductDTOCopyWith<_$_ProductDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductDTOData _$ProductDTODataFromJson(Map<String, dynamic> json) {
  return _ProductDTOData.fromJson(json);
}

/// @nodoc
mixin _$ProductDTOData {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  BrandInformationDTO? get brandInformation =>
      throw _privateConstructorUsedError;
  ShippingInformationDTO? get shippingInformation =>
      throw _privateConstructorUsedError;
  CategoryDTOData? get category => throw _privateConstructorUsedError;
  UserDTO? get user => throw _privateConstructorUsedError;
  UserDTO? get owner => throw _privateConstructorUsedError;
  @BooleanSerializer()
  bool? get isFavorite => throw _privateConstructorUsedError;
  List<String?> get photos => throw _privateConstructorUsedError;
  @BooleanSerializer()
  bool? get active => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(toJson: DealStatus.toJson, fromJson: DealStatus.fromJson)
  DealStatus? get status => throw _privateConstructorUsedError;
  DealDTOData? get deal => throw _privateConstructorUsedError;
  String? get lga => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  List<String>? get tags => throw _privateConstructorUsedError;
  _ProductInfo? get productInfo => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDTODataCopyWith<ProductDTOData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDTODataCopyWith<$Res> {
  factory $ProductDTODataCopyWith(
          ProductDTOData value, $Res Function(ProductDTOData) then) =
      _$ProductDTODataCopyWithImpl<$Res, ProductDTOData>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id')
          String? id,
      BrandInformationDTO? brandInformation,
      ShippingInformationDTO? shippingInformation,
      CategoryDTOData? category,
      UserDTO? user,
      UserDTO? owner,
      @BooleanSerializer()
          bool? isFavorite,
      List<String?> photos,
      @BooleanSerializer()
          bool? active,
      String? description,
      @JsonKey(toJson: DealStatus.toJson, fromJson: DealStatus.fromJson)
          DealStatus? status,
      DealDTOData? deal,
      String? lga,
      String? name,
      String? state,
      String? country,
      List<String>? tags,
      _ProductInfo? productInfo,
      @TimestampConverter()
          DateTime? createdAt,
      @TimestampConverter()
          DateTime? updatedAt});

  $BrandInformationDTOCopyWith<$Res>? get brandInformation;
  $ShippingInformationDTOCopyWith<$Res>? get shippingInformation;
  $CategoryDTODataCopyWith<$Res>? get category;
  $UserDTOCopyWith<$Res>? get user;
  $UserDTOCopyWith<$Res>? get owner;
  $DealDTODataCopyWith<$Res>? get deal;
  _$ProductInfoCopyWith<$Res>? get productInfo;
}

/// @nodoc
class _$ProductDTODataCopyWithImpl<$Res, $Val extends ProductDTOData>
    implements $ProductDTODataCopyWith<$Res> {
  _$ProductDTODataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? brandInformation = freezed,
    Object? shippingInformation = freezed,
    Object? category = freezed,
    Object? user = freezed,
    Object? owner = freezed,
    Object? isFavorite = freezed,
    Object? photos = null,
    Object? active = freezed,
    Object? description = freezed,
    Object? status = freezed,
    Object? deal = freezed,
    Object? lga = freezed,
    Object? name = freezed,
    Object? state = freezed,
    Object? country = freezed,
    Object? tags = freezed,
    Object? productInfo = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      brandInformation: freezed == brandInformation
          ? _value.brandInformation
          : brandInformation // ignore: cast_nullable_to_non_nullable
              as BrandInformationDTO?,
      shippingInformation: freezed == shippingInformation
          ? _value.shippingInformation
          : shippingInformation // ignore: cast_nullable_to_non_nullable
              as ShippingInformationDTO?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryDTOData?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDTO?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as UserDTO?,
      isFavorite: freezed == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool?,
      photos: null == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String?>,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DealStatus?,
      deal: freezed == deal
          ? _value.deal
          : deal // ignore: cast_nullable_to_non_nullable
              as DealDTOData?,
      lga: freezed == lga
          ? _value.lga
          : lga // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      productInfo: freezed == productInfo
          ? _value.productInfo
          : productInfo // ignore: cast_nullable_to_non_nullable
              as _ProductInfo?,
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
  $BrandInformationDTOCopyWith<$Res>? get brandInformation {
    if (_value.brandInformation == null) {
      return null;
    }

    return $BrandInformationDTOCopyWith<$Res>(_value.brandInformation!,
        (value) {
      return _then(_value.copyWith(brandInformation: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ShippingInformationDTOCopyWith<$Res>? get shippingInformation {
    if (_value.shippingInformation == null) {
      return null;
    }

    return $ShippingInformationDTOCopyWith<$Res>(_value.shippingInformation!,
        (value) {
      return _then(_value.copyWith(shippingInformation: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryDTODataCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $CategoryDTODataCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
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

  @override
  @pragma('vm:prefer-inline')
  $UserDTOCopyWith<$Res>? get owner {
    if (_value.owner == null) {
      return null;
    }

    return $UserDTOCopyWith<$Res>(_value.owner!, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DealDTODataCopyWith<$Res>? get deal {
    if (_value.deal == null) {
      return null;
    }

    return $DealDTODataCopyWith<$Res>(_value.deal!, (value) {
      return _then(_value.copyWith(deal: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  _$ProductInfoCopyWith<$Res>? get productInfo {
    if (_value.productInfo == null) {
      return null;
    }

    return _$ProductInfoCopyWith<$Res>(_value.productInfo!, (value) {
      return _then(_value.copyWith(productInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProductDTODataCopyWith<$Res>
    implements $ProductDTODataCopyWith<$Res> {
  factory _$$_ProductDTODataCopyWith(
          _$_ProductDTOData value, $Res Function(_$_ProductDTOData) then) =
      __$$_ProductDTODataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id')
          String? id,
      BrandInformationDTO? brandInformation,
      ShippingInformationDTO? shippingInformation,
      CategoryDTOData? category,
      UserDTO? user,
      UserDTO? owner,
      @BooleanSerializer()
          bool? isFavorite,
      List<String?> photos,
      @BooleanSerializer()
          bool? active,
      String? description,
      @JsonKey(toJson: DealStatus.toJson, fromJson: DealStatus.fromJson)
          DealStatus? status,
      DealDTOData? deal,
      String? lga,
      String? name,
      String? state,
      String? country,
      List<String>? tags,
      _ProductInfo? productInfo,
      @TimestampConverter()
          DateTime? createdAt,
      @TimestampConverter()
          DateTime? updatedAt});

  @override
  $BrandInformationDTOCopyWith<$Res>? get brandInformation;
  @override
  $ShippingInformationDTOCopyWith<$Res>? get shippingInformation;
  @override
  $CategoryDTODataCopyWith<$Res>? get category;
  @override
  $UserDTOCopyWith<$Res>? get user;
  @override
  $UserDTOCopyWith<$Res>? get owner;
  @override
  $DealDTODataCopyWith<$Res>? get deal;
  @override
  _$ProductInfoCopyWith<$Res>? get productInfo;
}

/// @nodoc
class __$$_ProductDTODataCopyWithImpl<$Res>
    extends _$ProductDTODataCopyWithImpl<$Res, _$_ProductDTOData>
    implements _$$_ProductDTODataCopyWith<$Res> {
  __$$_ProductDTODataCopyWithImpl(
      _$_ProductDTOData _value, $Res Function(_$_ProductDTOData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? brandInformation = freezed,
    Object? shippingInformation = freezed,
    Object? category = freezed,
    Object? user = freezed,
    Object? owner = freezed,
    Object? isFavorite = freezed,
    Object? photos = null,
    Object? active = freezed,
    Object? description = freezed,
    Object? status = freezed,
    Object? deal = freezed,
    Object? lga = freezed,
    Object? name = freezed,
    Object? state = freezed,
    Object? country = freezed,
    Object? tags = freezed,
    Object? productInfo = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_ProductDTOData(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      brandInformation: freezed == brandInformation
          ? _value.brandInformation
          : brandInformation // ignore: cast_nullable_to_non_nullable
              as BrandInformationDTO?,
      shippingInformation: freezed == shippingInformation
          ? _value.shippingInformation
          : shippingInformation // ignore: cast_nullable_to_non_nullable
              as ShippingInformationDTO?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryDTOData?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDTO?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as UserDTO?,
      isFavorite: freezed == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool?,
      photos: null == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String?>,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DealStatus?,
      deal: freezed == deal
          ? _value.deal
          : deal // ignore: cast_nullable_to_non_nullable
              as DealDTOData?,
      lga: freezed == lga
          ? _value.lga
          : lga // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      productInfo: freezed == productInfo
          ? _value.productInfo
          : productInfo // ignore: cast_nullable_to_non_nullable
              as _ProductInfo?,
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
@JsonSerializable()
class _$_ProductDTOData extends _ProductDTOData {
  _$_ProductDTOData(
      {@JsonKey(name: '_id')
          this.id,
      this.brandInformation,
      this.shippingInformation,
      this.category,
      this.user,
      this.owner,
      @BooleanSerializer()
          this.isFavorite,
      final List<String?> photos = const [],
      @BooleanSerializer()
          this.active,
      this.description,
      @JsonKey(toJson: DealStatus.toJson, fromJson: DealStatus.fromJson)
          this.status,
      this.deal,
      this.lga,
      this.name,
      this.state,
      this.country,
      final List<String>? tags,
      this.productInfo,
      @TimestampConverter()
          this.createdAt,
      @TimestampConverter()
          this.updatedAt})
      : _photos = photos,
        _tags = tags,
        super._();

  factory _$_ProductDTOData.fromJson(Map<String, dynamic> json) =>
      _$$_ProductDTODataFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final BrandInformationDTO? brandInformation;
  @override
  final ShippingInformationDTO? shippingInformation;
  @override
  final CategoryDTOData? category;
  @override
  final UserDTO? user;
  @override
  final UserDTO? owner;
  @override
  @BooleanSerializer()
  final bool? isFavorite;
  final List<String?> _photos;
  @override
  @JsonKey()
  List<String?> get photos {
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photos);
  }

  @override
  @BooleanSerializer()
  final bool? active;
  @override
  final String? description;
  @override
  @JsonKey(toJson: DealStatus.toJson, fromJson: DealStatus.fromJson)
  final DealStatus? status;
  @override
  final DealDTOData? deal;
  @override
  final String? lga;
  @override
  final String? name;
  @override
  final String? state;
  @override
  final String? country;
  final List<String>? _tags;
  @override
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final _ProductInfo? productInfo;
  @override
  @TimestampConverter()
  final DateTime? createdAt;
  @override
  @TimestampConverter()
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'ProductDTOData(id: $id, brandInformation: $brandInformation, shippingInformation: $shippingInformation, category: $category, user: $user, owner: $owner, isFavorite: $isFavorite, photos: $photos, active: $active, description: $description, status: $status, deal: $deal, lga: $lga, name: $name, state: $state, country: $country, tags: $tags, productInfo: $productInfo, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductDTOData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.brandInformation, brandInformation) ||
                other.brandInformation == brandInformation) &&
            (identical(other.shippingInformation, shippingInformation) ||
                other.shippingInformation == shippingInformation) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite) &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.deal, deal) || other.deal == deal) &&
            (identical(other.lga, lga) || other.lga == lga) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.country, country) || other.country == country) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.productInfo, productInfo) ||
                other.productInfo == productInfo) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        brandInformation,
        shippingInformation,
        category,
        user,
        owner,
        isFavorite,
        const DeepCollectionEquality().hash(_photos),
        active,
        description,
        status,
        deal,
        lga,
        name,
        state,
        country,
        const DeepCollectionEquality().hash(_tags),
        productInfo,
        createdAt,
        updatedAt
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductDTODataCopyWith<_$_ProductDTOData> get copyWith =>
      __$$_ProductDTODataCopyWithImpl<_$_ProductDTOData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductDTODataToJson(
      this,
    );
  }
}

abstract class _ProductDTOData extends ProductDTOData {
  factory _ProductDTOData(
      {@JsonKey(name: '_id')
          final String? id,
      final BrandInformationDTO? brandInformation,
      final ShippingInformationDTO? shippingInformation,
      final CategoryDTOData? category,
      final UserDTO? user,
      final UserDTO? owner,
      @BooleanSerializer()
          final bool? isFavorite,
      final List<String?> photos,
      @BooleanSerializer()
          final bool? active,
      final String? description,
      @JsonKey(toJson: DealStatus.toJson, fromJson: DealStatus.fromJson)
          final DealStatus? status,
      final DealDTOData? deal,
      final String? lga,
      final String? name,
      final String? state,
      final String? country,
      final List<String>? tags,
      final _ProductInfo? productInfo,
      @TimestampConverter()
          final DateTime? createdAt,
      @TimestampConverter()
          final DateTime? updatedAt}) = _$_ProductDTOData;
  _ProductDTOData._() : super._();

  factory _ProductDTOData.fromJson(Map<String, dynamic> json) =
      _$_ProductDTOData.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  BrandInformationDTO? get brandInformation;
  @override
  ShippingInformationDTO? get shippingInformation;
  @override
  CategoryDTOData? get category;
  @override
  UserDTO? get user;
  @override
  UserDTO? get owner;
  @override
  @BooleanSerializer()
  bool? get isFavorite;
  @override
  List<String?> get photos;
  @override
  @BooleanSerializer()
  bool? get active;
  @override
  String? get description;
  @override
  @JsonKey(toJson: DealStatus.toJson, fromJson: DealStatus.fromJson)
  DealStatus? get status;
  @override
  DealDTOData? get deal;
  @override
  String? get lga;
  @override
  String? get name;
  @override
  String? get state;
  @override
  String? get country;
  @override
  List<String>? get tags;
  @override
  _ProductInfo? get productInfo;
  @override
  @TimestampConverter()
  DateTime? get createdAt;
  @override
  @TimestampConverter()
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_ProductDTODataCopyWith<_$_ProductDTOData> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductListDTO _$ProductListDTOFromJson(Map<String, dynamic> json) {
  return _ProductListDTO.fromJson(json);
}

/// @nodoc
mixin _$ProductListDTO {
  @JsonKey(name: '_meta')
  MetaDTO? get meta => throw _privateConstructorUsedError;
  List<ProductDTOData> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductListDTOCopyWith<ProductListDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductListDTOCopyWith<$Res> {
  factory $ProductListDTOCopyWith(
          ProductListDTO value, $Res Function(ProductListDTO) then) =
      _$ProductListDTOCopyWithImpl<$Res, ProductListDTO>;
  @useResult
  $Res call({@JsonKey(name: '_meta') MetaDTO? meta, List<ProductDTOData> data});

  $MetaDTOCopyWith<$Res>? get meta;
}

/// @nodoc
class _$ProductListDTOCopyWithImpl<$Res, $Val extends ProductListDTO>
    implements $ProductListDTOCopyWith<$Res> {
  _$ProductListDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = freezed,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDTO?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ProductDTOData>,
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
abstract class _$$_ProductListDTOCopyWith<$Res>
    implements $ProductListDTOCopyWith<$Res> {
  factory _$$_ProductListDTOCopyWith(
          _$_ProductListDTO value, $Res Function(_$_ProductListDTO) then) =
      __$$_ProductListDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: '_meta') MetaDTO? meta, List<ProductDTOData> data});

  @override
  $MetaDTOCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$_ProductListDTOCopyWithImpl<$Res>
    extends _$ProductListDTOCopyWithImpl<$Res, _$_ProductListDTO>
    implements _$$_ProductListDTOCopyWith<$Res> {
  __$$_ProductListDTOCopyWithImpl(
      _$_ProductListDTO _value, $Res Function(_$_ProductListDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = freezed,
    Object? data = null,
  }) {
    return _then(_$_ProductListDTO(
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDTO?,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ProductDTOData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductListDTO extends _ProductListDTO {
  const _$_ProductListDTO(
      {@JsonKey(name: '_meta') this.meta,
      final List<ProductDTOData> data = const []})
      : _data = data,
        super._();

  factory _$_ProductListDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ProductListDTOFromJson(json);

  @override
  @JsonKey(name: '_meta')
  final MetaDTO? meta;
  final List<ProductDTOData> _data;
  @override
  @JsonKey()
  List<ProductDTOData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'ProductListDTO(meta: $meta, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductListDTO &&
            (identical(other.meta, meta) || other.meta == meta) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, meta, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductListDTOCopyWith<_$_ProductListDTO> get copyWith =>
      __$$_ProductListDTOCopyWithImpl<_$_ProductListDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductListDTOToJson(
      this,
    );
  }
}

abstract class _ProductListDTO extends ProductListDTO {
  const factory _ProductListDTO(
      {@JsonKey(name: '_meta') final MetaDTO? meta,
      final List<ProductDTOData> data}) = _$_ProductListDTO;
  const _ProductListDTO._() : super._();

  factory _ProductListDTO.fromJson(Map<String, dynamic> json) =
      _$_ProductListDTO.fromJson;

  @override
  @JsonKey(name: '_meta')
  MetaDTO? get meta;
  @override
  List<ProductDTOData> get data;
  @override
  @JsonKey(ignore: true)
  _$$_ProductListDTOCopyWith<_$_ProductListDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

_ProductInfo _$_ProductInfoFromJson(Map<String, dynamic> json) {
  return __ProductInfo.fromJson(json);
}

/// @nodoc
mixin _$_ProductInfo {
  BrandInformationDTO? get brandInformation =>
      throw _privateConstructorUsedError;
  ShippingInformationDTO? get shippingInformation =>
      throw _privateConstructorUsedError;
  List<String?> get photos => throw _privateConstructorUsedError;
  @BooleanSerializer()
  bool? get isFavorite => throw _privateConstructorUsedError;
  @StringSerializer()
  String? get lga => throw _privateConstructorUsedError;
  @StringSerializer()
  String? get name => throw _privateConstructorUsedError;
  @StringSerializer()
  String? get state => throw _privateConstructorUsedError;
  @StringSerializer()
  String? get country => throw _privateConstructorUsedError;
  @JsonKey(name: 'category')
  String? get categoryId => throw _privateConstructorUsedError;
  List<String>? get tags => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ProductInfoCopyWith<_ProductInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ProductInfoCopyWith<$Res> {
  factory _$ProductInfoCopyWith(
          _ProductInfo value, $Res Function(_ProductInfo) then) =
      __$ProductInfoCopyWithImpl<$Res, _ProductInfo>;
  @useResult
  $Res call(
      {BrandInformationDTO? brandInformation,
      ShippingInformationDTO? shippingInformation,
      List<String?> photos,
      @BooleanSerializer() bool? isFavorite,
      @StringSerializer() String? lga,
      @StringSerializer() String? name,
      @StringSerializer() String? state,
      @StringSerializer() String? country,
      @JsonKey(name: 'category') String? categoryId,
      List<String>? tags});

  $BrandInformationDTOCopyWith<$Res>? get brandInformation;
  $ShippingInformationDTOCopyWith<$Res>? get shippingInformation;
}

/// @nodoc
class __$ProductInfoCopyWithImpl<$Res, $Val extends _ProductInfo>
    implements _$ProductInfoCopyWith<$Res> {
  __$ProductInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brandInformation = freezed,
    Object? shippingInformation = freezed,
    Object? photos = null,
    Object? isFavorite = freezed,
    Object? lga = freezed,
    Object? name = freezed,
    Object? state = freezed,
    Object? country = freezed,
    Object? categoryId = freezed,
    Object? tags = freezed,
  }) {
    return _then(_value.copyWith(
      brandInformation: freezed == brandInformation
          ? _value.brandInformation
          : brandInformation // ignore: cast_nullable_to_non_nullable
              as BrandInformationDTO?,
      shippingInformation: freezed == shippingInformation
          ? _value.shippingInformation
          : shippingInformation // ignore: cast_nullable_to_non_nullable
              as ShippingInformationDTO?,
      photos: null == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String?>,
      isFavorite: freezed == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool?,
      lga: freezed == lga
          ? _value.lga
          : lga // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BrandInformationDTOCopyWith<$Res>? get brandInformation {
    if (_value.brandInformation == null) {
      return null;
    }

    return $BrandInformationDTOCopyWith<$Res>(_value.brandInformation!,
        (value) {
      return _then(_value.copyWith(brandInformation: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ShippingInformationDTOCopyWith<$Res>? get shippingInformation {
    if (_value.shippingInformation == null) {
      return null;
    }

    return $ShippingInformationDTOCopyWith<$Res>(_value.shippingInformation!,
        (value) {
      return _then(_value.copyWith(shippingInformation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$__ProductInfoCopyWith<$Res>
    implements _$ProductInfoCopyWith<$Res> {
  factory _$$__ProductInfoCopyWith(
          _$__ProductInfo value, $Res Function(_$__ProductInfo) then) =
      __$$__ProductInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BrandInformationDTO? brandInformation,
      ShippingInformationDTO? shippingInformation,
      List<String?> photos,
      @BooleanSerializer() bool? isFavorite,
      @StringSerializer() String? lga,
      @StringSerializer() String? name,
      @StringSerializer() String? state,
      @StringSerializer() String? country,
      @JsonKey(name: 'category') String? categoryId,
      List<String>? tags});

  @override
  $BrandInformationDTOCopyWith<$Res>? get brandInformation;
  @override
  $ShippingInformationDTOCopyWith<$Res>? get shippingInformation;
}

/// @nodoc
class __$$__ProductInfoCopyWithImpl<$Res>
    extends __$ProductInfoCopyWithImpl<$Res, _$__ProductInfo>
    implements _$$__ProductInfoCopyWith<$Res> {
  __$$__ProductInfoCopyWithImpl(
      _$__ProductInfo _value, $Res Function(_$__ProductInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brandInformation = freezed,
    Object? shippingInformation = freezed,
    Object? photos = null,
    Object? isFavorite = freezed,
    Object? lga = freezed,
    Object? name = freezed,
    Object? state = freezed,
    Object? country = freezed,
    Object? categoryId = freezed,
    Object? tags = freezed,
  }) {
    return _then(_$__ProductInfo(
      brandInformation: freezed == brandInformation
          ? _value.brandInformation
          : brandInformation // ignore: cast_nullable_to_non_nullable
              as BrandInformationDTO?,
      shippingInformation: freezed == shippingInformation
          ? _value.shippingInformation
          : shippingInformation // ignore: cast_nullable_to_non_nullable
              as ShippingInformationDTO?,
      photos: null == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String?>,
      isFavorite: freezed == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool?,
      lga: freezed == lga
          ? _value.lga
          : lga // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$__ProductInfo extends __ProductInfo {
  const _$__ProductInfo(
      {this.brandInformation,
      this.shippingInformation,
      final List<String?> photos = const [],
      @BooleanSerializer() this.isFavorite,
      @StringSerializer() this.lga,
      @StringSerializer() this.name,
      @StringSerializer() this.state,
      @StringSerializer() this.country,
      @JsonKey(name: 'category') this.categoryId,
      final List<String>? tags})
      : _photos = photos,
        _tags = tags,
        super._();

  factory _$__ProductInfo.fromJson(Map<String, dynamic> json) =>
      _$$__ProductInfoFromJson(json);

  @override
  final BrandInformationDTO? brandInformation;
  @override
  final ShippingInformationDTO? shippingInformation;
  final List<String?> _photos;
  @override
  @JsonKey()
  List<String?> get photos {
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photos);
  }

  @override
  @BooleanSerializer()
  final bool? isFavorite;
  @override
  @StringSerializer()
  final String? lga;
  @override
  @StringSerializer()
  final String? name;
  @override
  @StringSerializer()
  final String? state;
  @override
  @StringSerializer()
  final String? country;
  @override
  @JsonKey(name: 'category')
  final String? categoryId;
  final List<String>? _tags;
  @override
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return '_ProductInfo(brandInformation: $brandInformation, shippingInformation: $shippingInformation, photos: $photos, isFavorite: $isFavorite, lga: $lga, name: $name, state: $state, country: $country, categoryId: $categoryId, tags: $tags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$__ProductInfo &&
            (identical(other.brandInformation, brandInformation) ||
                other.brandInformation == brandInformation) &&
            (identical(other.shippingInformation, shippingInformation) ||
                other.shippingInformation == shippingInformation) &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite) &&
            (identical(other.lga, lga) || other.lga == lga) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      brandInformation,
      shippingInformation,
      const DeepCollectionEquality().hash(_photos),
      isFavorite,
      lga,
      name,
      state,
      country,
      categoryId,
      const DeepCollectionEquality().hash(_tags));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$__ProductInfoCopyWith<_$__ProductInfo> get copyWith =>
      __$$__ProductInfoCopyWithImpl<_$__ProductInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$__ProductInfoToJson(
      this,
    );
  }
}

abstract class __ProductInfo extends _ProductInfo {
  const factory __ProductInfo(
      {final BrandInformationDTO? brandInformation,
      final ShippingInformationDTO? shippingInformation,
      final List<String?> photos,
      @BooleanSerializer() final bool? isFavorite,
      @StringSerializer() final String? lga,
      @StringSerializer() final String? name,
      @StringSerializer() final String? state,
      @StringSerializer() final String? country,
      @JsonKey(name: 'category') final String? categoryId,
      final List<String>? tags}) = _$__ProductInfo;
  const __ProductInfo._() : super._();

  factory __ProductInfo.fromJson(Map<String, dynamic> json) =
      _$__ProductInfo.fromJson;

  @override
  BrandInformationDTO? get brandInformation;
  @override
  ShippingInformationDTO? get shippingInformation;
  @override
  List<String?> get photos;
  @override
  @BooleanSerializer()
  bool? get isFavorite;
  @override
  @StringSerializer()
  String? get lga;
  @override
  @StringSerializer()
  String? get name;
  @override
  @StringSerializer()
  String? get state;
  @override
  @StringSerializer()
  String? get country;
  @override
  @JsonKey(name: 'category')
  String? get categoryId;
  @override
  List<String>? get tags;
  @override
  @JsonKey(ignore: true)
  _$$__ProductInfoCopyWith<_$__ProductInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
