library user_bid_history.dart;

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'user_bid_history.freezed.dart';

@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
class UserBidHistory extends BaseEntity with _$UserBidHistory {
  const UserBidHistory._();

  const factory UserBidHistory({
    required UniqueId<String?> id,
    required NumField<double> totalAuctionsParticipated,
    required NumField<double> totalWinningBid,
    required NumField<double> totalAmountSpent,
    @Default(KtList.empty()) KtList<Deal> deals,
    required NumField<double> amount,
    Deal? deal,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _UserBidHistory;

  factory UserBidHistory.blank({
    String? id,
    double? totalAuctionsParticipated,
    double? totalWinningBid,
    double? totalAmountSpent,
    KtList<Deal> history = const KtList.empty(),
    double? amount,
    Deal? deal,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) =>
      UserBidHistory(
        id: UniqueId.fromExternal(id),
        totalAmountSpent: NumField(totalAmountSpent ?? 0),
        totalAuctionsParticipated: NumField(totalAuctionsParticipated ?? 0),
        totalWinningBid: NumField(totalWinningBid ?? 0),
        deals: history,
        amount: NumField(amount ?? 0),
        deal: deal,
        createdAt: createdAt,
        updatedAt: updatedAt,
      );

  bool get isValid => deal != null && amount.isValid;

  UserBidHistory merge(UserBidHistory? other, {bool nextPage = false}) => copyWith(
        id: other?.id.value != null ? other!.id : id,
        totalAuctionsParticipated:
            other?.totalAuctionsParticipated.isNotNull((it) => it as NumField<double>, orElse: (_) => totalAuctionsParticipated) ??
                totalAuctionsParticipated,
        totalWinningBid:
            other?.totalWinningBid.isNotNull((it) => it as NumField<double>, orElse: (_) => totalWinningBid) ?? totalWinningBid,
        totalAmountSpent:
            other?.totalAmountSpent.isNotNull((it) => it as NumField<double>, orElse: (_) => totalAmountSpent) ?? totalAmountSpent,
        deals: other != null ? (!nextPage ? other.deals : deals.plusIfAbsent(other.deals)) : deals,
        amount: other?.amount.isNotNull((it) => it as NumField<double>, orElse: (_) => amount) ?? amount,
        deal: deal?.merge(other?.deal),
        createdAt: other?.createdAt ?? createdAt,
        updatedAt: other?.updatedAt ?? updatedAt,
      );
}
