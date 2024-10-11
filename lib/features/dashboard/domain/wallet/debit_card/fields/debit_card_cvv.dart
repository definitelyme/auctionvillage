import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/core/domain/response/index.dart';
import 'package:auctionvillage/core/domain/validator/validator.dart';
import 'package:dartz/dartz.dart';

/// Contains power-packed methods for any InputField type.
class DebitCardCVV extends FieldObject<String?> {
  static const DebitCardCVV DEFAULT = DebitCardCVV._(Right(''));

  @override
  final Either<FieldObjectException<String>, String?> value;

  factory DebitCardCVV(String? input) => DebitCardCVV._(
        Validator.isEmpty(input).flatMap((a) => Validator.cardCVV(a)),
      );

  const DebitCardCVV._(this.value);

  @override
  DebitCardCVV copyWith(String? newValue) => DebitCardCVV(newValue);
}
