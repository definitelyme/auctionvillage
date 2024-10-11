import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/core/domain/response/index.dart';
import 'package:auctionvillage/core/domain/validator/validator.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

/// Contains power-packed methods for any InputField type.
class ImmutableStrings extends FieldObject<KtList<String>> {
  static const ImmutableStrings DEFAULT = ImmutableStrings._(Right(KtList.empty()));

  @override
  final Either<FieldObjectException<String>, KtList<String>> value;

  factory ImmutableStrings(KtList<String>? input) => ImmutableStrings._(Validator.isEmpty(input));

  const ImmutableStrings._(this.value);

  @override
  String toString() => '${getOrEmpty?.asList()}';

  String join(String delimiter) => value.fold(
        (error) => error.message,
        (r) => r.fold('', (acc, p1) => acc.isEmpty ? p1 : '$acc$delimiter$p1'),
      );

  List<String> get toList => value.fold((_) => [], (r) => r.asList());

  @override
  ImmutableStrings copyWith(KtList<String> newValue) => ImmutableStrings(newValue);

  ImmutableStrings merge(ImmutableStrings? other) {
    if (other == null) return this;

    final merged = value.flatMap((it) => other.value.map((it2) => it.plus(it2)));
    return ImmutableStrings._(merged);
  }
}
