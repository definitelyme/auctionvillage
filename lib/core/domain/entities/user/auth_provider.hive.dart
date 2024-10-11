// GENERATED CODE - DO NOT MODIFY BY HAND

part of auth_provider.dart;

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AuthProviderAdapter extends TypeAdapter<AuthProvider> {
  @override
  final int typeId = 2;

  @override
  AuthProvider read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AuthProvider(
      fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, AuthProvider obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AuthProviderAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
