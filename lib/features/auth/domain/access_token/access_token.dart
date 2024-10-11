library access_token.dart;

import 'package:auctionvillage/core/presentation/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'access_token.freezed.dart';
part 'access_token.hive.dart';

@unfreezed
class AccessToken extends HiveObject with _$AccessToken {
  @HiveType(typeId: 3, adapterName: 'AccessTokenAdapter')
  factory AccessToken({
    @HiveField(1) required String? accessToken,
    @HiveField(2) required TokenType tokenType,
    @HiveField(3) required int? expiryDate,
  }) = _AccessToken;

  AccessToken._();

  static void registerAdapter() => Hive.registerAdapter(AccessTokenAdapter());
}

@HiveType(typeId: 4)
class TokenType extends HiveEnumClass {
  static const bearer = TokenType._('bearer');
  static const oAuth = TokenType._('oAuth');
  static const oAuth2 = TokenType._('oAuth2');
  static const values = [bearer, oAuth, oAuth2];

  factory TokenType(String name) => TokenType._(name);

  const TokenType._(super.name);

  static TokenType parse(String? raw) {
    final lower = raw?.trim().toLowerCase();

    switch (lower) {
      case 'oauth':
        return TokenType.oAuth;
      case 'oauth2':
        return TokenType.oAuth2;
      case 'bearer':
      default:
        return TokenType.bearer;
    }
  }

  static void registerAdapter() => Hive.registerAdapter(TokenTypeAdapter());
}
