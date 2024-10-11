// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of deal_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DealDTO _$DealDTOFromJson(Map<String, dynamic> json) {
  return _DealDTO.fromJson(json);
}

/// @nodoc
mixin _$DealDTO {
  @JsonKey(name: '_meta')
  MetaDTO? get meta => throw _privateConstructorUsedError;
  DealDTOData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DealDTOCopyWith<DealDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DealDTOCopyWith<$Res> {
  factory $DealDTOCopyWith(DealDTO value, $Res Function(DealDTO) then) =
      _$DealDTOCopyWithImpl<$Res, DealDTO>;
  @useResult
  $Res call({@JsonKey(name: '_meta') MetaDTO? meta, DealDTOData data});

  $MetaDTOCopyWith<$Res>? get meta;
  $DealDTODataCopyWith<$Res> get data;
}

/// @nodoc
class _$DealDTOCopyWithImpl<$Res, $Val extends DealDTO>
    implements $DealDTOCopyWith<$Res> {
  _$DealDTOCopyWithImpl(this._value, this._then);

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
              as DealDTOData,
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
  $DealDTODataCopyWith<$Res> get data {
    return $DealDTODataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DealDTOCopyWith<$Res> implements $DealDTOCopyWith<$Res> {
  factory _$$_DealDTOCopyWith(
          _$_DealDTO value, $Res Function(_$_DealDTO) then) =
      __$$_DealDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: '_meta') MetaDTO? meta, DealDTOData data});

  @override
  $MetaDTOCopyWith<$Res>? get meta;
  @override
  $DealDTODataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_DealDTOCopyWithImpl<$Res>
    extends _$DealDTOCopyWithImpl<$Res, _$_DealDTO>
    implements _$$_DealDTOCopyWith<$Res> {
  __$$_DealDTOCopyWithImpl(_$_DealDTO _value, $Res Function(_$_DealDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = freezed,
    Object? data = null,
  }) {
    return _then(_$_DealDTO(
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDTO?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DealDTOData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DealDTO extends _DealDTO {
  const _$_DealDTO({@JsonKey(name: '_meta') this.meta, required this.data})
      : super._();

  factory _$_DealDTO.fromJson(Map<String, dynamic> json) =>
      _$$_DealDTOFromJson(json);

  @override
  @JsonKey(name: '_meta')
  final MetaDTO? meta;
  @override
  final DealDTOData data;

  @override
  String toString() {
    return 'DealDTO(meta: $meta, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DealDTO &&
            (identical(other.meta, meta) || other.meta == meta) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, meta, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DealDTOCopyWith<_$_DealDTO> get copyWith =>
      __$$_DealDTOCopyWithImpl<_$_DealDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DealDTOToJson(
      this,
    );
  }
}

abstract class _DealDTO extends DealDTO {
  const factory _DealDTO(
      {@JsonKey(name: '_meta') final MetaDTO? meta,
      required final DealDTOData data}) = _$_DealDTO;
  const _DealDTO._() : super._();

  factory _DealDTO.fromJson(Map<String, dynamic> json) = _$_DealDTO.fromJson;

  @override
  @JsonKey(name: '_meta')
  MetaDTO? get meta;
  @override
  DealDTOData get data;
  @override
  @JsonKey(ignore: true)
  _$$_DealDTOCopyWith<_$_DealDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

DealDTOData _$DealDTODataFromJson(Map<String, dynamic> json) {
  return _DealDTOData.fromJson(json);
}

/// @nodoc
mixin _$DealDTOData {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  @StringSerializer()
  String? get basePrice => throw _privateConstructorUsedError;
  @StringSerializer()
  String? get reservedPrice => throw _privateConstructorUsedError;
  @StringSerializer()
  String? get amount => throw _privateConstructorUsedError;
  @StringSerializer()
  String? get country => throw _privateConstructorUsedError;
  @BooleanSerializer()
  bool? get isPrivate => throw _privateConstructorUsedError;
  @JsonKey(name: 'isFavorite')
  @BooleanSerializer()
  bool? get isFavorite => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'status', toJson: DealStatus.toJson, fromJson: DealStatus.fromJson)
  DealStatus? get dealStatus => throw _privateConstructorUsedError;
  @BooleanSerializer()
  bool? get sponsored =>
      throw _privateConstructorUsedError; // @IntegerSerializer() int? dealPriority,
// @JsonKey(name: 'plan', toJson: DealPlanTypeSerializer.toJsonString) @DealPlanTypeSerializer() DealPlan? dealPlan,
  @JsonKey(name: 'plan')
  DealPlanDTOData? get dealPlan => throw _privateConstructorUsedError;
  @DoubleSerializer()
  double? get admittanceFee => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  String? get offlineAddress => throw _privateConstructorUsedError;
  @JsonKey(toJson: BidStatusSerializer.toJsonString)
  @BidStatusSerializer()
  BidStatus? get bidStatus => throw _privateConstructorUsedError;
  @BooleanSerializer()
  bool? get isClosing => throw _privateConstructorUsedError;
  @BooleanSerializer()
  bool? get active => throw _privateConstructorUsedError;
  @DoubleSerializer()
  double? get lastPriceOffered => throw _privateConstructorUsedError;
  @JsonKey(toJson: OfferTypeSerializer.toJsonString)
  @OfferTypeSerializer()
  OfferType? get offerType => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get startDate => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get endDate => throw _privateConstructorUsedError;
  @JsonKey(toJson: DealType.valueFrom, fromJson: DealType.valueOf)
  DealType? get type => throw _privateConstructorUsedError;
  @IntegerSerializer()
  int? get availableItems => throw _privateConstructorUsedError;
  @JsonKey(toJson: QuantityTypeSerializer.toJsonString)
  @QuantityTypeSerializer()
  QuantityType? get quantity => throw _privateConstructorUsedError;
  @JsonKey(toJson: BiddingTypeSerializer.toJsonString)
  @BiddingTypeSerializer()
  BiddingType? get biddingType => throw _privateConstructorUsedError;
  @JsonKey(name: 'paidUsers')
  List<String?> get paidUserIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'admittedUsers')
  List<String?> get admittedUserIds => throw _privateConstructorUsedError;
  UserDTO? get user => throw _privateConstructorUsedError;
  UserDTO? get owner => throw _privateConstructorUsedError;
  UserDTO? get highestBidder => throw _privateConstructorUsedError;
  UserDTO? get lastBidder => throw _privateConstructorUsedError;
  ProductDTOData? get product => throw _privateConstructorUsedError;
  List<String>? get tags => throw _privateConstructorUsedError;
  List<String>? get regions =>
      throw _privateConstructorUsedError; // CategoryDTOData? category,
  @TimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DealDTODataCopyWith<DealDTOData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DealDTODataCopyWith<$Res> {
  factory $DealDTODataCopyWith(
          DealDTOData value, $Res Function(DealDTOData) then) =
      _$DealDTODataCopyWithImpl<$Res, DealDTOData>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id')
          String? id,
      @StringSerializer()
          String? basePrice,
      @StringSerializer()
          String? reservedPrice,
      @StringSerializer()
          String? amount,
      @StringSerializer()
          String? country,
      @BooleanSerializer()
          bool? isPrivate,
      @JsonKey(name: 'isFavorite')
      @BooleanSerializer()
          bool? isFavorite,
      @JsonKey(name: 'status', toJson: DealStatus.toJson, fromJson: DealStatus.fromJson)
          DealStatus? dealStatus,
      @BooleanSerializer()
          bool? sponsored,
      @JsonKey(name: 'plan')
          DealPlanDTOData? dealPlan,
      @DoubleSerializer()
          double? admittanceFee,
      @JsonKey(name: 'address')
          String? offlineAddress,
      @JsonKey(toJson: BidStatusSerializer.toJsonString)
      @BidStatusSerializer()
          BidStatus? bidStatus,
      @BooleanSerializer()
          bool? isClosing,
      @BooleanSerializer()
          bool? active,
      @DoubleSerializer()
          double? lastPriceOffered,
      @JsonKey(toJson: OfferTypeSerializer.toJsonString)
      @OfferTypeSerializer()
          OfferType? offerType,
      @TimestampConverter()
          DateTime? startDate,
      @TimestampConverter()
          DateTime? endDate,
      @JsonKey(toJson: DealType.valueFrom, fromJson: DealType.valueOf)
          DealType? type,
      @IntegerSerializer()
          int? availableItems,
      @JsonKey(toJson: QuantityTypeSerializer.toJsonString)
      @QuantityTypeSerializer()
          QuantityType? quantity,
      @JsonKey(toJson: BiddingTypeSerializer.toJsonString)
      @BiddingTypeSerializer()
          BiddingType? biddingType,
      @JsonKey(name: 'paidUsers')
          List<String?> paidUserIds,
      @JsonKey(name: 'admittedUsers')
          List<String?> admittedUserIds,
      UserDTO? user,
      UserDTO? owner,
      UserDTO? highestBidder,
      UserDTO? lastBidder,
      ProductDTOData? product,
      List<String>? tags,
      List<String>? regions,
      @TimestampConverter()
          DateTime? createdAt,
      @TimestampConverter()
          DateTime? updatedAt});

  $DealPlanDTODataCopyWith<$Res>? get dealPlan;
  $UserDTOCopyWith<$Res>? get user;
  $UserDTOCopyWith<$Res>? get owner;
  $UserDTOCopyWith<$Res>? get highestBidder;
  $UserDTOCopyWith<$Res>? get lastBidder;
  $ProductDTODataCopyWith<$Res>? get product;
}

/// @nodoc
class _$DealDTODataCopyWithImpl<$Res, $Val extends DealDTOData>
    implements $DealDTODataCopyWith<$Res> {
  _$DealDTODataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? basePrice = freezed,
    Object? reservedPrice = freezed,
    Object? amount = freezed,
    Object? country = freezed,
    Object? isPrivate = freezed,
    Object? isFavorite = freezed,
    Object? dealStatus = freezed,
    Object? sponsored = freezed,
    Object? dealPlan = freezed,
    Object? admittanceFee = freezed,
    Object? offlineAddress = freezed,
    Object? bidStatus = freezed,
    Object? isClosing = freezed,
    Object? active = freezed,
    Object? lastPriceOffered = freezed,
    Object? offerType = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? type = freezed,
    Object? availableItems = freezed,
    Object? quantity = freezed,
    Object? biddingType = freezed,
    Object? paidUserIds = null,
    Object? admittedUserIds = null,
    Object? user = freezed,
    Object? owner = freezed,
    Object? highestBidder = freezed,
    Object? lastBidder = freezed,
    Object? product = freezed,
    Object? tags = freezed,
    Object? regions = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      basePrice: freezed == basePrice
          ? _value.basePrice
          : basePrice // ignore: cast_nullable_to_non_nullable
              as String?,
      reservedPrice: freezed == reservedPrice
          ? _value.reservedPrice
          : reservedPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      isPrivate: freezed == isPrivate
          ? _value.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool?,
      isFavorite: freezed == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool?,
      dealStatus: freezed == dealStatus
          ? _value.dealStatus
          : dealStatus // ignore: cast_nullable_to_non_nullable
              as DealStatus?,
      sponsored: freezed == sponsored
          ? _value.sponsored
          : sponsored // ignore: cast_nullable_to_non_nullable
              as bool?,
      dealPlan: freezed == dealPlan
          ? _value.dealPlan
          : dealPlan // ignore: cast_nullable_to_non_nullable
              as DealPlanDTOData?,
      admittanceFee: freezed == admittanceFee
          ? _value.admittanceFee
          : admittanceFee // ignore: cast_nullable_to_non_nullable
              as double?,
      offlineAddress: freezed == offlineAddress
          ? _value.offlineAddress
          : offlineAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      bidStatus: freezed == bidStatus
          ? _value.bidStatus
          : bidStatus // ignore: cast_nullable_to_non_nullable
              as BidStatus?,
      isClosing: freezed == isClosing
          ? _value.isClosing
          : isClosing // ignore: cast_nullable_to_non_nullable
              as bool?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      lastPriceOffered: freezed == lastPriceOffered
          ? _value.lastPriceOffered
          : lastPriceOffered // ignore: cast_nullable_to_non_nullable
              as double?,
      offerType: freezed == offerType
          ? _value.offerType
          : offerType // ignore: cast_nullable_to_non_nullable
              as OfferType?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as DealType?,
      availableItems: freezed == availableItems
          ? _value.availableItems
          : availableItems // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as QuantityType?,
      biddingType: freezed == biddingType
          ? _value.biddingType
          : biddingType // ignore: cast_nullable_to_non_nullable
              as BiddingType?,
      paidUserIds: null == paidUserIds
          ? _value.paidUserIds
          : paidUserIds // ignore: cast_nullable_to_non_nullable
              as List<String?>,
      admittedUserIds: null == admittedUserIds
          ? _value.admittedUserIds
          : admittedUserIds // ignore: cast_nullable_to_non_nullable
              as List<String?>,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDTO?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as UserDTO?,
      highestBidder: freezed == highestBidder
          ? _value.highestBidder
          : highestBidder // ignore: cast_nullable_to_non_nullable
              as UserDTO?,
      lastBidder: freezed == lastBidder
          ? _value.lastBidder
          : lastBidder // ignore: cast_nullable_to_non_nullable
              as UserDTO?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductDTOData?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      regions: freezed == regions
          ? _value.regions
          : regions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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
  $DealPlanDTODataCopyWith<$Res>? get dealPlan {
    if (_value.dealPlan == null) {
      return null;
    }

    return $DealPlanDTODataCopyWith<$Res>(_value.dealPlan!, (value) {
      return _then(_value.copyWith(dealPlan: value) as $Val);
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
  $UserDTOCopyWith<$Res>? get highestBidder {
    if (_value.highestBidder == null) {
      return null;
    }

    return $UserDTOCopyWith<$Res>(_value.highestBidder!, (value) {
      return _then(_value.copyWith(highestBidder: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDTOCopyWith<$Res>? get lastBidder {
    if (_value.lastBidder == null) {
      return null;
    }

    return $UserDTOCopyWith<$Res>(_value.lastBidder!, (value) {
      return _then(_value.copyWith(lastBidder: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductDTODataCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $ProductDTODataCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DealDTODataCopyWith<$Res>
    implements $DealDTODataCopyWith<$Res> {
  factory _$$_DealDTODataCopyWith(
          _$_DealDTOData value, $Res Function(_$_DealDTOData) then) =
      __$$_DealDTODataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id')
          String? id,
      @StringSerializer()
          String? basePrice,
      @StringSerializer()
          String? reservedPrice,
      @StringSerializer()
          String? amount,
      @StringSerializer()
          String? country,
      @BooleanSerializer()
          bool? isPrivate,
      @JsonKey(name: 'isFavorite')
      @BooleanSerializer()
          bool? isFavorite,
      @JsonKey(name: 'status', toJson: DealStatus.toJson, fromJson: DealStatus.fromJson)
          DealStatus? dealStatus,
      @BooleanSerializer()
          bool? sponsored,
      @JsonKey(name: 'plan')
          DealPlanDTOData? dealPlan,
      @DoubleSerializer()
          double? admittanceFee,
      @JsonKey(name: 'address')
          String? offlineAddress,
      @JsonKey(toJson: BidStatusSerializer.toJsonString)
      @BidStatusSerializer()
          BidStatus? bidStatus,
      @BooleanSerializer()
          bool? isClosing,
      @BooleanSerializer()
          bool? active,
      @DoubleSerializer()
          double? lastPriceOffered,
      @JsonKey(toJson: OfferTypeSerializer.toJsonString)
      @OfferTypeSerializer()
          OfferType? offerType,
      @TimestampConverter()
          DateTime? startDate,
      @TimestampConverter()
          DateTime? endDate,
      @JsonKey(toJson: DealType.valueFrom, fromJson: DealType.valueOf)
          DealType? type,
      @IntegerSerializer()
          int? availableItems,
      @JsonKey(toJson: QuantityTypeSerializer.toJsonString)
      @QuantityTypeSerializer()
          QuantityType? quantity,
      @JsonKey(toJson: BiddingTypeSerializer.toJsonString)
      @BiddingTypeSerializer()
          BiddingType? biddingType,
      @JsonKey(name: 'paidUsers')
          List<String?> paidUserIds,
      @JsonKey(name: 'admittedUsers')
          List<String?> admittedUserIds,
      UserDTO? user,
      UserDTO? owner,
      UserDTO? highestBidder,
      UserDTO? lastBidder,
      ProductDTOData? product,
      List<String>? tags,
      List<String>? regions,
      @TimestampConverter()
          DateTime? createdAt,
      @TimestampConverter()
          DateTime? updatedAt});

  @override
  $DealPlanDTODataCopyWith<$Res>? get dealPlan;
  @override
  $UserDTOCopyWith<$Res>? get user;
  @override
  $UserDTOCopyWith<$Res>? get owner;
  @override
  $UserDTOCopyWith<$Res>? get highestBidder;
  @override
  $UserDTOCopyWith<$Res>? get lastBidder;
  @override
  $ProductDTODataCopyWith<$Res>? get product;
}

/// @nodoc
class __$$_DealDTODataCopyWithImpl<$Res>
    extends _$DealDTODataCopyWithImpl<$Res, _$_DealDTOData>
    implements _$$_DealDTODataCopyWith<$Res> {
  __$$_DealDTODataCopyWithImpl(
      _$_DealDTOData _value, $Res Function(_$_DealDTOData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? basePrice = freezed,
    Object? reservedPrice = freezed,
    Object? amount = freezed,
    Object? country = freezed,
    Object? isPrivate = freezed,
    Object? isFavorite = freezed,
    Object? dealStatus = freezed,
    Object? sponsored = freezed,
    Object? dealPlan = freezed,
    Object? admittanceFee = freezed,
    Object? offlineAddress = freezed,
    Object? bidStatus = freezed,
    Object? isClosing = freezed,
    Object? active = freezed,
    Object? lastPriceOffered = freezed,
    Object? offerType = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? type = freezed,
    Object? availableItems = freezed,
    Object? quantity = freezed,
    Object? biddingType = freezed,
    Object? paidUserIds = null,
    Object? admittedUserIds = null,
    Object? user = freezed,
    Object? owner = freezed,
    Object? highestBidder = freezed,
    Object? lastBidder = freezed,
    Object? product = freezed,
    Object? tags = freezed,
    Object? regions = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_DealDTOData(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      basePrice: freezed == basePrice
          ? _value.basePrice
          : basePrice // ignore: cast_nullable_to_non_nullable
              as String?,
      reservedPrice: freezed == reservedPrice
          ? _value.reservedPrice
          : reservedPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      isPrivate: freezed == isPrivate
          ? _value.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool?,
      isFavorite: freezed == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool?,
      dealStatus: freezed == dealStatus
          ? _value.dealStatus
          : dealStatus // ignore: cast_nullable_to_non_nullable
              as DealStatus?,
      sponsored: freezed == sponsored
          ? _value.sponsored
          : sponsored // ignore: cast_nullable_to_non_nullable
              as bool?,
      dealPlan: freezed == dealPlan
          ? _value.dealPlan
          : dealPlan // ignore: cast_nullable_to_non_nullable
              as DealPlanDTOData?,
      admittanceFee: freezed == admittanceFee
          ? _value.admittanceFee
          : admittanceFee // ignore: cast_nullable_to_non_nullable
              as double?,
      offlineAddress: freezed == offlineAddress
          ? _value.offlineAddress
          : offlineAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      bidStatus: freezed == bidStatus
          ? _value.bidStatus
          : bidStatus // ignore: cast_nullable_to_non_nullable
              as BidStatus?,
      isClosing: freezed == isClosing
          ? _value.isClosing
          : isClosing // ignore: cast_nullable_to_non_nullable
              as bool?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      lastPriceOffered: freezed == lastPriceOffered
          ? _value.lastPriceOffered
          : lastPriceOffered // ignore: cast_nullable_to_non_nullable
              as double?,
      offerType: freezed == offerType
          ? _value.offerType
          : offerType // ignore: cast_nullable_to_non_nullable
              as OfferType?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as DealType?,
      availableItems: freezed == availableItems
          ? _value.availableItems
          : availableItems // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as QuantityType?,
      biddingType: freezed == biddingType
          ? _value.biddingType
          : biddingType // ignore: cast_nullable_to_non_nullable
              as BiddingType?,
      paidUserIds: null == paidUserIds
          ? _value._paidUserIds
          : paidUserIds // ignore: cast_nullable_to_non_nullable
              as List<String?>,
      admittedUserIds: null == admittedUserIds
          ? _value._admittedUserIds
          : admittedUserIds // ignore: cast_nullable_to_non_nullable
              as List<String?>,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDTO?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as UserDTO?,
      highestBidder: freezed == highestBidder
          ? _value.highestBidder
          : highestBidder // ignore: cast_nullable_to_non_nullable
              as UserDTO?,
      lastBidder: freezed == lastBidder
          ? _value.lastBidder
          : lastBidder // ignore: cast_nullable_to_non_nullable
              as UserDTO?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductDTOData?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      regions: freezed == regions
          ? _value._regions
          : regions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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
class _$_DealDTOData extends _DealDTOData {
  const _$_DealDTOData(
      {@JsonKey(name: '_id')
          this.id,
      @StringSerializer()
          this.basePrice,
      @StringSerializer()
          this.reservedPrice,
      @StringSerializer()
          this.amount,
      @StringSerializer()
          this.country,
      @BooleanSerializer()
          this.isPrivate,
      @JsonKey(name: 'isFavorite')
      @BooleanSerializer()
          this.isFavorite,
      @JsonKey(name: 'status', toJson: DealStatus.toJson, fromJson: DealStatus.fromJson)
          this.dealStatus,
      @BooleanSerializer()
          this.sponsored,
      @JsonKey(name: 'plan')
          this.dealPlan,
      @DoubleSerializer()
          this.admittanceFee,
      @JsonKey(name: 'address')
          this.offlineAddress,
      @JsonKey(toJson: BidStatusSerializer.toJsonString)
      @BidStatusSerializer()
          this.bidStatus,
      @BooleanSerializer()
          this.isClosing,
      @BooleanSerializer()
          this.active,
      @DoubleSerializer()
          this.lastPriceOffered,
      @JsonKey(toJson: OfferTypeSerializer.toJsonString)
      @OfferTypeSerializer()
          this.offerType,
      @TimestampConverter()
          this.startDate,
      @TimestampConverter()
          this.endDate,
      @JsonKey(toJson: DealType.valueFrom, fromJson: DealType.valueOf)
          this.type,
      @IntegerSerializer()
          this.availableItems,
      @JsonKey(toJson: QuantityTypeSerializer.toJsonString)
      @QuantityTypeSerializer()
          this.quantity,
      @JsonKey(toJson: BiddingTypeSerializer.toJsonString)
      @BiddingTypeSerializer()
          this.biddingType,
      @JsonKey(name: 'paidUsers')
          final List<String?> paidUserIds = const [],
      @JsonKey(name: 'admittedUsers')
          final List<String?> admittedUserIds = const [],
      this.user,
      this.owner,
      this.highestBidder,
      this.lastBidder,
      this.product,
      final List<String>? tags,
      final List<String>? regions,
      @TimestampConverter()
          this.createdAt,
      @TimestampConverter()
          this.updatedAt})
      : _paidUserIds = paidUserIds,
        _admittedUserIds = admittedUserIds,
        _tags = tags,
        _regions = regions,
        super._();

  factory _$_DealDTOData.fromJson(Map<String, dynamic> json) =>
      _$$_DealDTODataFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  @StringSerializer()
  final String? basePrice;
  @override
  @StringSerializer()
  final String? reservedPrice;
  @override
  @StringSerializer()
  final String? amount;
  @override
  @StringSerializer()
  final String? country;
  @override
  @BooleanSerializer()
  final bool? isPrivate;
  @override
  @JsonKey(name: 'isFavorite')
  @BooleanSerializer()
  final bool? isFavorite;
  @override
  @JsonKey(
      name: 'status', toJson: DealStatus.toJson, fromJson: DealStatus.fromJson)
  final DealStatus? dealStatus;
  @override
  @BooleanSerializer()
  final bool? sponsored;
// @IntegerSerializer() int? dealPriority,
// @JsonKey(name: 'plan', toJson: DealPlanTypeSerializer.toJsonString) @DealPlanTypeSerializer() DealPlan? dealPlan,
  @override
  @JsonKey(name: 'plan')
  final DealPlanDTOData? dealPlan;
  @override
  @DoubleSerializer()
  final double? admittanceFee;
  @override
  @JsonKey(name: 'address')
  final String? offlineAddress;
  @override
  @JsonKey(toJson: BidStatusSerializer.toJsonString)
  @BidStatusSerializer()
  final BidStatus? bidStatus;
  @override
  @BooleanSerializer()
  final bool? isClosing;
  @override
  @BooleanSerializer()
  final bool? active;
  @override
  @DoubleSerializer()
  final double? lastPriceOffered;
  @override
  @JsonKey(toJson: OfferTypeSerializer.toJsonString)
  @OfferTypeSerializer()
  final OfferType? offerType;
  @override
  @TimestampConverter()
  final DateTime? startDate;
  @override
  @TimestampConverter()
  final DateTime? endDate;
  @override
  @JsonKey(toJson: DealType.valueFrom, fromJson: DealType.valueOf)
  final DealType? type;
  @override
  @IntegerSerializer()
  final int? availableItems;
  @override
  @JsonKey(toJson: QuantityTypeSerializer.toJsonString)
  @QuantityTypeSerializer()
  final QuantityType? quantity;
  @override
  @JsonKey(toJson: BiddingTypeSerializer.toJsonString)
  @BiddingTypeSerializer()
  final BiddingType? biddingType;
  final List<String?> _paidUserIds;
  @override
  @JsonKey(name: 'paidUsers')
  List<String?> get paidUserIds {
    if (_paidUserIds is EqualUnmodifiableListView) return _paidUserIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_paidUserIds);
  }

  final List<String?> _admittedUserIds;
  @override
  @JsonKey(name: 'admittedUsers')
  List<String?> get admittedUserIds {
    if (_admittedUserIds is EqualUnmodifiableListView) return _admittedUserIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_admittedUserIds);
  }

  @override
  final UserDTO? user;
  @override
  final UserDTO? owner;
  @override
  final UserDTO? highestBidder;
  @override
  final UserDTO? lastBidder;
  @override
  final ProductDTOData? product;
  final List<String>? _tags;
  @override
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _regions;
  @override
  List<String>? get regions {
    final value = _regions;
    if (value == null) return null;
    if (_regions is EqualUnmodifiableListView) return _regions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// CategoryDTOData? category,
  @override
  @TimestampConverter()
  final DateTime? createdAt;
  @override
  @TimestampConverter()
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'DealDTOData(id: $id, basePrice: $basePrice, reservedPrice: $reservedPrice, amount: $amount, country: $country, isPrivate: $isPrivate, isFavorite: $isFavorite, dealStatus: $dealStatus, sponsored: $sponsored, dealPlan: $dealPlan, admittanceFee: $admittanceFee, offlineAddress: $offlineAddress, bidStatus: $bidStatus, isClosing: $isClosing, active: $active, lastPriceOffered: $lastPriceOffered, offerType: $offerType, startDate: $startDate, endDate: $endDate, type: $type, availableItems: $availableItems, quantity: $quantity, biddingType: $biddingType, paidUserIds: $paidUserIds, admittedUserIds: $admittedUserIds, user: $user, owner: $owner, highestBidder: $highestBidder, lastBidder: $lastBidder, product: $product, tags: $tags, regions: $regions, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DealDTOData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.basePrice, basePrice) ||
                other.basePrice == basePrice) &&
            (identical(other.reservedPrice, reservedPrice) ||
                other.reservedPrice == reservedPrice) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.isPrivate, isPrivate) ||
                other.isPrivate == isPrivate) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite) &&
            (identical(other.dealStatus, dealStatus) ||
                other.dealStatus == dealStatus) &&
            (identical(other.sponsored, sponsored) ||
                other.sponsored == sponsored) &&
            (identical(other.dealPlan, dealPlan) ||
                other.dealPlan == dealPlan) &&
            (identical(other.admittanceFee, admittanceFee) ||
                other.admittanceFee == admittanceFee) &&
            (identical(other.offlineAddress, offlineAddress) ||
                other.offlineAddress == offlineAddress) &&
            (identical(other.bidStatus, bidStatus) ||
                other.bidStatus == bidStatus) &&
            (identical(other.isClosing, isClosing) ||
                other.isClosing == isClosing) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.lastPriceOffered, lastPriceOffered) ||
                other.lastPriceOffered == lastPriceOffered) &&
            (identical(other.offerType, offerType) ||
                other.offerType == offerType) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.availableItems, availableItems) ||
                other.availableItems == availableItems) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.biddingType, biddingType) ||
                other.biddingType == biddingType) &&
            const DeepCollectionEquality()
                .equals(other._paidUserIds, _paidUserIds) &&
            const DeepCollectionEquality()
                .equals(other._admittedUserIds, _admittedUserIds) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.highestBidder, highestBidder) ||
                other.highestBidder == highestBidder) &&
            (identical(other.lastBidder, lastBidder) ||
                other.lastBidder == lastBidder) &&
            (identical(other.product, product) || other.product == product) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other._regions, _regions) &&
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
        basePrice,
        reservedPrice,
        amount,
        country,
        isPrivate,
        isFavorite,
        dealStatus,
        sponsored,
        dealPlan,
        admittanceFee,
        offlineAddress,
        bidStatus,
        isClosing,
        active,
        lastPriceOffered,
        offerType,
        startDate,
        endDate,
        type,
        availableItems,
        quantity,
        biddingType,
        const DeepCollectionEquality().hash(_paidUserIds),
        const DeepCollectionEquality().hash(_admittedUserIds),
        user,
        owner,
        highestBidder,
        lastBidder,
        product,
        const DeepCollectionEquality().hash(_tags),
        const DeepCollectionEquality().hash(_regions),
        createdAt,
        updatedAt
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DealDTODataCopyWith<_$_DealDTOData> get copyWith =>
      __$$_DealDTODataCopyWithImpl<_$_DealDTOData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DealDTODataToJson(
      this,
    );
  }
}

abstract class _DealDTOData extends DealDTOData {
  const factory _DealDTOData(
      {@JsonKey(name: '_id')
          final String? id,
      @StringSerializer()
          final String? basePrice,
      @StringSerializer()
          final String? reservedPrice,
      @StringSerializer()
          final String? amount,
      @StringSerializer()
          final String? country,
      @BooleanSerializer()
          final bool? isPrivate,
      @JsonKey(name: 'isFavorite')
      @BooleanSerializer()
          final bool? isFavorite,
      @JsonKey(name: 'status', toJson: DealStatus.toJson, fromJson: DealStatus.fromJson)
          final DealStatus? dealStatus,
      @BooleanSerializer()
          final bool? sponsored,
      @JsonKey(name: 'plan')
          final DealPlanDTOData? dealPlan,
      @DoubleSerializer()
          final double? admittanceFee,
      @JsonKey(name: 'address')
          final String? offlineAddress,
      @JsonKey(toJson: BidStatusSerializer.toJsonString)
      @BidStatusSerializer()
          final BidStatus? bidStatus,
      @BooleanSerializer()
          final bool? isClosing,
      @BooleanSerializer()
          final bool? active,
      @DoubleSerializer()
          final double? lastPriceOffered,
      @JsonKey(toJson: OfferTypeSerializer.toJsonString)
      @OfferTypeSerializer()
          final OfferType? offerType,
      @TimestampConverter()
          final DateTime? startDate,
      @TimestampConverter()
          final DateTime? endDate,
      @JsonKey(toJson: DealType.valueFrom, fromJson: DealType.valueOf)
          final DealType? type,
      @IntegerSerializer()
          final int? availableItems,
      @JsonKey(toJson: QuantityTypeSerializer.toJsonString)
      @QuantityTypeSerializer()
          final QuantityType? quantity,
      @JsonKey(toJson: BiddingTypeSerializer.toJsonString)
      @BiddingTypeSerializer()
          final BiddingType? biddingType,
      @JsonKey(name: 'paidUsers')
          final List<String?> paidUserIds,
      @JsonKey(name: 'admittedUsers')
          final List<String?> admittedUserIds,
      final UserDTO? user,
      final UserDTO? owner,
      final UserDTO? highestBidder,
      final UserDTO? lastBidder,
      final ProductDTOData? product,
      final List<String>? tags,
      final List<String>? regions,
      @TimestampConverter()
          final DateTime? createdAt,
      @TimestampConverter()
          final DateTime? updatedAt}) = _$_DealDTOData;
  const _DealDTOData._() : super._();

  factory _DealDTOData.fromJson(Map<String, dynamic> json) =
      _$_DealDTOData.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  @StringSerializer()
  String? get basePrice;
  @override
  @StringSerializer()
  String? get reservedPrice;
  @override
  @StringSerializer()
  String? get amount;
  @override
  @StringSerializer()
  String? get country;
  @override
  @BooleanSerializer()
  bool? get isPrivate;
  @override
  @JsonKey(name: 'isFavorite')
  @BooleanSerializer()
  bool? get isFavorite;
  @override
  @JsonKey(
      name: 'status', toJson: DealStatus.toJson, fromJson: DealStatus.fromJson)
  DealStatus? get dealStatus;
  @override
  @BooleanSerializer()
  bool? get sponsored;
  @override // @IntegerSerializer() int? dealPriority,
// @JsonKey(name: 'plan', toJson: DealPlanTypeSerializer.toJsonString) @DealPlanTypeSerializer() DealPlan? dealPlan,
  @JsonKey(name: 'plan')
  DealPlanDTOData? get dealPlan;
  @override
  @DoubleSerializer()
  double? get admittanceFee;
  @override
  @JsonKey(name: 'address')
  String? get offlineAddress;
  @override
  @JsonKey(toJson: BidStatusSerializer.toJsonString)
  @BidStatusSerializer()
  BidStatus? get bidStatus;
  @override
  @BooleanSerializer()
  bool? get isClosing;
  @override
  @BooleanSerializer()
  bool? get active;
  @override
  @DoubleSerializer()
  double? get lastPriceOffered;
  @override
  @JsonKey(toJson: OfferTypeSerializer.toJsonString)
  @OfferTypeSerializer()
  OfferType? get offerType;
  @override
  @TimestampConverter()
  DateTime? get startDate;
  @override
  @TimestampConverter()
  DateTime? get endDate;
  @override
  @JsonKey(toJson: DealType.valueFrom, fromJson: DealType.valueOf)
  DealType? get type;
  @override
  @IntegerSerializer()
  int? get availableItems;
  @override
  @JsonKey(toJson: QuantityTypeSerializer.toJsonString)
  @QuantityTypeSerializer()
  QuantityType? get quantity;
  @override
  @JsonKey(toJson: BiddingTypeSerializer.toJsonString)
  @BiddingTypeSerializer()
  BiddingType? get biddingType;
  @override
  @JsonKey(name: 'paidUsers')
  List<String?> get paidUserIds;
  @override
  @JsonKey(name: 'admittedUsers')
  List<String?> get admittedUserIds;
  @override
  UserDTO? get user;
  @override
  UserDTO? get owner;
  @override
  UserDTO? get highestBidder;
  @override
  UserDTO? get lastBidder;
  @override
  ProductDTOData? get product;
  @override
  List<String>? get tags;
  @override
  List<String>? get regions;
  @override // CategoryDTOData? category,
  @TimestampConverter()
  DateTime? get createdAt;
  @override
  @TimestampConverter()
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_DealDTODataCopyWith<_$_DealDTOData> get copyWith =>
      throw _privateConstructorUsedError;
}

DealListDTO _$DealListDTOFromJson(Map<String, dynamic> json) {
  return _DealListDTO.fromJson(json);
}

/// @nodoc
mixin _$DealListDTO {
  @JsonKey(name: '_meta')
  MetaDTO? get meta => throw _privateConstructorUsedError;
  List<DealDTOData> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DealListDTOCopyWith<DealListDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DealListDTOCopyWith<$Res> {
  factory $DealListDTOCopyWith(
          DealListDTO value, $Res Function(DealListDTO) then) =
      _$DealListDTOCopyWithImpl<$Res, DealListDTO>;
  @useResult
  $Res call({@JsonKey(name: '_meta') MetaDTO? meta, List<DealDTOData> data});

  $MetaDTOCopyWith<$Res>? get meta;
}

/// @nodoc
class _$DealListDTOCopyWithImpl<$Res, $Val extends DealListDTO>
    implements $DealListDTOCopyWith<$Res> {
  _$DealListDTOCopyWithImpl(this._value, this._then);

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
              as List<DealDTOData>,
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
abstract class _$$_DealListDTOCopyWith<$Res>
    implements $DealListDTOCopyWith<$Res> {
  factory _$$_DealListDTOCopyWith(
          _$_DealListDTO value, $Res Function(_$_DealListDTO) then) =
      __$$_DealListDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: '_meta') MetaDTO? meta, List<DealDTOData> data});

  @override
  $MetaDTOCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$_DealListDTOCopyWithImpl<$Res>
    extends _$DealListDTOCopyWithImpl<$Res, _$_DealListDTO>
    implements _$$_DealListDTOCopyWith<$Res> {
  __$$_DealListDTOCopyWithImpl(
      _$_DealListDTO _value, $Res Function(_$_DealListDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = freezed,
    Object? data = null,
  }) {
    return _then(_$_DealListDTO(
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDTO?,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DealDTOData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DealListDTO extends _DealListDTO {
  const _$_DealListDTO(
      {@JsonKey(name: '_meta') this.meta,
      final List<DealDTOData> data = const []})
      : _data = data,
        super._();

  factory _$_DealListDTO.fromJson(Map<String, dynamic> json) =>
      _$$_DealListDTOFromJson(json);

  @override
  @JsonKey(name: '_meta')
  final MetaDTO? meta;
  final List<DealDTOData> _data;
  @override
  @JsonKey()
  List<DealDTOData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'DealListDTO(meta: $meta, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DealListDTO &&
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
  _$$_DealListDTOCopyWith<_$_DealListDTO> get copyWith =>
      __$$_DealListDTOCopyWithImpl<_$_DealListDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DealListDTOToJson(
      this,
    );
  }
}

abstract class _DealListDTO extends DealListDTO {
  const factory _DealListDTO(
      {@JsonKey(name: '_meta') final MetaDTO? meta,
      final List<DealDTOData> data}) = _$_DealListDTO;
  const _DealListDTO._() : super._();

  factory _DealListDTO.fromJson(Map<String, dynamic> json) =
      _$_DealListDTO.fromJson;

  @override
  @JsonKey(name: '_meta')
  MetaDTO? get meta;
  @override
  List<DealDTOData> get data;
  @override
  @JsonKey(ignore: true)
  _$$_DealListDTOCopyWith<_$_DealListDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
