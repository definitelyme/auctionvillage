// GENERATED CODE - DO NOT MODIFY BY HAND

part of user_wallet_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserWalletDTO _$$_UserWalletDTOFromJson(Map<String, dynamic> json) =>
    _$_UserWalletDTO(
      meta: json['_meta'] == null
          ? null
          : MetaDTO.fromJson(json['_meta'] as Map<String, dynamic>),
      data: json['data'] == null
          ? null
          : _UserWalletDTOData.fromJson(json['data'] as Map<String, dynamic>),
      wallet: json['wallet'] == null
          ? null
          : _UserWalletDTOData.fromJson(json['wallet'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserWalletDTOToJson(_$_UserWalletDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('_meta', instance.meta?.toJson());
  writeNotNull('data', instance.data?.toJson());
  writeNotNull('wallet', instance.wallet?.toJson());
  return val;
}

_$__UserWalletDTOData _$$__UserWalletDTODataFromJson(
        Map<String, dynamic> json) =>
    _$__UserWalletDTOData(
      id: json['_id'] as String?,
      balance: const DoubleSerializer().fromJson(json['balance']),
      totalBalance: const DoubleSerializer().fromJson(json['totalBalance']),
      revenue: const DoubleSerializer().fromJson(json['revenue']),
      totalRevenue: const DoubleSerializer().fromJson(json['totalRevenue']),
      expense: const DoubleSerializer().fromJson(json['expense']),
      totalExpense: const DoubleSerializer().fromJson(json['totalExpense']),
      expendingExpense:
          const DoubleSerializer().fromJson(json['expendingExpense']),
      active: const BooleanSerializer().fromJson(json['active']),
      isFrozen: const BooleanSerializer().fromJson(json['is_freezed']),
      transactions: (json['transactions'] as List<dynamic>?)
              ?.map((e) =>
                  _UserWalletTransactionDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      createdAt:
          const TimestampConverter().fromJson(json['createdAt'] as String?),
      updatedAt:
          const TimestampConverter().fromJson(json['updatedAt'] as String?),
    );

Map<String, dynamic> _$$__UserWalletDTODataToJson(
    _$__UserWalletDTOData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('_id', instance.id);
  writeNotNull('balance', const DoubleSerializer().toJson(instance.balance));
  writeNotNull(
      'totalBalance', const DoubleSerializer().toJson(instance.totalBalance));
  writeNotNull('revenue', const DoubleSerializer().toJson(instance.revenue));
  writeNotNull(
      'totalRevenue', const DoubleSerializer().toJson(instance.totalRevenue));
  writeNotNull('expense', const DoubleSerializer().toJson(instance.expense));
  writeNotNull(
      'totalExpense', const DoubleSerializer().toJson(instance.totalExpense));
  writeNotNull('expendingExpense',
      const DoubleSerializer().toJson(instance.expendingExpense));
  writeNotNull('active', const BooleanSerializer().toJson(instance.active));
  writeNotNull(
      'is_freezed', const BooleanSerializer().toJson(instance.isFrozen));
  val['transactions'] = instance.transactions.map((e) => e.toJson()).toList();
  writeNotNull(
      'createdAt', const TimestampConverter().toJson(instance.createdAt));
  writeNotNull(
      'updatedAt', const TimestampConverter().toJson(instance.updatedAt));
  return val;
}

_$_UserWalletListDTO _$$_UserWalletListDTOFromJson(Map<String, dynamic> json) =>
    _$_UserWalletListDTO(
      meta: json['_meta'] == null
          ? null
          : MetaDTO.fromJson(json['_meta'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>?)
              ?.map(
                  (e) => _UserWalletDTOData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_UserWalletListDTOToJson(
    _$_UserWalletListDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('_meta', instance.meta?.toJson());
  val['data'] = instance.data.map((e) => e.toJson()).toList();
  return val;
}

_$__UserWalletTransactionDTO _$$__UserWalletTransactionDTOFromJson(
        Map<String, dynamic> json) =>
    _$__UserWalletTransactionDTO(
      id: json['_id'] as String?,
      amount: const DoubleSerializer().fromJson(json['amount']),
      reference: const StringSerializer().fromJson(json['reference']),
      status: PaymentStatus.fromJson(json['status'] as String?),
      type: TransactionType.valueOf(json['Transactiontype'] as String?),
      paymentMethod: PaymentMethod.valueOf(json['paymentGateway'] as String?),
      createdAt:
          const TimestampConverter().fromJson(json['createdAt'] as String?),
      updatedAt:
          const TimestampConverter().fromJson(json['updatedAt'] as String?),
    );

Map<String, dynamic> _$$__UserWalletTransactionDTOToJson(
    _$__UserWalletTransactionDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('_id', instance.id);
  writeNotNull('amount', const DoubleSerializer().toJson(instance.amount));
  writeNotNull(
      'reference', const StringSerializer().toJson(instance.reference));
  val['status'] = PaymentStatus.toJson(instance.status);
  writeNotNull('Transactiontype', _$TransactionTypeEnumMap[instance.type]);
  writeNotNull(
      'paymentGateway', _$PaymentMethodEnumMap[instance.paymentMethod]);
  writeNotNull(
      'createdAt', const TimestampConverter().toJson(instance.createdAt));
  writeNotNull(
      'updatedAt', const TimestampConverter().toJson(instance.updatedAt));
  return val;
}

const _$TransactionTypeEnumMap = {
  TransactionType.cr: 'cr',
  TransactionType.dr: 'dr',
};

const _$PaymentMethodEnumMap = {
  PaymentMethod.wallet: 'wallet',
  PaymentMethod.flutterwave: 'flutterwave',
  PaymentMethod.paystack: 'paystack',
  PaymentMethod.stripe: 'stripe',
};
