// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of deal.entity.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Deal {
  UniqueId<String?> get id => throw _privateConstructorUsedError;
  NumField<double> get basePrice => throw _privateConstructorUsedError;
  NumField<double> get reservedPrice => throw _privateConstructorUsedError;
  NumField<double> get lastPriceOffered => throw _privateConstructorUsedError;
  bool get isPrivate => throw _privateConstructorUsedError;
  bool get isSponsored =>
      throw _privateConstructorUsedError; // int? dealPriority,
  bool get hasWish => throw _privateConstructorUsedError;
  NumField<double?> get admittanceFee => throw _privateConstructorUsedError;
  BasicTextField get offlineAddress => throw _privateConstructorUsedError;
  NumField<int> get availableItems => throw _privateConstructorUsedError;
  BidStatus get bidStatus => throw _privateConstructorUsedError;
  bool get isClosing => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  DealStatus get status => throw _privateConstructorUsedError;
  DealType get type => throw _privateConstructorUsedError;
  OfferType get offerType => throw _privateConstructorUsedError;
  QuantityType get quantity => throw _privateConstructorUsedError;
  BiddingType get biddingType => throw _privateConstructorUsedError;
  ImmutableIds<String?> get paidUsers => throw _privateConstructorUsedError;
  ImmutableIds<String?> get admittedUsers =>
      throw _privateConstructorUsedError; // @Default(defaultDealPlanType) DealPlanType dealPlan,
  DealPlan? get dealPlan => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  User? get owner => throw _privateConstructorUsedError;
  User? get highestBidder => throw _privateConstructorUsedError;
  User? get lastBidder => throw _privateConstructorUsedError;
  Product? get product => throw _privateConstructorUsedError;
  Country? get country =>
      throw _privateConstructorUsedError; // DealCategory? category,
  DateTimeField get startDate => throw _privateConstructorUsedError;
  DateTimeField get endDate => throw _privateConstructorUsedError;
  ImmutableStrings get tags => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DealCopyWith<Deal> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DealCopyWith<$Res> {
  factory $DealCopyWith(Deal value, $Res Function(Deal) then) =
      _$DealCopyWithImpl<$Res, Deal>;
  @useResult
  $Res call(
      {UniqueId<String?> id,
      NumField<double> basePrice,
      NumField<double> reservedPrice,
      NumField<double> lastPriceOffered,
      bool isPrivate,
      bool isSponsored,
      bool hasWish,
      NumField<double?> admittanceFee,
      BasicTextField offlineAddress,
      NumField<int> availableItems,
      BidStatus bidStatus,
      bool isClosing,
      bool isActive,
      DealStatus status,
      DealType type,
      OfferType offerType,
      QuantityType quantity,
      BiddingType biddingType,
      ImmutableIds<String?> paidUsers,
      ImmutableIds<String?> admittedUsers,
      DealPlan? dealPlan,
      User? user,
      User? owner,
      User? highestBidder,
      User? lastBidder,
      Product? product,
      Country? country,
      DateTimeField startDate,
      DateTimeField endDate,
      ImmutableStrings tags,
      DateTime? createdAt,
      DateTime? updatedAt});

  $DealPlanCopyWith<$Res>? get dealPlan;
  $UserCopyWith<$Res>? get user;
  $UserCopyWith<$Res>? get owner;
  $UserCopyWith<$Res>? get highestBidder;
  $UserCopyWith<$Res>? get lastBidder;
  $ProductCopyWith<$Res>? get product;
  $CountryCopyWith<$Res>? get country;
}

