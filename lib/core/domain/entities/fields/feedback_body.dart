library feedback_body.dart;

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/core/domain/response/field_object/field_object_exception.dart';
import 'package:auctionvillage/core/domain/validator/validator.dart';
import 'package:dartz/dartz.dart';

class FeedbackBody extends FieldObject<String?> {
  static const FeedbackBody kDefaultString = FeedbackBody._(Right(''));

  static const int min = 15;
  static const int max = 1500;

  @override
  final Either<FieldObjectException<String>, String?> value;

  factory FeedbackBody(String? input) {
    return FeedbackBody._(
      Validator.isEmpty(input).flatMap(
        (a) => Validator.mustBeGreaterThan(a, min, msg: 'Message must be at least $min characters long.', orEqualTo: true),
      ),
    );
  }

  const FeedbackBody._(this.value);

  @override
  FeedbackBody copyWith(String? newValue) => FeedbackBody(newValue);
}
