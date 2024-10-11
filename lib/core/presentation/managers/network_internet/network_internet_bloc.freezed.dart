// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of network_internet_bloc.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NetworkEvent {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchInternetConnection value) watchInternet,
    required TResult Function(_WatchConnectivity value) watchConnectivity,
    required TResult Function(_StopAllWatchers value) stopWatchers,
    required TResult Function(_RetryFuturesOrEvents value) retry,
    required TResult Function(_QueueFutureOrEvent value) queue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchInternetConnection value)? watchInternet,
    TResult? Function(_WatchConnectivity value)? watchConnectivity,
    TResult? Function(_StopAllWatchers value)? stopWatchers,
    TResult? Function(_RetryFuturesOrEvents value)? retry,
    TResult? Function(_QueueFutureOrEvent value)? queue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchInternetConnection value)? watchInternet,
    TResult Function(_WatchConnectivity value)? watchConnectivity,
    TResult Function(_StopAllWatchers value)? stopWatchers,
    TResult Function(_RetryFuturesOrEvents value)? retry,
    TResult Function(_QueueFutureOrEvent value)? queue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkEventCopyWith<$Res> {
  factory $NetworkEventCopyWith(
          NetworkEvent value, $Res Function(NetworkEvent) then) =
      _$NetworkEventCopyWithImpl<$Res, NetworkEvent>;
}

/// @nodoc
class _$NetworkEventCopyWithImpl<$Res, $Val extends NetworkEvent>
    implements $NetworkEventCopyWith<$Res> {
  _$NetworkEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_WatchInternetConnectionCopyWith<$Res> {
  factory _$$_WatchInternetConnectionCopyWith(_$_WatchInternetConnection value,
          $Res Function(_$_WatchInternetConnection) then) =
      __$$_WatchInternetConnectionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WatchInternetConnectionCopyWithImpl<$Res>
    extends _$NetworkEventCopyWithImpl<$Res, _$_WatchInternetConnection>
    implements _$$_WatchInternetConnectionCopyWith<$Res> {
  __$$_WatchInternetConnectionCopyWithImpl(_$_WatchInternetConnection _value,
      $Res Function(_$_WatchInternetConnection) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_WatchInternetConnection
    with DiagnosticableTreeMixin
    implements _WatchInternetConnection {
  const _$_WatchInternetConnection();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkEvent.watchInternet()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'NetworkEvent.watchInternet'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WatchInternetConnection);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchInternetConnection value) watchInternet,
    required TResult Function(_WatchConnectivity value) watchConnectivity,
    required TResult Function(_StopAllWatchers value) stopWatchers,
    required TResult Function(_RetryFuturesOrEvents value) retry,
    required TResult Function(_QueueFutureOrEvent value) queue,
  }) {
    return watchInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchInternetConnection value)? watchInternet,
    TResult? Function(_WatchConnectivity value)? watchConnectivity,
    TResult? Function(_StopAllWatchers value)? stopWatchers,
    TResult? Function(_RetryFuturesOrEvents value)? retry,
    TResult? Function(_QueueFutureOrEvent value)? queue,
  }) {
    return watchInternet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchInternetConnection value)? watchInternet,
    TResult Function(_WatchConnectivity value)? watchConnectivity,
    TResult Function(_StopAllWatchers value)? stopWatchers,
    TResult Function(_RetryFuturesOrEvents value)? retry,
    TResult Function(_QueueFutureOrEvent value)? queue,
    required TResult orElse(),
  }) {
    if (watchInternet != null) {
      return watchInternet(this);
    }
    return orElse();
  }
}

abstract class _WatchInternetConnection implements NetworkEvent {
  const factory _WatchInternetConnection() = _$_WatchInternetConnection;
}

