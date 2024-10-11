library auth_facade_impl.dart;

import 'dart:async';

import 'package:auctionvillage/core/data/index.dart';
import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/core/domain/response/index.dart';
import 'package:auctionvillage/features/auth/data/models/index.dart';
import 'package:auctionvillage/features/auth/data/repositories/auth/social_auth_mixin.dart';
import 'package:auctionvillage/features/auth/data/sources/local/auth_local_source.dart';
import 'package:auctionvillage/features/auth/data/sources/remote/auth_remote_source.dart';
import 'package:auctionvillage/features/auth/domain/index.dart';
import 'package:auctionvillage/manager/settings/app_settings.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthFacade)
class AuthFacadeImpl extends AuthFacade with SocialAuthMixin {
  @override
  final FirebaseAnalytics analytics;

  @override
  final AuthLocalDatasource local;

  @override
  final AuthRemoteDatasource remote;

  final AppSettings settings;

  final StreamController<Either<AppHttpResponse, Option<User?>>> __controller;
  final StreamController<Option<User?>> __userChagesController;

  AuthFacadeImpl(
    this.remote,
    this.local,
    this.analytics,
    this.settings,
  )   : __controller = StreamController.broadcast(),
        __userChagesController = StreamController.broadcast();

  @override
  Future<Option<User?>> get user async => (await retrieveAndCacheUpdatedUser(forceGetLocalCache: true)).getOrElse(() => none());

  @override
  Future<Either<AppHttpResponse, Option<User?>>> get currentUser async => retrieveAndCacheUpdatedUser(forceGetLocalCache: false);

  @override
  void cacheEmail(EmailAddress? email) => email?.let((it) => settings.storeEmail(it.getOrNull));

  @override
  void cachePhone(Phone? phone) => phone?.let((it) => settings.storePhone(it.getOrNull));

  @override
  Future<AppHttpResponse> confirmPasswordReset({
    required Phone phone,
    required OTPCode code,
    required Password newPassword,
    required Password confirmation,
  }) async {
    try {
      final _conn = await checkInternetConnectivity();

      final dto = UserDTO(
        phone: phone.getOrNull,
        token: code.getOrNull,
        password: newPassword.getOrNull,
        confirmation: confirmation.getOrNull,
      );

      final result = await _conn.fold(
        // Attempt Authentication
        () => remote.confirmPasswordReset(dto),
        // Re-Throw Exception
        (f) => throw f,
      );

      final response = AppHttpResponse.fromJson(result.data as Map<String, dynamic>);

      response.response.mapOrNull(success: (_) {
        removePhone();
        removeEmail();
      });

      return response;
    } on AppHttpResponse catch (ex, tr) {
      return handleException(ex, trace: tr, notify: false);
    } on AppNetworkException catch (ex, tr) {
      return handleException(ex.asResponse(), trace: tr, notify: false);
    }
  }

  @override
  Future<AppHttpResponse?> createAccount(User user) async {
    try {
      // Check if device has good connection
      final _conn = await checkInternetConnectivity();

      final response = await _conn.fold(
        () => remote.createUserAccount(UserDTO.fromDomain(user)),
        (f) => throw f,
      );

      // Get Data Access Object
      final _registered = RegisteredUserDTO.fromJson(response.data as Map<String, dynamic>);

      // cachePhone(user.phone);
      // cacheEmail(user.email);

      // Automatically Login new User
      return await login(
        email: user.email,
        password: user.password,
        registered: _registered.data?.copyWith(password: user.password.getOrNull),
      );
    } on AppHttpResponse catch (ex, tr) {
      return handleException(ex, trace: tr, notify: false);
    } on AppNetworkException catch (ex, tr) {
      return handleException(ex.asResponse(), trace: tr, notify: false);
    }
  }

  @override
  Future<AppHttpResponse?> deleteAccount() async {
    try {
      final _conn = await checkInternetConnectivity();

      return _conn.fold(
        () async {
          final _response = await remote.deleteAccount();

          await sink();

          await signOut(notify: true);

          return AppHttpResponse.fromDioResponse(_response);
        },
        (f) => throw f,
      );
    } on AppHttpResponse catch (ex, tr) {
      return await handleException(ex, trace: tr, notify: true);
    } on AppNetworkException catch (ex, tr) {
      return await handleException(ex.asResponse(), trace: tr, notify: true);
    }
  }

  @override
  EmailAddress? getCacheEmail() => EmailAddress(settings.email);

  @override
  Phone? getCachePhone() => Phone(settings.phone);

