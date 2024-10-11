library registered_user_dto.dart;

import 'package:auctionvillage/core/data/index.dart';
import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'registered_user_dto.g.dart';
part 'registered_user_dto.freezed.dart';

RegisteredUserDTO deserializeRegisteredUserDTO(Map<String, dynamic> json) => RegisteredUserDTO.fromJson(json);
Map<String, dynamic> serializeRegisteredUserDTO(RegisteredUserDTO object) => object.toJson();

@Freezed(when: FreezedWhenOptions.none, map: FreezedMapOptions.none)
class RegisteredUserDTO with _$RegisteredUserDTO {
  const factory RegisteredUserDTO({
    @JsonKey(includeIfNull: false) String? status,
    @JsonKey(includeIfNull: false) UserDTO? data,
    @JsonKey(includeIfNull: false) UserDTO? user,
  }) = _RegisteredUserDTO;

  const RegisteredUserDTO._();

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory RegisteredUserDTO.fromJson(Map<String, dynamic> json) => _$RegisteredUserDTOFromJson(json);

  /// Maps the Data Transfer Object to a Domain instance.
  User? get domain => data?.domain ?? user?.domain;

  UserDTO? get dto => data ?? user;
}
