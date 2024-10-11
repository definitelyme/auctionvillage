// GENERATED CODE - DO NOT MODIFY BY HAND

part of country_dto.dart;

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CountryDTOAdapter extends TypeAdapter<_$_CountryDTO> {
  @override
  final int typeId = 6;

  @override
  _$_CountryDTO read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_CountryDTO(
      id: fields[1] as String?,
      name: fields[2] as String?,
      iso: fields[3] as String?,
      dialCode: fields[4] as String?,
      flagUrl: fields[5] as String?,
      currency: fields[6] as CurrencyType?,
      currencyIcon: fields[7] as String?,
      locale: fields[8] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_CountryDTO obj) {
    writer
      ..writeByte(8)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.iso)
      ..writeByte(4)
      ..write(obj.dialCode)
      ..writeByte(5)
      ..write(obj.flagUrl)
      ..writeByte(6)
      ..write(obj.currency)
      ..writeByte(7)
      ..write(obj.currencyIcon)
      ..writeByte(8)
      ..write(obj.locale);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CountryDTOAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
