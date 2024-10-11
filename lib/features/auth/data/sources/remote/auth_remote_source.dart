library auth_remote_source.dart;

import 'package:auctionvillage/core/data/index.dart';
import 'package:auctionvillage/features/auth/data/models/index.dart';
import 'package:auctionvillage/manager/locator/locator.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:injectable/injectable.dart';

@singleton
class AuthRemoteDatasource {
  static const String profileImgKey = 'avatar';
  static const String socialsTokenKey = 'token';

  final AppHttpClient _dio;
  final FirebaseAnalytics _analytics;

  AuthRemoteDatasource(this._dio, this._analytics);

  Future<Response<dynamic>> createUserAccount(UserDTO dto) async {
    // Perform POST request based on role / user_type
    return await _dio.post(EndPoints.REGISTER, data: dto.toJson());
  }

  Future<Response<dynamic>> login({required String? email, required String? password}) async {
    // Convert data to DTO
    final dto = UserDTO(email: email, password: password);
    // Perform POST request based on role / user_type
    return _dio.post(EndPoints.LOGIN, data: dto.toJson());
  }

  Future<dynamic> signOut() async => await _dio.post(EndPoints.LOGOUT);

  Future<Response<dynamic>> timeout() async => await _dio.get(EndPoints.SLEEP);

  Future<Response<dynamic>> resendPhoneVerification(String? phone) {
    // Generate Form Data for request
    final data = UserDTO(phone: phone?.trim().removeNewLines().removeAllBlankSpace()).toJson();
    // Perform POST request based on role / user_type
    return _dio.post(EndPoints.RESEND_PHONE_VERIFICATION, data: data);
  }

  Future<Response<dynamic>> verifyPhoneNumber({
    required String? phone,
    required String? token,
  }) async {
    // Convert data to DTO
    final dto = UserDTO(phone: phone?.trim().removeNewLines().removeAllBlankSpace(), token: token);
    // Perform POST request based on role / user_type
    return _dio.post(EndPoints.CONFIRM_PHONE_VERIFICATION, data: dto.toJson());
  }

  Future<Response<dynamic>> sendPasswordResetMessage(String? phone) async {
    // Generate Form Data for request
    final data = UserDTO(phone: phone?.trim().removeNewLines().removeAllBlankSpace()).toJson();
    // Perform request to send password reset email
    return _dio.post(EndPoints.SEND_PASSWORD_RESET_MESSAGE, data: data);
  }

  Future<Response<dynamic>> confirmPasswordReset(UserDTO dto) async {
    // Perform request to reset user's password
    return _dio.post(EndPoints.CONFIRM_PASSWORD_RESET, data: dto.toJson());
  }

  Future<Response<dynamic>> updateProfile(UserDTO? dto) async {
    final _dto = dto?.copyWith(countryName: null, id: null);
    // Perform PUT request to update user's profile
    return _dio.put('${EndPoints.UPDATE_USER_PROFILE}/${dto?.id}', data: _dto?.toJson());
  }

  Future<Response<dynamic>> updatePhoneNumber(String? phone) {
    // Generate Form Data for request
    final _data = UserDTO(phone: phone?.trim().removeNewLines().removeAllBlankSpace()).toJson();
    // Perform PUT request to update user's profile
    return _dio.post(EndPoints.UPDATE_PHONE, data: _data);
  }

  Future<Response<dynamic>> updatePassword({
    required String? current,
    required String? newPassword,
    required String? confirmation,
  }) {
    // Generate Form Data for request
    final data = UserDTO(oldPassword: current, password: newPassword, confirmation: confirmation).toJson();
    // Perform PUT request to update user's profile
    return _dio.post(EndPoints.UPDATE_PASSWORD, data: data);
  }

  Future<Response<dynamic>> signInWithGoogle(String? token) async {
    return _dio.post(EndPoints.GOOGLE_SIGNIN, data: {socialsTokenKey: token});
  }

  Future<Response<dynamic>> signInWithApple(String? token) async {
    return _dio.post(EndPoints.APPLE_SIGNIN, data: {socialsTokenKey: token});
  }

  Future<Response<dynamic>> updateSocialsProfile(UserDTO dto) async {
    // Perform POST request to update user's profile
    return _dio.post('EndPoints.UPDATE_USER_PROFILE', data: dto.toJson());
  }

  Future<Response<dynamic>> deleteAccount() => _dio.delete(EndPoints.DELETE_USER_ACCOUNT);

  Future<Either<AppHttpResponse, UserDTO?>> getUser() async {
    try {
      final _result = (await getIt<AppHttpClient>().get(EndPoints.GET_USER)).data as Map<String, dynamic>;

      final _response = AppHttpResponse.fromJson(_result);

      if (_result.containsKey('status')) {
        return await _response.response.map(
          info: (info) => left(_response),
          error: (error) => left(_response.copyWith(response: _response.response, data: _result)),
          success: (_) async {
            final user = RegisteredUserDTO.fromJson(_result).data;
            await _analytics.setUserId(id: user?.id, callOptions: AnalyticsCallOptions(global: true));
            return right(user);
          },
        );
      } else {
        final user = RegisteredUserDTO.fromJson(_result).data;
        await _analytics.setUserId(id: user?.id, callOptions: AnalyticsCallOptions(global: true));
        return right(user);
      }
    } on AppHttpResponse catch (e) {
      return left(e);
    } on AppNetworkException catch (e) {
      return left(e.asResponse());
    }
  }
}
