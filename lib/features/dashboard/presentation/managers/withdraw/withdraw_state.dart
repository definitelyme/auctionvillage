part of 'withdraw_cubit.dart';

@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
class WithdrawState extends BaseState with _$WithdrawState {
  static FocusNode focusAmount = FocusNode();
  static FocusNode focusPin = FocusNode();
  static FocusNode focusPinConfirmation = FocusNode();
  static FocusNode focusAccountNumber = FocusNode();
  static FocusNode focusSecurityQuestion = FocusNode();
  static FocusNode focusSecurityAnswer = FocusNode();
  static FocusNode focusToken = FocusNode();

  static const int maxPinLength = 4;

  const factory WithdrawState({
    @Default(false) bool isLoading,
    @Default(false) bool validate,
    @Default(false) bool isConfiguringPin,
    @Default(false) bool isRequestingOTP,
    @Default(false) bool isWithdrawing,
    @Default(false) bool isFetchingBanks,
    @Default(false) bool isResolvingAccount,
    @Default(false) bool isFetchingSecurityQuestions,
    @Default(false) bool isFetchingUserSecurityQuestion,
    //
    required MoneyMaskedTextController amountTextController,
    required TextEditingController accountNameController,
    required TextEditingController questionTextController,
    required TextEditingController answerTextController,
    required NumField<double> amount,
    BankAccount? bankAccount,
    //
    required TextEditingController pinController,
    required TextEditingController pinConfirmationController,
    required OTPCode withdrawalPin,
    required OTPCode confirmWithdrawalPin,
    SecurityQuestion? securityQuestion,
    required OTPCode otpCode,
    @Default(KtList.empty()) KtList<SecurityQuestion> predefinedQuestions,
    //
    @Default(KtList.empty()) KtList<Bank> banks,
    @Default(None()) Option<AppHttpResponse?> status,
  }) = _WithdrawState;

  factory WithdrawState.initial() => WithdrawState(
        amount: NumField(0),
        withdrawalPin: OTPCode(
          null,
          length: WithdrawState.maxPinLength,
          msg: 'Pin must be ${WithdrawState.maxPinLength} digits',
        ),
        confirmWithdrawalPin: OTPCode(
          null,
          length: WithdrawState.maxPinLength,
          msg: 'Pin must be ${WithdrawState.maxPinLength} digits',
        ),
        otpCode: OTPCode(null),
        accountNameController: TextEditingController(),
        questionTextController: TextEditingController(),
        answerTextController: TextEditingController(),
        pinController: TextEditingController(),
        pinConfirmationController: TextEditingController(),
        amountTextController: MoneyMaskedTextController(
          initialValue: 0,
          precision: 0,
          decimalSeparator: '',
          thousandSeparator: ',',
        ),
      );
}