  @override
  Future<AppHttpResponse?> login({
    required EmailAddress email,
    required Password password,
    UserDTO? registered,
  }) async {
    try {
      // Check if device has good connection
      final _conn = await checkInternetConnectivity();

      final _response = await _conn.fold(
        () async => remote.login(email: email.getOrNull, password: password.getOrNull),
        (f) => throw f,
      );

      final result = AppHttpResponse.fromDioResponse(_response);

      return await result.maybeMap(
        success: (_) async {
          //// Cache Access token
          await local.cacheUserAccessToken(_response.data);

          // If login was successful, fetch updated User creds
          // Else we'll pass in the initial registration response for caching
          final temp = UserDTO.fromDomain(User.blank(email: email.getOrNull, password: password.getOrNull));

          final cached = await retrieveAndCacheUpdatedUser(dto: registered ?? temp);

          // Log Firebase Analytics Login event
          await analytics.logLogin(loginMethod: 'email');

          sink();

          return cached.fold((f) => f, (_) => result);
        },
        orElse: () => result,
      );
    } on AppHttpResponse catch (ex, tr) {
      return handleException(ex, trace: tr, notify: false);
    } on AppNetworkException catch (ex, tr) {
      return handleException(ex.asResponse(), trace: tr, notify: false);
    }
  }

  @override
  Stream<Either<AppHttpResponse, Option<User?>>> get onAuthStateChanges => __controller.stream;

  @override
  Stream<Option<User?>> get onUserChanges => __userChagesController.stream;

  @override
  void removeEmail() => settings.deleteEmail();

  @override
  void removePhone() => settings.deletePhone();

  @override
  Future<Either<AppHttpResponse, Option<User?>>> retrieveAndCacheUpdatedUser({
    UserDTO? dto,
    bool forceGetLocalCache = false,
  }) async {
    Future<Either<AppHttpResponse, Option<User?>>> _local(AppHttpResponse failure) async {
      if (forceGetLocalCache) return right((await local.getUser()).fold(() => none(), (dto) => some(dto?.domain)));

      return failure.fold(
        // if reason for failure was 401,
        // logout the user (probably an expired accessToken)
        is401: () {
          signOut(notify: true);
          return left(failure);
        },
        is41101: () => left(failure),
        // Unverified phone number
        is4031: () async {
          cachePhone(Phone(failure.data?['phone'] as String?));
          return left(failure);
        },
        // Else proceed with local fetch
        orElse: () async => right((await local.getUser()).fold(
          () => none(),
          (dto) => some(dto?.domain),
        )),
      );
    }

    // Cache incoming user data
    await dto?.let((it) => local.cacheAuthenticatedUser(it));

    try {
      // Check if device has good connection
      final conn = await checkInternetConnectivity();

      // Fetch Updated user info from remote source
      return await conn.fold(
        () async => (await remote.getUser()).fold(
          // If could not retrieve data form server, fetch local
          (f) => _local(f),
          (dto) async {
            // Cache updated user data
            await dto?.let((it) => local.cacheAuthenticatedUser(it));
            return right(some(dto?.domain));
          },
        ),
        (f) async {
          return (await _local(f)).fold(
            (_) => left(f),
            (o) => o.fold(() => left(f), (_) => right(o)),
          );
        },
      );
    } on NetworkFailure catch (e) {
      return (await _local(e.response)).fold(
        (_) => left(e.response),
        (o) => o.fold(() => left(e.response), (_) => right(o)),
      );
    }
  }

  @override
  Future<AppHttpResponse> sendPasswordResetInstructions(Phone phone) async {
    try {
      final _conn = await checkInternetConnectivity();

      final result = await _conn.fold(
        () async => remote.sendPasswordResetMessage(phone.getOrEmpty),
        (f) => throw f,
      );

      final response = AppHttpResponse.fromJson(result.data as Map<String, dynamic>);

      response.response.mapOrNull(success: (_) => cachePhone(phone));

      return response;
    } on AppHttpResponse catch (ex, tr) {
      return handleException(ex, trace: tr, notify: false);
    } on AppNetworkException catch (ex, tr) {
      return handleException(ex.asResponse(), trace: tr, notify: false);
    }
  }

  @override
  Future<void> signOut({
    bool notify = true,
    bool regular = true,
    bool google = true,
    bool apple = true,
  }) async {
    try {
      removePhone();
      removeEmail();

      await Future.wait([
        // if (google) googleSignIn.signOut(),
        if (regular) local.signOut(),
      ]);

      if (regular) await remote.signOut();

      // Notify listeners about sign-out
      // if (notify) await sink(right(none()));
      if (notify) {
        await sink(right(none()));
        await update(none());
      }
    } catch (_) {
      // Delete local cache
      await Future.wait([local.signOut()]);
      // Notify listeners about sign-out
      if (notify) await sink(right(none()));
    }
  }

  @override
  Future<void> sink([Either<AppHttpResponse, Option<User?>>? it]) async => __controller.sink.add(it ?? await currentUser);

