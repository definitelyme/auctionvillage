import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/core/domain/response/field_object/field_object_exception.dart';
import 'package:auctionvillage/core/domain/validator/validator.dart';
import 'package:dartz/dartz.dart';

class OTPCode extends FieldObject<String?> {
  static const CODE_LENGTH = 6;

  @override
  final Either<FieldObjectException<String>, String?> value;

  factory OTPCode(String? input, {int? length, String? msg, NullableStringValidator<String> Function(String?)? other}) {
    return OTPCode._(Validator.otpCodeValidator(
      input,
      max: length ?? CODE_LENGTH,
      msg: msg,
    ).flatMap(other ?? (a) => right(a)));
  }

  const OTPCode._(this.value);

  @override
  OTPCode copyWith(String? newValue, {int? length, String? msg}) => OTPCode(newValue, length: length, msg: msg);
}
