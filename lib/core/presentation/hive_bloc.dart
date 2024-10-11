library hive_bloc.dart;

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:synchronized/synchronized.dart';

abstract class HiveBloc<Event, State> extends Bloc<Event, State> with HiveBlocMixin {
  HiveBloc(State state) : super(state) {
    hydrate();
  }
}

mixin HiveBlocMixin<Event, State> on Bloc<Event, State> {
  static final _lock = Lock();

  final _seen = <dynamic>[];

  State? _state;

  bool _isHydrated = false;

  @override
  void onChange(Change<State> change) {
    super.onChange(change);
    final state = change.nextState;
    try {
      final stateJson = _toJson(state);
      final _box = box;

      if (stateJson != null && _box != null && _box.isOpen) {
        _lock.synchronized(() => _box.put(storageKey, stateJson));
      }
    } catch (error, stackTrace) {
      onError(error, stackTrace);
      rethrow;
    }
    _state = state;
  }

  @override
  State get state {
    if (_state != null) return _state!;

    _lock.synchronized(() {
      try {
        if (!_isHydrated) {
          final cache = box != null && box!.isOpen ? _cast<Map<dynamic, dynamic>?>(box?.get(storageKey)) : null;

          if (cache == null) {
            _state = super.state;
            return super.state;
          }
          final cachedState = _fromJson(cache);

          if (cachedState == null) {
            _state = super.state;
            return super.state;
          }
          _state = cachedState;

          _isHydrated = true;

          return cachedState;
        }
      } catch (error, stackTrace) {
        onError(error, stackTrace);
        _state = super.state;

        _isHydrated = false;

        return super.state;
      }
    });

    return super.state;
  }

  /// [id] is used to uniquely identify multiple instances
  /// of the same [HiveBlocMixin] type.
  /// In most cases it is not necessary;
  /// however, if you wish to intentionally have multiple instances
  /// of the same [HiveBlocMixin], then you must override [id]
  /// and return a unique identifier for each [HiveBlocMixin] instance
  /// in order to keep the caches independent of each other.
  String get id => '';

  /// `storageToken` is used as registration token for storage.
  /// Composed of [storagePrefix] and [id].
  @nonVirtual
  String get storageKey => '$storagePrefix$id';

  /// Storage prefix which can be overridden to provide a custom
  /// storage namespace.
  /// Defaults to [runtimeType] but should be overridden in cases
  /// where stored data should be resilient to obfuscation or persist
  /// between debug/release builds.
  String get storagePrefix => runtimeType.toString();

  T? _cast<T>(dynamic x) => x is T ? x : null;

  void _checkCycle(Object? object) {
    for (var i = 0; i < _seen.length; i++) {
      if (identical(object, _seen[i])) {
        throw HiveCyclicError(object);
      }
    }
    _seen.add(object);
  }

  State? _fromJson(dynamic json) {
    final dynamic traversedJson = _traverseRead(json);
    final castJson = _cast<Map<String, dynamic>>(traversedJson);
    return fromJson(castJson ?? <String, dynamic>{});
  }

  void _removeSeen(dynamic object) {
    assert(_seen.isNotEmpty);
    assert(identical(_seen.last, object));
    _seen.removeLast();
  }

  dynamic _toEncodable(dynamic object) => object.toJson();

  Map<String, dynamic>? _toJson(State state) {
    return _cast<Map<String, dynamic>>(_traverseWrite(toJson(state)).value);
  }

  dynamic _traverseAtomicJson(dynamic object) {
    if (object is num) {
      if (!object.isFinite) return const NIL();
      return object;
    } else if (identical(object, true)) {
      return true;
    } else if (identical(object, false)) {
      return false;
    } else if (object == null) {
      return null;
    } else if (object is String) {
      return object;
    }
    return const NIL();
  }

  dynamic _traverseComplexJson(dynamic object) {
    if (object is List) {
      if (object.isEmpty) return object;
      _checkCycle(object);
      List<dynamic>? list;
      for (var i = 0; i < object.length; i++) {
        final traversed = _traverseWrite(object[i]);
        list ??= traversed.outcome == _Outcome.atomic ? object.sublist(0) : (<dynamic>[]..length = object.length);
        list[i] = traversed.value;
      }
      _removeSeen(object);
      return list;
    } else if (object is Map) {
      _checkCycle(object);
      final map = <String, dynamic>{};
      object.forEach((dynamic key, dynamic value) {
        final castKey = _cast<String>(key);
        if (castKey != null) {
          map[castKey] = _traverseWrite(value).value;
        }
      });
      _removeSeen(object);
      return map;
    }
    return const NIL();
  }

  dynamic _traverseJson(dynamic object) {
    final dynamic traversedAtomicJson = _traverseAtomicJson(object);
    return traversedAtomicJson is! NIL ? traversedAtomicJson : _traverseComplexJson(object);
  }

  dynamic _traverseRead(dynamic value) {
    if (value is Map) {
      return value.map<String, dynamic>((dynamic key, dynamic value) {
        return MapEntry('$key', _traverseRead(value));
      });
    }
    if (value is List) {
      for (var i = 0; i < value.length; i++) {
        value[i] = _traverseRead(value[i]);
      }
    }
    return value;
  }

  _Traversed _traverseWrite(Object? value) {
    final dynamic traversedAtomicJson = _traverseAtomicJson(value);
    if (traversedAtomicJson is! NIL) {
      return _Traversed.atomic(traversedAtomicJson);
    }
    final dynamic traversedComplexJson = _traverseComplexJson(value);
    if (traversedComplexJson is! NIL) {
      return _Traversed.complex(traversedComplexJson);
    }
    try {
      _checkCycle(value);
      final dynamic customJson = _toEncodable(value);
      final dynamic traversedCustomJson = _traverseJson(customJson);
      if (traversedCustomJson is NIL) {
        throw HiveUnsupportedError(value);
      }
      _removeSeen(value);
      return _Traversed.complex(traversedCustomJson);
    } on HiveCyclicError catch (e) {
      throw HiveUnsupportedError(value, cause: e);
    } on HiveUnsupportedError {
      rethrow; // do not stack `HiveUnsupportedError`
    } catch (e) {
      throw HiveUnsupportedError(value, cause: e);
    }
  }

  Box<dynamic>? get box;

  /// [clear] is used to wipe or invalidate the cache.
  /// Calling [clear] will delete the cached state of the bloc
  /// but will not modify the current state of the bloc.
  Future<void>? clear() => box?.delete(storageKey);

  /// Responsible for converting the `Map<String, dynamic>` representation
  /// of the bloc state into a concrete instance of the bloc state.
  State? fromJson(Map<String, dynamic> json);

  /// Populates the internal state storage with the latest state.
  /// This should be called when using the [HiveBlocMixin]
  /// directly within the class constructor body.
  ///
  /// ```dart
  /// class CounterBloc extends Bloc<CounterEvent, int> with HiveBlocMixin {
  ///  CounterBloc() : super(0) {
  ///    hydrate();
  ///  }
  ///  ...
  /// }
  /// ```
  void hydrate() {
    try {
      final stateJson = _toJson(state);

      final _box = box;

      if (stateJson != null && _box != null && _box.isOpen) {
        _lock.synchronized(() => _box.put(storageKey, stateJson));
      }
    } catch (error, stackTrace) {
      onError(error, stackTrace);
      // if (error is StorageNotFound) rethrow;
    }
  }

  /// Responsible for converting a concrete instance of the bloc state
  /// into the the `Map<String, dynamic>` representation.
  ///
  /// If [toJson] returns `null`, then no state changes will be persisted.
  Map<String, dynamic>? toJson(State state);
}

