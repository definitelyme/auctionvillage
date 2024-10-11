library auth_cubit.dart;

import 'dart:async';
import 'dart:io';

import 'package:auctionvillage/core/data/index.dart';
import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/core/domain/validator/validator.dart';
import 'package:auctionvillage/core/presentation/managers/managers.dart';
import 'package:auctionvillage/features/auth/domain/index.dart';
import 'package:auctionvillage/features/auth/presentation/managers/managers.dart';
import 'package:auctionvillage/features/dashboard/presentation/managers/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:cloudinary_public/cloudinary_public.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

@injectable
class AuthCubit extends BaseCubit<AuthState> {
  final AuthFacade _auth;

  final CloudinaryPublic _cloudinary;
  final _picker = ImagePicker();
  User? _temp = User.blank();

  AuthCubit(this._auth, this._cloudinary) : super(AuthState.initial());

  void stopLoadingOnTimeout() {
    Future.delayed(Duration(milliseconds: env.receiveTimeout), () => emit(state.copyWith(isLoading: false)));
  }

  void initProfileUpdate([User? user]) async {
    toggleLoading(true, none());

    emit(state.copyWith(user: user ?? state.user));

    phoneNumberChanged(user?.phone.getOrNull ?? '', format: true);

    final response = await _auth.currentUser;

    emit(response.fold(
      (f) => state.copyWith(status: optionOf(f), isLoading: false),
      (o) {
        _temp = o.getOrNull;
        phoneNumberChanged(o.getOrNull?.phone.getOrNull ?? '', format: true);
        return state.copyWith(user: o.getOrNull!, isLoading: false);
      },
    ));
  }

  void initVerify() async {
    var _cache = _auth.getCachePhone();

    if (_cache == null) {
      final user = await _auth.user;
      _cache = user.getOrNull?.phone;
    }

    // Resend verification email
    await _cache?.let((it) => _auth.sendPasswordResetInstructions(it));

    emit(state.copyWith.user(phone: _cache ?? state.user.phone));
  }

  void initPhoneUpdate() async {
    toggleLoading(true, none());

    Future.delayed(Duration(milliseconds: env.connectTimeout), () => toggleLoading(false));

    // Retrieve stored / cached phone
    var _phoneNumber = _auth.getCachePhone();

    final user = (await _auth.user).getOrElse(() => state.user);

    if (_phoneNumber?.getOrNull == null) _phoneNumber = user?.phone;

    emit(state.copyWith(user: user!.copyWith(phone: _phoneNumber!), isLoading: false));

    _temp = state.user;

    phoneNumberChanged(user.phone.getOrNull ?? '', format: true);
  }

  void initSocials() async {
    toggleLoading(true, none());

    final _value = await _auth.user;

    _value.fold(
      () {},
      (user) {
        // full name
        final fullName = user?.firstName.getOrNull?.split(' ');
        // first name
        final firstName = fullName != null && fullName.isNotEmpty ? DisplayName(fullName[0]) : user?.firstName;
        final lastName = fullName != null && fullName.length > 1 ? DisplayName(fullName[1]) : user?.lastName;

        if (!isClosed)
          emit(state.copyWith(
            user: user?.copyWith(firstName: firstName!, lastName: lastName!) ?? state.user,
          ));
      },
    );

    if (!isClosed) toggleLoading(false);
  }

  void initReset() {
    final _cache = _auth.getCacheEmail();
    emit(state.copyWith.user(email: _cache ?? state.user.email));
  }

  bool get isDirty => _temp != state.user;

  void toggleLoading([bool? isLoading, Option<AppHttpResponse?>? status]) =>
      emit(state.copyWith(isLoading: isLoading ?? !state.isLoading, status: status ?? state.status));

  void toggleOldPasswordVisibility() => emit(state.copyWith(isOldPasswordHidden: !state.isOldPasswordHidden));

  void togglePasswordVisibility() => emit(state.copyWith(
      isPasswordHidden: !state.isPasswordHidden,
      isPasswordConfirmationHidden: state.isPasswordConfirmationHidden ? !state.isPasswordHidden : state.isPasswordConfirmationHidden));

