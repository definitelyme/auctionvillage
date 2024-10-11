library sell_history.dart;

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'sell_history.freezed.dart';

@freezed
@immutable
class SellHistory with _$SellHistory {
  const SellHistory._();

  const factory SellHistory({
    required NumField<double> totalProducts,
    required NumField<double> totalSold,
    required NumField<double> revenue,
    @Default(KtList.empty()) KtList<Deal> deals,
  }) = _SellHistory;

  KtMap<DateTime, KtList<Deal>> get grouped {
    return deals.sortedWith((a, b) => b.createdAt!.compareTo(a.createdAt!)).groupBy(
          (it) => DateTime(
            it.createdAt!.year,
            it.createdAt!.month,
            it.createdAt!.day,
          ),
        );
  }

  factory SellHistory.blank({
    double? totalProducts,
    double? totalSold,
    double? revenue,
    KtList<Deal> history = const KtList.empty(),
  }) =>
      SellHistory(
        revenue: NumField(revenue ?? 0),
        totalProducts: NumField(totalProducts ?? 0),
        totalSold: NumField(totalSold ?? 0),
        deals: history,
      );

  SellHistory merge(SellHistory? other, {bool nextPage = false}) => SellHistory(
        totalProducts: other?.totalProducts.isNotNull((it) => it as NumField<double>, orElse: (_) => totalProducts) ?? totalProducts,
        totalSold: other?.totalSold.isNotNull((it) => it as NumField<double>, orElse: (_) => totalSold) ?? totalSold,
        revenue: other?.revenue.isNotNull((it) => it as NumField<double>, orElse: (_) => revenue) ?? revenue,
        deals: other != null ? (!nextPage ? other.deals : deals.plusIfAbsent(other.deals)) : deals,
      );
}
