import 'package:dartz/dartz.dart';
import 'package:auctionvillage/core/data/response/index.dart';
import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/core/domain/response/index.dart';

typedef TaskAction = void Function(Either<Failure, Option<User?>> either);

mixin WatcherCubit {
  void unsubscribeAuthChanges();

  void unsubscribeUserChanges();

  bool get isAuthenticated;

  User? get user;

  void subscribeToAuthChanges(TaskAction actions);

  void subscribeUserChanges();

  Future<void> signOut();

  Future<void> close();
}

mixin WatcherState {
  bool get isLoading;
  bool get isLoggingOut;
  User? get user;
  Option<User?> get option => throw UnimplementedError();
  Option<AppHttpResponse?> get status;
}