/// @nodoc
abstract class _$$_WatchConnectivityCopyWith<$Res> {
  factory _$$_WatchConnectivityCopyWith(_$_WatchConnectivity value,
          $Res Function(_$_WatchConnectivity) then) =
      __$$_WatchConnectivityCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WatchConnectivityCopyWithImpl<$Res>
    extends _$NetworkEventCopyWithImpl<$Res, _$_WatchConnectivity>
    implements _$$_WatchConnectivityCopyWith<$Res> {
  __$$_WatchConnectivityCopyWithImpl(
      _$_WatchConnectivity _value, $Res Function(_$_WatchConnectivity) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_WatchConnectivity
    with DiagnosticableTreeMixin
    implements _WatchConnectivity {
  const _$_WatchConnectivity();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkEvent.watchConnectivity()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'NetworkEvent.watchConnectivity'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_WatchConnectivity);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchInternetConnection value) watchInternet,
    required TResult Function(_WatchConnectivity value) watchConnectivity,
    required TResult Function(_StopAllWatchers value) stopWatchers,
    required TResult Function(_RetryFuturesOrEvents value) retry,
    required TResult Function(_QueueFutureOrEvent value) queue,
  }) {
    return watchConnectivity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchInternetConnection value)? watchInternet,
    TResult? Function(_WatchConnectivity value)? watchConnectivity,
    TResult? Function(_StopAllWatchers value)? stopWatchers,
    TResult? Function(_RetryFuturesOrEvents value)? retry,
    TResult? Function(_QueueFutureOrEvent value)? queue,
  }) {
    return watchConnectivity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchInternetConnection value)? watchInternet,
    TResult Function(_WatchConnectivity value)? watchConnectivity,
    TResult Function(_StopAllWatchers value)? stopWatchers,
    TResult Function(_RetryFuturesOrEvents value)? retry,
    TResult Function(_QueueFutureOrEvent value)? queue,
    required TResult orElse(),
  }) {
    if (watchConnectivity != null) {
      return watchConnectivity(this);
    }
    return orElse();
  }
}

abstract class _WatchConnectivity implements NetworkEvent {
  const factory _WatchConnectivity() = _$_WatchConnectivity;
}

/// @nodoc
abstract class _$$_StopAllWatchersCopyWith<$Res> {
  factory _$$_StopAllWatchersCopyWith(
          _$_StopAllWatchers value, $Res Function(_$_StopAllWatchers) then) =
      __$$_StopAllWatchersCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StopAllWatchersCopyWithImpl<$Res>
    extends _$NetworkEventCopyWithImpl<$Res, _$_StopAllWatchers>
    implements _$$_StopAllWatchersCopyWith<$Res> {
  __$$_StopAllWatchersCopyWithImpl(
      _$_StopAllWatchers _value, $Res Function(_$_StopAllWatchers) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_StopAllWatchers
    with DiagnosticableTreeMixin
    implements _StopAllWatchers {
  const _$_StopAllWatchers();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkEvent.stopWatchers()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'NetworkEvent.stopWatchers'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_StopAllWatchers);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchInternetConnection value) watchInternet,
    required TResult Function(_WatchConnectivity value) watchConnectivity,
    required TResult Function(_StopAllWatchers value) stopWatchers,
    required TResult Function(_RetryFuturesOrEvents value) retry,
    required TResult Function(_QueueFutureOrEvent value) queue,
  }) {
    return stopWatchers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchInternetConnection value)? watchInternet,
    TResult? Function(_WatchConnectivity value)? watchConnectivity,
    TResult? Function(_StopAllWatchers value)? stopWatchers,
    TResult? Function(_RetryFuturesOrEvents value)? retry,
    TResult? Function(_QueueFutureOrEvent value)? queue,
  }) {
    return stopWatchers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchInternetConnection value)? watchInternet,
    TResult Function(_WatchConnectivity value)? watchConnectivity,
    TResult Function(_StopAllWatchers value)? stopWatchers,
    TResult Function(_RetryFuturesOrEvents value)? retry,
    TResult Function(_QueueFutureOrEvent value)? queue,
    required TResult orElse(),
  }) {
    if (stopWatchers != null) {
      return stopWatchers(this);
    }
    return orElse();
  }
}

abstract class _StopAllWatchers implements NetworkEvent {
  const factory _StopAllWatchers() = _$_StopAllWatchers;
}

