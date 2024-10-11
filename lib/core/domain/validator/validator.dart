library validator.dart;

import 'package:auctionvillage/core/domain/response/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:built_collection/built_collection.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart' hide StandardKt;

part 'credit_card_validator.dart';

const int MIN_PASSWORD_LENGTH = 8;
const int MIN_USERNAME_LENGTH = 6;
const Pattern emailPattern =
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
const Pattern upperCasePattern = '(.*[A-Z].*)';
const Pattern alphaNumericPattern = '^[A-Za-z0-9]*\$';
const Pattern numberPattern = '[0-9]+';
const Pattern phonePattern = r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$';
const Pattern symbolPattern = r"[-!$@%^&#*()_+|~=`{}\[\]:\;'<>?\\,.\/]";
const Pattern onlyNumbersPattern = '^[0-9]*\$';
const Pattern datePattern = r'(0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])[- /.](19|20)[0-9]{2}';

enum FieldValidation {
  none,
  basic,
  deep;

  T when<T>({
    T Function()? basic,
    T Function()? deep,
    T Function()? none,
    required T Function() orElse,
  }) {
    switch (this) {
      case FieldValidation.basic:
        return basic != null ? basic() : orElse();
      case FieldValidation.deep:
        return deep != null ? deep() : orElse();
      case FieldValidation.none:
        return none != null ? none() : orElse();
    }
  }
}

typedef NullableStringValidator<U> = Either<FieldObjectException<String>, U?>;

typedef StringValidator<U> = Either<FieldObjectException<String>, U>;

// typedef IOERJE = Function([num? other, String? msg]);

class Validator with _CreditCardValidator {
  Validator._();

  static StringValidator<T> isEmpty<T>(T? value) {
    // Returns the string without any leading and trailing whitespace
    if (value == null) return left(FieldObjectException.empty());

    if (value is String && (value.trim().isNullOrBlank || value.trim() == 'null')) return left(FieldObjectException.empty());

    if (value is KtList && value.isEmpty()) return left(FieldObjectException.empty());

    if (value is BuiltList && value.isEmpty) return left(FieldObjectException.empty());

    return right((value is String ? value.trim() as T : value));
  }

  static StringValidator<String?> usernameValidator(String? value) {
    if (value == null) return left(FieldObjectException.empty());

    var clean = value.trim();

    if (clean.isEmpty) return left(FieldObjectException.empty());

    var shortUsername = clean.length < MIN_PASSWORD_LENGTH;

    if (shortUsername)
      return left(FieldObjectException.invalid(
        SHORT_USERNAME_MESSAGE,
      ));

    return right(value);
  }

  static StringValidator<String?> emailValidator(String? email) {
    // Returns the string without any leading and trailing whitespace
    if (email == null) return left(FieldObjectException.empty());

    var clean = email.trim();

    if (clean.isEmpty) return left(FieldObjectException.empty());

    if (!RegExp('$emailPattern').hasMatch(clean)) return left(FieldObjectException.invalid(INVALID_EMAIL_MESSAGE));

    return right(email);
  }

  static StringValidator<String?> passwordValidator(String? password, {FieldValidation? mode}) {
    if (password == null) return left(FieldObjectException.empty());

    final _mode = mode ?? FieldValidation.none;

    return _mode.when(
      basic: () {
        if (password.length < MIN_PASSWORD_LENGTH) {
          return left(FieldObjectException.invalid(SHORT_PASSWORD_MESSAGE));
        }

        return right(password);
      },
      orElse: () {
        return right(password);
      },
    );
  }

  static StringValidator<String?> phoneNumberValidator(
    String? phone, {
    FieldValidation? mode = FieldValidation.deep,
  }) {
    if (mode == FieldValidation.none) return right(phone);

    if (phone == null) return left(FieldObjectException.empty());

    var clean = phone.trim();

    var formattedPhoneNumber = RegExp('$phonePattern').hasMatch(clean);

    switch (mode) {
      case FieldValidation.none:
        break;
      case FieldValidation.basic:
        if (clean.isEmpty) return left(FieldObjectException.empty());
        break;
      case FieldValidation.deep:
      default:
        if (clean.isEmpty) return left(FieldObjectException.empty());
        if (!formattedPhoneNumber) return left(FieldObjectException.invalid(INVALID_PHONE));
        break;
    }

    return right(phone);
  }

  static StringValidator<String?> otpCodeValidator(String? code, {int max = 6, String? msg}) {
    if (code == null) return left(FieldObjectException.empty());

    var clean = code.trim();

    if (clean.isEmpty) return left(FieldObjectException.empty());

    if (clean.length < max)
      return left(FieldObjectException.invalid(
        msg ?? '$INCOMPLETE_OTP_CODE ${clean.length} digits.',
      ));
    return right(code);
  }

