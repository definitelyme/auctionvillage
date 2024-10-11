// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of access_token.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AccessToken {
  @HiveField(1)
  String? get accessToken => throw _privateConstructorUsedError;
  @HiveField(1)
  set accessToken(String? value) => throw _privateConstructorUsedError;
  @HiveField(2)
  TokenType get tokenType => throw _privateConstructorUsedError;
  @HiveField(2)
  set tokenType(TokenType value) => throw _privateConstructorUsedError;
  @HiveField(3)
  int? get expiryDate => throw _privateConstructorUsedError;
  @HiveField(3)
  set expiryDate(int? value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccessTokenCopyWith<AccessToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccessTokenCopyWith<$Res> {
  factory $AccessTokenCopyWith(
          AccessToken value, $Res Function(AccessToken) then) =
      _$AccessTokenCopyWithImpl<$Res, AccessToken>;
  @useResult
  $Res call(
      {@HiveField(1) String? accessToken,
      @HiveField(2) TokenType tokenType,
      @HiveField(3) int? expiryDate});
}

/// @nodoc
class _$AccessTokenCopyWithImpl<$Res, $Val extends AccessToken>
    implements $AccessTokenCopyWith<$Res> {
  _$AccessTokenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = freezed,
    Object? tokenType = null,
    Object? expiryDate = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      tokenType: null == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as TokenType,
      expiryDate: freezed == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AccessTokenCopyWith<$Res>
    implements $AccessTokenCopyWith<$Res> {
  factory _$$_AccessTokenCopyWith(
          _$_AccessToken value, $Res Function(_$_AccessToken) then) =
      __$$_AccessTokenCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(1) String? accessToken,
      @HiveField(2) TokenType tokenType,
      @HiveField(3) int? expiryDate});
}

/// @nodoc
class __$$_AccessTokenCopyWithImpl<$Res>
    extends _$AccessTokenCopyWithImpl<$Res, _$_AccessToken>
    implements _$$_AccessTokenCopyWith<$Res> {
  __$$_AccessTokenCopyWithImpl(
      _$_AccessToken _value, $Res Function(_$_AccessToken) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = freezed,
    Object? tokenType = null,
    Object? expiryDate = freezed,
  }) {
    return _then(_$_AccessToken(
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      tokenType: null == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as TokenType,
      expiryDate: freezed == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@HiveType(typeId: 3, adapterName: 'AccessTokenAdapter')
class _$_AccessToken extends _AccessToken {
  _$_AccessToken(
      {@HiveField(1) required this.accessToken,
      @HiveField(2) required this.tokenType,
      @HiveField(3) required this.expiryDate})
      : super._();

  @override
  @HiveField(1)
  String? accessToken;
  @override
  @HiveField(2)
  TokenType tokenType;
  @override
  @HiveField(3)
  int? expiryDate;

  @override
  String toString() {
    return 'AccessToken(accessToken: $accessToken, tokenType: $tokenType, expiryDate: $expiryDate)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccessTokenCopyWith<_$_AccessToken> get copyWith =>
      __$$_AccessTokenCopyWithImpl<_$_AccessToken>(this, _$identity);
}

abstract class _AccessToken extends AccessToken {
  factory _AccessToken(
      {@HiveField(1) required String? accessToken,
      @HiveField(2) required TokenType tokenType,
      @HiveField(3) required int? expiryDate}) = _$_AccessToken;
  _AccessToken._() : super._();

  @override
  @HiveField(1)
  String? get accessToken;
  @HiveField(1)
  set accessToken(String? value);
  @override
  @HiveField(2)
  TokenType get tokenType;
  @HiveField(2)
  set tokenType(TokenType value);
  @override
  @HiveField(3)
  int? get expiryDate;
  @HiveField(3)
  set expiryDate(int? value);
  @override
  @JsonKey(ignore: true)
  _$$_AccessTokenCopyWith<_$_AccessToken> get copyWith =>
      throw _privateConstructorUsedError;
}