/// @nodoc
abstract class _$$_RetryFuturesOrEventsCopyWith<$Res> {
  factory _$$_RetryFuturesOrEventsCopyWith(_$_RetryFuturesOrEvents value,
          $Res Function(_$_RetryFuturesOrEvents) then) =
      __$$_RetryFuturesOrEventsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RetryFuturesOrEventsCopyWithImpl<$Res>
    extends _$NetworkEventCopyWithImpl<$Res, _$_RetryFuturesOrEvents>
    implements _$$_RetryFuturesOrEventsCopyWith<$Res> {
  __$$_RetryFuturesOrEventsCopyWithImpl(_$_RetryFuturesOrEvents _value,
      $Res Function(_$_RetryFuturesOrEvents) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RetryFuturesOrEvents
    with DiagnosticableTreeMixin
    implements _RetryFuturesOrEvents {
  const _$_RetryFuturesOrEvents();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkEvent.retry()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'NetworkEvent.retry'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RetryFuturesOrEvents);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchInternetConnection value) watchInternet,
    required TResult Function(_WatchConnectivity value) watchConnectivity,
    required TResult Function(_StopAllWatchers value) stopWatchers,
    required TResult Function(_RetryFuturesOrEvents value) retry,
    required TResult Function(_QueueFutureOrEvent value) queue,
  }) {
    return retry(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchInternetConnection value)? watchInternet,
    TResult? Function(_WatchConnectivity value)? watchConnectivity,
    TResult? Function(_StopAllWatchers value)? stopWatchers,
    TResult? Function(_RetryFuturesOrEvents value)? retry,
    TResult? Function(_QueueFutureOrEvent value)? queue,
  }) {
    return retry?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchInternetConnection value)? watchInternet,
    TResult Function(_WatchConnectivity value)? watchConnectivity,
    TResult Function(_StopAllWatchers value)? stopWatchers,
    TResult Function(_RetryFuturesOrEvents value)? retry,
    TResult Function(_QueueFutureOrEvent value)? queue,
    required TResult orElse(),
  }) {
    if (retry != null) {
      return retry(this);
    }
    return orElse();
  }
}

abstract class _RetryFuturesOrEvents implements NetworkEvent {
  const factory _RetryFuturesOrEvents() = _$_RetryFuturesOrEvents;
}

/// @nodoc
abstract class _$$_QueueFutureOrEventCopyWith<$Res> {
  factory _$$_QueueFutureOrEventCopyWith(_$_QueueFutureOrEvent value,
          $Res Function(_$_QueueFutureOrEvent) then) =
      __$$_QueueFutureOrEventCopyWithImpl<$Res>;
  @useResult
  $Res call({FutureFunction future});
}

/// @nodoc
class __$$_QueueFutureOrEventCopyWithImpl<$Res>
    extends _$NetworkEventCopyWithImpl<$Res, _$_QueueFutureOrEvent>
    implements _$$_QueueFutureOrEventCopyWith<$Res> {
  __$$_QueueFutureOrEventCopyWithImpl(
      _$_QueueFutureOrEvent _value, $Res Function(_$_QueueFutureOrEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? future = null,
  }) {
    return _then(_$_QueueFutureOrEvent(
      null == future
          ? _value.future
          : future // ignore: cast_nullable_to_non_nullable
              as FutureFunction,
    ));
  }
}

/// @nodoc

class _$_QueueFutureOrEvent
    with DiagnosticableTreeMixin
    implements _QueueFutureOrEvent {
  const _$_QueueFutureOrEvent(this.future);

  @override
  final FutureFunction future;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkEvent.queue(future: $future)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NetworkEvent.queue'))
      ..add(DiagnosticsProperty('future', future));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QueueFutureOrEvent &&
            (identical(other.future, future) || other.future == future));
  }

  @override
  int get hashCode => Object.hash(runtimeType, future);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QueueFutureOrEventCopyWith<_$_QueueFutureOrEvent> get copyWith =>
      __$$_QueueFutureOrEventCopyWithImpl<_$_QueueFutureOrEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchInternetConnection value) watchInternet,
    required TResult Function(_WatchConnectivity value) watchConnectivity,
    required TResult Function(_StopAllWatchers value) stopWatchers,
    required TResult Function(_RetryFuturesOrEvents value) retry,
    required TResult Function(_QueueFutureOrEvent value) queue,
  }) {
    return queue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchInternetConnection value)? watchInternet,
    TResult? Function(_WatchConnectivity value)? watchConnectivity,
    TResult? Function(_StopAllWatchers value)? stopWatchers,
    TResult? Function(_RetryFuturesOrEvents value)? retry,
    TResult? Function(_QueueFutureOrEvent value)? queue,
  }) {
    return queue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchInternetConnection value)? watchInternet,
    TResult Function(_WatchConnectivity value)? watchConnectivity,
    TResult Function(_StopAllWatchers value)? stopWatchers,
    TResult Function(_RetryFuturesOrEvents value)? retry,
    TResult Function(_QueueFutureOrEvent value)? queue,
    required TResult orElse(),
  }) {
    if (queue != null) {
      return queue(this);
    }
    return orElse();
  }
}

abstract class _QueueFutureOrEvent implements NetworkEvent {
  const factory _QueueFutureOrEvent(final FutureFunction future) =
      _$_QueueFutureOrEvent;

