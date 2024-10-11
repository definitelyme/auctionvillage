library deal_dto.dart;

import 'package:auctionvillage/core/data/index.dart';
import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/features/dashboard/data/models/models.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/manager/serializer/serializers.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'deal_dto.freezed.dart';
part 'deal_dto.g.dart';

DealDTO deserializeDealDTO(Map<String, dynamic> json) => DealDTO.fromJson(json);
Map<String, dynamic> serializeDealDTO(DealDTO object) => object.toJson();

@immutable
@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
class DealDTO with _$DealDTO {
  const DealDTO._();

  const factory DealDTO({
    @JsonKey(name: '_meta') MetaDTO? meta,
    required DealDTOData data,
  }) = _DealDTO;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory DealDTO.fromJson(Map<String, dynamic> json) => _$DealDTOFromJson(json);

  /// Maps the Data Transfer Object to a Deal Object.
  Deal get domain => data.domain;
}

DealDTOData deserializeDealDTOData(Map<String, dynamic> json) => DealDTOData.fromJson(json);
Map<String, dynamic> serializeDealDTOData(DealDTOData object) => object.toJson();

@immutable
@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
class DealDTOData with _$DealDTOData {
  const DealDTOData._();

  const factory DealDTOData({
    @JsonKey(name: '_id') String? id,
    @StringSerializer() String? basePrice,
    @StringSerializer() String? reservedPrice,
    @StringSerializer() String? amount,
    @StringSerializer() String? country,
    @BooleanSerializer() bool? isPrivate,
    @JsonKey(name: 'isFavorite') @BooleanSerializer() bool? isFavorite,
    @JsonKey(name: 'status', toJson: DealStatus.toJson, fromJson: DealStatus.fromJson) DealStatus? dealStatus,
    @BooleanSerializer() bool? sponsored,
    // @IntegerSerializer() int? dealPriority,
    // @JsonKey(name: 'plan', toJson: DealPlanTypeSerializer.toJsonString) @DealPlanTypeSerializer() DealPlan? dealPlan,
    @JsonKey(name: 'plan') DealPlanDTOData? dealPlan,
    @DoubleSerializer() double? admittanceFee,
    @JsonKey(name: 'address') String? offlineAddress,
    @JsonKey(toJson: BidStatusSerializer.toJsonString) @BidStatusSerializer() BidStatus? bidStatus,
    @BooleanSerializer() bool? isClosing,
    @BooleanSerializer() bool? active,
    @DoubleSerializer() double? lastPriceOffered,
    @JsonKey(toJson: OfferTypeSerializer.toJsonString) @OfferTypeSerializer() OfferType? offerType,
    @TimestampConverter() DateTime? startDate,
    @TimestampConverter() DateTime? endDate,
    @JsonKey(toJson: DealType.valueFrom, fromJson: DealType.valueOf) DealType? type,
    @IntegerSerializer() int? availableItems,
    @JsonKey(toJson: QuantityTypeSerializer.toJsonString) @QuantityTypeSerializer() QuantityType? quantity,
    @JsonKey(toJson: BiddingTypeSerializer.toJsonString) @BiddingTypeSerializer() BiddingType? biddingType,
    @Default([]) @JsonKey(name: 'paidUsers') List<String?> paidUserIds,
    @Default([]) @JsonKey(name: 'admittedUsers') List<String?> admittedUserIds,
    UserDTO? user,
    UserDTO? owner,
    UserDTO? highestBidder,
    UserDTO? lastBidder,
    ProductDTOData? product,
    List<String>? tags,
    List<String>? regions,
    // CategoryDTOData? category,
    @TimestampConverter() DateTime? createdAt,
    @TimestampConverter() DateTime? updatedAt,
  }) = _DealDTOData;

  /// Maps Deal to a Data Transfer Object.
  factory DealDTOData.fromDomain(Deal? instance) => DealDTOData(
        // id: instance?.id.value,
        basePrice: '${instance?.basePrice.getOrNull?.roundToIntOrDouble ?? ''}',
        reservedPrice: '${instance?.reservedPrice.getOrNull?.roundToIntOrDouble ?? ''}',
        amount: '${instance?.basePrice.getOrNull?.roundToIntOrDouble ?? ''}',
        // isPrivate: instance?.isPrivate,
        // isFavorite: instance?.hasWish,
        // dealStatus: instance?.status,
        // sponsored: instance?.isSponsored,
        // admittanceFee: instance?.admittanceFee.getOrNull?,
        // clicks: instance?.clicks.getOrNull?,
        // dealPriority: instance?.dealPriority.getOrNull?,
        // bidStatus: instance?.bidStatus,
        // isClosing: instance?.isClosing,
        // active: instance?.isActive,
        // lastPriceOffered: instance?.lastPriceOffered.getOrNull?,
        // dealPlan: instance?.dealPlan,
        offlineAddress: instance?.offlineAddress.getOrNull,
        availableItems: instance?.availableItems.getOrNull,
        type: instance?.type,
        quantity: instance?.quantity,
        biddingType: instance?.biddingType,
        startDate: instance?.startDate.getOrNull,
        endDate: instance?.endDate.getOrNull,
        tags: instance?.tags.getOrNull?.asList(),
        regions: instance?.product?.shippingInformation?.regions.getOrNull?.asList(),
        // product: ProductDTOData.fromDomain(instance?.product),
        offerType: instance?.offerType,
      );

  factory DealDTOData.fromJson(Map<String, dynamic> json) => _$DealDTODataFromJson(json);

  /// Maps the Data Transfer Object to a Deal Object.
  Deal get domain => Deal.blank(
        id: id,
        basePrice: const DoubleSerializer().fromJson(basePrice),
        reservedPrice: const DoubleSerializer().fromJson(reservedPrice),
        isPrivate: isPrivate,
        isSponsored: sponsored,
        hasWish: isFavorite,
        status: dealStatus,
        dealPlan: dealPlan?.domain,
        admittanceFee: admittanceFee,
        availableItems: availableItems,
        offlineAddress: offlineAddress,
        bidStatus: bidStatus,
        isClosing: isClosing,
        isActive: active,
        lastPriceOffered: lastPriceOffered,
        offerType: offerType,
        quantity: quantity,
        biddingType: biddingType,
        startDate: startDate,
        endDate: endDate,
        type: type,
        user: user?.domain,
        owner: owner?.domain,
        country: Country.fromName(country),
        highestBidder: highestBidder?.domain,
        lastBidder: lastBidder?.domain,
        product: product?.domain,
        tags: tags,
        admittedUsers: admittedUserIds,
        paidUsers: paidUserIds,
        // category: category?.domain,
        createdAt: createdAt,
        updatedAt: updatedAt,
      );
}

DealListDTO deserializeDealListDTO(Map<String, dynamic> json) => DealListDTO.fromJson(json);
Map<String, dynamic> serializeDealListDTO(DealListDTO object) => object.toJson();

@immutable
@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
class DealListDTO with _$DealListDTO {
  const DealListDTO._();

  const factory DealListDTO({
    @JsonKey(name: '_meta') MetaDTO? meta,
    @Default([]) List<DealDTOData> data,
  }) = _DealListDTO;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory DealListDTO.fromJson(Map<String, dynamic> json) => _$DealListDTOFromJson(json);

  /// Maps the Data Transfer Object to a KtList<Deal> Object.
  KtList<Deal> get domain => KtList.from(data.map((e) => e.domain));
}
