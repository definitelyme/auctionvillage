library transaction_detail.dart;

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_detail.freezed.dart';

@Freezed(when: FreezedWhenOptions.none, map: FreezedMapOptions.none)
class TransactionDetail with _$TransactionDetail {
  const TransactionDetail._();

  const factory TransactionDetail({
    required UniqueId<String?> id,
    required UniqueId<String?> txRef,
    required UniqueId<String?> flwRef,
    required UniqueId<String?> reference,
    required NumField<double> amount,
    required BasicTextField message,
    @Default(PaymentStatus.pending) PaymentStatus paymentStatus,
    @Default(false) bool status,
    PaymentMethod? paymentMethod,
    TransactionType? transactionType,
    User? customer,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _TransactionDetail;

  DateTime? get paidAt => createdAt;

  factory TransactionDetail.blank({
    String? id,
    String? txRef,
    String? flwRef,
    String? reference,
    double? amount,
    String? message,
    PaymentStatus? paymentStatus,
    PaymentMethod? paymentMethod,
    TransactionType? transactionType,
    bool? status,
    User? customer,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) =>
      TransactionDetail(
        id: UniqueId.fromExternal(id),
        txRef: UniqueId.fromExternal(txRef),
        flwRef: UniqueId.fromExternal(flwRef),
        reference: UniqueId.fromExternal(reference),
        amount: NumField(amount ?? 0),
        message: BasicTextField(message),
        paymentStatus: paymentStatus ?? PaymentStatus.pending,
        paymentMethod: paymentMethod,
        transactionType: transactionType,
        status: status ?? false,
        customer: customer,
        createdAt: createdAt,
        updatedAt: updatedAt,
      );
}
