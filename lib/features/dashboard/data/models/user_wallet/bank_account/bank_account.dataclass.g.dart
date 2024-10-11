// GENERATED CODE - DO NOT MODIFY BY HAND

part of bank_account.dataclass.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BankAccountDTO _$$_BankAccountDTOFromJson(Map<String, dynamic> json) =>
    _$_BankAccountDTO(
      status: json['status'] as String?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : _BankAccountData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BankAccountDTOToJson(_$_BankAccountDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', instance.status);
  writeNotNull('message', instance.message);
  writeNotNull('data', instance.data?.toJson());
  return val;
}

_$__BankAccountData _$$__BankAccountDataFromJson(Map<String, dynamic> json) =>
    _$__BankAccountData(
      accountName: json['account_name'] as String?,
      accountNumber: json['account_number'] as String?,
    );

Map<String, dynamic> _$$__BankAccountDataToJson(_$__BankAccountData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('account_name', instance.accountName);
  writeNotNull('account_number', instance.accountNumber);
  return val;
}
