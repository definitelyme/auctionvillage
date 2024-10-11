import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/core/domain/response/index.dart';
import 'package:auctionvillage/core/domain/validator/validator.dart';
import 'package:dartz/dartz.dart';

/// Contains power-packed methods for any InputField type.
class DebitCardNumber extends FieldObject<String?> {
  static const DebitCardNumber DEFAULT = DebitCardNumber._(Right(''));

  @override
  final Either<FieldObjectException<String>, String?> value;

  factory DebitCardNumber(String? input) => DebitCardNumber._(
        Validator.isEmpty(input).flatMap((a) => Validator.cardNumber(a)),
      );

  const DebitCardNumber._(this.value);

  @override
  DebitCardNumber copyWith(String? newValue) => DebitCardNumber(newValue);
}
