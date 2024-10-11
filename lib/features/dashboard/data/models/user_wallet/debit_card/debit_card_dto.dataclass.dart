library debit_card_dto.dataclass.dart;

import 'package:auctionvillage/core/data/models/index.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/manager/serializer/serializers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'debit_card_dto.dataclass.g.dart';
part 'debit_card_dto.dataclass.freezed.dart';

DebitCardDTO deserializeDebitCardDTO(Map<String, dynamic> json) => DebitCardDTO.fromJson(json);
Map<String, dynamic> serializeDebitCardDTO(DebitCardDTO object) => object.toJson();

@immutable
@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
class DebitCardDTO with _$DebitCardDTO {
  const DebitCardDTO._();

  const factory DebitCardDTO({
    @JsonKey(name: '_meta') MetaDTO? meta,
    required DebitCardDTOData data,
  }) = _DebitCardDTO;

  /// Maps DebitCard to a Data Transfer Object.
  factory DebitCardDTO.fromDomain(DebitCard instance) => DebitCardDTO(data: DebitCardDTOData.fromDomain(instance));

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory DebitCardDTO.fromJson(Map<String, dynamic> json) => _$DebitCardDTOFromJson(json);

  /// Maps the Data Transfer Object to a DebitCard Object.
  DebitCard get domain => data.domain;
}

DebitCardDTOData deserializeDebitCardDTOData(Map<String, dynamic> json) => DebitCardDTOData.fromJson(json);
Map<String, dynamic> serializeDebitCardDTOData(DebitCardDTOData object) => object.toJson();

@immutable
@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
class DebitCardDTOData with _$DebitCardDTOData {
  const DebitCardDTOData._();

  const factory DebitCardDTOData({
    @JsonKey(name: '_id') String? uid,
    @BooleanSerializer() bool? cardAdded,
    @BooleanSerializer() bool? pinAdded,
    String? email,
    @DebitCardBrandSerializer() DebitCardBrand? cardType,
    @JsonKey(name: 'card') String? cardNumber,
    String? cvv,
    String? expiry,
    String? maskedCard,
    @TimestampConverter() DateTime? createdAt,
    @TimestampConverter() DateTime? updatedAt,
  }) = _DebitCardDTOData;

  /// Maps DebitCardDTO to a Data Transfer Object.
  factory DebitCardDTOData.fromDomain(DebitCard instance) => DebitCardDTOData(
        uid: instance.id.value,
        cardAdded: instance.cardAdded,
        pinAdded: instance.pinAdded,
        email: instance.email.getOrNull,
        cardType: instance.brand,
        cardNumber: instance.cardNumber.getOrNull,
        cvv: instance.cardCVV.getOrNull,
        expiry: instance.cardExpiryDate.getOrNull,
        maskedCard: instance.masked.getOrNull,
        createdAt: instance.createdAt,
        updatedAt: instance.updatedAt,
      );

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory DebitCardDTOData.fromJson(Map<String, dynamic> json) => _$DebitCardDTODataFromJson(json);

  /// Maps the Data Transfer Object to a DebitCard Object.
  DebitCard get domain => DebitCard.blank(
        uid: uid,
        cardAdded: cardAdded,
        pinAdded: pinAdded,
        email: email,
        brand: cardType,
        cardName: cardNumber,
        cardNumber: cardNumber,
        cardExpiryDate: expiry,
        cardCVV: cvv,
        masked: maskedCard,
        createdAt: createdAt,
        updatedAt: updatedAt,
      );
}

@immutable
@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
class DebitCardListDTO with _$DebitCardListDTO {
  const DebitCardListDTO._();

  const factory DebitCardListDTO({
    @JsonKey(name: '_meta') MetaDTO? meta,
    @Default([]) List<DebitCardDTOData> data,
  }) = _DebitCardListDTO;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory DebitCardListDTO.fromJson(Map<String, dynamic> json) => _$DebitCardListDTOFromJson(json);

  /// Maps the Data Transfer Object to a KtList<DebitCard> Object.
  KtList<DebitCard> get domain => KtList.from(data.map((e) => e.domain));
}
