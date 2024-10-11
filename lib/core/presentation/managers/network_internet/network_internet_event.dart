part of network_internet_bloc.dart;

typedef _StateUpdate = NetworkInternetState Function(NetworkInternetState);

abstract class NetworkInternetEvent {
  const NetworkInternetEvent();
}

@Freezed(when: FreezedWhenOptions.none)
class NetworkEvent extends NetworkInternetEvent with _$NetworkEvent {
  const factory NetworkEvent.watchInternet() = _WatchInternetConnection;

  const factory NetworkEvent.watchConnectivity() = _WatchConnectivity;

  const factory NetworkEvent.stopWatchers() = _StopAllWatchers;

  const factory NetworkEvent.retry() = _RetryFuturesOrEvents;

  const factory NetworkEvent.queue(FutureFunction future) = _QueueFutureOrEvent;
}

class _NetworkEmitterEvent extends NetworkInternetEvent {
  final AwaitCallback? callback;
  final _StateUpdate state;

  const _NetworkEmitterEvent._(this.state, this.callback);

  factory _NetworkEmitterEvent.state(_StateUpdate state, {AwaitCallback? callback}) => _NetworkEmitterEvent._(state, callback);
}