/// @nodoc
class _$DealCopyWithImpl<$Res, $Val extends Deal>
    implements $DealCopyWith<$Res> {
  _$DealCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? basePrice = null,
    Object? reservedPrice = null,
    Object? lastPriceOffered = null,
    Object? isPrivate = null,
    Object? isSponsored = null,
    Object? hasWish = null,
    Object? admittanceFee = null,
    Object? offlineAddress = null,
    Object? availableItems = null,
    Object? bidStatus = null,
    Object? isClosing = null,
    Object? isActive = null,
    Object? status = null,
    Object? type = null,
    Object? offerType = null,
    Object? quantity = null,
    Object? biddingType = null,
    Object? paidUsers = null,
    Object? admittedUsers = null,
    Object? dealPlan = freezed,
    Object? user = freezed,
    Object? owner = freezed,
    Object? highestBidder = freezed,
    Object? lastBidder = freezed,
    Object? product = freezed,
    Object? country = freezed,
    Object? startDate = null,
    Object? endDate = null,
    Object? tags = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      basePrice: null == basePrice
          ? _value.basePrice
          : basePrice // ignore: cast_nullable_to_non_nullable
              as NumField<double>,
      reservedPrice: null == reservedPrice
          ? _value.reservedPrice
          : reservedPrice // ignore: cast_nullable_to_non_nullable
              as NumField<double>,
      lastPriceOffered: null == lastPriceOffered
          ? _value.lastPriceOffered
          : lastPriceOffered // ignore: cast_nullable_to_non_nullable
              as NumField<double>,
      isPrivate: null == isPrivate
          ? _value.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool,
      isSponsored: null == isSponsored
          ? _value.isSponsored
          : isSponsored // ignore: cast_nullable_to_non_nullable
              as bool,
      hasWish: null == hasWish
          ? _value.hasWish
          : hasWish // ignore: cast_nullable_to_non_nullable
              as bool,
      admittanceFee: null == admittanceFee
          ? _value.admittanceFee
          : admittanceFee // ignore: cast_nullable_to_non_nullable
              as NumField<double?>,
      offlineAddress: null == offlineAddress
          ? _value.offlineAddress
          : offlineAddress // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      availableItems: null == availableItems
          ? _value.availableItems
          : availableItems // ignore: cast_nullable_to_non_nullable
              as NumField<int>,
      bidStatus: null == bidStatus
          ? _value.bidStatus
          : bidStatus // ignore: cast_nullable_to_non_nullable
              as BidStatus,
      isClosing: null == isClosing
          ? _value.isClosing
          : isClosing // ignore: cast_nullable_to_non_nullable
              as bool,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DealStatus,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as DealType,
      offerType: null == offerType
          ? _value.offerType
          : offerType // ignore: cast_nullable_to_non_nullable
              as OfferType,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as QuantityType,
      biddingType: null == biddingType
          ? _value.biddingType
          : biddingType // ignore: cast_nullable_to_non_nullable
              as BiddingType,
      paidUsers: null == paidUsers
          ? _value.paidUsers
          : paidUsers // ignore: cast_nullable_to_non_nullable
              as ImmutableIds<String?>,
      admittedUsers: null == admittedUsers
          ? _value.admittedUsers
          : admittedUsers // ignore: cast_nullable_to_non_nullable
              as ImmutableIds<String?>,
      dealPlan: freezed == dealPlan
          ? _value.dealPlan
          : dealPlan // ignore: cast_nullable_to_non_nullable
              as DealPlan?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as User?,
      highestBidder: freezed == highestBidder
          ? _value.highestBidder
          : highestBidder // ignore: cast_nullable_to_non_nullable
              as User?,
      lastBidder: freezed == lastBidder
          ? _value.lastBidder
          : lastBidder // ignore: cast_nullable_to_non_nullable
              as User?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country?,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTimeField,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTimeField,
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
  $DealPlanCopyWith<$Res>? get dealPlan {
    if (_value.dealPlan == null) {
      return null;
    }

    return $DealPlanCopyWith<$Res>(_value.dealPlan!, (value) {
      return _then(_value.copyWith(dealPlan: value) as $Val);
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
  $UserCopyWith<$Res>? get highestBidder {
    if (_value.highestBidder == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.highestBidder!, (value) {
      return _then(_value.copyWith(highestBidder: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get lastBidder {
    if (_value.lastBidder == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.lastBidder!, (value) {
      return _then(_value.copyWith(lastBidder: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $ProductCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value) as $Val);
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
}

/// @nodoc
abstract class _$$_DealCopyWith<$Res> implements $DealCopyWith<$Res> {
  factory _$$_DealCopyWith(_$_Deal value, $Res Function(_$_Deal) then) =
      __$$_DealCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId<String?> id,
      NumField<double> basePrice,
      NumField<double> reservedPrice,
      NumField<double> lastPriceOffered,
      bool isPrivate,
      bool isSponsored,
      bool hasWish,
      NumField<double?> admittanceFee,
      BasicTextField offlineAddress,
      NumField<int> availableItems,
      BidStatus bidStatus,
      bool isClosing,
      bool isActive,
      DealStatus status,
      DealType type,
      OfferType offerType,
      QuantityType quantity,
      BiddingType biddingType,
      ImmutableIds<String?> paidUsers,
      ImmutableIds<String?> admittedUsers,
      DealPlan? dealPlan,
      User? user,
      User? owner,
      User? highestBidder,
      User? lastBidder,
      Product? product,
      Country? country,
      DateTimeField startDate,
      DateTimeField endDate,
      ImmutableStrings tags,
      DateTime? createdAt,
      DateTime? updatedAt});

  @override
  $DealPlanCopyWith<$Res>? get dealPlan;
  @override
  $UserCopyWith<$Res>? get user;
  @override
  $UserCopyWith<$Res>? get owner;
  @override
  $UserCopyWith<$Res>? get highestBidder;
  @override
  $UserCopyWith<$Res>? get lastBidder;
  @override
  $ProductCopyWith<$Res>? get product;
  @override
  $CountryCopyWith<$Res>? get country;
}

/// @nodoc
class __$$_DealCopyWithImpl<$Res> extends _$DealCopyWithImpl<$Res, _$_Deal>
    implements _$$_DealCopyWith<$Res> {
  __$$_DealCopyWithImpl(_$_Deal _value, $Res Function(_$_Deal) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? basePrice = null,
    Object? reservedPrice = null,
    Object? lastPriceOffered = null,
    Object? isPrivate = null,
    Object? isSponsored = null,
    Object? hasWish = null,
    Object? admittanceFee = null,
    Object? offlineAddress = null,
    Object? availableItems = null,
    Object? bidStatus = null,
    Object? isClosing = null,
    Object? isActive = null,
    Object? status = null,
    Object? type = null,
    Object? offerType = null,
    Object? quantity = null,
    Object? biddingType = null,
    Object? paidUsers = null,
    Object? admittedUsers = null,
    Object? dealPlan = freezed,
    Object? user = freezed,
    Object? owner = freezed,
    Object? highestBidder = freezed,
    Object? lastBidder = freezed,
    Object? product = freezed,
    Object? country = freezed,
    Object? startDate = null,
    Object? endDate = null,
    Object? tags = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_Deal(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      basePrice: null == basePrice
          ? _value.basePrice
          : basePrice // ignore: cast_nullable_to_non_nullable
              as NumField<double>,
      reservedPrice: null == reservedPrice
          ? _value.reservedPrice
          : reservedPrice // ignore: cast_nullable_to_non_nullable
              as NumField<double>,
      lastPriceOffered: null == lastPriceOffered
          ? _value.lastPriceOffered
          : lastPriceOffered // ignore: cast_nullable_to_non_nullable
              as NumField<double>,
      isPrivate: null == isPrivate
          ? _value.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool,
      isSponsored: null == isSponsored
          ? _value.isSponsored
          : isSponsored // ignore: cast_nullable_to_non_nullable
              as bool,
      hasWish: null == hasWish
          ? _value.hasWish
          : hasWish // ignore: cast_nullable_to_non_nullable
              as bool,
      admittanceFee: null == admittanceFee
          ? _value.admittanceFee
          : admittanceFee // ignore: cast_nullable_to_non_nullable
              as NumField<double?>,
      offlineAddress: null == offlineAddress
          ? _value.offlineAddress
          : offlineAddress // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      availableItems: null == availableItems
          ? _value.availableItems
          : availableItems // ignore: cast_nullable_to_non_nullable
              as NumField<int>,
      bidStatus: null == bidStatus
          ? _value.bidStatus
          : bidStatus // ignore: cast_nullable_to_non_nullable
              as BidStatus,
      isClosing: null == isClosing
          ? _value.isClosing
          : isClosing // ignore: cast_nullable_to_non_nullable
              as bool,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DealStatus,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as DealType,
      offerType: null == offerType
          ? _value.offerType
          : offerType // ignore: cast_nullable_to_non_nullable
              as OfferType,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as QuantityType,
      biddingType: null == biddingType
          ? _value.biddingType
          : biddingType // ignore: cast_nullable_to_non_nullable
              as BiddingType,
      paidUsers: null == paidUsers
          ? _value.paidUsers
          : paidUsers // ignore: cast_nullable_to_non_nullable
              as ImmutableIds<String?>,
      admittedUsers: null == admittedUsers
          ? _value.admittedUsers
          : admittedUsers // ignore: cast_nullable_to_non_nullable
              as ImmutableIds<String?>,
      dealPlan: freezed == dealPlan
          ? _value.dealPlan
          : dealPlan // ignore: cast_nullable_to_non_nullable
              as DealPlan?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as User?,
      highestBidder: freezed == highestBidder
          ? _value.highestBidder
          : highestBidder // ignore: cast_nullable_to_non_nullable
              as User?,
      lastBidder: freezed == lastBidder
          ? _value.lastBidder
          : lastBidder // ignore: cast_nullable_to_non_nullable
              as User?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country?,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTimeField,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTimeField,
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

class _$_Deal extends _Deal with DiagnosticableTreeMixin {
  const _$_Deal(
      {required this.id,
      required this.basePrice,
      required this.reservedPrice,
      required this.lastPriceOffered,
      this.isPrivate = false,
      this.isSponsored = false,
      this.hasWish = false,
      required this.admittanceFee,
      required this.offlineAddress,
      required this.availableItems,
      this.bidStatus = defaultBidStatus,
      this.isClosing = false,
      this.isActive = false,
      this.status = defaultDealStatus,
      this.type = defaultDealType,
      this.offerType = defaultOfferType,
      this.quantity = defaultQuantityType,
      this.biddingType = defaultBiddingType,
      required this.paidUsers,
      required this.admittedUsers,
      this.dealPlan,
      this.user,
      this.owner,
      this.highestBidder,
      this.lastBidder,
      this.product,
      this.country,
      required this.startDate,
      required this.endDate,
      required this.tags,
      this.createdAt,
      this.updatedAt})
      : super._();

  @override
  final UniqueId<String?> id;
  @override
  final NumField<double> basePrice;
  @override
  final NumField<double> reservedPrice;
  @override
  final NumField<double> lastPriceOffered;
  @override
  @JsonKey()
  final bool isPrivate;
  @override
  @JsonKey()
  final bool isSponsored;
// int? dealPriority,
  @override
  @JsonKey()
  final bool hasWish;
  @override
  final NumField<double?> admittanceFee;
  @override
  final BasicTextField offlineAddress;
  @override
  final NumField<int> availableItems;
  @override
  @JsonKey()
  final BidStatus bidStatus;
  @override
  @JsonKey()
  final bool isClosing;
  @override
  @JsonKey()
  final bool isActive;
  @override
  @JsonKey()
  final DealStatus status;
  @override
  @JsonKey()
  final DealType type;
  @override
  @JsonKey()
  final OfferType offerType;
  @override
  @JsonKey()
  final QuantityType quantity;
  @override
  @JsonKey()
  final BiddingType biddingType;
  @override
  final ImmutableIds<String?> paidUsers;
  @override
  final ImmutableIds<String?> admittedUsers;
// @Default(defaultDealPlanType) DealPlanType dealPlan,
  @override
  final DealPlan? dealPlan;
  @override
  final User? user;
  @override
  final User? owner;
  @override
  final User? highestBidder;
  @override
  final User? lastBidder;
  @override
  final Product? product;
  @override
  final Country? country;
// DealCategory? category,
  @override
  final DateTimeField startDate;
  @override
  final DateTimeField endDate;
  @override
  final ImmutableStrings tags;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Deal(id: $id, basePrice: $basePrice, reservedPrice: $reservedPrice, lastPriceOffered: $lastPriceOffered, isPrivate: $isPrivate, isSponsored: $isSponsored, hasWish: $hasWish, admittanceFee: $admittanceFee, offlineAddress: $offlineAddress, availableItems: $availableItems, bidStatus: $bidStatus, isClosing: $isClosing, isActive: $isActive, status: $status, type: $type, offerType: $offerType, quantity: $quantity, biddingType: $biddingType, paidUsers: $paidUsers, admittedUsers: $admittedUsers, dealPlan: $dealPlan, user: $user, owner: $owner, highestBidder: $highestBidder, lastBidder: $lastBidder, product: $product, country: $country, startDate: $startDate, endDate: $endDate, tags: $tags, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Deal'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('basePrice', basePrice))
      ..add(DiagnosticsProperty('reservedPrice', reservedPrice))
      ..add(DiagnosticsProperty('lastPriceOffered', lastPriceOffered))
      ..add(DiagnosticsProperty('isPrivate', isPrivate))
      ..add(DiagnosticsProperty('isSponsored', isSponsored))
      ..add(DiagnosticsProperty('hasWish', hasWish))
      ..add(DiagnosticsProperty('admittanceFee', admittanceFee))
      ..add(DiagnosticsProperty('offlineAddress', offlineAddress))
      ..add(DiagnosticsProperty('availableItems', availableItems))
      ..add(DiagnosticsProperty('bidStatus', bidStatus))
      ..add(DiagnosticsProperty('isClosing', isClosing))
      ..add(DiagnosticsProperty('isActive', isActive))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('offerType', offerType))
      ..add(DiagnosticsProperty('quantity', quantity))
      ..add(DiagnosticsProperty('biddingType', biddingType))
      ..add(DiagnosticsProperty('paidUsers', paidUsers))
      ..add(DiagnosticsProperty('admittedUsers', admittedUsers))
      ..add(DiagnosticsProperty('dealPlan', dealPlan))
      ..add(DiagnosticsProperty('user', user))
      ..add(DiagnosticsProperty('owner', owner))
      ..add(DiagnosticsProperty('highestBidder', highestBidder))
      ..add(DiagnosticsProperty('lastBidder', lastBidder))
      ..add(DiagnosticsProperty('product', product))
      ..add(DiagnosticsProperty('country', country))
      ..add(DiagnosticsProperty('startDate', startDate))
      ..add(DiagnosticsProperty('endDate', endDate))
      ..add(DiagnosticsProperty('tags', tags))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Deal &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.basePrice, basePrice) ||
                other.basePrice == basePrice) &&
            (identical(other.reservedPrice, reservedPrice) ||
                other.reservedPrice == reservedPrice) &&
            (identical(other.lastPriceOffered, lastPriceOffered) ||
                other.lastPriceOffered == lastPriceOffered) &&
            (identical(other.isPrivate, isPrivate) ||
                other.isPrivate == isPrivate) &&
            (identical(other.isSponsored, isSponsored) ||
                other.isSponsored == isSponsored) &&
            (identical(other.hasWish, hasWish) || other.hasWish == hasWish) &&
            (identical(other.admittanceFee, admittanceFee) ||
                other.admittanceFee == admittanceFee) &&
            (identical(other.offlineAddress, offlineAddress) ||
                other.offlineAddress == offlineAddress) &&
            (identical(other.availableItems, availableItems) ||
                other.availableItems == availableItems) &&
            (identical(other.bidStatus, bidStatus) ||
                other.bidStatus == bidStatus) &&
            (identical(other.isClosing, isClosing) ||
                other.isClosing == isClosing) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.offerType, offerType) ||
                other.offerType == offerType) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.biddingType, biddingType) ||
                other.biddingType == biddingType) &&
            (identical(other.paidUsers, paidUsers) ||
                other.paidUsers == paidUsers) &&
            (identical(other.admittedUsers, admittedUsers) ||
                other.admittedUsers == admittedUsers) &&
            (identical(other.dealPlan, dealPlan) ||
                other.dealPlan == dealPlan) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.highestBidder, highestBidder) ||
                other.highestBidder == highestBidder) &&
            (identical(other.lastBidder, lastBidder) ||
                other.lastBidder == lastBidder) &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.tags, tags) || other.tags == tags) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        basePrice,
        reservedPrice,
        lastPriceOffered,
        isPrivate,
        isSponsored,
        hasWish,
        admittanceFee,
        offlineAddress,
        availableItems,
        bidStatus,
        isClosing,
        isActive,
        status,
        type,
        offerType,
        quantity,
        biddingType,
        paidUsers,
        admittedUsers,
        dealPlan,
        user,
        owner,
        highestBidder,
        lastBidder,
        product,
        country,
        startDate,
        endDate,
        tags,
        createdAt,
        updatedAt
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DealCopyWith<_$_Deal> get copyWith =>
      __$$_DealCopyWithImpl<_$_Deal>(this, _$identity);
}

abstract class _Deal extends Deal {
  const factory _Deal(
      {required final UniqueId<String?> id,
      required final NumField<double> basePrice,
      required final NumField<double> reservedPrice,
      required final NumField<double> lastPriceOffered,
      final bool isPrivate,
      final bool isSponsored,
      final bool hasWish,
      required final NumField<double?> admittanceFee,
      required final BasicTextField offlineAddress,
      required final NumField<int> availableItems,
      final BidStatus bidStatus,
      final bool isClosing,
      final bool isActive,
      final DealStatus status,
      final DealType type,
      final OfferType offerType,
      final QuantityType quantity,
      final BiddingType biddingType,
      required final ImmutableIds<String?> paidUsers,
      required final ImmutableIds<String?> admittedUsers,
      final DealPlan? dealPlan,
      final User? user,
      final User? owner,
      final User? highestBidder,
      final User? lastBidder,
      final Product? product,
      final Country? country,
      required final DateTimeField startDate,
      required final DateTimeField endDate,
      required final ImmutableStrings tags,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$_Deal;
  const _Deal._() : super._();

  @override
  UniqueId<String?> get id;
  @override
  NumField<double> get basePrice;
  @override
  NumField<double> get reservedPrice;
  @override
  NumField<double> get lastPriceOffered;
  @override
  bool get isPrivate;
  @override
  bool get isSponsored;
  @override // int? dealPriority,
  bool get hasWish;
  @override
  NumField<double?> get admittanceFee;
  @override
  BasicTextField get offlineAddress;
  @override
  NumField<int> get availableItems;
  @override
  BidStatus get bidStatus;
  @override
  bool get isClosing;
  @override
  bool get isActive;
  @override
  DealStatus get status;
  @override
  DealType get type;
  @override
  OfferType get offerType;
  @override
  QuantityType get quantity;
  @override
  BiddingType get biddingType;
  @override
  ImmutableIds<String?> get paidUsers;
  @override
  ImmutableIds<String?> get admittedUsers;
  @override // @Default(defaultDealPlanType) DealPlanType dealPlan,
  DealPlan? get dealPlan;
  @override
  User? get user;
  @override
  User? get owner;
  @override
  User? get highestBidder;
  @override
  User? get lastBidder;
  @override
  Product? get product;
  @override
  Country? get country;
  @override // DealCategory? category,
  DateTimeField get startDate;
  @override
  DateTimeField get endDate;
  @override
  ImmutableStrings get tags;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_DealCopyWith<_$_Deal> get copyWith => throw _privateConstructorUsedError;
}
