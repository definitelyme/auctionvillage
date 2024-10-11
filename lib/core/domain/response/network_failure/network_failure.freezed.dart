// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of network_failure.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NetworkFailure {
  String get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NetworkFailureCopyWith<NetworkFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkFailureCopyWith<$Res> {
  factory $NetworkFailureCopyWith(
          NetworkFailure value, $Res Function(NetworkFailure) then) =
      _$NetworkFailureCopyWithImpl<$Res, NetworkFailure>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$NetworkFailureCopyWithImpl<$Res, $Val extends NetworkFailure>
    implements $NetworkFailureCopyWith<$Res> {
  _$NetworkFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NoInternetConnectivityCopyWith<$Res>
    implements $NetworkFailureCopyWith<$Res> {
  factory _$$NoInternetConnectivityCopyWith(_$NoInternetConnectivity value,
          $Res Function(_$NoInternetConnectivity) then) =
      __$$NoInternetConnectivityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$NoInternetConnectivityCopyWithImpl<$Res>
    extends _$NetworkFailureCopyWithImpl<$Res, _$NoInternetConnectivity>
    implements _$$NoInternetConnectivityCopyWith<$Res> {
  __$$NoInternetConnectivityCopyWithImpl(_$NoInternetConnectivity _value,
      $Res Function(_$NoInternetConnectivity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$NoInternetConnectivity(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NoInternetConnectivity extends NoInternetConnectivity {
  const _$NoInternetConnectivity([this.message = NetworkFailure._OFFLINE_MSG])
      : super._();

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'NetworkFailure.notConnected(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoInternetConnectivity &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoInternetConnectivityCopyWith<_$NoInternetConnectivity> get copyWith =>
      __$$NoInternetConnectivityCopyWithImpl<_$NoInternetConnectivity>(
          this, _$identity);
}

abstract class NoInternetConnectivity extends NetworkFailure {
  const factory NoInternetConnectivity([final String message]) =
      _$NoInternetConnectivity;
  const NoInternetConnectivity._() : super._();

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$NoInternetConnectivityCopyWith<_$NoInternetConnectivity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PoorInternetConnectionCopyWith<$Res>
    implements $NetworkFailureCopyWith<$Res> {
  factory _$$PoorInternetConnectionCopyWith(_$PoorInternetConnection value,
          $Res Function(_$PoorInternetConnection) then) =
      __$$PoorInternetConnectionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$PoorInternetConnectionCopyWithImpl<$Res>
    extends _$NetworkFailureCopyWithImpl<$Res, _$PoorInternetConnection>
    implements _$$PoorInternetConnectionCopyWith<$Res> {
  __$$PoorInternetConnectionCopyWithImpl(_$PoorInternetConnection _value,
      $Res Function(_$PoorInternetConnection) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$PoorInternetConnection(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PoorInternetConnection extends PoorInternetConnection {
  const _$PoorInternetConnection(
      [this.message = NetworkFailure._POOR_INTERNET_MSG])
      : super._();

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'NetworkFailure.poorInternet(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PoorInternetConnection &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PoorInternetConnectionCopyWith<_$PoorInternetConnection> get copyWith =>
      __$$PoorInternetConnectionCopyWithImpl<_$PoorInternetConnection>(
          this, _$identity);
}

abstract class PoorInternetConnection extends NetworkFailure {
  const factory PoorInternetConnection([final String message]) =
      _$PoorInternetConnection;
  const PoorInternetConnection._() : super._();

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$PoorInternetConnectionCopyWith<_$PoorInternetConnection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NetworkFailureReceiveTimeoutCopyWith<$Res>
    implements $NetworkFailureCopyWith<$Res> {
  factory _$$_NetworkFailureReceiveTimeoutCopyWith(
          _$_NetworkFailureReceiveTimeout value,
          $Res Function(_$_NetworkFailureReceiveTimeout) then) =
      __$$_NetworkFailureReceiveTimeoutCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_NetworkFailureReceiveTimeoutCopyWithImpl<$Res>
    extends _$NetworkFailureCopyWithImpl<$Res, _$_NetworkFailureReceiveTimeout>
    implements _$$_NetworkFailureReceiveTimeoutCopyWith<$Res> {
  __$$_NetworkFailureReceiveTimeoutCopyWithImpl(
      _$_NetworkFailureReceiveTimeout _value,
      $Res Function(_$_NetworkFailureReceiveTimeout) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_NetworkFailureReceiveTimeout(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NetworkFailureReceiveTimeout extends _NetworkFailureReceiveTimeout {
  const _$_NetworkFailureReceiveTimeout(
      [this.message = NetworkFailure._RECEIVE_TIMEOUT_MSG])
      : super._();

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'NetworkFailure.receiveTimeout(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NetworkFailureReceiveTimeout &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NetworkFailureReceiveTimeoutCopyWith<_$_NetworkFailureReceiveTimeout>
      get copyWith => __$$_NetworkFailureReceiveTimeoutCopyWithImpl<
          _$_NetworkFailureReceiveTimeout>(this, _$identity);
}

abstract class _NetworkFailureReceiveTimeout extends NetworkFailure {
  const factory _NetworkFailureReceiveTimeout([final String message]) =
      _$_NetworkFailureReceiveTimeout;
  const _NetworkFailureReceiveTimeout._() : super._();

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_NetworkFailureReceiveTimeoutCopyWith<_$_NetworkFailureReceiveTimeout>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NetworkFailureTimeoutCopyWith<$Res>
    implements $NetworkFailureCopyWith<$Res> {
  factory _$$_NetworkFailureTimeoutCopyWith(_$_NetworkFailureTimeout value,
          $Res Function(_$_NetworkFailureTimeout) then) =
      __$$_NetworkFailureTimeoutCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_NetworkFailureTimeoutCopyWithImpl<$Res>
    extends _$NetworkFailureCopyWithImpl<$Res, _$_NetworkFailureTimeout>
    implements _$$_NetworkFailureTimeoutCopyWith<$Res> {
  __$$_NetworkFailureTimeoutCopyWithImpl(_$_NetworkFailureTimeout _value,
      $Res Function(_$_NetworkFailureTimeout) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_NetworkFailureTimeout(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NetworkFailureTimeout extends _NetworkFailureTimeout {
  const _$_NetworkFailureTimeout(
      [this.message = NetworkFailure._CONNECT_TIMEOUT_MSG])
      : super._();

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'NetworkFailure.timeout(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NetworkFailureTimeout &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NetworkFailureTimeoutCopyWith<_$_NetworkFailureTimeout> get copyWith =>
      __$$_NetworkFailureTimeoutCopyWithImpl<_$_NetworkFailureTimeout>(
          this, _$identity);
}

abstract class _NetworkFailureTimeout extends NetworkFailure {
  const factory _NetworkFailureTimeout([final String message]) =
      _$_NetworkFailureTimeout;
  const _NetworkFailureTimeout._() : super._();

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_NetworkFailureTimeoutCopyWith<_$_NetworkFailureTimeout> get copyWith =>
      throw _privateConstructorUsedError;
}