  void togglePasswordconfirmationVisibility() => emit(state.copyWith(isPasswordConfirmationHidden: !state.isPasswordConfirmationHidden));

  void firstNameChanged(String value) => emit(state.copyWith.user(firstName: DisplayName(value.trim())));

  void lastNameChanged(String value) => emit(state.copyWith.user(lastName: DisplayName(value.trim())));

  void emailChanged(String value) => emit(state.copyWith.user(email: EmailAddress(value.trim())));

  void countryChanged([Country? country]) => phoneNumberChanged(state.phoneTextController.text, country: country);

  void oldPasswordChanged(String value) => emit(state.copyWith.user(oldPassword: Password(value)));

  void passwordChanged(String value, {FieldValidation? mode}) => emit(state.copyWith.user(password: Password(value, mode: mode)));

  void passwordConfirmationChanged(String value, {FieldValidation? mode}) =>
      emit(state.copyWith.user(passwordConfirmation: Password(value, mode: mode)));

  void toggleAcceptTerms([bool? value]) => emit(state.copyWith(acceptedTerms: value ?? !state.acceptedTerms));

  void billingAddressChanged(String value) => emit(state.copyWith.user(billingAddress: BasicTextField(value)));

  void phoneNumberChanged(String value, {Country? country, bool format = true}) async {
    final _country = country ?? state.user.phone.country;

    final phoneNumber = await Phone.parseString(value, country: _country, format: format);

    final newText = phoneNumber?.getOrNull ?? value;

    emit(state.copyWith(
      user: state.user.copyWith(phone: Phone(newText, country: _country)),
      phoneTextController: state.phoneTextController
        ..value = TextEditingValue(
          text: newText,
          selection: TextSelection.fromPosition(TextPosition(offset: newText.length)),
        ),
    ));
  }

  void otpCodeChanged(String value) => emit(state.copyWith(code: OTPCode(value, length: AuthState.OTP_CODE_LENGTH)));

  void createAccount() async {
    // Enable form validation
    emit(state.copyWith(validate: true, status: none()));

    if (!state.acceptedTerms) {
      return emit(state.copyWith(
        status: some(AppHttpResponse.failure('Please accept the Terms of Use!')),
        isLoading: false,
      ));
    }

    if (state.user.signup.isNone()) {
      toggleLoading(true);

      // stopLoadingOnTimeout();

      // Attempt Signup
      final result = await _auth.createAccount(state.user);

      // emit status
      emit(state.copyWith(validate: result?.isFailure ?? false, status: optionOf(result)));

      if (result?.isFailure ?? false) toggleLoading(false);
    }

    // toggleLoading(false);
  }

  void login() async {
    emit(state.copyWith(validate: true, status: none()));

    if (kDebugMode && state.user.login.isSome()) {
      final _email = env.flavor.maybeWhen(
        orElse: () => 'av.test-prod@forx.anonaddy.com',
        beta: () => 'av.test-beta@forx.anonaddy.com',
        dev: () => 'av.test-dev@forx.anonaddy.com',
      );
      const _password = 'password';
      emailChanged(_email);
      passwordChanged(_password);
    }

    if (state.user.login.isNone()) {
      toggleLoading(true);

      final result = await _auth.login(email: state.user.email, password: state.user.password);

      emit(state.copyWith(validate: result?.isFailure ?? false, status: optionOf(result)));

      if (result?.isFailure ?? false) toggleLoading(false);
    }
  }

  Future<void> verifyPhone() async {
    // Enable form validation
    emit(state.copyWith(isLoading: true, validate: true, status: none()));

    if (state.user.phone.isValid && state.code.isValid) {
      stopLoadingOnTimeout();

      final result = await _auth.verifyPhoneNumber(state.user.phone.formatted!, state.code);

      emit(state.copyWith(
        validate: result.isFailure,
        status: optionOf(result.copyWith(
          response: result.response.maybeMap(
            success: (s) => s.copyWith(pop: true),
            orElse: () => result.response,
          ),
        )),
      ));
    }

    toggleLoading(false);
  }

