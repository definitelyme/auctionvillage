library access_token_manager.dart;

import 'package:auctionvillage/core/data/index.dart';
import 'package:auctionvillage/features/auth/data/models/index.dart';
import 'package:auctionvillage/features/auth/domain/index.dart';
import 'package:auctionvillage/utils/utils.dart';

class AccessTokenManager {
  AccessTokenManager._();

  static final AccessTokenManager _instance = AccessTokenManager._();

  static AccessTokenManager get instance => _instance;

  Future<void> delete() async => await HiveClient.accessTokenBox?.clear();

  AccessToken? get() => HiveClient.accessTokenBox?.values.firstOrNone;

  AccessToken raw() {
    // Retrieve opened box
    final _token = get()?.accessToken;

    // return cached access token
    return AccessToken(
      accessToken: _token?.replaceAll('Bearer ', ''),
      tokenType: get()?.tokenType ?? TokenType.bearer,
      expiryDate: get()?.expiryDate,
    );
  }

  Future<void> save({
    String? accessToken,
    required TokenResponse response,
    TokenType type = TokenType.bearer,
    Duration duration = const Duration(days: 365),
  }) async {
    final token = accessToken ?? response.accessToken;

    final String tokenString;

    if (type == TokenType.bearer) {
      tokenString = 'Bearer $token';
    } else {
      tokenString = '$token';
    }

    await HiveClient.accessTokenBox?.add(AccessToken(
      accessToken: tokenString,
      tokenType: type,
      expiryDate: int.tryParse(response.expiryDate?.toString() ?? duration.inMilliseconds.toString()),
    ));
  }
}