  FutureFunction get future;
  @JsonKey(ignore: true)
  _$$_QueueFutureOrEventCopyWith<_$_QueueFutureOrEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NetworkInternetState {
  List<FutureOr<dynamic> Function()> get futures =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Connected value) connected,
    required TResult Function(_Disconnected value) disconnected,
    required TResult Function(_ErrorConnecting value) error,
    required TResult Function(_Internet value) internet,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NotLoading value) notLoading,
    required TResult Function(_PoorInternet value) poorInternet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Connected value)? connected,
    TResult? Function(_Disconnected value)? disconnected,
    TResult? Function(_ErrorConnecting value)? error,
    TResult? Function(_Internet value)? internet,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NotLoading value)? notLoading,
    TResult? Function(_PoorInternet value)? poorInternet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Connected value)? connected,
    TResult Function(_Disconnected value)? disconnected,
    TResult Function(_ErrorConnecting value)? error,
    TResult Function(_Internet value)? internet,
    TResult Function(_Loading value)? loading,
    TResult Function(_NotLoading value)? notLoading,
    TResult Function(_PoorInternet value)? poorInternet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NetworkInternetStateCopyWith<NetworkInternetState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkInternetStateCopyWith<$Res> {
  factory $NetworkInternetStateCopyWith(NetworkInternetState value,
          $Res Function(NetworkInternetState) then) =
      _$NetworkInternetStateCopyWithImpl<$Res, NetworkInternetState>;
  @useResult
  $Res call({List<FutureOr<dynamic> Function()> futures});
}

/// @nodoc
class _$NetworkInternetStateCopyWithImpl<$Res,
        $Val extends NetworkInternetState>
    implements $NetworkInternetStateCopyWith<$Res> {
  _$NetworkInternetStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? futures = null,
  }) {
    return _then(_value.copyWith(
      futures: null == futures
          ? _value.futures
          : futures // ignore: cast_nullable_to_non_nullable
              as List<FutureOr<dynamic> Function()>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ConnectedCopyWith<$Res>
    implements $NetworkInternetStateCopyWith<$Res> {
  factory _$$_ConnectedCopyWith(
          _$_Connected value, $Res Function(_$_Connected) then) =
      __$$_ConnectedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<FutureFunction> futures});
}

/// @nodoc
class __$$_ConnectedCopyWithImpl<$Res>
    extends _$NetworkInternetStateCopyWithImpl<$Res, _$_Connected>
    implements _$$_ConnectedCopyWith<$Res> {
  __$$_ConnectedCopyWithImpl(
      _$_Connected _value, $Res Function(_$_Connected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? futures = null,
  }) {
    return _then(_$_Connected(
      null == futures
          ? _value._futures
          : futures // ignore: cast_nullable_to_non_nullable
              as List<FutureFunction>,
    ));
  }
}

/// @nodoc

class _$_Connected extends _Connected with DiagnosticableTreeMixin {
  const _$_Connected([final List<FutureFunction> futures = const []])
      : _futures = futures,
        super._();

  final List<FutureFunction> _futures;
  @override
  @JsonKey()
  List<FutureFunction> get futures {
    if (_futures is EqualUnmodifiableListView) return _futures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_futures);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkInternetState.connected(futures: $futures)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NetworkInternetState.connected'))
      ..add(DiagnosticsProperty('futures', futures));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Connected &&
            const DeepCollectionEquality().equals(other._futures, _futures));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_futures));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConnectedCopyWith<_$_Connected> get copyWith =>
      __$$_ConnectedCopyWithImpl<_$_Connected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Connected value) connected,
    required TResult Function(_Disconnected value) disconnected,
    required TResult Function(_ErrorConnecting value) error,
    required TResult Function(_Internet value) internet,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NotLoading value) notLoading,
    required TResult Function(_PoorInternet value) poorInternet,
  }) {
    return connected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Connected value)? connected,
    TResult? Function(_Disconnected value)? disconnected,
    TResult? Function(_ErrorConnecting value)? error,
    TResult? Function(_Internet value)? internet,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NotLoading value)? notLoading,
    TResult? Function(_PoorInternet value)? poorInternet,
  }) {
    return connected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Connected value)? connected,
    TResult Function(_Disconnected value)? disconnected,
    TResult Function(_ErrorConnecting value)? error,
    TResult Function(_Internet value)? internet,
    TResult Function(_Loading value)? loading,
    TResult Function(_NotLoading value)? notLoading,
    TResult Function(_PoorInternet value)? poorInternet,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(this);
    }
    return orElse();
  }
}

abstract class _Connected extends NetworkInternetState {
  const factory _Connected([final List<FutureFunction> futures]) = _$_Connected;
  const _Connected._() : super._();

