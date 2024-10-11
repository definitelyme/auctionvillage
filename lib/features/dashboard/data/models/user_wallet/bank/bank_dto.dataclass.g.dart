// GENERATED CODE - DO NOT MODIFY BY HAND

part of bank_dto.dataclass.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BankDTO _$$_BankDTOFromJson(Map<String, dynamic> json) => _$_BankDTO(
      status: json['status'] as String?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => BankDTOData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_BankDTOToJson(_$_BankDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', instance.status);
  writeNotNull('message', instance.message);
  val['data'] = instance.data.map((e) => e.toJson()).toList();
  return val;
}

_$_BankDTOData _$$_BankDTODataFromJson(Map<String, dynamic> json) =>
    _$_BankDTOData(
      id: const StringSerializer().fromJson(json['id']),
      code: json['code'] as String?,
      bank: json['name'] as String?,
    );

Map<String, dynamic> _$$_BankDTODataToJson(_$_BankDTOData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', const StringSerializer().toJson(instance.id));
  writeNotNull('code', instance.code);
  writeNotNull('name', instance.bank);
  return val;
}
