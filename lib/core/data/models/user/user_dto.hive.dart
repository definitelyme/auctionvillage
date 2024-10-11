// GENERATED CODE - DO NOT MODIFY BY HAND

part of user_dto.dart;

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserDTOAdapter extends TypeAdapter<_$_UserDTO> {
  @override
  final int typeId = 1;

  @override
  _$_UserDTO read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_UserDTO(
      id: fields[1] as String?,
      token: fields[2] as String?,
      firstName: fields[3] as String?,
      lastName: fields[4] as String?,
      fullName: fields[5] as String?,
      email: fields[6] as String?,
      phone: fields[7] as String?,
      password: fields[8] as String?,
      oldPassword: fields[9] as String?,
      confirmation: fields[10] as String?,
      countryName: fields[11] as String?,
      platform: fields[12] as String?,
      avatar: fields[13] as String?,
      pinAdded: fields[14] as bool?,
      accountVerified: fields[15] as bool?,
      createdBy: fields[16] as DateTime?,
      updatedBy: fields[17] as DateTime?,
      deletedBy: fields[18] as DateTime?,
      createdAt: fields[19] as DateTime?,
      updatedAt: fields[20] as DateTime?,
      deletedAt: fields[21] as DateTime?,
      billingAddress: fields[22] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_UserDTO obj) {
    writer
      ..writeByte(22)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.token)
      ..writeByte(3)
      ..write(obj.firstName)
      ..writeByte(4)
      ..write(obj.lastName)
      ..writeByte(5)
      ..write(obj.fullName)
      ..writeByte(6)
      ..write(obj.email)
      ..writeByte(7)
      ..write(obj.phone)
      ..writeByte(8)
      ..write(obj.password)
      ..writeByte(9)
      ..write(obj.oldPassword)
      ..writeByte(10)
      ..write(obj.confirmation)
      ..writeByte(11)
      ..write(obj.countryName)
      ..writeByte(12)
      ..write(obj.platform)
      ..writeByte(13)
      ..write(obj.avatar)
      ..writeByte(14)
      ..write(obj.pinAdded)
      ..writeByte(15)
      ..write(obj.accountVerified)
      ..writeByte(16)
      ..write(obj.createdBy)
      ..writeByte(17)
      ..write(obj.updatedBy)
      ..writeByte(18)
      ..write(obj.deletedBy)
      ..writeByte(19)
      ..write(obj.createdAt)
      ..writeByte(20)
      ..write(obj.updatedAt)
      ..writeByte(21)
      ..write(obj.deletedAt)
      ..writeByte(22)
      ..write(obj.billingAddress);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserDTOAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
