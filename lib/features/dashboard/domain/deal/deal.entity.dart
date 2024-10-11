library deal.entity.dart;

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/core/domain/response/index.dart';
import 'package:auctionvillage/core/domain/validator/validator.dart';
import 'package:auctionvillage/features/auth/presentation/managers/managers.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:dartz/dartz.dart' hide id;
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'deal.entity.freezed.dart';

@freezed
@immutable
class Deal extends BaseEntity with _$Deal {
  static const double DEFAULT_INCREAMENT = 1.0;
  static const int DEFAULT_QUANTITY = 1;
  static const int MIN_PRICE = 0;
  static const auctionDurationInDays = 14;
  static const specialAuctionDurationInDays = 31;

  const factory Deal({
    required UniqueId<String?> id,
    required NumField<double> basePrice,
    required NumField<double> reservedPrice,
    required NumField<double> lastPriceOffered,
    @Default(false) bool isPrivate,
    @Default(false) bool isSponsored,
    // int? dealPriority,
    @Default(false) bool hasWish,
    required NumField<double?> admittanceFee,
    required BasicTextField offlineAddress,
    required NumField<int> availableItems,
    @Default(defaultBidStatus) BidStatus bidStatus,
    @Default(false) bool isClosing,
    @Default(false) bool isActive,
    @Default(defaultDealStatus) DealStatus status,
    @Default(defaultDealType) DealType type,
    @Default(defaultOfferType) OfferType offerType,
    @Default(defaultQuantityType) QuantityType quantity,
    @Default(defaultBiddingType) BiddingType biddingType,
    required ImmutableIds<String?> paidUsers,
    required ImmutableIds<String?> admittedUsers,
    // @Default(defaultDealPlanType) DealPlanType dealPlan,
    DealPlan? dealPlan,
    User? user,
    User? owner,
    User? highestBidder,
    User? lastBidder,
    Product? product,
    Country? country,
    // DealCategory? category,
    required DateTimeField startDate,
    required DateTimeField endDate,
    required ImmutableStrings tags,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Deal;

  const Deal._();

  static NumField<double> setBasePrice(double? value) => NumField(
        value ?? 0,
        other: (it) => Validator.amountMustBeGreaterThan(
          it,
          Deal.MIN_PRICE,
          msg: 'Base price must be greater than ${'${Deal.MIN_PRICE}'.asCurrency()}',
        ),
      );

  static NumField<double> setReservedPrice(double? value, {double? basePrice, bool orEqualTo = false}) => NumField(
        value ?? 0,
        other: (it) {
          final min = (basePrice ?? Deal.MIN_PRICE).roundToIntOrDouble;
          return Validator.amountMustBeGreaterThan(it, basePrice ?? Deal.MIN_PRICE,
              orEqualTo: orEqualTo, msg: 'Reserved price must be greater than ${'$min'.asCurrency()}');
        },
      );

  factory Deal.blank({
    String? id,
    double? basePrice,
    double? reservedPrice,
    double? lastPriceOffered,
    bool? isPrivate,
    bool? isSponsored,
    bool? hasWish,
    double? admittanceFee,
    int? availableItems,
    BidStatus? bidStatus,
    bool? isClosing,
    bool? isActive,
    String? offlineAddress,
    DealStatus? status,
    DealType? type,
    OfferType? offerType,
    List<String?>? paidUsers,
    List<String?>? admittedUsers,
    // DealPlanType? dealPlan,
    DealPlan? dealPlan,
    QuantityType? quantity,
    BiddingType? biddingType,
    User? user,
    User? owner,
    Country? country,
    User? highestBidder,
    User? lastBidder,
    Product? product,
    // DealCategory? category,
    DateTime? startDate,
    DateTime? endDate,
    List<String>? tags,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    User? user;

    try {
      user = navigator.navigatorKey.currentContext?.let((it) => it.read<AuthWatcherCubit>().state.user);
    } catch (_) {
      user = null;
      if (kDebugMode) rethrow;
    }

    return Deal(
      id: UniqueId.fromExternal(id),
      basePrice: Deal.setBasePrice(basePrice),
      reservedPrice: Deal.setReservedPrice(reservedPrice, basePrice: basePrice),
      lastPriceOffered: NumField(lastPriceOffered ?? basePrice ?? 0),
      isPrivate: isPrivate ?? false,
      isSponsored: isSponsored ?? false,
      hasWish: hasWish ?? false,
      admittanceFee: NumField(admittanceFee),
      availableItems: NumField(availableItems ?? Deal.DEFAULT_QUANTITY),
      offlineAddress: BasicTextField(offlineAddress),
      isClosing: isClosing ?? false,
      isActive: isActive ?? false,
      bidStatus: bidStatus ?? defaultBidStatus,
      status: status ?? defaultDealStatus,
      type: type ?? defaultDealType,
      offerType: offerType ?? defaultOfferType,
      paidUsers: ImmutableIds(KtList.from(paidUsers?.map((e) => UniqueId.fromExternal('$e')) ?? [])),
      admittedUsers: ImmutableIds(KtList.from(admittedUsers?.map((e) => UniqueId.fromExternal('$e')) ?? [])),
      // dealPlan: dealPlan ?? defaultDealPlanType,
      dealPlan: dealPlan,
      quantity: quantity ?? defaultQuantityType,
      user: user,
      owner: owner,
      country: country ?? product?.country ?? user?.country,
      highestBidder: highestBidder,
      lastBidder: lastBidder,
      // category: category,
      product: product,
      startDate: DateTimeField(startDate),
      endDate: DateTimeField(endDate),
      tags: ImmutableStrings(KtList.from((tags ?? []))),
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  DateTime? get _endDate => endDate.getOrNull;

  DateTime? get _startDate => startDate.getOrNull;

  int? get diffInDays => _endDate != null && _startDate != null ? _endDate!.difference(_startDate!).inDays : null;

  Option<FieldObjectException<dynamic>> get failure => maybeFailure.fold((f) => some(f), (_) => none());

  double get increament {
    final percentage = product?.category?.percentageIncrease.getOrNull ?? DEFAULT_INCREAMENT;
    final factor = ((percentage / 100) * lastPriceOffered.getExact()).ceilToDouble();
    return factor;
  }

  bool get isClosed => bidStatus.isClosed || (endDate.getOrNull != null ? localTime.isAfter(endDate.getOrNull!) : false);

  bool get isWithinAuctionDuration => diffInDays != null ? diffInDays! < auctionDurationInDays : false;

  bool get isWithinSpecialAuctionDuration => diffInDays != null ? diffInDays! < specialAuctionDurationInDays : false;
  // Option<FieldObjectException<dynamic>> get failure => basePrice.mapped.andThen(startDate.mapped).fold((f) => some(f), (_) => none());
  Either<FieldObjectException<dynamic>, Unit> get maybeFailure => type.isAuction
      ? basePrice.mapped.andThen(availableItems.mapped).andThen(reservedPrice.mapped)
      : basePrice.mapped.andThen(availableItems.mapped);

  Deal bid({NumField<double>? amount, NumField<double>? lastPrice}) =>
      copyWith(basePrice: amount ?? basePrice, lastPriceOffered: lastPrice ?? lastPriceOffered);

  bool canBuyNow(User? user) => bidStatus.isLive && (user != null ? !hasPaid(user) : false);

  bool hasPaid(User? user) => user != null ? (paidUsers.getOrNull?.contains(user.id) ?? false) : false;

  bool hasPaidAdmittance(User? user) => user != null ? admittedUsers.getOrNull?.contains(user.id) ?? false : false;

  bool isHighestBidder(User? user) => highestBidder?.id == user?.id;

  bool isLastBidder(User? user) => lastBidder?.id == user?.id;

  bool isOwner(User? user) => (owner?.id ?? product?.owner?.id) == user?.id;

  bool hasBidded(User? user) => isHighestBidder(user) || isLastBidder(user);

  UserBidStatus? bidStatusForUser(User? user) {
    if (user == null) {
      return null;
    } else if (!isClosed) {
      return UserBidStatus.ongoing;
    } else if (isHighestBidder(user)) {
      return UserBidStatus.won;
    } else if (hasPaid(user)) {
      return UserBidStatus.paid;
    } else if (!isHighestBidder(user) && hasBidded(user)) {
      return UserBidStatus.lost;
    }

    return null;
  }

  Deal merge(Deal? other) => copyWith(
        id: other?.id.value != null ? other!.id : id,
        basePrice: other?.basePrice.isNotNull((it) => it as NumField<double>, orElse: (_) => basePrice) ?? basePrice,
        reservedPrice: other?.reservedPrice.isNotNull((it) => it as NumField<double>, orElse: (_) => reservedPrice) ?? reservedPrice,
        lastPriceOffered:
            other?.lastPriceOffered.isNotNull((it) => it as NumField<double>, orElse: (_) => lastPriceOffered) ?? lastPriceOffered,
        isPrivate: other?.isPrivate ?? isPrivate,
        isSponsored: other?.isSponsored ?? isSponsored,
        hasWish: other?.hasWish ?? hasWish,
        admittanceFee: other?.admittanceFee.isNotNull((it) => it as NumField<double?>, orElse: (_) => admittanceFee) ?? admittanceFee,
        availableItems: other?.availableItems.isNotNull((it) => it as NumField<int>, orElse: (_) => availableItems) ?? availableItems,
        offlineAddress: other?.offlineAddress.isNotNull((it) => it as BasicTextField, orElse: (_) => offlineAddress) ?? offlineAddress,
        biddingType: other?.biddingType ?? biddingType,
        bidStatus: other?.bidStatus ?? bidStatus,
        isClosing: other?.isClosing ?? isClosing,
        isActive: other?.isActive ?? isActive,
        status: other?.status ?? status,
        type: other?.type ?? type,
        offerType: other?.offerType ?? offerType,
        paidUsers: paidUsers.merge(other?.paidUsers),
        admittedUsers: admittedUsers.merge(other?.admittedUsers),
        // dealPlan: other?.dealPlan ?? dealPlan,
        dealPlan: other?.dealPlan ?? dealPlan,
        user: other?.user ?? user,
        highestBidder: other?.highestBidder ?? highestBidder,
        lastBidder: other?.lastBidder ?? lastBidder,
        owner: other?.owner ?? owner,
        quantity: other?.quantity ?? quantity,
        tags: tags.merge(other?.tags),
        country: other?.country ?? country,
        // category:  category?.merge(other?.category),
        product: product?.merge(other?.product),
        startDate: other?.startDate.isNotNull((it) => it as DateTimeField, orElse: (_) => startDate) ?? startDate,
        endDate: other?.endDate.isNotNull((it) => it as DateTimeField, orElse: (_) => endDate) ?? endDate,
        createdAt: other?.createdAt ?? createdAt,
        updatedAt: other?.updatedAt ?? updatedAt,
      );

  Deal toggleFavorite([bool? value]) => copyWith(hasWish: value ?? !hasWish);
}