  @override
  Future<void> sleep() async {
    try {
      await remote.timeout();
    } on AppHttpResponse catch (ex) {
      log.w(ex);
    } on AppNetworkException catch (ex) {
      log.w(ex.asResponse());
    }
  }

  @override
  Future<void> update(Option<User?> user) async => __userChagesController.sink.add(user);

  @override
  Future<AppHttpResponse?> updatePassword(User user) async {
    try {
      final _conn = await checkInternetConnectivity();

      final _response = await _conn.fold(
        () => remote.updatePassword(
          current: user.oldPassword.getOrEmpty,
          newPassword: user.password.getOrEmpty,
          confirmation: user.passwordConfirmation.getOrEmpty,
        ),
        (f) => throw f,
      );

      final response = AppHttpResponse.fromDioResponse(_response);

      await response.success((_) async {
        final cached = await retrieveAndCacheUpdatedUser();
        await cached.fold((l) => null, (user) async => update(user));
      });

      return response;
    } on AppHttpResponse catch (ex, tr) {
      return handleException(ex, trace: tr, notify: false);
    } on AppNetworkException catch (ex, tr) {
      return handleException(ex.asResponse(), trace: tr, notify: false);
    }
  }

  @override
  Future<AppHttpResponse> updatePhone(Phone? phone) async {
    try {
      // Check if device has good connection
      final _conn = await checkInternetConnectivity();

      final _result = await _conn.fold(
        () => remote.updatePhoneNumber(phone?.getOrNull),
        (f) => throw f,
      );

      final response = AppHttpResponse.fromJson(_result.data as Map<String, dynamic>);

      response.response.mapOrNull(success: (_) => cachePhone(phone));

      return response;
    } on AppHttpResponse catch (ex, tr) {
      return handleException(ex, trace: tr, notify: false);
    } on AppNetworkException catch (ex, tr) {
      return handleException(ex.asResponse(), trace: tr, notify: false);
    }
  }

  @override
  Future<AppHttpResponse?> updateProfile(User user) async {
    try {
      // Check if device has good connection
      await checkInternetConnectivity();

      final _response = await remote.updateProfile(UserDTO.fromDomain(user));

      final updated = RegisteredUserDTO.fromJson(_response.data as Map<String, dynamic>);

      final response = AppHttpResponse.fromDioResponse(_response);

      await response?.response.mapOrNull(success: (_) async => await updated.dto?.let((it) => local.cacheAuthenticatedUser(it)));

      if (updated.domain != null) await update(some(updated.domain));

      return response;
    } on AppHttpResponse catch (ex, tr) {
      return handleException(ex, trace: tr, notify: false);
    } on AppNetworkException catch (ex, tr) {
      return handleException(ex.asResponse(), trace: tr, notify: false);
    }
  }

  @override
  Future<Option<AppHttpResponse?>> updateSocialsProfile(User user) async {
    try {
      // Check if device has good connection
      final _conn = await checkInternetConnectivity();

      final _response = await _conn.fold(
        () => remote.updateSocialsProfile(
          UserDTO.fromDomain(user),
        ),
        (f) => throw f,
      );

      final _return = AppHttpResponse.fromJson(_response.data as Map<String, dynamic>);

      return await _return.response.map(
        info: (_) => none(),
        error: (_) => none(),
        success: (_) async {
          final _userOrFailure = await currentUser;
          // await sink(_userOrFailure);
          return _userOrFailure.fold((failure) => optionOf(failure), (_) => none());
        },
      );
    } on AppHttpResponse catch (ex, trace) {
      return optionOf(await handleException(ex, trace: trace));
    } on AppNetworkException catch (ex, trace) {
      return optionOf(await handleException(ex.asResponse(), trace: trace));
    }
  }

  @override
  Future<AppHttpResponse> verifyPhoneNumber(Phone phone, OTPCode token) async {
    try {
      // Check if device has good connection
      final _conn = await checkInternetConnectivity();

      final result = await _conn.fold(
        () => remote.verifyPhoneNumber(phone: phone.getOrNull, token: token.getOrNull),
        (f) => throw f,
      );

      // verification successful, fetch & cache fresh user data
      final response = AppHttpResponse.fromJson(result.data as Map<String, dynamic>);

      await response.response.mapOrNull(
        success: (_) async {
          // Remove phone number from cache
          removePhone();
          removeEmail();

          final cached = await retrieveAndCacheUpdatedUser();

          await cached.fold((l) => null, (user) async {
            await sink(cached);
            await update(user);
          });
        },
      );

      return response;
    } on AppHttpResponse catch (ex, tr) {
      return handleException(ex, trace: tr, notify: false);
    } on AppNetworkException catch (ex, tr) {
      return handleException(ex.asResponse(), trace: tr, notify: false);
    }
  }
}
