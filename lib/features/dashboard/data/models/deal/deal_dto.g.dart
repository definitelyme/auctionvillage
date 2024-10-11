// GENERATED CODE - DO NOT MODIFY BY HAND

part of deal_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DealDTO _$$_DealDTOFromJson(Map<String, dynamic> json) => _$_DealDTO(
      meta: json['_meta'] == null
          ? null
          : MetaDTO.fromJson(json['_meta'] as Map<String, dynamic>),
      data: DealDTOData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DealDTOToJson(_$_DealDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('_meta', instance.meta?.toJson());
  val['data'] = instance.data.toJson();
  return val;
}

_$_DealDTOData _$$_DealDTODataFromJson(Map<String, dynamic> json) =>
    _$_DealDTOData(
      id: json['_id'] as String?,
      basePrice: const StringSerializer().fromJson(json['basePrice']),
      reservedPrice: const StringSerializer().fromJson(json['reservedPrice']),
      amount: const StringSerializer().fromJson(json['amount']),
      country: const StringSerializer().fromJson(json['country']),
      isPrivate: const BooleanSerializer().fromJson(json['isPrivate']),
      isFavorite: const BooleanSerializer().fromJson(json['isFavorite']),
      dealStatus: DealStatus.fromJson(json['status'] as String?),
      sponsored: const BooleanSerializer().fromJson(json['sponsored']),
      dealPlan: json['plan'] == null
          ? null
          : DealPlanDTOData.fromJson(json['plan'] as Map<String, dynamic>),
      admittanceFee: const DoubleSerializer().fromJson(json['admittanceFee']),
      offlineAddress: json['address'] as String?,
      bidStatus:
          const BidStatusSerializer().fromJson(json['bidStatus'] as String?),
      isClosing: const BooleanSerializer().fromJson(json['isClosing']),
      active: const BooleanSerializer().fromJson(json['active']),
      lastPriceOffered:
          const DoubleSerializer().fromJson(json['lastPriceOffered']),
      offerType:
          const OfferTypeSerializer().fromJson(json['offerType'] as String?),
      startDate:
          const TimestampConverter().fromJson(json['startDate'] as String?),
      endDate: const TimestampConverter().fromJson(json['endDate'] as String?),
      type: DealType.valueOf(json['type'] as String?),
      availableItems:
          const IntegerSerializer().fromJson(json['availableItems']),
      quantity:
          const QuantityTypeSerializer().fromJson(json['quantity'] as String?),
      biddingType: const BiddingTypeSerializer()
          .fromJson(json['biddingType'] as String?),
      paidUserIds: (json['paidUsers'] as List<dynamic>?)
              ?.map((e) => e as String?)
              .toList() ??
          const [],
      admittedUserIds: (json['admittedUsers'] as List<dynamic>?)
              ?.map((e) => e as String?)
              .toList() ??
          const [],
      user: json['user'] == null
          ? null
          : UserDTO.fromJson(json['user'] as Map<String, dynamic>),
      owner: json['owner'] == null
          ? null
          : UserDTO.fromJson(json['owner'] as Map<String, dynamic>),
      highestBidder: json['highestBidder'] == null
          ? null
          : UserDTO.fromJson(json['highestBidder'] as Map<String, dynamic>),
      lastBidder: json['lastBidder'] == null
          ? null
          : UserDTO.fromJson(json['lastBidder'] as Map<String, dynamic>),
      product: json['product'] == null
          ? null
          : ProductDTOData.fromJson(json['product'] as Map<String, dynamic>),
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      regions:
          (json['regions'] as List<dynamic>?)?.map((e) => e as String).toList(),
      createdAt:
          const TimestampConverter().fromJson(json['createdAt'] as String?),
      updatedAt:
          const TimestampConverter().fromJson(json['updatedAt'] as String?),
    );

Map<String, dynamic> _$$_DealDTODataToJson(_$_DealDTOData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('_id', instance.id);
  writeNotNull(
      'basePrice', const StringSerializer().toJson(instance.basePrice));
  writeNotNull(
      'reservedPrice', const StringSerializer().toJson(instance.reservedPrice));
  writeNotNull('amount', const StringSerializer().toJson(instance.amount));
  writeNotNull('country', const StringSerializer().toJson(instance.country));
  writeNotNull(
      'isPrivate', const BooleanSerializer().toJson(instance.isPrivate));
  writeNotNull(
      'isFavorite', const BooleanSerializer().toJson(instance.isFavorite));
  writeNotNull('status', DealStatus.toJson(instance.dealStatus));
  writeNotNull(
      'sponsored', const BooleanSerializer().toJson(instance.sponsored));
  writeNotNull('plan', instance.dealPlan?.toJson());
  writeNotNull(
      'admittanceFee', const DoubleSerializer().toJson(instance.admittanceFee));
  writeNotNull('address', instance.offlineAddress);
  writeNotNull(
      'bidStatus', BidStatusSerializer.toJsonString(instance.bidStatus));
  writeNotNull(
      'isClosing', const BooleanSerializer().toJson(instance.isClosing));
  writeNotNull('active', const BooleanSerializer().toJson(instance.active));
  writeNotNull('lastPriceOffered',
      const DoubleSerializer().toJson(instance.lastPriceOffered));
  writeNotNull(
      'offerType', OfferTypeSerializer.toJsonString(instance.offerType));
  writeNotNull(
      'startDate', const TimestampConverter().toJson(instance.startDate));
  writeNotNull('endDate', const TimestampConverter().toJson(instance.endDate));
  writeNotNull('type', DealType.valueFrom(instance.type));
  writeNotNull('availableItems',
      const IntegerSerializer().toJson(instance.availableItems));
  writeNotNull(
      'quantity', QuantityTypeSerializer.toJsonString(instance.quantity));
  writeNotNull(
      'biddingType', BiddingTypeSerializer.toJsonString(instance.biddingType));
  val['paidUsers'] = instance.paidUserIds;
  val['admittedUsers'] = instance.admittedUserIds;
  writeNotNull('user', instance.user?.toJson());
  writeNotNull('owner', instance.owner?.toJson());
  writeNotNull('highestBidder', instance.highestBidder?.toJson());
  writeNotNull('lastBidder', instance.lastBidder?.toJson());
  writeNotNull('product', instance.product?.toJson());
  writeNotNull('tags', instance.tags);
  writeNotNull('regions', instance.regions);
  writeNotNull(
      'createdAt', const TimestampConverter().toJson(instance.createdAt));
  writeNotNull(
      'updatedAt', const TimestampConverter().toJson(instance.updatedAt));
  return val;
}

_$_DealListDTO _$$_DealListDTOFromJson(Map<String, dynamic> json) =>
    _$_DealListDTO(
      meta: json['_meta'] == null
          ? null
          : MetaDTO.fromJson(json['_meta'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => DealDTOData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_DealListDTOToJson(_$_DealListDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('_meta', instance.meta?.toJson());
  val['data'] = instance.data.map((e) => e.toJson()).toList();
  return val;
}
