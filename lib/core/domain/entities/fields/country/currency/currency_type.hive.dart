// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_type.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CurrencyTypeAdapter extends TypeAdapter<CurrencyType> {
  @override
  final int typeId = 5;

  @override
  CurrencyType read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CurrencyType(
      fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, CurrencyType obj) {
    writer
      ..writeByte(1)
      ..writeByte(1)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CurrencyTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