  @override
  List<FutureFunction> get futures;
  @override
  @JsonKey(ignore: true)
  _$$_ConnectedCopyWith<_$_Connected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DisconnectedCopyWith<$Res>
    implements $NetworkInternetStateCopyWith<$Res> {
  factory _$$_DisconnectedCopyWith(
          _$_Disconnected value, $Res Function(_$_Disconnected) then) =
      __$$_DisconnectedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<FutureFunction> futures});
}

/// @nodoc
class __$$_DisconnectedCopyWithImpl<$Res>
    extends _$NetworkInternetStateCopyWithImpl<$Res, _$_Disconnected>
    implements _$$_DisconnectedCopyWith<$Res> {
  __$$_DisconnectedCopyWithImpl(
      _$_Disconnected _value, $Res Function(_$_Disconnected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? futures = null,
  }) {
    return _then(_$_Disconnected(
      null == futures
          ? _value._futures
          : futures // ignore: cast_nullable_to_non_nullable
              as List<FutureFunction>,
    ));
  }
}

/// @nodoc

class _$_Disconnected extends _Disconnected with DiagnosticableTreeMixin {
  const _$_Disconnected([final List<FutureFunction> futures = const []])
      : _futures = futures,
        super._();

  final List<FutureFunction> _futures;
  @override
  @JsonKey()
  List<FutureFunction> get futures {
    if (_futures is EqualUnmodifiableListView) return _futures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_futures);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkInternetState.disconnected(futures: $futures)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NetworkInternetState.disconnected'))
      ..add(DiagnosticsProperty('futures', futures));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Disconnected &&
            const DeepCollectionEquality().equals(other._futures, _futures));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_futures));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DisconnectedCopyWith<_$_Disconnected> get copyWith =>
      __$$_DisconnectedCopyWithImpl<_$_Disconnected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Connected value) connected,
    required TResult Function(_Disconnected value) disconnected,
    required TResult Function(_ErrorConnecting value) error,
    required TResult Function(_Internet value) internet,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NotLoading value) notLoading,
    required TResult Function(_PoorInternet value) poorInternet,
  }) {
    return disconnected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Connected value)? connected,
    TResult? Function(_Disconnected value)? disconnected,
    TResult? Function(_ErrorConnecting value)? error,
    TResult? Function(_Internet value)? internet,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NotLoading value)? notLoading,
    TResult? Function(_PoorInternet value)? poorInternet,
  }) {
    return disconnected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Connected value)? connected,
    TResult Function(_Disconnected value)? disconnected,
    TResult Function(_ErrorConnecting value)? error,
    TResult Function(_Internet value)? internet,
    TResult Function(_Loading value)? loading,
    TResult Function(_NotLoading value)? notLoading,
    TResult Function(_PoorInternet value)? poorInternet,
    required TResult orElse(),
  }) {
    if (disconnected != null) {
      return disconnected(this);
    }
    return orElse();
  }
}

abstract class _Disconnected extends NetworkInternetState {
  const factory _Disconnected([final List<FutureFunction> futures]) =
      _$_Disconnected;
  const _Disconnected._() : super._();

  @override
  List<FutureFunction> get futures;
  @override
  @JsonKey(ignore: true)
  _$$_DisconnectedCopyWith<_$_Disconnected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorConnectingCopyWith<$Res>
    implements $NetworkInternetStateCopyWith<$Res> {
  factory _$$_ErrorConnectingCopyWith(
          _$_ErrorConnecting value, $Res Function(_$_ErrorConnecting) then) =
      __$$_ErrorConnectingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppHttpResponse response, List<FutureFunction> futures});

  $AppHttpResponseCopyWith<$Res> get response;
}

/// @nodoc
class __$$_ErrorConnectingCopyWithImpl<$Res>
    extends _$NetworkInternetStateCopyWithImpl<$Res, _$_ErrorConnecting>
    implements _$$_ErrorConnectingCopyWith<$Res> {
  __$$_ErrorConnectingCopyWithImpl(
      _$_ErrorConnecting _value, $Res Function(_$_ErrorConnecting) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
    Object? futures = null,
  }) {
    return _then(_$_ErrorConnecting(
      null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as AppHttpResponse,
      futures: null == futures
          ? _value._futures
          : futures // ignore: cast_nullable_to_non_nullable
              as List<FutureFunction>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AppHttpResponseCopyWith<$Res> get response {
    return $AppHttpResponseCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value));
    });
  }
}

/// @nodoc

