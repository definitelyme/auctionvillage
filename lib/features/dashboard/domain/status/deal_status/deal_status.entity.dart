library deal_status.entity.dart;

import 'package:auctionvillage/utils/utils.dart';

const DealStatus defaultDealStatus = DealStatus.pending;

enum DealStatus {
  approved('approved'),
  declined('declined'),
  pending('pending');

  final String name;

  const DealStatus(this.name);

  static DealStatus fromJson(String? name) {
    switch (name?.toLowerCase()) {
      case 'approved':
        return DealStatus.approved;
      case 'declined':
        return DealStatus.declined;
      case 'pending':
        return DealStatus.pending;
      default:
        return defaultDealStatus;
    }
  }

  static String? toJson(DealStatus? instance) => instance?.name.toUpperCase();

  @override
  String toString() => name.replaceAll('_', ' ').titleCase();
}

extension DealStatusX on DealStatus {
  T when<T>({
    required T Function() approved,
    required T Function() declined,
    required T Function() pending,
  }) {
    switch (this) {
      case DealStatus.declined:
        return declined.call();
      case DealStatus.approved:
        return approved.call();
      case DealStatus.pending:
      default:
        return pending.call();
    }
  }
}
