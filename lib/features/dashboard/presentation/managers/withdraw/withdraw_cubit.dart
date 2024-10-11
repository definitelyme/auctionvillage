library withdraw_cubit.dart;

import 'package:auctionvillage/core/data/models/index.dart';
import 'package:auctionvillage/core/data/repository/socket_io_client.dart';
import 'package:auctionvillage/core/data/response/index.dart';
import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/core/domain/response/index.dart';
import 'package:auctionvillage/core/presentation/index.dart';
import 'package:auctionvillage/features/auth/presentation/managers/managers.dart';
import 'package:auctionvillage/features/dashboard/data/repositories/util_repository.dart';
import 'package:auctionvillage/features/dashboard/data/repositories/wallet_repository.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/manager/locator/locator.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

part 'withdraw_cubit.freezed.dart';
part 'withdraw_state.dart';

@injectable
class WithdrawCubit extends BaseCubit<WithdrawState> {
  static const int ACCOUNT_NUMBER_LENGTH = 10;
  static const int MINIMUM_WITHDRAWAL_AMOUNT = 100;

  final WalletRepository _walletRepository;
  final UtilRepository _utilsRepository;

  WithdrawCubit(
    this._walletRepository,
    this._utilsRepository,
  ) : super(WithdrawState.initial());

  bool get accountNameIsValid => state.bankAccount?.accountName.getOrNull != null;
  bool get accountNumberIsValid =>
      state.bankAccount?.accountNumber.getOrNull != null && state.bankAccount?.accountNumber.getOrNull?.length == ACCOUNT_NUMBER_LENGTH;

  Country? get currencyIcon {
    try {
      final context = navigator.navigatorKey.currentContext;
      return context?.let((it) => it.read<AuthWatcherCubit>().state.user?.country);
    } catch (_) {
      if (kDebugMode) rethrow;
      return null;
    }
  }

  void watchWithdrawalUpdates([void Function(String?)? onUpdate]) {
    final _withdrawalSocketIOClient = getIt<SocketIOClient>();
    _withdrawalSocketIOClient.connect().on('withdrawal-update', handler: (data, _this) {
      WidgetsBinding.instance.endOfFrame.then((_) {
        onUpdate?.call(state.bankAccount?.accountNumber.getOrNull);
      });

      _withdrawalSocketIOClient.disconnect();
      _withdrawalSocketIOClient.close();
      _withdrawalSocketIOClient.dispose();
    });
  }

  void stopLoadingOnTimeout() {
    Future.delayed(
      Duration(milliseconds: env.receiveTimeout),
      () => emit(state.copyWith(
        isLoading: false,
        validate: false,
        isConfiguringPin: false,
        isRequestingOTP: false,
        isWithdrawing: false,
        isResolvingAccount: false,
        isFetchingSecurityQuestions: false,
      )),
    );
  }

  bool get canWithdraw {
    return state.amount.getExact() >= MINIMUM_WITHDRAWAL_AMOUNT &&
        state.bankAccount != null &&
        (state.bankAccount!.bank != null && accountNumberIsValid && accountNameIsValid);
  }

  void fetchBanks() async {
    emit(state.copyWith(isFetchingBanks: true, status: none()));

    final response = await _walletRepository.getBanks();

    emit(response.fold(
      (f) => state.copyWith(isFetchingBanks: false, status: some(f)),
      (banks) => state.copyWith(
        isFetchingBanks: false,
        banks: banks.sortedWith((a, b) => a.bankName.getOrNull!.compareTo(b.bankName.getOrNull!)),
      ),
    ));
  }

  void fetchSecurityQuestions() async {
    if (state.predefinedQuestions.isNotEmpty()) return;

    emit(state.copyWith(isFetchingSecurityQuestions: true, status: none()));

    final response = await _walletRepository.fetchSecurityQuestions();

    emit(response.fold(
      (f) => state.copyWith(status: optionOf(f), isFetchingSecurityQuestions: false),
      (questions) => state.copyWith(
        predefinedQuestions: questions.plusElementIfAbsent(
          SecurityQuestion.custom(questions.isEmpty() ? '- Provide a Security Question -' : null),
        ),
        isFetchingSecurityQuestions: false,
      ),
    ));
  }

