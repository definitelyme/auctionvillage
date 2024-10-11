library deal_plan.entity.dart;

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'deal_plan.entity.freezed.dart';

@immutable
@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
class DealPlan extends BaseEntity with _$DealPlan {
  const DealPlan._();

  const factory DealPlan({
    required UniqueId<String?> id,
    required NumField<double> amount,
    required NumField<int?> priority,
    @Default(KtList.empty()) KtList<String?> features,
    @Default(defaultDealPlanType) DealPlanType name,
    Country? country,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _DealPlan;

  bool get isValid => id.value != null && amount.getOrNull != null;

  bool get isRecommended => name == defaultRecommendedPlanType;

  factory DealPlan.blank({
    String? id,
    double? amount,
    int? priority,
    List<String> features = const [],
    DealPlanType? name,
    Country? country,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) =>
      DealPlan(
        id: UniqueId.fromExternal(id),
        amount: NumField(amount ?? 0),
        priority: NumField(priority),
        features: listFrom(features),
        name: name ?? defaultDealPlanType,
        country: country,
        createdAt: createdAt,
        updatedAt: updatedAt,
      );
}

extension DealPlanKt on KtList<DealPlan> {
  KtList<DealPlan> get notFreePlan => filter((it) => it.name != DealPlanType.free);

  DealPlan? get enterprisePlan => firstOrNull((it) => it.name == DealPlanType.enterprise);
}
