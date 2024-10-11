library payable.entity.dart;

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payable.entity.freezed.dart';

enum PaymentResource {
  deal('deal'),
  plan('plan');

  final String name;

  const PaymentResource(this.name);

  @override
  String toString() => name;

  String get lowercase => name.toLowerCase();
}

@Freezed(when: FreezedWhenOptions.none)
class Payable with _$Payable {
  const Payable._();

  const factory Payable.closeBid(
    Deal deal, {
    required NumField<double> bidAmount,
    required User user,
  }) = _CloseBidPayableEntity;

  const factory Payable.upgradePlan(
    Product product, {
    required Deal deal,
    required User user,
    required DealPlan plan,
  }) = _UpgradePayableEntity;

  const factory Payable.clearanceDeal(Deal deal, {required User user}) = _ClearanceDealPayableEntity;

  PaymentResource get resource => map(
        closeBid: (_) => PaymentResource.deal,
        upgradePlan: (_) => PaymentResource.plan,
        clearanceDeal: (_) => PaymentResource.deal,
      );
}
