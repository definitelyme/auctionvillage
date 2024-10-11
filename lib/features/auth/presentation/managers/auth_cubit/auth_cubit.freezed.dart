// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of auth_cubit.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isUploadingImage => throw _privateConstructorUsedError;
  bool get validate => throw _privateConstructorUsedError;
  bool get isPasswordHidden => throw _privateConstructorUsedError;
  bool get isOldPasswordHidden => throw _privateConstructorUsedError;
  bool get isPasswordConfirmationHidden => throw _privateConstructorUsedError;
  bool get isGoogleAuthLoading => throw _privateConstructorUsedError;
  bool get isAppleAuthLoading => throw _privateConstructorUsedError;
  OTPCode get code => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;
  TextEditingController get phoneTextController =>
      throw _privateConstructorUsedError;
  bool get acceptedTerms => throw _privateConstructorUsedError;
  Option<AppHttpResponse?> get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isUploadingImage,
      bool validate,
      bool isPasswordHidden,
      bool isOldPasswordHidden,
      bool isPasswordConfirmationHidden,
      bool isGoogleAuthLoading,
      bool isAppleAuthLoading,
      OTPCode code,
      User user,
      TextEditingController phoneTextController,
      bool acceptedTerms,
      Option<AppHttpResponse?> status});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isUploadingImage = null,
    Object? validate = null,
    Object? isPasswordHidden = null,
    Object? isOldPasswordHidden = null,
    Object? isPasswordConfirmationHidden = null,
    Object? isGoogleAuthLoading = null,
    Object? isAppleAuthLoading = null,
    Object? code = null,
    Object? user = null,
    Object? phoneTextController = null,
    Object? acceptedTerms = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isUploadingImage: null == isUploadingImage
          ? _value.isUploadingImage
          : isUploadingImage // ignore: cast_nullable_to_non_nullable
              as bool,
      validate: null == validate
          ? _value.validate
          : validate // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordHidden: null == isPasswordHidden
          ? _value.isPasswordHidden
          : isPasswordHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      isOldPasswordHidden: null == isOldPasswordHidden
          ? _value.isOldPasswordHidden
          : isOldPasswordHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordConfirmationHidden: null == isPasswordConfirmationHidden
          ? _value.isPasswordConfirmationHidden
          : isPasswordConfirmationHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      isGoogleAuthLoading: null == isGoogleAuthLoading
          ? _value.isGoogleAuthLoading
          : isGoogleAuthLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isAppleAuthLoading: null == isAppleAuthLoading
          ? _value.isAppleAuthLoading
          : isAppleAuthLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as OTPCode,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      phoneTextController: null == phoneTextController
          ? _value.phoneTextController
          : phoneTextController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      acceptedTerms: null == acceptedTerms
          ? _value.acceptedTerms
          : acceptedTerms // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Option<AppHttpResponse?>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$_AuthStateCopyWith(
          _$_AuthState value, $Res Function(_$_AuthState) then) =
      __$$_AuthStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isUploadingImage,
      bool validate,
      bool isPasswordHidden,
      bool isOldPasswordHidden,
      bool isPasswordConfirmationHidden,
      bool isGoogleAuthLoading,
      bool isAppleAuthLoading,
      OTPCode code,
      User user,
      TextEditingController phoneTextController,
      bool acceptedTerms,
      Option<AppHttpResponse?> status});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_AuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthState>
    implements _$$_AuthStateCopyWith<$Res> {
  __$$_AuthStateCopyWithImpl(
      _$_AuthState _value, $Res Function(_$_AuthState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isUploadingImage = null,
    Object? validate = null,
    Object? isPasswordHidden = null,
    Object? isOldPasswordHidden = null,
    Object? isPasswordConfirmationHidden = null,
    Object? isGoogleAuthLoading = null,
    Object? isAppleAuthLoading = null,
    Object? code = null,
    Object? user = null,
    Object? phoneTextController = null,
    Object? acceptedTerms = null,
    Object? status = null,
  }) {
    return _then(_$_AuthState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isUploadingImage: null == isUploadingImage
          ? _value.isUploadingImage
          : isUploadingImage // ignore: cast_nullable_to_non_nullable
              as bool,
      validate: null == validate
          ? _value.validate
          : validate // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordHidden: null == isPasswordHidden
          ? _value.isPasswordHidden
          : isPasswordHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      isOldPasswordHidden: null == isOldPasswordHidden
          ? _value.isOldPasswordHidden
          : isOldPasswordHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordConfirmationHidden: null == isPasswordConfirmationHidden
          ? _value.isPasswordConfirmationHidden
          : isPasswordConfirmationHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      isGoogleAuthLoading: null == isGoogleAuthLoading
          ? _value.isGoogleAuthLoading
          : isGoogleAuthLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isAppleAuthLoading: null == isAppleAuthLoading
          ? _value.isAppleAuthLoading
          : isAppleAuthLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as OTPCode,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      phoneTextController: null == phoneTextController
          ? _value.phoneTextController
          : phoneTextController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      acceptedTerms: null == acceptedTerms
          ? _value.acceptedTerms
          : acceptedTerms // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Option<AppHttpResponse?>,
    ));
  }
}

/// @nodoc