  static Either<FieldObjectException<String>, DateTime?> validDOB(
    DateTime? date,
  ) {
    if (date == null) return left(FieldObjectException.empty());

    var day = date.day < 10 ? '0${date.day}' : date.day.toString();
    var month = date.month < 10 ? '0${date.month}' : date.month.toString();
    var _date = '$day/$month/${date.year}';

    var isValid = RegExp(r'(0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])[- /.](19|20)[0-9]{2}').hasMatch(_date);

    if (!isValid)
      return left(FieldObjectException.invalid(
        INVALID_DATE_OF_BIRTH,
      ));

    return right(date);
  }

  static Either<FieldObjectException<String>, String?> validUrl(String? url) {
    if (url == null) return left(FieldObjectException.empty());

    final clean = url.trim().removeAllBlankSpace();

    final isValid = RegExp(r'(https?:\/\/(?:www\.|(?!www))[a-zA-Z0-9][a-zA-Z0-9-]+[a-zA-Z0-9]\.'
            '[^s]{2,}|www.[a-zA-Z0-9][a-zA-Z0-9-]+[a-zA-Z0-9].[^s]{2,}|https?://(?:www.|(?!www))'
            '[a-zA-Z0-9]+.[^s]{2,}|www.[a-zA-Z0-9]+.[^s]{2,})')
        .hasMatch(clean);

    if (!isValid) return left(FieldObjectException.invalid(INVALID_URL));

    return right(clean);
  }

  static StringValidator<U> amount<U>(U input) {
    if (input == null) return left(FieldObjectException.empty());

    if (input is num && input < 0) return left(FieldObjectException.invalid('Amount cannot be negative'));

    return right(input);
  }

  static StringValidator<U> amountMustBeGreaterThan<U>(U input, num other, {bool orEqualTo = false, String? msg}) {
    if (input == null) return left(FieldObjectException.empty());

    if (input is num && (orEqualTo ? input < other : input <= other))
      return left(FieldObjectException.invalid(msg ?? 'Amount must be greater than $other'));

    return right(input);
  }

  static StringValidator<U> amountMustBeLessThan<U>(U input, num other, {bool orEqualTo = false, String? msg}) {
    if (input == null) return left(FieldObjectException.empty());

    if (input is num && (orEqualTo ? input > other : input >= other))
      return left(FieldObjectException.invalid(msg ?? 'Amount must be less than $other'));

    return right(input);
  }

  /// Validates an input to be less than [length] characters long.
  ///
  /// If [orEqualTo] is true, the input must be less than or equal to [length] characters long.
  static StringValidator<U> mustBeLessThan<U>(U input, int length, {bool orEqualTo = false, String? msg}) {
    if (input == null) return left(FieldObjectException.empty());

    final clean = '$input'.trim();

    if (clean.isEmpty) return left(FieldObjectException.empty());

    if (clean.length < length || (orEqualTo && clean.length == length)) return right(input);

    return left(FieldObjectException.lengthAware(message: msg ?? 'Value must be less than $length'));
  }

  /// A variant of [mustBeLessThan].
  static StringValidator<U> maxLength<U>(U input, int length, {String? msg}) => mustBeLessThan(input, length, msg: msg);

  /// Validates an input to be greater than [length] characters long.
  ///
  /// If [orEqualTo] is true, the input must be greater than or equal to [length] characters long.
  static StringValidator<U> mustBeGreaterThan<U>(U input, int length, {bool orEqualTo = false, String? msg}) {
    if (input == null) return left(FieldObjectException.empty());

    final clean = '$input'.trim();

    if (clean.isEmpty) return left(FieldObjectException.empty());

    if (clean.length > length || (orEqualTo && clean.length == length)) return right(input);

    return left(FieldObjectException.lengthAware(message: msg ?? 'Value must be greater than $length'));
  }

  /// A variant of [mustBeGreaterThan].
  static StringValidator<U> minLength<U>(U input, int length, {String? msg}) => mustBeGreaterThan(input, length, msg: msg);

  /// Validates an input to be exactly [length] characters long.
  static StringValidator<U> exactLength<U>(U input, int length, {String? msg}) {
    if (input == null) return left(FieldObjectException.empty());

    final clean = '$input'.trim();

    if (clean.length == length) return right(input);

    return left(FieldObjectException.lengthAware(message: msg ?? 'Value must be equal to $length'));
  }

  static StringValidator<String> cardNumber(String? input) => _CreditCardValidator.validateCreditCardNumber(input);

  static StringValidator<String> cardExpiration(String? input) => _CreditCardValidator.validateCardExpiryDate(input);

  static StringValidator<String> cardCVV(String? input) => _CreditCardValidator.validateCardCVV(input);
}