/// Reports that an object could not be serialized.
/// The [unsupportedObject] field holds object that failed to be serialized.
///
/// If an object isn't directly serializable, the serializer calls the `toJson`
/// method on the object. If that call fails, the error will be stored in the
/// [cause] field. If the call returns an object that isn't directly
/// serializable, the [cause] is null.
class HiveUnsupportedError extends Error {
  /// The exception thrown when trying to convert the object.
  final Object? cause;

  /// The object that could not be serialized.
  final Object? unsupportedObject;

  /// The object that failed to be serialized.
  /// Error of attempt to serialize through `toJson` method.
  HiveUnsupportedError(this.unsupportedObject, {this.cause});

  @override
  String toString() {
    final safeString = Error.safeToString(unsupportedObject);
    final prefix =
        cause != null ? 'Converting object to an encodable object failed:' : 'Converting object did not return an encodable object:';
    return '$prefix $safeString';
  }
}

/// Reports that an object could not be serialized due to cyclic references.
/// When the cycle is detected, a [HiveCyclicError] is thrown.
class HiveCyclicError extends HiveUnsupportedError {
  /// The first object that was detected as part of a cycle.
  HiveCyclicError(Object? object) : super(object);

  @override
  String toString() => 'Cyclic error while state traversing';
}

/// {@template NIL}
/// Type which represents objects that do not support json encoding
///
/// This should never be used and is exposed only for testing purposes.
/// {@endtemplate}
@visibleForTesting
class NIL {
  /// {@macro NIL}
  const NIL();
}

enum _Outcome { atomic, complex }

class _Traversed {
  final _Outcome outcome;
  final dynamic value;

  _Traversed._({required this.outcome, required this.value});

  _Traversed.atomic(dynamic value) : this._(outcome: _Outcome.atomic, value: value);

  _Traversed.complex(dynamic value) : this._(outcome: _Outcome.complex, value: value);
}