  Future<bool?> hasSetupTransactionPin() async {
    emit(state.copyWith(status: none(), isConfiguringPin: true));

    final response = await _walletRepository.hasSetupTransactionPin();

    emit(response.fold(
      (f) => state.copyWith(status: optionOf(f), isConfiguringPin: false),
      (_) => state.copyWith(isConfiguringPin: false),
    ));

    if (response.isRight()) return response.getOrElse(() => false);

    return null;
  }

  void initPinSetup({bool resetOTP = true}) {
    emit(state.copyWith(
      validate: false,
      isLoading: false,
      isRequestingOTP: false,
      isConfiguringPin: false,
      isFetchingSecurityQuestions: false,
      withdrawalPin: OTPCode(null),
      confirmWithdrawalPin: OTPCode(null),
      otpCode: resetOTP ? OTPCode(null) : state.otpCode,
    ));

    state.pinController.clear();
    state.pinConfirmationController.clear();
  }

  void sendOTP(OTPType type) async {
    emit(state.copyWith(isRequestingOTP: true, status: none()));

    stopLoadingOnTimeout();

    final result = await _utilsRepository.sendOTP(type);

    emit(state.copyWith(status: optionOf(result), isRequestingOTP: false));
  }

  void resolveBankAccount(String? value, [bool clearName = true]) async {
    emit(state.copyWith(status: none()));

    if (clearName)
      emit(state.copyWith(
        bankAccount: state.bankAccount?.copyWith(accountName: BasicTextField('')),
        accountNameController: state.accountNameController..text = '',
      ));

    if (value != null && value.length == ACCOUNT_NUMBER_LENGTH && state.bankAccount?.bank != null && !state.isResolvingAccount) {
      emit(state.copyWith(status: some(AppHttpResponse.info('Verifying information..Please wait!')), isResolvingAccount: true));

      stopLoadingOnTimeout();

      final _result = await _walletRepository.verifyBankAccount(value, state.bankAccount?.bank);

      emit(_result.fold(
        (f) => state.copyWith(
          status: optionOf(f),
          validate: false,
          accountNameController: state.accountNameController..text = '',
        ),
        (account) => state.copyWith(
          validate: false,
          bankAccount: state.bankAccount?.merge(account),
          accountNameController: state.accountNameController..text = account != null ? account.accountName.getOrEmpty : '',
        ),
      ));
    }

    emit(state.copyWith(isResolvingAccount: false));
  }

  void toggleLoading([bool? isLoading, Option<AppHttpResponse?>? status]) =>
      emit(state.copyWith(isLoading: isLoading ?? !state.isLoading, status: status ?? state.status));

  void validateForm([bool value = true]) => emit(state.copyWith(validate: value));

  void withdraw() async {
    emit(state.copyWith(isWithdrawing: true, validate: true, status: none()));

    if (state.amount.getExact() < MINIMUM_WITHDRAWAL_AMOUNT) {
      emit(state.copyWith(
        isWithdrawing: false,
        status: some(AppHttpResponse.failure('Minimum withdrawal amount is ${currencyIcon?.symbolPadded}$MINIMUM_WITHDRAWAL_AMOUNT')),
      ));
      return;
    } else if (state.bankAccount?.bank == null) {
      emit(state.copyWith(isWithdrawing: false, status: some(AppHttpResponse.failure('Please select Bank'))));
      return;
    } else if (!accountNumberIsValid) {
      emit(state.copyWith(isWithdrawing: false, status: some(AppHttpResponse.failure('Please enter a valid Account Number'))));
      return;
    }

    if (state.bankAccount != null) {
      if (state.amount.getExact() >= MINIMUM_WITHDRAWAL_AMOUNT && accountNumberIsValid && state.withdrawalPin.isValid) {
        final response = await _walletRepository.withdraw(
          state.amount.getExact(),
          account: state.bankAccount!,
          pin: state.withdrawalPin.getOrNull!,
        );

        emit(state.copyWith(status: optionOf(response), isWithdrawing: false, validate: false));

        response.success((_) {
          state.accountNameController.clear();
          state.amountTextController.clear();
          emit(state.copyWith(bankAccount: null, withdrawalPin: OTPCode(null)));
        });
      }
    }

    emit(state.copyWith(isWithdrawing: false));
  }

