library payment_method.dart;

import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:flutter/widgets.dart';
import 'package:json_annotation/json_annotation.dart';

enum PaymentMethod implements ActivityStatus {
  wallet('WALLET'),
  flutterwave('FLUTTERWAVE'),
  paystack('PAYSTACK'),
  stripe('STRIPE');

  final String name;

  const PaymentMethod(this.name);

  String get lowercase => name.toLowerCase();

  @override
  String get value => when(
        wallet: () => 'Wallet',
        flutterwave: () => 'FLW',
        paystack: () => 'Paystack',
        stripe: () => 'Stripe',
      );

  @override
  Color get color {
    switch (this) {
      case PaymentMethod.flutterwave:
        return Palette.flutterwave;
      case PaymentMethod.paystack:
        return Palette.paystack;
      case PaymentMethod.wallet:
      default:
        return Palette.accentGreen;
    }
  }

  @override
  Color get bgColor => color.withOpacity(0.07);

  static PaymentMethod valueOf(String? name) {
    switch (name?.toUpperCase()) {
      case 'WALLET':
        return PaymentMethod.wallet;
      case 'FLUTTERWAVE':
        return PaymentMethod.flutterwave;
      case 'PAYSTACK':
        return PaymentMethod.paystack;
      case 'STRIPE':
        return PaymentMethod.stripe;
      default:
        Utils.reportFlutterError(ArgumentError('Invalid payment method: "$name"'), StackTrace.current, firebase: false);
        return PaymentMethod.wallet;
    }
  }

  static String? toValue(PaymentMethod? method) => method?.name;

  String get formatted {
    return when(
      wallet: () => 'Pay with Wallet',
      flutterwave: () => 'Pay with Flutterwave',
      paystack: () => 'Pay with Paystack',
      stripe: () => 'Pay with Stripe',
    );
  }

  String get description {
    return when(
      wallet: () => 'This payment will be removed from your ${env.appName} wallet',
      flutterwave: () => 'Card payment, USSD payment, Bank payment. \nPowered by Flutterwave.',
      paystack: () => 'Card payment. Powered by Paystack.',
      stripe: () => 'Powered by Stripe.',
    );
  }

  T maybeWhen<T>({
    T Function()? wallet,
    T Function()? flutterwave,
    T Function()? paystack,
    T Function()? stripe,
    required T Function() orElse,
  }) {
    if (this == PaymentMethod.wallet)
      return wallet?.call() ?? orElse.call();
    else if (this == PaymentMethod.flutterwave)
      return flutterwave?.call() ?? orElse.call();
    else if (this == PaymentMethod.paystack)
      return paystack?.call() ?? orElse.call();
    else if (this == PaymentMethod.stripe)
      return stripe?.call() ?? orElse.call();
    else
      return orElse.call();
  }

  T when<T>({
    required T Function() wallet,
    required T Function() flutterwave,
    required T Function() paystack,
    required T Function() stripe,
  }) {
    switch (this) {
      case PaymentMethod.wallet:
        return wallet();
      case PaymentMethod.flutterwave:
        return flutterwave();
      case PaymentMethod.stripe:
        return stripe();
      case PaymentMethod.paystack:
      default:
        return paystack();
    }
  }
}

class PaymentMethodSerializer implements JsonConverter<PaymentMethod?, String?> {
  const PaymentMethodSerializer();

  @override
  PaymentMethod? fromJson(String? value) => PaymentMethod.valueOf(value);

  @override
  String? toJson(PaymentMethod? instance) => instance?.name;
}
