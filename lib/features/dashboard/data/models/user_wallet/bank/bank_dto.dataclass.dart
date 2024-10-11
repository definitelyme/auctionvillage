library bank_dto.dataclass.dart;

import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/manager/serializer/serializers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'bank_dto.dataclass.g.dart';
part 'bank_dto.dataclass.freezed.dart';

BankDTO deserializeBankDTO(Map<String, dynamic> json) => BankDTO.fromJson(json);
Map<String, dynamic> serializeBankDTO(BankDTO object) => object.toJson();

@immutable
@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
class BankDTO with _$BankDTO {
  const BankDTO._();

  const factory BankDTO({
    String? status,
    String? message,
    @Default([]) List<BankDTOData> data,
  }) = _BankDTO;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory BankDTO.fromJson(Map<String, dynamic> json) => _$BankDTOFromJson(json);

  /// Maps the Data Transfer Object to a KtList<Bank> Object.
  KtList<Bank> get domain => KtList.from(data.map((e) => e.domain));
}

@immutable
@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
class BankDTOData with _$BankDTOData {
  const BankDTOData._();

  const factory BankDTOData({
    @StringSerializer() String? id,
    String? code,
    @JsonKey(name: 'name') String? bank,
  }) = _BankDTOData;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory BankDTOData.fromJson(Map<String, dynamic> json) => _$BankDTODataFromJson(json);

  /// Maps the Data Transfer Object to a Bank Object.
  Bank get domain => Bank.blank(id: id, code: code, name: bank);
}
