library payment_status.dart;

import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:flutter/widgets.dart';

enum PaymentStatus implements ActivityStatus {
  pending('pending', message: 'Waiting for your payment...'),
  confirmed('confirmed', message: 'Success!\nPlease wait while we process your payment.\nNo further action is required.'),
  failed('failed', message: 'Oops! Payment failed.\nPlease try again after a while.');

  final String name;

  final String? message;

  const PaymentStatus(this.name, {this.message});

  @override
  String get value {
    switch (this) {
      case PaymentStatus.confirmed:
        return 'Successful';
      case PaymentStatus.failed:
        return 'Failed';
      case PaymentStatus.pending:
      default:
        return 'Pending';
    }
  }

  @override
  Color get color {
    switch (this) {
      case PaymentStatus.confirmed:
        return Palette.accentGreen;
      case PaymentStatus.failed:
        return Palette.failedRed;
      case PaymentStatus.pending:
      default:
        return Palette.accentYellow2;
    }
  }

  @override
  Color get bgColor => color.withOpacity(0.07);

  static PaymentStatus fromJson(String? name) {
    switch (name?.toLowerCase()) {
      case 'confirm':
      case 'confirmed':
      case 'success':
      case 'successful':
      case 'successfull':
        return PaymentStatus.confirmed;
      case 'failed':
      case 'fail':
      case 'failure':
      case 'error':
        return PaymentStatus.failed;
      case 'pending':
      default:
        return PaymentStatus.pending;
    }
  }

  static String toJson(PaymentStatus status) {
    switch (status) {
      case PaymentStatus.confirmed:
        return 'confirmed';
      case PaymentStatus.failed:
        return 'failed';
      case PaymentStatus.pending:
      default:
        return 'pending';
    }
  }
}

extension PaymentStatusX on PaymentStatus {
  T maybeWhen<T>({
    T Function()? pending,
    T Function()? confirmed,
    T Function()? failed,
    required T Function() orElse,
  }) {
    if (this == PaymentStatus.pending)
      return pending != null ? pending.call() : orElse.call();
    else if (this == PaymentStatus.confirmed)
      return confirmed != null ? confirmed.call() : orElse.call();
    else if (this == PaymentStatus.failed)
      return failed != null ? failed.call() : orElse.call();
    else
      return orElse.call();
  }

  T when<T>({
    required T Function() pending,
    required T Function() confirmed,
    required T Function() failed,
  }) {
    switch (this) {
      case PaymentStatus.confirmed:
        return confirmed.call();
      case PaymentStatus.failed:
        return failed.call();
      case PaymentStatus.pending:
      default:
        return pending.call();
    }
  }
}
