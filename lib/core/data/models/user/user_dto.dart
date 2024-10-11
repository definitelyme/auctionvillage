library user_dto.dart;

import 'package:auctionvillage/core/data/models/index.dart';
import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/manager/serializer/serializers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:kt_dart/kt.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';
part 'user_dto.hive.dart';

UserDTO deserializeUserDTO(Map<String, dynamic> json) => UserDTO.fromJson(json);
Map<String, dynamic> serializeUserDTO(UserDTO object) => object.toJson();

@unfreezed
class UserDTO extends HiveObject with _$UserDTO {
  @HiveType(typeId: 1, adapterName: 'UserDTOAdapter')
  factory UserDTO({
    @HiveField(1) @JsonKey(name: '_id') @StringSerializer() String? id,
    @HiveField(2) @StringSerializer() String? token,
    @HiveField(3) @StringSerializer() String? firstName,
    @HiveField(4) @StringSerializer() String? lastName,
    @HiveField(5) @StringSerializer() String? fullName,
    @StringSerializer() String? name,
    @HiveField(6) @StringSerializer() String? email,
    @HiveField(7) @JsonKey(name: 'mobile') @StringSerializer() String? phone,
    //
    @HiveField(8) @StringSerializer() String? password,
    @HiveField(9) @JsonKey(name: 'currentPassword') @StringSerializer() String? oldPassword,
    @HiveField(10) @JsonKey(name: 'passwordConfirmation') @StringSerializer() String? confirmation,
    //
    @HiveField(11) @JsonKey(name: 'country') @StringSerializer() String? countryName,
    @HiveField(12) @StringSerializer() String? platform,
    @HiveField(13) @StringSerializer() String? avatar,
    @HiveField(14) @BooleanSerializer() bool? pinAdded,
    //
    @BooleanSerializer() bool? forceUpdate,
    @HiveField(15) @BooleanSerializer() bool? accountVerified,
    // @HiveField(23) @AuthProviderSerializer() AuthProvider? provider,
    @HiveField(16) @TimestampConverter() DateTime? createdBy,
    @HiveField(17) @TimestampConverter() DateTime? updatedBy,
    @HiveField(18) @TimestampConverter() DateTime? deletedBy,
    @HiveField(19) @TimestampConverter() DateTime? createdAt,
    @HiveField(20) @TimestampConverter() DateTime? updatedAt,
    @HiveField(21) @TimestampConverter() DateTime? deletedAt,
    @HiveField(22) @JsonKey(name: 'address') @StringSerializer() String? billingAddress,
    //
    @TimestampConverter() DateTime? historyDate,
    @JsonKey(name: 'amount') @DoubleSerializer() double? bidAmount,
  }) = _UserDTO;

  UserDTO._();

  factory UserDTO.fromDomain(User? instance, {bool passwords = true}) => UserDTO(
        id: instance?.id.value,
        firstName: instance?.firstName.getOrNull,
        lastName: instance?.lastName.getOrNull,
        email: instance?.email.getOrNull,
        password: passwords ? instance?.password.getOrNull : null,
        phone: instance?.phone.formatted?.getOrNull ?? instance?.phone.getOrNull,
        billingAddress: instance?.billingAddress.getOrNull,
        countryName: (instance?.country?.name.getOrNull ?? instance?.phone.country?.name.getOrNull)?.toUpperCase(),
        platform: 'MOBILE',
        avatar: instance?.photo.image.getOrNull,
        oldPassword: passwords ? instance?.oldPassword.getOrNull : null,
        confirmation: passwords ? instance?.passwordConfirmation.getOrNull : null,
      );

  factory UserDTO.fromJson(Map<String, dynamic> json) => _$UserDTOFromJson(json);

  User get domain => User.blank(
        uid: id,
        firstName: firstName,
        lastName: lastName,
        fullName: fullName ?? name,
        email: email,
        phone: phone,
        password: password,
        photo: avatar,
        // isPrivate: isPrivate ?? false,
        // provider: provider ?? AuthProvider.regular,
        // active: active ?? false,
        accountVerified: accountVerified ?? false,
        billingAddress: billingAddress,
        countryName: countryName,
        forceUpdate: forceUpdate,
        createdAt: createdAt,
        updatedAt: updatedAt,
        deletedAt: deletedAt,
        //
        bidAmount: bidAmount,
        historyDate: historyDate,
      );

  static bool? isEmailVerifiedFromJson(dynamic dateTime) {
    if (dateTime == null) return false;
    if (dateTime is bool) return dateTime;
    return (dateTime as String?) != null && dateTime!.isNotEmpty;
  }

  static void registerAdapter() => Hive.registerAdapter(UserDTOAdapter());
}

UserListDTO deserializeUserListDTO(Map<String, dynamic> json) => UserListDTO.fromJson(json);
Map<String, dynamic> serializeUserListDTO(UserListDTO object) => object.toJson();

@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
class UserListDTO with _$UserListDTO {
  const UserListDTO._();

  const factory UserListDTO({
    @Default([]) List<UserDTO> data,
    @Default([]) List<UserDTO> user,
    @Default([]) List<UserDTO> users,
    @JsonKey(name: '_meta') MetaDTO? meta,
  }) = _UserListDTO;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory UserListDTO.fromJson(Map<String, dynamic> json) => _$UserListDTOFromJson(json);

  /// Maps the Data Transfer Object to a KtList<DomainEntity> Object.
  KtList<User> get domain {
    if (data.isNotEmpty)
      return KtList.from(data.map((e) => e.domain));
    else if (user.isNotEmpty)
      return KtList.from(user.map((e) => e.domain));
    else if (users.isNotEmpty)
      return KtList.from(users.map((e) => e.domain));
    else
      return const KtList.empty();
  }
}
