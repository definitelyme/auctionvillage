// ignore_for_file: unused_element

library bank_account.dataclass.dart;

import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bank_account.dataclass.g.dart';
part 'bank_account.dataclass.freezed.dart';

BankAccountDTO deserializeBankAccountDTO(Map<String, dynamic> json) => BankAccountDTO.fromJson(json);
Map<String, dynamic> serializeBankAccountDTO(BankAccountDTO object) => object.toJson();

@immutable
@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
class BankAccountDTO with _$BankAccountDTO {
  const BankAccountDTO._();

  const factory BankAccountDTO({
    String? status,
    String? message,
    _BankAccountData? data,
  }) = _BankAccountDTO;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory BankAccountDTO.fromJson(Map<String, dynamic> json) => _$BankAccountDTOFromJson(json);

  /// Maps the Data Transfer Object to a BankAccount Object.
  BankAccount? get domain => data?.domain;
}

@immutable
@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
class _BankAccountData with _$_BankAccountData {
  const _BankAccountData._();

  const factory _BankAccountData({
    @JsonKey(name: 'account_name') String? accountName,
    @JsonKey(name: 'account_number') String? accountNumber,
  }) = __BankAccountData;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory _BankAccountData.fromJson(Map<String, dynamic> json) => _$_BankAccountDataFromJson(json);

  /// Maps the Data Transfer Object to a BankAccount Object.
  BankAccount get domain => BankAccount.blank(accountName: accountName, accountNumber: accountNumber);
}
