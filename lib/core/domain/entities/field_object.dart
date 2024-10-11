import 'package:auctionvillage/core/domain/response/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

@immutable
abstract class FieldObject<T> {
  const FieldObject();

  Either<FieldObjectException<String>, T?> get value;

  bool isIdenticalTo(T? other) => identical(getOrNull, other) || const DeepCollectionEquality().equals(getOrNull, other);

  bool equals(FieldObject<T> other) => this == other;

  Either<FieldObjectException<dynamic>, Unit> get mapped => value.fold((f) => left(f), (_) => right(unit));

  FieldObjectException<dynamic>? get failure => value.fold((f) => f, (_) => null);

  U isNotNull<U>(
    U? Function(FieldObject<T>)? field, {
    required U Function(FieldObject<T>) orElse,
    bool validate = false,
  }) {
    if (validate) {
      if (getOrNull != null) return field?.call(this) ?? orElse.call(this);
    } else {
      if (getOrNull != null && isValid) return field?.call(this) ?? orElse.call(this);
    }
    return orElse.call(this);
  }

  U checkIsValid<U>(U? Function(FieldObject<T>)? field, {required U Function(FieldObject<T>) orElse}) =>
      isNotNull(field, orElse: orElse, validate: true);

  bool get isValid => value.isRight();

  T? get getOrCrash => value.fold((f) => throw UnExpectedFailure(message: f.message), id);

  // T get getExact {
  //   return value.fold((_) {
  //     assert(getOrEmpty != null);
  //     return getOrEmpty as T;
  //   }, (i) => i!);
  // }

  T getExact([T? orElse]) => value.fold((_) => orElse ?? getOrEmpty as T, (i) => i!);

  T? get getOrNull => value.fold((_) => null, id);

  T? get getOrEmpty {
    return value.fold((_) {
      if (typesEqual<T, int>() || typesEqual<T, int?>()) return -1 as T;
      if (typesEqual<T, double>() || typesEqual<T, double?>()) return 0.0 as T;
      if (typesEqual<T, num>() || typesEqual<T, num?>()) return -1 as T;
      if (typesEqual<T, String>() || typesEqual<T, String?>()) return '' as T;
      if (typesEqual<T, Iterable<dynamic>>() || typesEqual<T, Iterable<dynamic>?>()) return [] as T;
      return null;
    }, id);
  }

  dynamic get _getOrError => value.fold((f) => kDebugMode ? 'FieldObject<$T>(${f.message})' : 'Error: ${f.message}', id);

  FieldObject<T> copyWith(T newValue) => throw UnimplementedError();

  @override
  bool operator ==(other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FieldObject<T> && const DeepCollectionEquality().equals(value, other.value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @override
  String toString() => '$_getOrError';
}

abstract class StringFieldObject extends FieldObject<String> {
  const StringFieldObject();

  @override
  Either<FieldObjectException<String>, String?> get value;

  @override
  String get getOrEmpty => value.fold((_) => '', (it) => it!);
}
