import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/core/domain/response/field_object/field_object_exception.dart';
import 'package:auctionvillage/core/domain/validator/validator.dart';
import 'package:dartz/dartz.dart';

class Password extends StringFieldObject {
  static const Password DEFAULT = Password._(Right(''));
  static const String kPlaceholder = 'secret';

  @override
  final Either<FieldObjectException<String>, String?> value;

  factory Password(String? password, {FieldValidation? mode}) => Password._(Validator.passwordValidator(password, mode: mode));

  const Password._(this.value);

  @override
  Password copyWith(String? newValue, {FieldValidation? mode}) => Password(newValue, mode: mode);
}
