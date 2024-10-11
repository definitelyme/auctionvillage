library deal_bid_history.dart;

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
import 'package:auctionvillage/utils/utils.dart';

part 'deal_bid_history.freezed.dart';

@Freezed(when: FreezedWhenOptions.none, map: FreezedMapOptions.none)
class DealBidHistory with _$DealBidHistory {
  const DealBidHistory._();

  const factory DealBidHistory({
    @Default(KtList.empty()) KtList<User> users,
  }) = _DealBidHistory;

  factory DealBidHistory.blank({Iterable<User> users = const []}) => DealBidHistory(users: users.toImmutableList());

  DealBidHistory merge(DealBidHistory? other) => DealBidHistory(
        users: other?.users != null
            ? users.plusAndMapIfAbsent(
                other!.users,
                none: (p0, p1) => p0.bidAmount == p1.bidAmount && p0.historyDate == p1.historyDate,
                replaceIfExists: (p0, p1) => p0.bidAmount == p1.bidAmount && p0.historyDate == p1.historyDate,
                position: KtPlus.start,
              )
            : users,
      );
}
