// GENERATED CODE - DO NOT MODIFY BY HAND

part of country_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CountryDTO _$$_CountryDTOFromJson(Map<String, dynamic> json) =>
    _$_CountryDTO(
      id: json['id'] as String?,
      name: json['name'] as String?,
      iso: json['code'] as String?,
      dialCode: json['dialCode'] as String?,
      flagUrl: json['flag'] as String?,
      currency:
          const CurrencyTypeSerializer().fromJson(json['currency'] as String?),
      currencyIcon: json['currency_icon'] as String?,
      locale: json['locale'] as String?,
    );

Map<String, dynamic> _$$_CountryDTOToJson(_$_CountryDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('code', instance.iso);
  writeNotNull('dialCode', instance.dialCode);
  writeNotNull('flag', instance.flagUrl);
  writeNotNull(
      'currency', const CurrencyTypeSerializer().toJson(instance.currency));
  writeNotNull('currency_icon', instance.currencyIcon);
  writeNotNull('locale', instance.locale);
  return val;
}

_$_CountryDTOList _$$_CountryDTOListFromJson(Map<String, dynamic> json) =>
    _$_CountryDTOList(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => CountryDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_CountryDTOListToJson(_$_CountryDTOList instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
    };
