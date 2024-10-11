library unique_id.dart;

import 'dart:math' as math;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

class UniqueId<T> {
  final T value;

  const UniqueId._(this.value);

  factory UniqueId.fromExternal(T id) => UniqueId._(id);

  factory UniqueId.int([int min = 0, int max = 100]) => UniqueId._(min + math.Random.secure().nextInt(max - min) as T);

  factory UniqueId.v1() => UniqueId._(const Uuid().v1() as T);

  factory UniqueId.v4() => UniqueId._(const Uuid().v4() as T);

  @override
  bool operator ==(other) => other is UniqueId<T> && const DeepCollectionEquality().equals(value, other.value);

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @override
  String toString() => '$_getOrError';

  dynamic get _getOrError => value ?? 'UniqueId<$T>($value)';

  bool get isValid => value != null;
}
