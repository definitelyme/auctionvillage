library network_failure.dart;

import 'package:auctionvillage/core/data/index.dart';
import 'package:auctionvillage/core/domain/response/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_failure.freezed.dart';

@Freezed(when: FreezedWhenOptions.none, map: FreezedMapOptions.none)
class NetworkFailure  with _$NetworkFailure, BaseException {
  static const String _CONNECT_TIMEOUT_MSG = 'Connection Timeout! Please try again later.';
  static const String _OFFLINE_MSG = 'You are offline!';
  static const String _POOR_INTERNET_MSG = 'Whoops! Could not access the internet. Check your settings and try again.';
  static const String _RECEIVE_TIMEOUT_MSG = 'Receive Timeout! Please try again after 10seconds.';

  const NetworkFailure._();

  const factory NetworkFailure.notConnected([
    @Default(NetworkFailure._OFFLINE_MSG) String message,
  ]) = NoInternetConnectivity;

  const factory NetworkFailure.poorInternet([
    @Default(NetworkFailure._POOR_INTERNET_MSG) String message,
  ]) = PoorInternetConnection;

  const factory NetworkFailure.receiveTimeout([
    @Default(NetworkFailure._RECEIVE_TIMEOUT_MSG) String message,
  ]) = _NetworkFailureReceiveTimeout;

  const factory NetworkFailure.timeout([
    @Default(NetworkFailure._CONNECT_TIMEOUT_MSG) String message,
  ]) = _NetworkFailureTimeout;

  Failure get failure => FailureResponse.unknown(message: message);

  AppHttpResponse get response => AppHttpResponse(AnyResponse.fromFailure(failure));
}
