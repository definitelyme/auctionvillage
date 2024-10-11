part of network_internet_bloc.dart;

@Freezed(when: FreezedWhenOptions.none)
class NetworkInternetState with _$NetworkInternetState {
  const NetworkInternetState._();

  const factory NetworkInternetState.connected([@Default([]) List<FutureFunction> futures]) = _Connected;

  const factory NetworkInternetState.disconnected([@Default([]) List<FutureFunction> futures]) = _Disconnected;

  const factory NetworkInternetState.error(AppHttpResponse response, {@Default([]) List<FutureFunction> futures}) = _ErrorConnecting;

  const factory NetworkInternetState.internet([@Default([]) List<FutureFunction> futures]) = _Internet;

  const factory NetworkInternetState.loading([@Default([]) List<FutureFunction> futures]) = _Loading;

  const factory NetworkInternetState.notLoading([@Default([]) List<FutureFunction> futures]) = _NotLoading;

  const factory NetworkInternetState.poorInternet([@Default([]) List<FutureFunction> futures]) = _PoorInternet;
}
