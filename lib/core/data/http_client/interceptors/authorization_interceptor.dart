library authorization_interceptor.dart;

import 'package:dio/dio.dart';
import 'package:auctionvillage/features/auth/data/repositories/repos.dart';
import 'package:auctionvillage/manager/locator/locator.dart';

/// Request methods PUT, POST, PATCH, DELETE needs access token,
/// which needs to be passed with "Authorization" header as Bearer token.
class AuthorizationInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (_needAuthorizationHeader(options)) {
      final result = getIt<AccessTokenManager>().get();
      options.headers.putIfAbsent('Authorization', () => result?.accessToken);
    }
    return handler.next(options);
  }

  bool _needAuthorizationHeader(RequestOptions options) {
    // if (options.method == 'GET') {
    //   return false;
    // } else {
    //   return true;
    // }
    return true;
  }
}