class _$_ErrorConnecting extends _ErrorConnecting with DiagnosticableTreeMixin {
  const _$_ErrorConnecting(this.response,
      {final List<FutureFunction> futures = const []})
      : _futures = futures,
        super._();

  @override
  final AppHttpResponse response;
  final List<FutureFunction> _futures;
  @override
  @JsonKey()
  List<FutureFunction> get futures {
    if (_futures is EqualUnmodifiableListView) return _futures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_futures);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkInternetState.error(response: $response, futures: $futures)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NetworkInternetState.error'))
      ..add(DiagnosticsProperty('response', response))
      ..add(DiagnosticsProperty('futures', futures));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorConnecting &&
            (identical(other.response, response) ||
                other.response == response) &&
            const DeepCollectionEquality().equals(other._futures, _futures));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, response, const DeepCollectionEquality().hash(_futures));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorConnectingCopyWith<_$_ErrorConnecting> get copyWith =>
      __$$_ErrorConnectingCopyWithImpl<_$_ErrorConnecting>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Connected value) connected,
    required TResult Function(_Disconnected value) disconnected,
    required TResult Function(_ErrorConnecting value) error,
    required TResult Function(_Internet value) internet,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NotLoading value) notLoading,
    required TResult Function(_PoorInternet value) poorInternet,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Connected value)? connected,
    TResult? Function(_Disconnected value)? disconnected,
    TResult? Function(_ErrorConnecting value)? error,
    TResult? Function(_Internet value)? internet,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NotLoading value)? notLoading,
    TResult? Function(_PoorInternet value)? poorInternet,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Connected value)? connected,
    TResult Function(_Disconnected value)? disconnected,
    TResult Function(_ErrorConnecting value)? error,
    TResult Function(_Internet value)? internet,
    TResult Function(_Loading value)? loading,
    TResult Function(_NotLoading value)? notLoading,
    TResult Function(_PoorInternet value)? poorInternet,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorConnecting extends NetworkInternetState {
  const factory _ErrorConnecting(final AppHttpResponse response,
      {final List<FutureFunction> futures}) = _$_ErrorConnecting;
  const _ErrorConnecting._() : super._();

  AppHttpResponse get response;
  @override
  List<FutureFunction> get futures;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorConnectingCopyWith<_$_ErrorConnecting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InternetCopyWith<$Res>
    implements $NetworkInternetStateCopyWith<$Res> {
  factory _$$_InternetCopyWith(
          _$_Internet value, $Res Function(_$_Internet) then) =
      __$$_InternetCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<FutureFunction> futures});
}

/// @nodoc
class __$$_InternetCopyWithImpl<$Res>
    extends _$NetworkInternetStateCopyWithImpl<$Res, _$_Internet>
    implements _$$_InternetCopyWith<$Res> {
  __$$_InternetCopyWithImpl(
      _$_Internet _value, $Res Function(_$_Internet) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? futures = null,
  }) {
    return _then(_$_Internet(
      null == futures
          ? _value._futures
          : futures // ignore: cast_nullable_to_non_nullable
              as List<FutureFunction>,
    ));
  }
}

/// @nodoc

class _$_Internet extends _Internet with DiagnosticableTreeMixin {
  const _$_Internet([final List<FutureFunction> futures = const []])
      : _futures = futures,
        super._();

  final List<FutureFunction> _futures;
  @override
  @JsonKey()
  List<FutureFunction> get futures {
    if (_futures is EqualUnmodifiableListView) return _futures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_futures);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkInternetState.internet(futures: $futures)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NetworkInternetState.internet'))
      ..add(DiagnosticsProperty('futures', futures));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Internet &&
            const DeepCollectionEquality().equals(other._futures, _futures));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_futures));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InternetCopyWith<_$_Internet> get copyWith =>
      __$$_InternetCopyWithImpl<_$_Internet>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Connected value) connected,
    required TResult Function(_Disconnected value) disconnected,
    required TResult Function(_ErrorConnecting value) error,
    required TResult Function(_Internet value) internet,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NotLoading value) notLoading,
    required TResult Function(_PoorInternet value) poorInternet,
  }) {
    return internet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Connected value)? connected,
    TResult? Function(_Disconnected value)? disconnected,
    TResult? Function(_ErrorConnecting value)? error,
    TResult? Function(_Internet value)? internet,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NotLoading value)? notLoading,
    TResult? Function(_PoorInternet value)? poorInternet,
  }) {
    return internet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Connected value)? connected,
    TResult Function(_Disconnected value)? disconnected,
    TResult Function(_ErrorConnecting value)? error,
    TResult Function(_Internet value)? internet,
    TResult Function(_Loading value)? loading,
    TResult Function(_NotLoading value)? notLoading,
    TResult Function(_PoorInternet value)? poorInternet,
    required TResult orElse(),
  }) {
    if (internet != null) {
      return internet(this);
    }
    return orElse();
  }
}

