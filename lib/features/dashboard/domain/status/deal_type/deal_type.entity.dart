library deal_type.entity.dart;

import 'package:auctionvillage/utils/utils.dart';

const DealType defaultDealType = DealType.buyNow;

enum DealType {
  auction('auction'),
  buyNow('buy_Now'),
  clearance('clearance');

  final String name;

  const DealType(this.name);

  bool get isAuction => this == DealType.auction;
  bool get isBuyNow => this == DealType.buyNow;
  bool get isClearance => this == DealType.clearance;

  String get productTypeName => when(auction: () => 'Auction Items', buyNow: () => 'Buy Now Items', clearance: () => 'Clearance Deals');

  @override
  String toString() => name.replaceAll('_', ' ').titleCase();

  static String? valueFrom(DealType? instance) => instance?.name.toUpperCase();

  static DealType valueOf(String? name) {
    switch (name?.toUpperCase()) {
      case 'AUCTION':
        return DealType.auction;
      case 'CLEARANCE':
        return DealType.clearance;
      case 'BUY NOW':
      default:
        return DealType.buyNow;
    }
  }

  T when<T>({
    required T Function() auction,
    required T Function() buyNow,
    required T Function() clearance,
  }) {
    switch (this) {
      case DealType.auction:
        return auction.call();
      case DealType.clearance:
        return clearance.call();
      case DealType.buyNow:
      default:
        return buyNow.call();
    }
  }

  T maybeWhen<T>({
    T Function()? auction,
    T Function()? buyNow,
    T Function()? clearance,
    required T Function() orElse,
  }) {
    switch (this) {
      case DealType.auction:
        return auction != null ? auction() : orElse();
      case DealType.buyNow:
        return buyNow != null ? buyNow() : orElse();
      case DealType.clearance:
        return clearance != null ? clearance() : orElse();
      default:
        return orElse();
    }
  }

  T fold<T>({
    required T auction,
    required T buyNow,
    required T clearance,
  }) {
    switch (this) {
      case DealType.auction:
        return auction;
      case DealType.clearance:
        return clearance;
      case DealType.buyNow:
      default:
        return buyNow;
    }
  }
}
