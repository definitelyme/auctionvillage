library social_auth_mixin.dart;

import 'package:auctionvillage/core/data/http_client/index.dart';
import 'package:auctionvillage/core/data/response/index.dart';
import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/core/domain/response/index.dart';
import 'package:auctionvillage/features/auth/data/models/index.dart';
import 'package:auctionvillage/features/auth/data/sources/sources.dart';
import 'package:auctionvillage/features/auth/domain/index.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart' as dio;
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/services.dart';

typedef SignInWithSocials = Future<dio.Response<dynamic>> Function();

mixin SocialAuthMixin on AuthFacade {
  static const int FACEBOOK_IMAGE_SIZE = 600;

  AuthRemoteDatasource get remote;
  AuthLocalDatasource get local;
  FirebaseAnalytics get analytics;

  @override
  Future<Option<AppHttpResponse?>> googleAuthentication([bool notify = false]) async {
    // First we'll check for stable Internet connection
    final _conn = await checkInternetConnectivity();

    return await _conn.fold(
      () async {
        try {
          // // Clear cached / authenticated user but do not notify UI
          // if (await googleSignIn.isSignedIn()) await signOut(notify: notify, regular: false);

          // // Attempt authenticating user with google credentials
          // var account = await googleSignIn.signIn();
          // // If null, => user cancelled authentication
          // if (account == null) throw FailureResponse.aborted();

          // // get authentication details [idToken], [accessToken]
          // final _auth = await account.authentication;

          // return _authenticateUser(
          //   () => remote.signInWithGoogle(_auth.accessToken),
          //   provider: AuthProvider.google,
          // );
          return none();
        } on AppHttpResponse catch (e) {
          return some(e);
        } on AppNetworkException catch (e) {
          return some(e.asResponse());
        } on Failure catch (e) {
          return some(AppHttpResponse.failure(e.message));
        } on PlatformException catch (e) {
          return some(AppHttpResponse(AnyResponse.fromFailure(
            FailureResponse.unknown(message: e.message),
          )));
        }
      },
      (f) => throw f,
    );
  }

  @override
  Future<Option<AppHttpResponse?>> appleAuthentication([bool notify = false]) async {
    final _conn = await checkInternetConnectivity();

    return await _conn.fold(
      () async {
        try {
          // final credential = await SignInWithApple.getAppleIDCredential(
          //   scopes: [AppleIDAuthorizationScopes.email, AppleIDAuthorizationScopes.fullName],
          // );

          // // Attempt to authenticate the user with apple credentials
          // return _authenticateUser(
          //   () => remote.signInWithApple(credential.identityToken),
          //   provider: AuthProvider.apple,
          // );

          return none();
        } on AppHttpResponse catch (e) {
          return some(e);
        } on AppNetworkException catch (e) {
          return some(e.asResponse());
        }
        // on SignInWithAppleNotSupportedException catch (e) {
        //   return some(AppHttpResponse.failure('${e.message}'));
        // } on SignInWithAppleException catch (_) {
        //   return some(AppHttpResponse.failure('${FailureResponse.aborted().message}'));
        // }
      },
      (f) => throw f,
    );
  }

  Future<Option<AppHttpResponse?>> _authenticateUser(
    SignInWithSocials callable, {
    required AuthProvider provider,
  }) async {
    final response = await callable.call();

    // cache access token
    await local.cacheUserAccessToken(response.data);

    // Get Authenticated Rider account
    final _user = await remote.getUser();

    return _user.fold(
      (failure) async {
        final _data = failure.data as Map<String, dynamic>;
        final _socialDto = SocialUserDTO.fromJson(_data);

        // Log Firebase Analytics Login event
        await analytics.logLogin(loginMethod: provider.name);

        await retrieveAndCacheUpdatedUser(dto: _socialDto.dto);

        await sink(left(failure));

        return some(failure);
      },
      (dto) async {
        // Log Firebase Analytics Login event
        await analytics.logLogin(loginMethod: provider.name);

        await sink(right(optionOf(dto?.domain)));

        return none();
      },
    );
  }
}
