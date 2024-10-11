library base_enum.dart;

import 'package:freezed_annotation/freezed_annotation.dart';

abstract class BaseEnum {
  const BaseEnum();

  String get name;

  @override
  bool operator ==(other) {
    return identical(other, this) ||
        (other.runtimeType == runtimeType && other is BaseEnum && const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(name));

  @override
  String toString() => name;
}
