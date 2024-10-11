// GENERATED CODE - DO NOT MODIFY BY HAND

part of transaction_detail.dataclass.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TransactionDetailData _$$_TransactionDetailDataFromJson(
        Map<String, dynamic> json) =>
    _$_TransactionDetailData(
      id: const StringSerializer().fromJson(json['id']),
      transactionId: const StringSerializer().fromJson(json['transaction_id']),
      reference: const StringSerializer().fromJson(json['reference']),
      txRef: const StringSerializer().fromJson(json['tx_ref']),
      flwRef: const StringSerializer().fromJson(json['flw_ref']),
      amount: const DoubleSerializer().fromJson(json['amount']),
      status: PaymentStatus.fromJson(json['status'] as String?),
      method:
          $enumDecodeNullable(_$PaymentMethodEnumMap, json['payment_channel']),
      type: TransactionType.valueOf(json['transaction_type'] as String?),
      customer: json['customer'] == null
          ? null
          : UserDTO.fromJson(json['customer'] as Map<String, dynamic>),
      paidAt: const TimestampConverter().fromJson(json['paid_at'] as String?),
      createdAt:
          const TimestampConverter().fromJson(json['created_at'] as String?),
    );

Map<String, dynamic> _$$_TransactionDetailDataToJson(
    _$_TransactionDetailData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', const StringSerializer().toJson(instance.id));
  writeNotNull('transaction_id',
      const StringSerializer().toJson(instance.transactionId));
  writeNotNull(
      'reference', const StringSerializer().toJson(instance.reference));
  writeNotNull('tx_ref', const StringSerializer().toJson(instance.txRef));
  writeNotNull('flw_ref', const StringSerializer().toJson(instance.flwRef));
  writeNotNull('amount', const DoubleSerializer().toJson(instance.amount));
  val['status'] = PaymentStatus.toJson(instance.status);
  writeNotNull('payment_channel', PaymentMethod.toValue(instance.method));
  writeNotNull('transaction_type', TransactionType.toValue(instance.type));
  writeNotNull('customer', instance.customer?.toJson());
  writeNotNull('paid_at', const TimestampConverter().toJson(instance.paidAt));
  writeNotNull(
      'created_at', const TimestampConverter().toJson(instance.createdAt));
  return val;
}

const _$PaymentMethodEnumMap = {
  PaymentMethod.wallet: 'wallet',
  PaymentMethod.flutterwave: 'flutterwave',
  PaymentMethod.paystack: 'paystack',
  PaymentMethod.stripe: 'stripe',
};

_$_TransactionDetailDTO _$$_TransactionDetailDTOFromJson(
        Map<String, dynamic> json) =>
    _$_TransactionDetailDTO(
      status: json['status'],
      message: const StringSerializer().fromJson(json['message']),
      data: json['data'] == null
          ? null
          : TransactionDetailData.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TransactionDetailDTOToJson(
    _$_TransactionDetailDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', instance.status);
  writeNotNull('message', const StringSerializer().toJson(instance.message));
  writeNotNull('data', instance.data?.toJson());
  return val;
}
