library base.dart;

import 'package:auctionvillage/core/data/response/index.dart';
import 'package:auctionvillage/core/domain/response/index.dart';
import 'package:auctionvillage/manager/locator/locator.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

Future<Option<AppHttpResponse>> checkConnectivity([bool? returns]) async {
  final isConnected = (await getIt<Connectivity>().checkConnectivity()) != ConnectivityResult.none;

  if (!isConnected) {
    if (returns == true) return some(const NetworkFailure.notConnected().response);
    throw const NetworkFailure.notConnected();
  }

  final status = await _hasConnection;

  if ((isConnected && status?.isSuccess == false) || status?.isSuccess == false) {
    if (returns == true) return some(const NetworkFailure.poorInternet().response);
    throw const NetworkFailure.poorInternet();
  }

  return none();
}

Future<AddressCheckResult?> get _hasConnection async {
  final checker = getIt<InternetConnectionChecker>();
  final addresses = checker.addresses;

  for (final AddressCheckOptions addressOptions in addresses) {
    final result = await checker.isHostReachable(addressOptions);
    if (result.isSuccess) return result;
  }

  return null;
}

mixin BaseRepository {
  // InternetConnectionChecker get connectionChecker;
  // Connectivity get connectivity;
}
