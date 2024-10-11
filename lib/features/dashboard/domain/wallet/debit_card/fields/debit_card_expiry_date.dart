import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/core/domain/response/index.dart';
import 'package:auctionvillage/core/domain/validator/validator.dart';
import 'package:dartz/dartz.dart';

/// Contains power-packed methods for any InputField type.
class DebitCardExpiryDate extends FieldObject<String?> {
  static const DebitCardExpiryDate DEFAULT = DebitCardExpiryDate._(Right(''));

  int? get month {
    try {
      var split = getOrNull?.split('/');
      return int.tryParse(split?.first ?? '');
    } catch (e) {
      return null;
    }
  }

  int? get year {
    try {
      var split = getOrNull?.split('/');
      return int.tryParse(split?.last ?? '');
    } catch (e) {
      return null;
    }
  }

  @override
  final Either<FieldObjectException<String>, String?> value;

  factory DebitCardExpiryDate(String? input) => DebitCardExpiryDate._(
        Validator.isEmpty(input).flatMap((a) => Validator.cardExpiration(a)),
      );

  const DebitCardExpiryDate._(this.value);

  @override
  DebitCardExpiryDate copyWith(String? newValue) => DebitCardExpiryDate(newValue);
}
