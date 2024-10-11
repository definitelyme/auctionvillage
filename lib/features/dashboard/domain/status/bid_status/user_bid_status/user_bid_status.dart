library sell_status.dart;

import 'package:auctionvillage/features/dashboard/domain/status/bid_status/activity_status.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:flutter/painting.dart';

enum UserBidStatus with ActivityStatus {
  won,
  paid,
  ongoing,
  lost;

  @override
  String get value {
    switch (this) {
      case UserBidStatus.won:
        return 'Auction Won';
      case UserBidStatus.paid:
        return 'Paid';
      case UserBidStatus.ongoing:
        return 'Ongoing';
      case UserBidStatus.lost:
      default:
        return 'Auction Lost';
    }
  }

  @override
  Color get color {
    switch (this) {
      case UserBidStatus.won:
        return Palette.fromHex('#259F46');
      case UserBidStatus.ongoing:
        return Palette.fromHex('#FFA200');
      case UserBidStatus.lost:
      default:
        return Palette.fromHex('#D71818');
    }
  }

  bool get isWon => this == UserBidStatus.won;
  bool get isPaid => this == UserBidStatus.paid;
  bool get isOngoing => this == UserBidStatus.ongoing;
  bool get isLost => this == UserBidStatus.lost;

  @override
  Color get bgColor => color.withOpacity(0.07);

  T when<T>({
    required T Function() won,
    required T Function() ongoing,
    required T Function() lost,
  }) {
    switch (this) {
      case UserBidStatus.won:
      case UserBidStatus.paid:
        return won();
      case UserBidStatus.ongoing:
        return ongoing();
      case UserBidStatus.lost:
      default:
        return lost();
    }
  }

  T maybeWhen<T>({
    T Function()? won,
    T Function()? paid,
    T Function()? ongoing,
    T Function()? lost,
    required T Function() orElse,
  }) {
    switch (this) {
      case UserBidStatus.won:
        return won != null ? won() : orElse();
      case UserBidStatus.paid:
        return paid != null ? paid() : (won != null ? won() : orElse());
      case UserBidStatus.ongoing:
        return ongoing != null ? ongoing() : orElse();
      case UserBidStatus.lost:
        return lost != null ? lost() : orElse();
      default:
        return orElse();
    }
  }
}
