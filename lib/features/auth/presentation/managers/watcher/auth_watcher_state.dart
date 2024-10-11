part of 'auth_watcher_cubit.dart';

@freezed
class AuthWatcherState with _$AuthWatcherState {
  const factory AuthWatcherState({
    @Default(false) bool isLoading,
    @Default(false) bool isLoggingOut,
    User? user,
    @Default(None()) Option<User?> option,
    @Default(None()) Option<AppHttpResponse?> status,
  }) = _AuthWatcherState;

  const AuthWatcherState._();

  factory AuthWatcherState.initial() => const AuthWatcherState();
}