  Future<bool> forgotPassword([bool pop = true]) async {
    // Enable form validation
    emit(state.copyWith(isLoading: true, validate: true, status: none()));

    AppHttpResponse? result;

    if (state.user.phone.isValid) {
      final phone = state.user.phone.formatted?.getOrNull != null ? state.user.phone.formatted! : state.user.phone;

      stopLoadingOnTimeout();

      result = await _auth.sendPasswordResetInstructions(phone);

      emit(state.copyWith(
        validate: result.isFailure,
        status: optionOf(result.copyWith(
          response: result.response.maybeMap(
            success: (s) => s.copyWith(pop: pop),
            orElse: () => result!.response,
          ),
        )),
      ));
    }

    toggleLoading(false);

    return result?.response.mapOrNull(success: (_) => true) ?? false;
  }

  void resetPassword() async {
    // Enable form validation
    emit(state.copyWith(isLoading: true, validate: true, status: none()));

    if (state.user.reset.isNone() && state.code.isValid && state.user.passwordMatches) {
      final result = await _auth.confirmPasswordReset(
        code: state.code,
        phone: state.user.phone.formatted!,
        newPassword: state.user.password,
        confirmation: state.user.passwordConfirmation,
      );

      emit(state.copyWith(
        validate: result.isFailure,
        status: optionOf(result.copyWith(
          response: result.response.maybeMap(
            success: (s) => s.copyWith(pop: true),
            orElse: () => result.response,
          ),
        )),
      ));
    }

    toggleLoading(false);
  }

  void updateProfile() async {
    // Enable form validation
    emit(state.copyWith(isLoading: true, validate: true, status: none()));

    if (state.user.profile.isNone()) {
      stopLoadingOnTimeout();

      final result = await _auth.updateProfile(state.user);

      emit(state.copyWith(status: optionOf(result)));
    }

    toggleLoading(false);
  }

  Future<void> sendPhoneUpdateOTP([bool shouldPop = true]) async {
    // Enable form validation
    emit(state.copyWith(isLoading: true, validate: true, status: none()));

    if (state.user.phone.isValid) {
      stopLoadingOnTimeout();

      final result = await _auth.updatePhone(state.user.phone.formatted!);

      emit(state.copyWith(
        validate: result.isFailure,
        status: optionOf(result.copyWith(
          response: result.response.maybeMap(
            success: (s) => s.copyWith(pop: shouldPop),
            orElse: () => result.response,
          ),
        )),
      ));
    }

    toggleLoading(false);
  }

  void sleep() async {
    toggleLoading();
    // Enable form validation
    emit(state.copyWith(validate: true, status: none()));

    await _auth.sleep();

    toggleLoading();
  }

  void googleAuth([bool notify = false]) async {
    emit(state.copyWith(isGoogleAuthLoading: true, status: none()));

    stopLoadingOnTimeout();

    final result = await _auth.googleAuthentication(notify);

    emit(state.copyWith(isGoogleAuthLoading: false, status: result));
  }

  void appleAuth([bool notify = false]) async {
    emit(state.copyWith(isAppleAuthLoading: true, status: none()));

    stopLoadingOnTimeout();

    final result = await _auth.appleAuthentication(notify);

    emit(state.copyWith(isAppleAuthLoading: false, status: result));
  }

  void updateSocialsProfile() async {
    toggleLoading(true, none());

    Option<AppHttpResponse?> result;

    // Enable form validation
    emit(state.copyWith(validate: true, status: none()));

    if (state.user.socials.isNone()) {
      result = await _auth.updateSocialsProfile(state.user);

      emit(state.copyWith(status: result));

      await _auth.sink();
    }

    toggleLoading(false);
  }

  void updatePassword() async {
    emit(state.copyWith(isLoading: true, validate: true, status: none()));

    if (state.user.passwordUpdate.isNone() && state.user.passwordMatches) {
      stopLoadingOnTimeout();
      final result = await _auth.updatePassword(state.user);
      emit(state.copyWith(validate: result?.isFailure ?? false, status: optionOf(result)));
    }

    toggleLoading(false);
  }