  void getUserSecurityQuestion() async {
    emit(state.copyWith(isFetchingUserSecurityQuestion: true, status: none()));

    stopLoadingOnTimeout();

    final response = await _walletRepository.getUserSecurityQuestion();

    emit(response.fold(
      (f) => state.copyWith(status: optionOf(f), isFetchingUserSecurityQuestion: false),
      (question) => state.copyWith(securityQuestion: question, isFetchingUserSecurityQuestion: false),
    ));
  }

  void setupPin() async {
    emit(state.copyWith(validate: true, status: none()));

    if (state.withdrawalPin.isValid &&
        state.confirmWithdrawalPin.isValid &&
        state.otpCode.isValid &&
        (state.securityQuestion != null && state.securityQuestion!.isValidQuestion && state.securityQuestion!.isValidAnswer)) {
      emit(state.copyWith(isConfiguringPin: true));

      final response = await _walletRepository.setupPin(
        pin: state.withdrawalPin.getExact()!,
        pinConfirmation: state.confirmWithdrawalPin.getExact()!,
        otpCode: state.otpCode.getExact()!,
        question: state.securityQuestion!,
      );

      emit(state.copyWith(validate: response.isFailure, isConfiguringPin: false, status: optionOf(response)));
    }
  }
}

extension WithdrawCubitFieldChanges on WithdrawCubit {
  // void addQuestion(SecurityQuestion question) =>
  //     emit(state.copyWith(predefinedQuestions: state.predefinedQuestions.plusElementIfAbsent(question)));

  void accountNumberChanged(String? value) {
    emit(state.copyWith(
      bankAccount: BankAccount.blank(
        bank: state.bankAccount?.bank,
        accountName: state.bankAccount?.accountName.getOrNull,
        accountNumber: value,
      ),
    ));

    resolveBankAccount(value);
  }

  void amountChanged() {
    final value = state.amountTextController.numberValue;
    emit(state.copyWith(amount: NumField((value ?? 0).toDouble())));
  }

  void onQuestionSelect(SecurityQuestion? question) {
    state.questionTextController.clear();
    state.answerTextController.clear();
    emit(state.copyWith(
      securityQuestion: (question ?? state.securityQuestion)?.copyWith(
        question: (question ?? state.securityQuestion)!.question.copyWith(
              (question ?? state.securityQuestion)!.question.getOrNull,
              other: (it) => it == SecurityQuestion.placeholder ? left(FieldObjectException.invalid()) : right(it),
            ),
      ),
    ));
  }

  void questionChanged(String value) => emit(state.copyWith(
        securityQuestion: state.securityQuestion?.copyWith(
          question: state.securityQuestion!.question.copyWith(
            value,
            other: (it) => it == SecurityQuestion.placeholder ? left(FieldObjectException.invalid()) : right(it),
          ),
        ),
      ));

  void answerChanged(String value) =>
      emit(state.copyWith(securityQuestion: state.securityQuestion?.copyWith(answer: BasicTextField(value))));

  void bankChanged(Bank? value) {
    emit(state.copyWith(
      bankAccount: BankAccount.blank(
        bank: value,
        accountName: state.bankAccount?.accountName.getOrNull,
        accountNumber: state.bankAccount?.accountNumber.getOrNull,
      ),
    ));

    resolveBankAccount(state.bankAccount?.accountNumber.getOrNull);
  }

  void otpCodeChanged(String value) => emit(state.copyWith(otpCode: OTPCode(value)));

  void pinChanged(String? value) => emit(state.copyWith(
        withdrawalPin: OTPCode(
          value,
          length: WithdrawState.maxPinLength,
          msg: 'Pin must be ${WithdrawState.maxPinLength} digits',
        ),
      ));

  void pinConfirmationChanged(String? value) => emit(state.copyWith(
        confirmWithdrawalPin: OTPCode(
          value,
          length: WithdrawState.maxPinLength,
          msg: 'Pin must be ${WithdrawState.maxPinLength} digits',
          other: (val) => val != state.withdrawalPin.getOrNull ? left(FieldObjectException.invalid('PINs do not match')) : right(val),
        ),
      ));
}
