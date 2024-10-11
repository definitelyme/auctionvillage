library auth_facade.dart;

import 'package:auctionvillage/core/data/index.dart';
import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:dartz/dartz.dart';

abstract class AuthFacade {
  Future<Either<AppHttpResponse, Option<User?>>> get currentUser;
  Stream<Either<AppHttpResponse, Option<User?>>> get onAuthStateChanges;
  Stream<Option<User?>> get onUserChanges;
  Future<Option<User?>> get user;

  Future<Option<AppHttpResponse?>> appleAuthentication([bool notify = false]);

  void cacheEmail(EmailAddress? email);

  void cachePhone(Phone? phone);

  Future<Option<AppHttpResponse>> checkInternetConnectivity() => checkConnectivity();

  Future<AppHttpResponse> confirmPasswordReset({
    required Phone phone,
    required OTPCode code,
    required Password newPassword,
    required Password confirmation,
  });

  Future<AppHttpResponse?> createAccount(User user);

  Future<AppHttpResponse?> deleteAccount();

  EmailAddress? getCacheEmail();

  Phone? getCachePhone();

  Future<Option<AppHttpResponse?>> googleAuthentication([bool notify = false]);

  Future<AppHttpResponse> handleException<R>(
    AppHttpResponse e, {
    StackTrace? trace,
    bool notify = true,
  }) async {
    switch (e.reason) {
      case AppNetworkExceptionReason.timedOut:
      case AppNetworkExceptionReason.cancelled:
        return e;
      case AppNetworkExceptionReason.responseError:
      default:
        return await e.fold(
          is401: () async {
            await signOut(notify: notify);
            return e;
          },
          orElse: () async {
            if (notify) await sink(left(e));
            return e;
          },
        );
    }
  }

  Future<AppHttpResponse?> login({
    required EmailAddress email,
    required Password password,
    UserDTO? registered,
  });

  void removeEmail();

  void removePhone();

  Future<Either<AppHttpResponse, Option<User?>>> retrieveAndCacheUpdatedUser({
    UserDTO? dto,
    bool forceGetLocalCache = false,
  });

  Future<AppHttpResponse> sendPasswordResetInstructions(Phone phone);

  Future<void> signOut({
    bool notify = true,
    bool regular = true,
    bool google = true,
    bool apple = true,
  });

  Future<void> sink([Either<AppHttpResponse, Option<User?>> it]);

  Future<void> sleep();

  Future<void> update(Option<User?> user);

  Future<AppHttpResponse?> updatePassword(User user);

  Future<AppHttpResponse> updatePhone(Phone phone);

  Future<AppHttpResponse?> updateProfile(User user);

  Future<Option<AppHttpResponse?>> updateSocialsProfile(User user);

  Future<AppHttpResponse> verifyPhoneNumber(Phone phone, OTPCode token);
}
