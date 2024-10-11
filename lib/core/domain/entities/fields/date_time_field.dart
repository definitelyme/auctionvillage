import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/core/domain/response/field_object/field_object_exception.dart';
import 'package:auctionvillage/core/domain/validator/validator.dart';
import 'package:dartz/dartz.dart';

typedef DateTimeValidator = Either<FieldObjectException<String>, DateTime?> Function(DateTime?);

class DateTimeField extends FieldObject<DateTime?> {
  static const DateTimeField DEFAULT = DateTimeField._(Right(null));

  @override
  final Either<FieldObjectException<String>, DateTime?> value;

  factory DateTimeField(
    DateTime? input, {
    DateTimeValidator? other,
  }) {
    return DateTimeField._(Validator.isEmpty(input?.toLocal()).flatMap(other ?? (a) => right(a)));
  }

  const DateTimeField._(this.value);

  @override
  DateTimeField copyWith(DateTime? newValue) => DateTimeField(newValue);
}
