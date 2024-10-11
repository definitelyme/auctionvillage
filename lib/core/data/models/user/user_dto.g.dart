// GENERATED CODE - DO NOT MODIFY BY HAND

part of user_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDTO _$$_UserDTOFromJson(Map<String, dynamic> json) => _$_UserDTO(
      id: const StringSerializer().fromJson(json['_id']),
      token: const StringSerializer().fromJson(json['token']),
      firstName: const StringSerializer().fromJson(json['firstName']),
      lastName: const StringSerializer().fromJson(json['lastName']),
      fullName: const StringSerializer().fromJson(json['fullName']),
      name: const StringSerializer().fromJson(json['name']),
      email: const StringSerializer().fromJson(json['email']),
      phone: const StringSerializer().fromJson(json['mobile']),
      password: const StringSerializer().fromJson(json['password']),
      oldPassword: const StringSerializer().fromJson(json['currentPassword']),
      confirmation:
          const StringSerializer().fromJson(json['passwordConfirmation']),
      countryName: const StringSerializer().fromJson(json['country']),
      platform: const StringSerializer().fromJson(json['platform']),
      avatar: const StringSerializer().fromJson(json['avatar']),
      pinAdded: const BooleanSerializer().fromJson(json['pinAdded']),
      forceUpdate: const BooleanSerializer().fromJson(json['forceUpdate']),
      accountVerified:
          const BooleanSerializer().fromJson(json['accountVerified']),
      createdBy:
          const TimestampConverter().fromJson(json['createdBy'] as String?),
      updatedBy:
          const TimestampConverter().fromJson(json['updatedBy'] as String?),
      deletedBy:
          const TimestampConverter().fromJson(json['deletedBy'] as String?),
      createdAt:
          const TimestampConverter().fromJson(json['createdAt'] as String?),
      updatedAt:
          const TimestampConverter().fromJson(json['updatedAt'] as String?),
      deletedAt:
          const TimestampConverter().fromJson(json['deletedAt'] as String?),
      billingAddress: const StringSerializer().fromJson(json['address']),
      historyDate:
          const TimestampConverter().fromJson(json['historyDate'] as String?),
      bidAmount: const DoubleSerializer().fromJson(json['amount']),
    );

Map<String, dynamic> _$$_UserDTOToJson(_$_UserDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('_id', const StringSerializer().toJson(instance.id));
  writeNotNull('token', const StringSerializer().toJson(instance.token));
  writeNotNull(
      'firstName', const StringSerializer().toJson(instance.firstName));
  writeNotNull('lastName', const StringSerializer().toJson(instance.lastName));
  writeNotNull('fullName', const StringSerializer().toJson(instance.fullName));
  writeNotNull('name', const StringSerializer().toJson(instance.name));
  writeNotNull('email', const StringSerializer().toJson(instance.email));
  writeNotNull('mobile', const StringSerializer().toJson(instance.phone));
  writeNotNull('password', const StringSerializer().toJson(instance.password));
  writeNotNull(
      'currentPassword', const StringSerializer().toJson(instance.oldPassword));
  writeNotNull('passwordConfirmation',
      const StringSerializer().toJson(instance.confirmation));
  writeNotNull(
      'country', const StringSerializer().toJson(instance.countryName));
  writeNotNull('platform', const StringSerializer().toJson(instance.platform));
  writeNotNull('avatar', const StringSerializer().toJson(instance.avatar));
  writeNotNull('pinAdded', const BooleanSerializer().toJson(instance.pinAdded));
  writeNotNull(
      'forceUpdate', const BooleanSerializer().toJson(instance.forceUpdate));
  writeNotNull('accountVerified',
      const BooleanSerializer().toJson(instance.accountVerified));
  writeNotNull(
      'createdBy', const TimestampConverter().toJson(instance.createdBy));
  writeNotNull(
      'updatedBy', const TimestampConverter().toJson(instance.updatedBy));
  writeNotNull(
      'deletedBy', const TimestampConverter().toJson(instance.deletedBy));
  writeNotNull(
      'createdAt', const TimestampConverter().toJson(instance.createdAt));
  writeNotNull(
      'updatedAt', const TimestampConverter().toJson(instance.updatedAt));
  writeNotNull(
      'deletedAt', const TimestampConverter().toJson(instance.deletedAt));
  writeNotNull(
      'address', const StringSerializer().toJson(instance.billingAddress));
  writeNotNull(
      'historyDate', const TimestampConverter().toJson(instance.historyDate));
  writeNotNull('amount', const DoubleSerializer().toJson(instance.bidAmount));
  return val;
}

_$_UserListDTO _$$_UserListDTOFromJson(Map<String, dynamic> json) =>
    _$_UserListDTO(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => UserDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      user: (json['user'] as List<dynamic>?)
              ?.map((e) => UserDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      users: (json['users'] as List<dynamic>?)
              ?.map((e) => UserDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      meta: json['_meta'] == null
          ? null
          : MetaDTO.fromJson(json['_meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserListDTOToJson(_$_UserListDTO instance) {
  final val = <String, dynamic>{
    'data': instance.data.map((e) => e.toJson()).toList(),
    'user': instance.user.map((e) => e.toJson()).toList(),
    'users': instance.users.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('_meta', instance.meta?.toJson());
  return val;
}
