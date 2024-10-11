import 'dart:convert';

import 'package:auctionvillage/features/dashboard/data/models/models.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logger/logger.dart';

import '../fixtures/fixture_reader.dart';

void main() {
  test(
    'test that [TransactionDetailData] model can parse both paystack & flw json',
    () async {
      var _flw = jsonDecode(fixture('flw_verify.json'));
      var _paystack = jsonDecode(fixture('paystack_verify.json'));

      final flwResult = TransactionDetailDTO.fromJson(_flw as Map<String, dynamic>).domain.copyWith(
            transactionType: TransactionType.cr,
            paymentMethod: PaymentMethod.flutterwave,
          );
      final paystackResult = TransactionDetailDTO.fromJson(_paystack as Map<String, dynamic>).domain.copyWith(
            transactionType: TransactionType.dr,
            paymentMethod: PaymentMethod.paystack,
          );

      Logger().w(TransactionDetailData.fromDomain(flwResult).toJson());
      Logger().w(TransactionDetailData.fromDomain(paystackResult).toJson());
    },
  );
}
