library deal_filter.entity.dart;

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'deal_filter.entity.freezed.dart';

enum SortDealBy {
  asc('asc'),
  desc('desc'),
  priority('dealPriority');

  final String name;

  const SortDealBy(this.name);

  static List<SortDealBy> get filters => [SortDealBy.asc, SortDealBy.desc];

  String get filterName => when(
        asc: () => 'Newest Products',
        desc: () => 'Oldest Products',
        priority: () => 'Priority / Sponsored',
      );

  @override
  String toString() => name.toLowerCase();

  T when<T>({
    required T Function() asc,
    required T Function() desc,
    required T Function() priority,
  }) {
    switch (this) {
      case SortDealBy.asc:
        return asc();
      case SortDealBy.desc:
        return desc();
      case SortDealBy.priority:
        return priority();
    }
  }
}

@Freezed(when: FreezedWhenOptions.none, map: FreezedMapOptions.none)
class DealFilter with _$DealFilter {
  static const double minPriceRange = 1000;
  static const double maxPriceRange = 50000000;

  const DealFilter._();

  static const DealFilter empty = DealFilter();

  const factory DealFilter({
    BidStatus? bidStatus,
    @Default(DealStatus.approved) DealStatus dealStatus,
    KtPair<NumField<double?>, NumField<double?>>? amountRange,
    BiddingType? bidType,
    DealCategory? category,
    DealPlan? plan,
    DealType? dealType,
    SortDealBy? sortBy,
    bool? isPrivate,
    bool? sponsored,
    double? rating,
  }) = _DealFilter;

  bool get hasRange => amountRange != null && amountRange?.first.getOrNull != null && amountRange?.second.getOrNull != null;

  static KtPair<NumField<double?>, NumField<double?>> add(double? value1, double? value2) => KtPair(NumField(value1), NumField(value2));

  DealFilter updateMinPrice(double? value, {ValueChanged<double>? onValueChanged}) {
    if (value == null) return this;

    final secondPrice = amountRange?.second.getOrNull;

    if (secondPrice != null && value > secondPrice) {
      // `value` is greater than the second price, clamp it to the second price.
      final it = value.clamp(DealFilter.minPriceRange, secondPrice);
      onValueChanged?.call(it);
      return copyWith(amountRange: add(it, secondPrice));
    } else if (value > DealFilter.maxPriceRange) {
      // `value` is greater than the maximum price, clamp it to the maximum price.
      final it = value.clamp(DealFilter.minPriceRange, DealFilter.maxPriceRange);
      onValueChanged?.call(it);
      return copyWith(amountRange: add(it, secondPrice));
    } else if (value > DealFilter.minPriceRange && value < DealFilter.maxPriceRange) {
      // `value` is greater than the minimum price, apply the filter.
      onValueChanged?.call(value);
      return copyWith(amountRange: add(value, amountRange?.second.getOrNull));
    }

    return this;
  }

  DealFilter updateMaxPrice(double? value, {ValueChanged<double>? onValueChanged}) {
    if (value == null) return this;

    final firstPrice = amountRange?.first.getOrNull;

    if (firstPrice != null && value < firstPrice) {
      // `value` is less than the first price, clamp it to the first price.
      final it = value.clamp(firstPrice, DealFilter.maxPriceRange);
      onValueChanged?.call(it);
      return copyWith(amountRange: add(firstPrice, it));
    } else if (value > DealFilter.maxPriceRange) {
      // `value` is greater than the maximum price, clamp it to the maximum price.
      final it = value.clamp(DealFilter.minPriceRange, DealFilter.maxPriceRange);
      onValueChanged?.call(it);
      return copyWith(amountRange: add(firstPrice, it));
    } else if (value > DealFilter.minPriceRange && value < DealFilter.maxPriceRange) {
      // `value` is greater than the minimum price, apply the filter.
      onValueChanged?.call(value);
      return copyWith(amountRange: add(amountRange?.first.getOrNull, value));
    }

    return this;
  }

  DealFilter merge(DealFilter? newValue) {
    return DealFilter(
      bidStatus: newValue?.bidStatus ?? bidStatus,
      dealStatus: newValue?.dealStatus ?? dealStatus,
      amountRange: newValue?.amountRange ?? amountRange,
      bidType: newValue?.bidType ?? bidType,
      category: newValue?.category ?? category,
      plan: newValue?.plan ?? plan,
      dealType: newValue?.dealType ?? dealType,
      sortBy: newValue?.sortBy ?? sortBy,
      isPrivate: newValue?.isPrivate ?? isPrivate,
      sponsored: newValue?.sponsored ?? sponsored,
      rating: (newValue?.rating == double.maxFinite || newValue?.rating == double.infinity) ? null : (newValue?.rating ?? rating),
    );
  }
}