class _$_AuthState extends _AuthState with DiagnosticableTreeMixin {
  const _$_AuthState(
      {this.isLoading = false,
      this.isUploadingImage = false,
      this.validate = false,
      this.isPasswordHidden = true,
      this.isOldPasswordHidden = true,
      this.isPasswordConfirmationHidden = true,
      this.isGoogleAuthLoading = false,
      this.isAppleAuthLoading = false,
      required this.code,
      required this.user,
      required this.phoneTextController,
      this.acceptedTerms = false,
      this.status = const None()})
      : super._();

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isUploadingImage;
  @override
  @JsonKey()
  final bool validate;
  @override
  @JsonKey()
  final bool isPasswordHidden;
  @override
  @JsonKey()
  final bool isOldPasswordHidden;
  @override
  @JsonKey()
  final bool isPasswordConfirmationHidden;
  @override
  @JsonKey()
  final bool isGoogleAuthLoading;
  @override
  @JsonKey()
  final bool isAppleAuthLoading;
  @override
  final OTPCode code;
  @override
  final User user;
  @override
  final TextEditingController phoneTextController;
  @override
  @JsonKey()
  final bool acceptedTerms;
  @override
  @JsonKey()
  final Option<AppHttpResponse?> status;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState(isLoading: $isLoading, isUploadingImage: $isUploadingImage, validate: $validate, isPasswordHidden: $isPasswordHidden, isOldPasswordHidden: $isOldPasswordHidden, isPasswordConfirmationHidden: $isPasswordConfirmationHidden, isGoogleAuthLoading: $isGoogleAuthLoading, isAppleAuthLoading: $isAppleAuthLoading, code: $code, user: $user, phoneTextController: $phoneTextController, acceptedTerms: $acceptedTerms, status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('isUploadingImage', isUploadingImage))
      ..add(DiagnosticsProperty('validate', validate))
      ..add(DiagnosticsProperty('isPasswordHidden', isPasswordHidden))
      ..add(DiagnosticsProperty('isOldPasswordHidden', isOldPasswordHidden))
      ..add(DiagnosticsProperty(
          'isPasswordConfirmationHidden', isPasswordConfirmationHidden))
      ..add(DiagnosticsProperty('isGoogleAuthLoading', isGoogleAuthLoading))
      ..add(DiagnosticsProperty('isAppleAuthLoading', isAppleAuthLoading))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('user', user))
      ..add(DiagnosticsProperty('phoneTextController', phoneTextController))
      ..add(DiagnosticsProperty('acceptedTerms', acceptedTerms))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isUploadingImage, isUploadingImage) ||
                other.isUploadingImage == isUploadingImage) &&
            (identical(other.validate, validate) ||
                other.validate == validate) &&
            (identical(other.isPasswordHidden, isPasswordHidden) ||
                other.isPasswordHidden == isPasswordHidden) &&
            (identical(other.isOldPasswordHidden, isOldPasswordHidden) ||
                other.isOldPasswordHidden == isOldPasswordHidden) &&
            (identical(other.isPasswordConfirmationHidden,
                    isPasswordConfirmationHidden) ||
                other.isPasswordConfirmationHidden ==
                    isPasswordConfirmationHidden) &&
            (identical(other.isGoogleAuthLoading, isGoogleAuthLoading) ||
                other.isGoogleAuthLoading == isGoogleAuthLoading) &&
            (identical(other.isAppleAuthLoading, isAppleAuthLoading) ||
                other.isAppleAuthLoading == isAppleAuthLoading) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.phoneTextController, phoneTextController) ||
                other.phoneTextController == phoneTextController) &&
            (identical(other.acceptedTerms, acceptedTerms) ||
                other.acceptedTerms == acceptedTerms) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isUploadingImage,
      validate,
      isPasswordHidden,
      isOldPasswordHidden,
      isPasswordConfirmationHidden,
      isGoogleAuthLoading,
      isAppleAuthLoading,
      code,
      user,
      phoneTextController,
      acceptedTerms,
      status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      __$$_AuthStateCopyWithImpl<_$_AuthState>(this, _$identity);
}

abstract class _AuthState extends AuthState {
  const factory _AuthState(
      {final bool isLoading,
      final bool isUploadingImage,
      final bool validate,
      final bool isPasswordHidden,
      final bool isOldPasswordHidden,
      final bool isPasswordConfirmationHidden,
      final bool isGoogleAuthLoading,
      final bool isAppleAuthLoading,
      required final OTPCode code,
      required final User user,
      required final TextEditingController phoneTextController,
      final bool acceptedTerms,
      final Option<AppHttpResponse?> status}) = _$_AuthState;
  const _AuthState._() : super._();

  @override
  bool get isLoading;
  @override
  bool get isUploadingImage;
  @override
  bool get validate;
  @override
  bool get isPasswordHidden;
  @override
  bool get isOldPasswordHidden;
  @override
  bool get isPasswordConfirmationHidden;
  @override
  bool get isGoogleAuthLoading;
  @override
  bool get isAppleAuthLoading;
  @override
  OTPCode get code;
  @override
  User get user;
  @override
  TextEditingController get phoneTextController;
  @override
  bool get acceptedTerms;
  @override
  Option<AppHttpResponse?> get status;
  @override
  @JsonKey(ignore: true)
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
