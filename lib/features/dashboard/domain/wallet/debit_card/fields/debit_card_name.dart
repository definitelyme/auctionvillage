import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/core/domain/response/index.dart';
import 'package:auctionvillage/core/domain/validator/validator.dart';
import 'package:dartz/dartz.dart';

/// Contains power-packed methods for any InputField type.
class DebitCardName extends FieldObject<String?> {
  static const DebitCardName DEFAULT = DebitCardName._(Right(''));

  @override
  final Either<FieldObjectException<String>, String?> value;

  factory DebitCardName(String? input) {
    return DebitCardName._(Validator.isEmpty(input));
  }

  const DebitCardName._(this.value);

  @override
  DebitCardName copyWith(String? newValue) => DebitCardName(newValue);
}
