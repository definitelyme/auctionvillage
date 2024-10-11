import 'package:dartz/dartz.dart';

extension DynamicX on dynamic {
  bool get isNull => this == null;

  bool get isBlank {
    switch (runtimeType) {
      case String:
      case List:
      case Map:
      case Set:
      case Iterable:
        return this.isEmpty as bool;
      default:
        return toString() == 'null' || toString().trim().isEmpty;
    }
  }

  /// Checks if data is null or blank (empty or only contains whitespace).
  bool get isNullOrBlank {
    if (isNull) return true;

    return isBlank;
  }
}

extension ObjectExt<T> on T {
  R let<R>(R Function(T it) cb) {
    if (this != null) return cb.call(this);
    return this as R;
  }

  R also<R>(R Function(T it) func) {
    return func(this);
  }
}

extension DartzX<A> on Option<A?> {
  A? get getOrNull => getOrElse(() => null);
}

/// This allows a value of type T or T?
/// to be treated as a value of type T?.
///
/// We use this so that APIs that have become
/// non-nullable can still be used with `!` and `?`
/// to support older versions of the API as well.
T? ambiguate<T>(T? value) => value;

/// This allows a value of type T or T?
T? castOrNull<T>(dynamic x) => x is T ? x : null;
