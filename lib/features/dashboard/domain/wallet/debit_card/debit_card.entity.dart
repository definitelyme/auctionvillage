library debit_card.entity.dart;

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/core/domain/response/index.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:dartz/dartz.dart' hide id;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'debit_card.entity.freezed.dart';
part 'debit_card.entity.g.dart';

@freezed
@immutable
class DebitCard extends BaseEntity with _$DebitCard {
  const DebitCard._();

  const factory DebitCard({
    required UniqueId<String?> id,
    @Default(false) bool cardAdded,
    @Default(false) bool pinAdded,
    required EmailAddress email,
    @Default(DebitCardBrand.none) DebitCardBrand brand,
    required DebitCardName cardName,
    required DebitCardNumber cardNumber,
    required DebitCardExpiryDate cardExpiryDate,
    required DebitCardCVV cardCVV,
    required BasicTextField masked,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _DebitCard;

  factory DebitCard.blank({
    String? uid,
    bool? cardAdded,
    bool? pinAdded,
    String? email,
    DebitCardBrand? brand,
    String? cardName,
    String? cardNumber,
    String? cardExpiryDate,
    String? cardCVV,
    String? masked,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return DebitCard(
      id: UniqueId.fromExternal(uid),
      cardAdded: cardAdded ?? false,
      pinAdded: pinAdded ?? false,
      email: EmailAddress(email),
      brand: brand ?? DebitCardBrand.none,
      cardName: DebitCardName(cardName),
      cardNumber: DebitCardNumber(cardNumber),
      cardExpiryDate: DebitCardExpiryDate(cardExpiryDate),
      cardCVV: DebitCardCVV(cardCVV),
      masked: BasicTextField(masked),
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  Option<FieldObjectException<dynamic>> get failure =>
      cardNumber.mapped.andThen(cardExpiryDate.mapped).andThen(cardCVV.mapped).fold((f) => some(f), (_) => none());

  DebitCard merge(DebitCard? newValue) {
    return copyWith(
      id: UniqueId.fromExternal(newValue?.id.value ?? id.value),
      cardAdded: newValue?.cardAdded ?? cardAdded,
      pinAdded: newValue?.pinAdded ?? pinAdded,
      email: EmailAddress(newValue?.email.getOrNull ?? email.getOrNull),
      brand: newValue?.brand ?? brand,
      cardName: DebitCardName(newValue?.cardName.getOrNull ?? cardName.getOrNull),
      cardNumber: DebitCardNumber(newValue?.cardNumber.getOrNull ?? cardNumber.getOrNull),
      cardExpiryDate: DebitCardExpiryDate(newValue?.cardExpiryDate.getOrNull ?? cardExpiryDate.getOrNull),
      cardCVV: DebitCardCVV(newValue?.cardCVV.getOrNull ?? cardCVV.getOrNull),
      masked: BasicTextField(newValue?.masked.getOrNull ?? masked.getOrNull),
      createdAt: newValue?.createdAt ?? createdAt,
      updatedAt: newValue?.updatedAt ?? updatedAt,
    );
  }

  String? get image => brand.fold(
        americanExpress: () => AppAssets.cardAmericanExpress,
        mastercard: () => AppAssets.cardMasterCard,
        visa: () => AppAssets.cardVisa,
        verve: () => AppAssets.cardVerve,
        discover: () => AppAssets.cardDiscover,
        jcb: () => AppAssets.cardJCB,
        dinersClub: () => AppAssets.cardDinersClub,
        none: () => null,
      );
}

class DebitCardBrand extends EnumClass {
  static const DebitCardBrand mastercard = _$mastercard;
  static const DebitCardBrand visa = _$visa;
  static const DebitCardBrand verve = _$verve;
  static const DebitCardBrand american_express = _$american_express;
  static const DebitCardBrand discover = _$discover;
  static const DebitCardBrand jcb = _$jcb;
  static const DebitCardBrand diners_club = _$diners_club;
  @BuiltValueEnumConst(fallback: true)
  static const DebitCardBrand none = _$none;

  String get formatted => fold(
        mastercard: () => 'Mastercard',
        visa: () => 'Visa',
        verve: () => 'Verve',
        americanExpress: () => 'American Express',
        discover: () => 'Discover',
        jcb: () => 'JCB',
        dinersClub: () => 'Diner\'s Club',
        none: () => 'Card',
      );

  const DebitCardBrand._(String name) : super(name);

  static BuiltSet<DebitCardBrand> get values => _$values;

  static DebitCardBrand valueOf(String name) => _$valueOf(name);
}

class DebitCardBrandSerializer implements JsonConverter<DebitCardBrand?, String?> {
  const DebitCardBrandSerializer();

  @override
  DebitCardBrand fromJson(String? value) => DebitCardBrand.valueOf('$value'.toLowerCase());

  @override
  String? toJson(DebitCardBrand? instance) => '${instance?.name}';
}

extension DebitCardBrandX on DebitCardBrand {
  T fold<T>({
    T Function()? mastercard,
    T Function()? visa,
    T Function()? verve,
    T Function()? americanExpress,
    T Function()? discover,
    T Function()? jcb,
    T Function()? dinersClub,
    required T Function() none,
  }) {
    switch (this) {
      case DebitCardBrand.mastercard:
        return mastercard != null ? mastercard() : none();
      case DebitCardBrand.visa:
        return visa != null ? visa() : none();
      case DebitCardBrand.verve:
        return verve != null ? verve() : none();
      case DebitCardBrand.american_express:
        return americanExpress != null ? americanExpress() : none();
      case DebitCardBrand.discover:
        return discover != null ? discover() : none();
      case DebitCardBrand.jcb:
        return jcb != null ? jcb() : none();
      case DebitCardBrand.diners_club:
        return dinersClub != null ? dinersClub() : none();
      case DebitCardBrand.none:
      default:
        return none.call();
    }
  }
}
