// ignore_for_file: invalid_annotation_target, unused_element

library server_field_errors.dart;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'server_field_errors.g.dart';
part 'server_field_errors.freezed.dart';

@Freezed(when: FreezedWhenOptions.none, map: FreezedMapOptions.none)
class ServerFieldErrors with _$ServerFieldErrors {
  const factory ServerFieldErrors({
    int? code,
    String? message,
    _ErrorMessage? messages,
  }) = _ServerFieldErrors;

  const ServerFieldErrors._();

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory ServerFieldErrors.fromJson(Map<String, dynamic> json) => _$ServerFieldErrorsFromJson(json);
}

@Freezed(when: FreezedWhenOptions.none, map: FreezedMapOptions.none)
class _ErrorMessage with _$_ErrorMessage {
  const _ErrorMessage._();

  const factory _ErrorMessage({
    List<String?>? name,
    @JsonKey(name: 'full_name') List<String?>? fullName,
    @JsonKey(name: 'first_name') List<String?>? firstName,
    @JsonKey(name: 'last_name') List<String?>? lastName,
    List<String?>? token,
    List<String?>? email,
    List<String?>? gender,
    List<String?>? age,
    List<String?>? phone,
    List<String?>? password,
    @JsonKey(name: 'current_password') List<String?>? oldPassword,
    @JsonKey(name: 'password_confirmation') List<String?>? passwordConfirmation,
    List<String?>? code,
    List<String?>? type,
    List<String?>? description,
    List<String?>? amount,
    @JsonKey(name: 'currency_id') List<String?>? currencyId,
    List<String?>? country,
    @JsonKey(name: 'bank_id') List<String?>? bankId,
    List<String?>? plan,
    @JsonKey(name: 'payment_method') List<String?>? paymentMethod,
    @JsonKey(name: 'country_id') List<String?>? countryId,
    List<String?>? state,
    List<String?>? basePrice,
    List<String?>? reservedPrice,
    @JsonKey(name: 'item_name') List<String?>? itemName,
    List<String?>? quantity,
    List<String?>? images,
    @JsonKey(name: 'message') List<String?>? supportMessage,
    @JsonKey(name: 'transactionPin') List<String?>? transactionPin,
    @JsonKey(name: 'confirmTransactionPin') List<String?>? confirmTransactionPin,
  }) = __ErrorMessage;

  factory _ErrorMessage.fromJson(Map<String, dynamic> json) => _$_ErrorMessageFromJson(json);

  // fold each property into an ordered list
  List<String?> get allErrors => [
        ...?name,
        ...?fullName,
        ...?firstName,
        ...?lastName,
        ...?token,
        ...?email,
        ...?gender,
        ...?age,
        ...?phone,
        ...?password,
        ...?oldPassword,
        ...?code,
        ...?type,
        ...?description,
        ...?amount,
        ...?currencyId,
        ...?country,
        ...?bankId,
        ...?plan,
        ...?paymentMethod,
        ...?countryId,
        ...?state,
        ...?basePrice,
        ...?reservedPrice,
        ...?itemName,
        ...?quantity,
        ...?images,
        ...?supportMessage,
        ...?passwordConfirmation,
        ...?transactionPin,
        ...?confirmTransactionPin,
      ];
}
