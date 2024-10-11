library auth_provider.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'auth_provider.hive.dart';

@HiveType(typeId: 2)
class AuthProvider {
  static const AuthProvider apple = _$apple;
  static const AuthProvider facebook = _$facebook;
  static const AuthProvider google = _$google;
  static const AuthProvider regular = _$regular;
  static const AuthProvider twitter = _$twitter;

  @HiveField(0)
  final String name;

  factory AuthProvider(String name) => AuthProvider._(name);

  const AuthProvider._(this.name);

  static List<AuthProvider> get socials => [facebook, twitter];

  static void registerAdapter() => Hive.registerAdapter(AuthProviderAdapter());

  static AuthProvider valueOf(String name) => _$authProviderValueOf(name);

  @override
  bool operator ==(other) {
    return identical(other, this) ||
        (other.runtimeType == runtimeType && other is AuthProvider && const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(name));

  @override
  String toString() => name;
}

class AuthProviderSerializer implements JsonConverter<AuthProvider?, String?> {
  const AuthProviderSerializer();

  @override
  AuthProvider fromJson(String? value) => AuthProvider.valueOf('$value');

  @override
  String? toJson(AuthProvider? instance) => instance?.name;
}

const AuthProvider _$regular = AuthProvider._('regular');
const AuthProvider _$google = AuthProvider._('google');
const AuthProvider _$facebook = AuthProvider._('facebook');
const AuthProvider _$twitter = AuthProvider._('twitter');
const AuthProvider _$apple = AuthProvider._('apple');

AuthProvider _$authProviderValueOf(String name) {
  switch (name) {
    case 'regular':
      return _$regular;
    case 'google':
      return _$google;
    case 'facebook':
      return _$facebook;
    case 'twitter':
      return _$twitter;
    case 'apple':
      return _$apple;
    default:
      return _$regular;
  }
}

extension AuthProviderX on AuthProvider {
  String get eventName => when(
        regular: () => 'email',
        google: () => name,
        facebook: () => name,
        twitter: () => name,
        apple: () => name,
      );

  T when<T>({
    required T Function() regular,
    required T Function() google,
    required T Function() facebook,
    required T Function() twitter,
    required T Function() apple,
  }) {
    if (this == AuthProvider.regular)
      return regular.call();
    else if (this == AuthProvider.google)
      return google.call();
    else if (this == AuthProvider.facebook)
      return facebook.call();
    else if (this == AuthProvider.twitter)
      return twitter.call();
    else if (this == AuthProvider.apple)
      return apple.call();
    else
      return regular.call();
  }

  T? maybeWhen<T>({
    T Function()? regular,
    T Function()? google,
    T Function()? facebook,
    T Function()? twitter,
    T Function()? apple,
    T Function()? orElse,
  }) {
    if (this == AuthProvider.regular)
      return regular?.call();
    else if (this == AuthProvider.google)
      return google?.call();
    else if (this == AuthProvider.facebook)
      return facebook?.call();
    else if (this == AuthProvider.twitter)
      return twitter?.call();
    else if (this == AuthProvider.apple)
      return apple?.call();
    else
      return orElse?.call();
  }

  T whenSocial<T>({
    T Function(AuthProvider)? handler,
    required T Function() orElse,
  }) {
    if (this == AuthProvider.facebook || this == AuthProvider.twitter)
      return handler?.call(this) ?? orElse.call();
    else
      return orElse.call();
  }
}
