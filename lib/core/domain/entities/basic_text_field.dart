library basic_text_field.dart;

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/core/domain/response/field_object/field_object_exception.dart';
import 'package:auctionvillage/core/domain/validator/validator.dart';
import 'package:dartz/dartz.dart';

typedef LengthValidator<G> = StringValidator<G> Function(G);

class BasicTextField extends StringFieldObject {
  static const BasicTextField DEFAULT_STRING = BasicTextField._(Right(''), null, true);

  @override
  final Either<FieldObjectException<String>, String?> value;

  final LengthValidator<String?>? other;

  final bool validate;

  factory BasicTextField(String? input, {LengthValidator<String?>? other, bool validate = true}) =>
      BasicTextField._(!validate ? right(input) : Validator.isEmpty(input).flatMap(other ?? (a) => right(a)), other, validate);

  const BasicTextField._(this.value, this.other, this.validate);

  @override
  BasicTextField copyWith(String? newValue, {bool? validate, LengthValidator<String?>? other}) =>
      BasicTextField(newValue, validate: validate ?? this.validate, other: other ?? this.other);

  BasicTextField operator +(String o) => copyWith(getOrEmpty + o);

  BasicTextField operator -(String o) => copyWith(getOrEmpty.replaceAll(o, ''));
}
