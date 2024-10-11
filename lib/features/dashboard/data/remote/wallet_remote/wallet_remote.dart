library wallet_remote.dart;

import 'package:auctionvillage/core/data/index.dart';
import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/features/auth/data/models/index.dart';
import 'package:auctionvillage/features/dashboard/data/models/models.dart';
import 'package:auctionvillage/features/dashboard/data/models/user_wallet/bank_account/bank_account.dataclass.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:dio/dio.dart' hide Headers;
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'wallet_remote.g.dart';

@lazySingleton
@RestApi(parser: Parser.FlutterCompute)
abstract class WalletRemote {
  @factoryMethod
  factory WalletRemote(AppHttpClient dio) = _WalletRemote;

  @GET(EndPoints.GET_USER_DEBIT_CARD)
  Future<DebitCardDTO> getDebitCard();

  @PUT(EndPoints.ADD_DEBIT_CARD)
  Future<AppHttpResponse> addCard(@Path() String id, @Body() DebitCardDTOData card);

  @POST(EndPoints.FUND_WALLET)
  Future<AppHttpResponse> fundWallet(@Field('amount') String amount, {@Field('reference') String? reference});

  @GET(EndPoints.VERIFY_PAYSTACK_TRANSACTION)
  Future<TransactionDetailDTO> verifyPaystackTransaction(
    @Header('Authorization') String authorization, {
    @Header('Content-Type') String contentType = 'application/json',
    @Path('reference') required String reference,
  });

  @GET(EndPoints.VERIFY_FLW_TRANSACTION)
  Future<TransactionDetailDTO> verifyFlwTransaction(
    @Header('Authorization') String authorization, {
    @Header('Content-Type') String contentType = 'application/json',
    @Path('reference') required String reference,
  });

  @POST(EndPoints.VERIFY_TRANSACTION)
  Future<AppHttpResponse> verifyTransaction(@Body() TransactionDetailData dto);

  @POST(EndPoints.WITHDRAW_WALLET)
  Future<AppHttpResponse> withdraw(
    @Field('amount') int amount, {
    @Field('account_number') required String? accountNumber,
    @Field('bank_code') String? code,
    @Field('bank_name') String? bankName,
    @Field('account_bank') String? accountBank,
    @Field('pin') required String? withdrawalPin,
  });

  @POST(EndPoints.SETUP_WITHDRAWAL_PIN)
  Future<AppHttpResponse> setupPin({
    @Field('pin') required String pin,
    @Field('pinConfirmation') required String pinConfirmation,
    @Field('code') required String otpCode,
    @Field('securityQuestion') required String securityQuestion,
    @Field('securityQuestionAnswer') required String securityAnswer,
  });

  @GET(EndPoints.GET_BANKS_LIST)
  Future<BankDTO> banks(
    @Header('Authorization') String authorization, {
    @Path('iso') String? iso = Country.defaultISO,
    @Header('Content-Type') String contentType = 'application/json',
  });

  @GET(EndPoints.USER_WALLET)
  Future<UserWalletDTO> userWallet();

  @GET(EndPoints.GET_USER)
  Future<RegisteredUserDTO> hasAddedPin();

  @POST(EndPoints.RESOLVE_BANK_ACCOUNT)
  Future<BankAccountDTO> resolveBankAccount(
    @Field('account_number') String accountNumber,
    @Field('account_bank') String bankCode, {
    @Header('Authorization') required String authorization,
    @Header('Content-Type') String contentType = 'application/json',
  });

  @GET(EndPoints.WALLET_ACTIVITIES)
  Future<UserWalletDTO> walletActivities(@Path('id') String userId);

  @GET(EndPoints.FETCH_PREDEFINED_QUESTIONS)
  Future<SecurityQuestionListDTO> fetchSecurityQuestions([@Query('all') bool all = true]);

  @GET(EndPoints.GET_USER_SECURITY_QUESTION)
  Future<SecurityQuestionDTO> getUserSecurityQuestion();
}
