library bid_status.dart;

import 'package:auctionvillage/features/dashboard/domain/status/bid_status/activity_status.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:flutter/painting.dart';
import 'package:json_annotation/json_annotation.dart';

const BidStatus defaultBidStatus = BidStatus.closed;

enum BidStatus with ActivityStatus {
  live('live'),
  sold('sold'),
  closed('closed');

  final String name;

  const BidStatus(this.name);

  @override
  String get value {
    switch (this) {
      case BidStatus.sold:
        return 'Sold';
      case BidStatus.live:
        return 'Live';
      case BidStatus.closed:
      default:
        return 'Closed';
    }
  }

  @override
  Color get color {
    switch (this) {
      case BidStatus.sold:
        return Palette.accentGreen;
      case BidStatus.live:
        return Palette.pastelYellow;
      case BidStatus.closed:
      default:
        return Palette.failedRed;
    }
  }

  bool get isClosed => this == closed;

  bool get isLive => this == live;

  bool get isSold => this == sold;

  @override
  Color get bgColor => color.withOpacity(0.07);

  static BidStatus valueOf(String? name) {
    switch (name?.toLowerCase()) {
      case 'live':
        return BidStatus.live;
      case 'sold':
        return BidStatus.sold;
      case 'closed':
      default:
        return BidStatus.closed;
    }
  }

  @override
  String toString() => value;

  T when<T>({
    required T Function() live,
    required T Function() sold,
    required T Function() closed,
  }) {
    switch (this) {
      case BidStatus.sold:
        return sold.call();
      case BidStatus.live:
        return live.call();
      case BidStatus.closed:
      default:
        return closed.call();
    }
  }

  T maybeWhen<T>({
    T Function()? live,
    T Function()? sold,
    T Function()? closed,
    required T Function() orElse,
  }) {
    switch (this) {
      case BidStatus.sold:
        return sold != null ? sold() : orElse();
      case BidStatus.live:
        return live != null ? live() : orElse();
      case BidStatus.closed:
        return closed != null ? closed() : orElse();
      default:
        return orElse();
    }
  }
}

class BidStatusSerializer implements JsonConverter<BidStatus?, String?> {
  const BidStatusSerializer();

  @override
  BidStatus fromJson(String? value) => BidStatus.valueOf('$value'.toLowerCase());

  @override
  String? toJson(BidStatus? instance) => toJsonString(instance);

  static String? toJsonString(BidStatus? instance) => instance?.name.toUpperCase();
}