abstract class _Internet extends NetworkInternetState {
  const factory _Internet([final List<FutureFunction> futures]) = _$_Internet;
  const _Internet._() : super._();

  @override
  List<FutureFunction> get futures;
  @override
  @JsonKey(ignore: true)
  _$$_InternetCopyWith<_$_Internet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res>
    implements $NetworkInternetStateCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<FutureFunction> futures});
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$NetworkInternetStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? futures = null,
  }) {
    return _then(_$_Loading(
      null == futures
          ? _value._futures
          : futures // ignore: cast_nullable_to_non_nullable
              as List<FutureFunction>,
    ));
  }
}

/// @nodoc

class _$_Loading extends _Loading with DiagnosticableTreeMixin {
  const _$_Loading([final List<FutureFunction> futures = const []])
      : _futures = futures,
        super._();

  final List<FutureFunction> _futures;
  @override
  @JsonKey()
  List<FutureFunction> get futures {
    if (_futures is EqualUnmodifiableListView) return _futures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_futures);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkInternetState.loading(futures: $futures)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NetworkInternetState.loading'))
      ..add(DiagnosticsProperty('futures', futures));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loading &&
            const DeepCollectionEquality().equals(other._futures, _futures));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_futures));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      __$$_LoadingCopyWithImpl<_$_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Connected value) connected,
    required TResult Function(_Disconnected value) disconnected,
    required TResult Function(_ErrorConnecting value) error,
    required TResult Function(_Internet value) internet,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NotLoading value) notLoading,
    required TResult Function(_PoorInternet value) poorInternet,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Connected value)? connected,
    TResult? Function(_Disconnected value)? disconnected,
    TResult? Function(_ErrorConnecting value)? error,
    TResult? Function(_Internet value)? internet,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NotLoading value)? notLoading,
    TResult? Function(_PoorInternet value)? poorInternet,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Connected value)? connected,
    TResult Function(_Disconnected value)? disconnected,
    TResult Function(_ErrorConnecting value)? error,
    TResult Function(_Internet value)? internet,
    TResult Function(_Loading value)? loading,
    TResult Function(_NotLoading value)? notLoading,
    TResult Function(_PoorInternet value)? poorInternet,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends NetworkInternetState {
  const factory _Loading([final List<FutureFunction> futures]) = _$_Loading;
  const _Loading._() : super._();

  @override
  List<FutureFunction> get futures;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NotLoadingCopyWith<$Res>
    implements $NetworkInternetStateCopyWith<$Res> {
  factory _$$_NotLoadingCopyWith(
          _$_NotLoading value, $Res Function(_$_NotLoading) then) =
      __$$_NotLoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<FutureFunction> futures});
}

/// @nodoc
class __$$_NotLoadingCopyWithImpl<$Res>
    extends _$NetworkInternetStateCopyWithImpl<$Res, _$_NotLoading>
    implements _$$_NotLoadingCopyWith<$Res> {
  __$$_NotLoadingCopyWithImpl(
      _$_NotLoading _value, $Res Function(_$_NotLoading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? futures = null,
  }) {
    return _then(_$_NotLoading(
      null == futures
          ? _value._futures
          : futures // ignore: cast_nullable_to_non_nullable
              as List<FutureFunction>,
    ));
  }
}

/// @nodoc

class _$_NotLoading extends _NotLoading with DiagnosticableTreeMixin {
  const _$_NotLoading([final List<FutureFunction> futures = const []])
      : _futures = futures,
        super._();

