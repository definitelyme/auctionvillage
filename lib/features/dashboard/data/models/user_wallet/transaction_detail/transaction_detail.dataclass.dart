// ignore_for_file: unused_element

library transaction_detail.dataclass.dart;

import 'package:auctionvillage/core/data/index.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/manager/serializer/serializers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_detail.dataclass.g.dart';
part 'transaction_detail.dataclass.freezed.dart';

TransactionDetailData deserializeTransactionDetailData(Map<String, dynamic> json) => TransactionDetailData.fromJson(json);
Map<String, dynamic> serializeTransactionDetailData(TransactionDetailData object) => object.toJson();

@Freezed(when: FreezedWhenOptions.none, map: FreezedMapOptions.none)
class TransactionDetailData with _$TransactionDetailData {
  const factory TransactionDetailData({
    @StringSerializer() String? id,
    @JsonKey(name: 'transaction_id') @StringSerializer() String? transactionId,
    @StringSerializer() String? reference,
    @JsonKey(name: 'tx_ref') @StringSerializer() String? txRef,
    @JsonKey(name: 'flw_ref') @StringSerializer() String? flwRef,
    @DoubleSerializer() double? amount,
    @JsonKey(name: 'status', fromJson: PaymentStatus.fromJson, toJson: PaymentStatus.toJson) required PaymentStatus status,
    @JsonKey(name: 'payment_channel', toJson: PaymentMethod.toValue) required PaymentMethod? method,
    @JsonKey(name: 'transaction_type', fromJson: TransactionType.valueOf, toJson: TransactionType.toValue) TransactionType? type,
    UserDTO? customer,
    @JsonKey(name: 'paid_at') @TimestampConverter() DateTime? paidAt,
    @JsonKey(name: 'created_at') @TimestampConverter() DateTime? createdAt,
  }) = _TransactionDetailData;

  const TransactionDetailData._();

  /// Maps TransactionDetail to a Data Transfer Object.
  factory TransactionDetailData.fromDomain(TransactionDetail? instance) => TransactionDetailData(
        id: instance?.id.value,
        transactionId: instance?.id.value,
        reference: instance?.paymentMethod?.maybeWhen(
          flutterwave: () => instance.id.value,
          orElse: () => instance.reference.value,
        ),
        txRef: instance?.txRef.value ?? instance?.reference.value,
        flwRef: instance?.flwRef.value,
        amount: instance?.amount.getOrNull,
        status: instance?.paymentStatus ?? PaymentStatus.pending,
        customer: instance?.customer != null ? UserDTO.fromDomain(instance?.customer!) : null,
        method: instance?.paymentMethod,
        type: instance?.transactionType,
        paidAt: instance?.paidAt,
        createdAt: instance?.createdAt,
      );

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory TransactionDetailData.fromJson(Map<String, dynamic> json) => _$TransactionDetailDataFromJson(json);
}

TransactionDetailDTO deserializeTransactionDetailDTO(Map<String, dynamic> json) => TransactionDetailDTO.fromJson(json);
Map<String, dynamic> serializeTransactionDetailDTO(TransactionDetailDTO object) => object.toJson();

@Freezed(when: FreezedWhenOptions.none, map: FreezedMapOptions.none)
class TransactionDetailDTO with _$TransactionDetailDTO {
  const factory TransactionDetailDTO({
    dynamic status,
    @StringSerializer() String? message,
    @JsonKey(name: 'data') TransactionDetailData? data,
  }) = _TransactionDetailDTO;

  const TransactionDetailDTO._();

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory TransactionDetailDTO.fromJson(Map<String, dynamic> json) => _$TransactionDetailDTOFromJson(json);

  /// Maps the Data Transfer Object to a TransactionDetail Object.
  TransactionDetail get domain => TransactionDetail.blank(
        id: data?.id,
        reference: data?.reference ?? data?.txRef,
        txRef: data?.txRef,
        flwRef: data?.flwRef,
        amount: data?.amount,
        message: message,
        paymentStatus: data?.status,
        status: status is bool ? (status as bool) : (status == 'success'),
        customer: data?.customer?.domain,
        createdAt: data?.createdAt ?? data?.paidAt,
        updatedAt: data?.createdAt,
      );
}
