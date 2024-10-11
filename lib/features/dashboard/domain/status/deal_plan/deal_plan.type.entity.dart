library deal_plan.type.entity.dart;

import 'package:auctionvillage/utils/utils.dart';
import 'package:json_annotation/json_annotation.dart';

const DealPlanType defaultDealPlanType = DealPlanType.free;

const DealPlanType defaultRecommendedPlanType = DealPlanType.professional;

const _businessDevPlan = 'BUSINESS';
const _freeDevPlan = 'FREE';
const _professionalDevPlan = 'PROFESSIONAL';
const _enterpriseDevPlan = 'ENTERPRISE';

const _businessProdPlan = 'Business Plan';
const _freeProdPlan = 'FREE';
const _professionalProdPlan = 'Professional Plan';
const _enterpriseProdPlan = 'Enterprise Plan';

enum DealPlanType {
  business(0, _businessProdPlan),
  professional(1, _professionalProdPlan),
  enterprise(2, _enterpriseProdPlan),
  free(3, _freeProdPlan);

  final int ordinal;

  final String name;

  const DealPlanType(this.ordinal, this.name);

  static String? _toLower(String? it) => it?.toLowerCase();

  static DealPlanType fromJson(String? value) {
    final _value = _toLower(value);

    if (_value == _toLower(_businessProdPlan) || _value == _toLower(_businessDevPlan)) {
      return DealPlanType.business;
    } else if (_value == _toLower(_professionalProdPlan) || _value == _toLower(_professionalDevPlan)) {
      return DealPlanType.professional;
    } else if (_value == _toLower(_enterpriseProdPlan) || _value == _toLower(_enterpriseDevPlan)) {
      return DealPlanType.enterprise;
    } else if (_value == _toLower(_freeProdPlan) || _value == _toLower(_freeDevPlan)) {
      return DealPlanType.free;
    } else {
      return defaultDealPlanType;
    }
  }

  String get sentence => name.replaceAll('_', ' ').sentenceCase();

  @override
  String toString() => name.replaceAll('_', ' ').sentenceCase();

  T when<T>({
    required T Function() business,
    required T Function() professional,
    required T Function() enterprise,
    required T Function() free,
  }) {
    switch (this) {
      case DealPlanType.business:
        return business();
      case DealPlanType.professional:
        return professional();
      case DealPlanType.enterprise:
        return enterprise();
      case DealPlanType.free:
      default:
        return free();
    }
  }
}

class DealPlanTypeSerializer implements JsonConverter<DealPlanType?, String?> {
  const DealPlanTypeSerializer();

  @override
  DealPlanType fromJson(String? value) => DealPlanType.fromJson(value);

  static String? toJsonString(DealPlanType? instance) => instance?.name.toUpperCase();

  @override
  String? toJson(DealPlanType? instance) => toJsonString(instance);
}
