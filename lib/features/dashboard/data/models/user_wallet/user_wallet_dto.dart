// ignore_for_file: unused_element

library user_wallet_dto.dart;

import 'package:auctionvillage/core/data/index.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/manager/serializer/serializers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'user_wallet_dto.g.dart';
part 'user_wallet_dto.freezed.dart';

UserWalletDTO deserializeUserWalletDTO(Map<String, dynamic> json) => UserWalletDTO.fromJson(json);
Map<String, dynamic> serializeUserWalletDTO(UserWalletDTO object) => object.toJson();

@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
class UserWalletDTO with _$UserWalletDTO {
  const UserWalletDTO._();

  const factory UserWalletDTO({
    @JsonKey(name: '_meta') MetaDTO? meta,
    // required _UserWalletDTOData data,
    _UserWalletDTOData? data,
    _UserWalletDTOData? wallet,
  }) = _UserWalletDTO;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory UserWalletDTO.fromJson(Map<String, dynamic> json) => _$UserWalletDTOFromJson(json);

  /// Maps the Data Transfer Object to a UserWallet Object.
  UserWallet? get domain => data?.domain;
}

@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
class _UserWalletDTOData with _$_UserWalletDTOData {
  const _UserWalletDTOData._();

  const factory _UserWalletDTOData({
    @JsonKey(name: '_id') String? id,
    @DoubleSerializer() double? balance,
    @DoubleSerializer() double? totalBalance,
    @DoubleSerializer() double? revenue,
    @DoubleSerializer() double? totalRevenue,
    @DoubleSerializer() double? expense,
    @DoubleSerializer() double? totalExpense,
    @DoubleSerializer() double? expendingExpense,
    @BooleanSerializer() bool? active,
    @JsonKey(name: 'is_freezed') @BooleanSerializer() bool? isFrozen,
    @Default([]) List<_UserWalletTransactionDTO> transactions,
    @TimestampConverter() DateTime? createdAt,
    @TimestampConverter() DateTime? updatedAt,
  }) = __UserWalletDTOData;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory _UserWalletDTOData.fromJson(Map<String, dynamic> json) => _$_UserWalletDTODataFromJson(json);

  /// Maps the Data Transfer Object to a UserWallet Object.
  UserWallet get domain => UserWallet.blank(
        id: id,
        balance: balance ?? totalBalance,
        expense: expense ?? totalExpense,
        revenue: revenue ?? totalRevenue,
        expendingExpense: expendingExpense,
        isActive: active,
        isFrozen: isFrozen,
        transactions: transactions.map((e) => e.domain).toList(),
        createdAt: createdAt,
        updatedAt: updatedAt,
      );
}

UserWalletListDTO deserializeUserWalletListDTO(Map<String, dynamic> json) => UserWalletListDTO.fromJson(json);
Map<String, dynamic> serializeUserWalletListDTO(UserWalletListDTO object) => object.toJson();

@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
class UserWalletListDTO with _$UserWalletListDTO {
  const UserWalletListDTO._();

  const factory UserWalletListDTO({
    @JsonKey(name: '_meta') MetaDTO? meta,
    @Default([]) List<_UserWalletDTOData> data,
  }) = _UserWalletListDTO;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory UserWalletListDTO.fromJson(Map<String, dynamic> json) => _$UserWalletListDTOFromJson(json);

  /// Maps the Data Transfer Object to a KtList<UserWalletlist> Object.
  KtList<UserWallet> get domain => KtList.from(data.map((e) => e.domain));
}

@Freezed(when: FreezedWhenOptions.none, map: FreezedMapOptions.none)
class _UserWalletTransactionDTO with _$_UserWalletTransactionDTO {
  const _UserWalletTransactionDTO._();

  const factory _UserWalletTransactionDTO({
    @JsonKey(name: '_id') String? id,
    @DoubleSerializer() double? amount,
    @StringSerializer() String? reference,
    @JsonKey(fromJson: PaymentStatus.fromJson, toJson: PaymentStatus.toJson) required PaymentStatus status,
    @JsonKey(name: 'Transactiontype', fromJson: TransactionType.valueOf) TransactionType? type,
    @JsonKey(name: 'paymentGateway', fromJson: PaymentMethod.valueOf) PaymentMethod? paymentMethod,
    @TimestampConverter() DateTime? createdAt,
    @TimestampConverter() DateTime? updatedAt,
  }) = __UserWalletTransactionDTO;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory _UserWalletTransactionDTO.fromJson(Map<String, dynamic> json) => _$_UserWalletTransactionDTOFromJson(json);

  /// Maps the Data Transfer Object to a UserWalletTransaction Object.
  UserWalletTransaction get domain => UserWalletTransaction.blank(
        id: id,
        amount: amount,
        reference: reference,
        status: status,
        type: type,
        paymentMethod: paymentMethod,
        createdAt: createdAt,
        updatedAt: updatedAt,
      );
}