  Future<void> deleteAccount() async {
    toggleLoading(true, none());

    try {
      stopLoadingOnTimeout();
      final result = await _auth.deleteAccount();
      emit(state.copyWith(status: optionOf(result), isLoading: false));
    } catch (e) {
      try {
        await navigator.navigatorKey.currentContext?.let((it) async {
          final _bottomCubit = it.read<BottomNavigationCubit>();
          await it.read<AuthWatcherCubit>().signOut();
          _bottomCubit.reset();
        });
      } catch (_) {
        if (kDebugMode) rethrow;
      }
    }

    toggleLoading(false);
  }
}

extension AuthCubitX on AuthCubit {
  void _reportErrorToUser(String? msg) {
    if (msg == null) return;

    emit(state.copyWith(status: some(AppHttpResponse.failure(msg)), isUploadingImage: false));
  }

  void pickCamera() async {
    emit(state.copyWith(isUploadingImage: true));

    try {
      final _result = await _picker.pickImage(
        source: ImageSource.camera,
        maxWidth: Const.maxImageUploadWidth,
        maxHeight: Const.maxImageUploadHeight,
        imageQuality: Const.imageQuality,
      );
      _uploadImage(_result);
    } on MissingPluginException catch (e) {
      _reportErrorToUser(env.flavor.maybeWhen(orElse: () => 'Photo upload failed!', dev: () => e.message));
    } catch (e) {
      _reportErrorToUser(env.flavor.maybeWhen(orElse: () => 'Error: $e', dev: () => '$e'));
    }
  }

  void pickGallery() async {
    emit(state.copyWith(isUploadingImage: true));

    try {
      final _result = await _picker.pickImage(
        source: ImageSource.gallery,
        maxWidth: Const.maxImageUploadWidth,
        maxHeight: Const.maxImageUploadHeight,
        imageQuality: Const.imageQuality,
      );
      _uploadImage(_result);
    } on MissingPluginException catch (e) {
      _reportErrorToUser(env.flavor.maybeWhen(orElse: () => 'Photo upload failed!', dev: () => e.message));
    } catch (e) {
      _reportErrorToUser(env.flavor.maybeWhen(orElse: () => 'Error: $e', dev: () => '$e'));
    }
  }

  void _uploadImage(XFile? xfile) async {
    final File? file;

    var fileSize = 0;

    if (xfile == null)
      file = await _attemptFileRetrieval(_picker);
    else {
      file = File(xfile.path);
      fileSize = file.lengthSync();
    }

    if (fileSize > Const.maxImageUploadSize) {
      _reportErrorToUser('Max. image upload size is ${(Const.maxImageUploadSize / 1e+6).ceil()}MB');
      return;
    }

    if (file != null) {
      try {
        final conn = await connection();

        await conn.fold(
          () async {
            final uploadableMedia = UploadableMedia(MediaField.network(null), id: state.user.id.value);

            final response = await _cloudinary.uploadFile(
              CloudinaryFile.fromFile(file!.path, resourceType: CloudinaryResourceType.Image),
              uploadPreset: env.uploadPreset,
              onProgress: (count, total) => emit(state.copyWith.user(
                photo: uploadableMedia.copyWith(progress: SendProgressCallback(count, total)),
              )),
            );

            final _uploaded = uploadableMedia.copyWith(image: MediaField.network(response.secureUrl));

            emit(state.copyWith(user: state.user.copyWith(photo: _uploaded), isUploadingImage: false));
          },
          (f) async => emit(state.copyWith(status: optionOf(f), isUploadingImage: false)),
        );
      } on CloudinaryException catch (e, tr) {
        _reportErrorToUser('Error ${e.statusCode}: ${e.message ?? e.responseString}');

        unawaited(Utils.report(e, tr));
      }
    }

    emit(state.copyWith(isUploadingImage: false));
  }

  Future<File?> _attemptFileRetrieval(ImagePicker? picker) async {
    if (picker == null || App.platform.isIOS) return null;
    final _response = await _picker.retrieveLostData();
    if (!_response.isEmpty && _response.file != null) return File(_response.file!.path);
    return null;
  }
}