  final List<FutureFunction> _futures;
  @override
  @JsonKey()
  List<FutureFunction> get futures {
    if (_futures is EqualUnmodifiableListView) return _futures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_futures);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkInternetState.notLoading(futures: $futures)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NetworkInternetState.notLoading'))
      ..add(DiagnosticsProperty('futures', futures));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotLoading &&
            const DeepCollectionEquality().equals(other._futures, _futures));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_futures));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotLoadingCopyWith<_$_NotLoading> get copyWith =>
      __$$_NotLoadingCopyWithImpl<_$_NotLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Connected value) connected,
    required TResult Function(_Disconnected value) disconnected,
    required TResult Function(_ErrorConnecting value) error,
    required TResult Function(_Internet value) internet,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NotLoading value) notLoading,
    required TResult Function(_PoorInternet value) poorInternet,
  }) {
    return notLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Connected value)? connected,
    TResult? Function(_Disconnected value)? disconnected,
    TResult? Function(_ErrorConnecting value)? error,
    TResult? Function(_Internet value)? internet,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NotLoading value)? notLoading,
    TResult? Function(_PoorInternet value)? poorInternet,
  }) {
    return notLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Connected value)? connected,
    TResult Function(_Disconnected value)? disconnected,
    TResult Function(_ErrorConnecting value)? error,
    TResult Function(_Internet value)? internet,
    TResult Function(_Loading value)? loading,
    TResult Function(_NotLoading value)? notLoading,
    TResult Function(_PoorInternet value)? poorInternet,
    required TResult orElse(),
  }) {
    if (notLoading != null) {
      return notLoading(this);
    }
    return orElse();
  }
}

abstract class _NotLoading extends NetworkInternetState {
  const factory _NotLoading([final List<FutureFunction> futures]) =
      _$_NotLoading;
  const _NotLoading._() : super._();

  @override
  List<FutureFunction> get futures;
  @override
  @JsonKey(ignore: true)
  _$$_NotLoadingCopyWith<_$_NotLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PoorInternetCopyWith<$Res>
    implements $NetworkInternetStateCopyWith<$Res> {
  factory _$$_PoorInternetCopyWith(
          _$_PoorInternet value, $Res Function(_$_PoorInternet) then) =
      __$$_PoorInternetCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<FutureFunction> futures});
}

/// @nodoc
class __$$_PoorInternetCopyWithImpl<$Res>
    extends _$NetworkInternetStateCopyWithImpl<$Res, _$_PoorInternet>
    implements _$$_PoorInternetCopyWith<$Res> {
  __$$_PoorInternetCopyWithImpl(
      _$_PoorInternet _value, $Res Function(_$_PoorInternet) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? futures = null,
  }) {
    return _then(_$_PoorInternet(
      null == futures
          ? _value._futures
          : futures // ignore: cast_nullable_to_non_nullable
              as List<FutureFunction>,
    ));
  }
}

/// @nodoc

class _$_PoorInternet extends _PoorInternet with DiagnosticableTreeMixin {
  const _$_PoorInternet([final List<FutureFunction> futures = const []])
      : _futures = futures,
        super._();

  final List<FutureFunction> _futures;
  @override
  @JsonKey()
  List<FutureFunction> get futures {
    if (_futures is EqualUnmodifiableListView) return _futures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_futures);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkInternetState.poorInternet(futures: $futures)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NetworkInternetState.poorInternet'))
      ..add(DiagnosticsProperty('futures', futures));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PoorInternet &&
            const DeepCollectionEquality().equals(other._futures, _futures));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_futures));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PoorInternetCopyWith<_$_PoorInternet> get copyWith =>
      __$$_PoorInternetCopyWithImpl<_$_PoorInternet>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Connected value) connected,
    required TResult Function(_Disconnected value) disconnected,
    required TResult Function(_ErrorConnecting value) error,
    required TResult Function(_Internet value) internet,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NotLoading value) notLoading,
    required TResult Function(_PoorInternet value) poorInternet,
  }) {
    return poorInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Connected value)? connected,
    TResult? Function(_Disconnected value)? disconnected,
    TResult? Function(_ErrorConnecting value)? error,
    TResult? Function(_Internet value)? internet,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NotLoading value)? notLoading,
    TResult? Function(_PoorInternet value)? poorInternet,
  }) {
    return poorInternet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Connected value)? connected,
    TResult Function(_Disconnected value)? disconnected,
    TResult Function(_ErrorConnecting value)? error,
    TResult Function(_Internet value)? internet,
    TResult Function(_Loading value)? loading,
    TResult Function(_NotLoading value)? notLoading,
    TResult Function(_PoorInternet value)? poorInternet,
    required TResult orElse(),
  }) {
    if (poorInternet != null) {
      return poorInternet(this);
    }
    return orElse();
  }
}

abstract class _PoorInternet extends NetworkInternetState {
  const factory _PoorInternet([final List<FutureFunction> futures]) =
      _$_PoorInternet;
  const _PoorInternet._() : super._();

  @override
  List<FutureFunction> get futures;
  @override
  @JsonKey(ignore: true)
  _$$_PoorInternetCopyWith<_$_PoorInternet> get copyWith =>
      throw _privateConstructorUsedError;
}
