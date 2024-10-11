// GENERATED CODE - DO NOT MODIFY BY HAND

part of access_token.dart;

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TokenTypeAdapter extends TypeAdapter<TokenType> {
  @override
  final int typeId = 4;

  @override
  TokenType read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TokenType(
      fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, TokenType obj) {
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
      other is TokenTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class AccessTokenAdapter extends TypeAdapter<_$_AccessToken> {
  @override
  final int typeId = 3;

  @override
  _$_AccessToken read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_AccessToken(
      accessToken: fields[1] as String?,
      tokenType: fields[2] as TokenType,
      expiryDate: fields[3] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_AccessToken obj) {
    writer
      ..writeByte(3)
      ..writeByte(1)
      ..write(obj.accessToken)
      ..writeByte(2)
      ..write(obj.tokenType)
      ..writeByte(3)
      ..write(obj.expiryDate);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AccessTokenAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
