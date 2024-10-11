// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of withdraw_cubit.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WithdrawState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get validate => throw _privateConstructorUsedError;
  bool get isConfiguringPin => throw _privateConstructorUsedError;
  bool get isRequestingOTP => throw _privateConstructorUsedError;
  bool get isWithdrawing => throw _privateConstructorUsedError;
  bool get isFetchingBanks => throw _privateConstructorUsedError;
  bool get isResolvingAccount => throw _privateConstructorUsedError;
  bool get isFetchingSecurityQuestions => throw _privateConstructorUsedError;
  bool get isFetchingUserSecurityQuestion =>
      throw _privateConstructorUsedError; //
  MoneyMaskedTextController get amountTextController =>
      throw _privateConstructorUsedError;
  TextEditingController get accountNameController =>
      throw _privateConstructorUsedError;
  TextEditingController get questionTextController =>
      throw _privateConstructorUsedError;
  TextEditingController get answerTextController =>
      throw _privateConstructorUsedError;
  NumField<double> get amount => throw _privateConstructorUsedError;
  BankAccount? get bankAccount => throw _privateConstructorUsedError; //
  TextEditingController get pinController => throw _privateConstructorUsedError;
  TextEditingController get pinConfirmationController =>
      throw _privateConstructorUsedError;
  OTPCode get withdrawalPin => throw _privateConstructorUsedError;
  OTPCode get confirmWithdrawalPin => throw _privateConstructorUsedError;
  SecurityQuestion? get securityQuestion => throw _privateConstructorUsedError;
  OTPCode get otpCode => throw _privateConstructorUsedError;
  KtList<SecurityQuestion> get predefinedQuestions =>
      throw _privateConstructorUsedError; //
  KtList<Bank> get banks => throw _privateConstructorUsedError;
  Option<AppHttpResponse?> get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WithdrawStateCopyWith<WithdrawState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WithdrawStateCopyWith<$Res> {
  factory $WithdrawStateCopyWith(
          WithdrawState value, $Res Function(WithdrawState) then) =
      _$WithdrawStateCopyWithImpl<$Res, WithdrawState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool validate,
      bool isConfiguringPin,
      bool isRequestingOTP,
      bool isWithdrawing,
      bool isFetchingBanks,
      bool isResolvingAccount,
      bool isFetchingSecurityQuestions,
      bool isFetchingUserSecurityQuestion,
      MoneyMaskedTextController amountTextController,
      TextEditingController accountNameController,
      TextEditingController questionTextController,
      TextEditingController answerTextController,
      NumField<double> amount,
      BankAccount? bankAccount,
      TextEditingController pinController,
      TextEditingController pinConfirmationController,
      OTPCode withdrawalPin,
      OTPCode confirmWithdrawalPin,
      SecurityQuestion? securityQuestion,
      OTPCode otpCode,
      KtList<SecurityQuestion> predefinedQuestions,
      KtList<Bank> banks,
      Option<AppHttpResponse?> status});

  $BankAccountCopyWith<$Res>? get bankAccount;
  $SecurityQuestionCopyWith<$Res>? get securityQuestion;
}

/// @nodoc
class _$WithdrawStateCopyWithImpl<$Res, $Val extends WithdrawState>
    implements $WithdrawStateCopyWith<$Res> {
  _$WithdrawStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? validate = null,
    Object? isConfiguringPin = null,
    Object? isRequestingOTP = null,
    Object? isWithdrawing = null,
    Object? isFetchingBanks = null,
    Object? isResolvingAccount = null,
    Object? isFetchingSecurityQuestions = null,
    Object? isFetchingUserSecurityQuestion = null,
    Object? amountTextController = null,
    Object? accountNameController = null,
    Object? questionTextController = null,
    Object? answerTextController = null,
    Object? amount = null,
    Object? bankAccount = freezed,
    Object? pinController = null,
    Object? pinConfirmationController = null,
    Object? withdrawalPin = null,
    Object? confirmWithdrawalPin = null,
    Object? securityQuestion = freezed,
    Object? otpCode = null,
    Object? predefinedQuestions = null,
    Object? banks = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      validate: null == validate
          ? _value.validate
          : validate // ignore: cast_nullable_to_non_nullable
              as bool,
      isConfiguringPin: null == isConfiguringPin
          ? _value.isConfiguringPin
          : isConfiguringPin // ignore: cast_nullable_to_non_nullable
              as bool,
      isRequestingOTP: null == isRequestingOTP
          ? _value.isRequestingOTP
          : isRequestingOTP // ignore: cast_nullable_to_non_nullable
              as bool,
      isWithdrawing: null == isWithdrawing
          ? _value.isWithdrawing
          : isWithdrawing // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingBanks: null == isFetchingBanks
          ? _value.isFetchingBanks
          : isFetchingBanks // ignore: cast_nullable_to_non_nullable
              as bool,
      isResolvingAccount: null == isResolvingAccount
          ? _value.isResolvingAccount
          : isResolvingAccount // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingSecurityQuestions: null == isFetchingSecurityQuestions
          ? _value.isFetchingSecurityQuestions
          : isFetchingSecurityQuestions // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingUserSecurityQuestion: null == isFetchingUserSecurityQuestion
          ? _value.isFetchingUserSecurityQuestion
          : isFetchingUserSecurityQuestion // ignore: cast_nullable_to_non_nullable
              as bool,
      amountTextController: null == amountTextController
          ? _value.amountTextController
          : amountTextController // ignore: cast_nullable_to_non_nullable
              as MoneyMaskedTextController,
      accountNameController: null == accountNameController
          ? _value.accountNameController
          : accountNameController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      questionTextController: null == questionTextController
          ? _value.questionTextController
          : questionTextController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      answerTextController: null == answerTextController
          ? _value.answerTextController
          : answerTextController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as NumField<double>,
      bankAccount: freezed == bankAccount
          ? _value.bankAccount
          : bankAccount // ignore: cast_nullable_to_non_nullable
              as BankAccount?,
      pinController: null == pinController
          ? _value.pinController
          : pinController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      pinConfirmationController: null == pinConfirmationController
          ? _value.pinConfirmationController
          : pinConfirmationController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      withdrawalPin: null == withdrawalPin
          ? _value.withdrawalPin
          : withdrawalPin // ignore: cast_nullable_to_non_nullable
              as OTPCode,
      confirmWithdrawalPin: null == confirmWithdrawalPin
          ? _value.confirmWithdrawalPin
          : confirmWithdrawalPin // ignore: cast_nullable_to_non_nullable
              as OTPCode,
      securityQuestion: freezed == securityQuestion
          ? _value.securityQuestion
          : securityQuestion // ignore: cast_nullable_to_non_nullable
              as SecurityQuestion?,
      otpCode: null == otpCode
          ? _value.otpCode
          : otpCode // ignore: cast_nullable_to_non_nullable
              as OTPCode,
      predefinedQuestions: null == predefinedQuestions
          ? _value.predefinedQuestions
          : predefinedQuestions // ignore: cast_nullable_to_non_nullable
              as KtList<SecurityQuestion>,
      banks: null == banks
          ? _value.banks
          : banks // ignore: cast_nullable_to_non_nullable
              as KtList<Bank>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Option<AppHttpResponse?>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BankAccountCopyWith<$Res>? get bankAccount {
    if (_value.bankAccount == null) {
      return null;
    }

    return $BankAccountCopyWith<$Res>(_value.bankAccount!, (value) {
      return _then(_value.copyWith(bankAccount: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SecurityQuestionCopyWith<$Res>? get securityQuestion {
    if (_value.securityQuestion == null) {
      return null;
    }

    return $SecurityQuestionCopyWith<$Res>(_value.securityQuestion!, (value) {
      return _then(_value.copyWith(securityQuestion: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_WithdrawStateCopyWith<$Res>
    implements $WithdrawStateCopyWith<$Res> {
  factory _$$_WithdrawStateCopyWith(
          _$_WithdrawState value, $Res Function(_$_WithdrawState) then) =
      __$$_WithdrawStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool validate,
      bool isConfiguringPin,
      bool isRequestingOTP,
      bool isWithdrawing,
      bool isFetchingBanks,
      bool isResolvingAccount,
      bool isFetchingSecurityQuestions,
      bool isFetchingUserSecurityQuestion,
      MoneyMaskedTextController amountTextController,
      TextEditingController accountNameController,
      TextEditingController questionTextController,
      TextEditingController answerTextController,
      NumField<double> amount,
      BankAccount? bankAccount,
      TextEditingController pinController,
      TextEditingController pinConfirmationController,
      OTPCode withdrawalPin,
      OTPCode confirmWithdrawalPin,
      SecurityQuestion? securityQuestion,
      OTPCode otpCode,
      KtList<SecurityQuestion> predefinedQuestions,
      KtList<Bank> banks,
      Option<AppHttpResponse?> status});

  @override
  $BankAccountCopyWith<$Res>? get bankAccount;
  @override
  $SecurityQuestionCopyWith<$Res>? get securityQuestion;
}

/// @nodoc
class __$$_WithdrawStateCopyWithImpl<$Res>
    extends _$WithdrawStateCopyWithImpl<$Res, _$_WithdrawState>
    implements _$$_WithdrawStateCopyWith<$Res> {
  __$$_WithdrawStateCopyWithImpl(
      _$_WithdrawState _value, $Res Function(_$_WithdrawState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? validate = null,
    Object? isConfiguringPin = null,
    Object? isRequestingOTP = null,
    Object? isWithdrawing = null,
    Object? isFetchingBanks = null,
    Object? isResolvingAccount = null,
    Object? isFetchingSecurityQuestions = null,
    Object? isFetchingUserSecurityQuestion = null,
    Object? amountTextController = null,
    Object? accountNameController = null,
    Object? questionTextController = null,
    Object? answerTextController = null,
    Object? amount = null,
    Object? bankAccount = freezed,
    Object? pinController = null,
    Object? pinConfirmationController = null,
    Object? withdrawalPin = null,
    Object? confirmWithdrawalPin = null,
    Object? securityQuestion = freezed,
    Object? otpCode = null,
    Object? predefinedQuestions = null,
    Object? banks = null,
    Object? status = null,
  }) {
    return _then(_$_WithdrawState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      validate: null == validate
          ? _value.validate
          : validate // ignore: cast_nullable_to_non_nullable
              as bool,
      isConfiguringPin: null == isConfiguringPin
          ? _value.isConfiguringPin
          : isConfiguringPin // ignore: cast_nullable_to_non_nullable
              as bool,
      isRequestingOTP: null == isRequestingOTP
          ? _value.isRequestingOTP
          : isRequestingOTP // ignore: cast_nullable_to_non_nullable
              as bool,
      isWithdrawing: null == isWithdrawing
          ? _value.isWithdrawing
          : isWithdrawing // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingBanks: null == isFetchingBanks
          ? _value.isFetchingBanks
          : isFetchingBanks // ignore: cast_nullable_to_non_nullable
              as bool,
      isResolvingAccount: null == isResolvingAccount
          ? _value.isResolvingAccount
          : isResolvingAccount // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingSecurityQuestions: null == isFetchingSecurityQuestions
          ? _value.isFetchingSecurityQuestions
          : isFetchingSecurityQuestions // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingUserSecurityQuestion: null == isFetchingUserSecurityQuestion
          ? _value.isFetchingUserSecurityQuestion
          : isFetchingUserSecurityQuestion // ignore: cast_nullable_to_non_nullable
              as bool,
      amountTextController: null == amountTextController
          ? _value.amountTextController
          : amountTextController // ignore: cast_nullable_to_non_nullable
              as MoneyMaskedTextController,
      accountNameController: null == accountNameController
          ? _value.accountNameController
          : accountNameController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      questionTextController: null == questionTextController
          ? _value.questionTextController
          : questionTextController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      answerTextController: null == answerTextController
          ? _value.answerTextController
          : answerTextController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as NumField<double>,
      bankAccount: freezed == bankAccount
          ? _value.bankAccount
          : bankAccount // ignore: cast_nullable_to_non_nullable
              as BankAccount?,
      pinController: null == pinController
          ? _value.pinController
          : pinController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      pinConfirmationController: null == pinConfirmationController
          ? _value.pinConfirmationController
          : pinConfirmationController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      withdrawalPin: null == withdrawalPin
          ? _value.withdrawalPin
          : withdrawalPin // ignore: cast_nullable_to_non_nullable
              as OTPCode,
      confirmWithdrawalPin: null == confirmWithdrawalPin
          ? _value.confirmWithdrawalPin
          : confirmWithdrawalPin // ignore: cast_nullable_to_non_nullable
              as OTPCode,
      securityQuestion: freezed == securityQuestion
          ? _value.securityQuestion
          : securityQuestion // ignore: cast_nullable_to_non_nullable
              as SecurityQuestion?,
      otpCode: null == otpCode
          ? _value.otpCode
          : otpCode // ignore: cast_nullable_to_non_nullable
              as OTPCode,
      predefinedQuestions: null == predefinedQuestions
          ? _value.predefinedQuestions
          : predefinedQuestions // ignore: cast_nullable_to_non_nullable
              as KtList<SecurityQuestion>,
      banks: null == banks
          ? _value.banks
          : banks // ignore: cast_nullable_to_non_nullable
              as KtList<Bank>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Option<AppHttpResponse?>,
    ));
  }
}

/// @nodoc

class _$_WithdrawState with DiagnosticableTreeMixin implements _WithdrawState {
  const _$_WithdrawState(
      {this.isLoading = false,
      this.validate = false,
      this.isConfiguringPin = false,
      this.isRequestingOTP = false,
      this.isWithdrawing = false,
      this.isFetchingBanks = false,
      this.isResolvingAccount = false,
      this.isFetchingSecurityQuestions = false,
      this.isFetchingUserSecurityQuestion = false,
      required this.amountTextController,
      required this.accountNameController,
      required this.questionTextController,
      required this.answerTextController,
      required this.amount,
      this.bankAccount,
      required this.pinController,
      required this.pinConfirmationController,
      required this.withdrawalPin,
      required this.confirmWithdrawalPin,
      this.securityQuestion,
      required this.otpCode,
      this.predefinedQuestions = const KtList.empty(),
      this.banks = const KtList.empty(),
      this.status = const None()});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool validate;
  @override
  @JsonKey()
  final bool isConfiguringPin;
  @override
  @JsonKey()
  final bool isRequestingOTP;
  @override
  @JsonKey()
  final bool isWithdrawing;
  @override
  @JsonKey()
  final bool isFetchingBanks;
  @override
  @JsonKey()
  final bool isResolvingAccount;
  @override
  @JsonKey()
  final bool isFetchingSecurityQuestions;
  @override
  @JsonKey()
  final bool isFetchingUserSecurityQuestion;
//
  @override
  final MoneyMaskedTextController amountTextController;
  @override
  final TextEditingController accountNameController;
  @override
  final TextEditingController questionTextController;
  @override
  final TextEditingController answerTextController;
  @override
  final NumField<double> amount;
  @override
  final BankAccount? bankAccount;
//
  @override
  final TextEditingController pinController;
  @override
  final TextEditingController pinConfirmationController;
  @override
  final OTPCode withdrawalPin;
  @override
  final OTPCode confirmWithdrawalPin;
  @override
  final SecurityQuestion? securityQuestion;
  @override
  final OTPCode otpCode;
  @override
  @JsonKey()
  final KtList<SecurityQuestion> predefinedQuestions;
//
  @override
  @JsonKey()
  final KtList<Bank> banks;
  @override
  @JsonKey()
  final Option<AppHttpResponse?> status;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WithdrawState(isLoading: $isLoading, validate: $validate, isConfiguringPin: $isConfiguringPin, isRequestingOTP: $isRequestingOTP, isWithdrawing: $isWithdrawing, isFetchingBanks: $isFetchingBanks, isResolvingAccount: $isResolvingAccount, isFetchingSecurityQuestions: $isFetchingSecurityQuestions, isFetchingUserSecurityQuestion: $isFetchingUserSecurityQuestion, amountTextController: $amountTextController, accountNameController: $accountNameController, questionTextController: $questionTextController, answerTextController: $answerTextController, amount: $amount, bankAccount: $bankAccount, pinController: $pinController, pinConfirmationController: $pinConfirmationController, withdrawalPin: $withdrawalPin, confirmWithdrawalPin: $confirmWithdrawalPin, securityQuestion: $securityQuestion, otpCode: $otpCode, predefinedQuestions: $predefinedQuestions, banks: $banks, status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WithdrawState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('validate', validate))
      ..add(DiagnosticsProperty('isConfiguringPin', isConfiguringPin))
      ..add(DiagnosticsProperty('isRequestingOTP', isRequestingOTP))
      ..add(DiagnosticsProperty('isWithdrawing', isWithdrawing))
      ..add(DiagnosticsProperty('isFetchingBanks', isFetchingBanks))
      ..add(DiagnosticsProperty('isResolvingAccount', isResolvingAccount))
      ..add(DiagnosticsProperty(
          'isFetchingSecurityQuestions', isFetchingSecurityQuestions))
      ..add(DiagnosticsProperty(
          'isFetchingUserSecurityQuestion', isFetchingUserSecurityQuestion))
      ..add(DiagnosticsProperty('amountTextController', amountTextController))
      ..add(DiagnosticsProperty('accountNameController', accountNameController))
      ..add(
          DiagnosticsProperty('questionTextController', questionTextController))
      ..add(DiagnosticsProperty('answerTextController', answerTextController))
      ..add(DiagnosticsProperty('amount', amount))
      ..add(DiagnosticsProperty('bankAccount', bankAccount))
      ..add(DiagnosticsProperty('pinController', pinController))
      ..add(DiagnosticsProperty(
          'pinConfirmationController', pinConfirmationController))
      ..add(DiagnosticsProperty('withdrawalPin', withdrawalPin))
      ..add(DiagnosticsProperty('confirmWithdrawalPin', confirmWithdrawalPin))
      ..add(DiagnosticsProperty('securityQuestion', securityQuestion))
      ..add(DiagnosticsProperty('otpCode', otpCode))
      ..add(DiagnosticsProperty('predefinedQuestions', predefinedQuestions))
      ..add(DiagnosticsProperty('banks', banks))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WithdrawState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.validate, validate) ||
                other.validate == validate) &&
            (identical(other.isConfiguringPin, isConfiguringPin) ||
                other.isConfiguringPin == isConfiguringPin) &&
            (identical(other.isRequestingOTP, isRequestingOTP) ||
                other.isRequestingOTP == isRequestingOTP) &&
            (identical(other.isWithdrawing, isWithdrawing) ||
                other.isWithdrawing == isWithdrawing) &&
            (identical(other.isFetchingBanks, isFetchingBanks) ||
                other.isFetchingBanks == isFetchingBanks) &&
            (identical(other.isResolvingAccount, isResolvingAccount) ||
                other.isResolvingAccount == isResolvingAccount) &&
            (identical(other.isFetchingSecurityQuestions,
                    isFetchingSecurityQuestions) ||
                other.isFetchingSecurityQuestions ==
                    isFetchingSecurityQuestions) &&
            (identical(other.isFetchingUserSecurityQuestion,
                    isFetchingUserSecurityQuestion) ||
                other.isFetchingUserSecurityQuestion ==
                    isFetchingUserSecurityQuestion) &&
            (identical(other.amountTextController, amountTextController) ||
                other.amountTextController == amountTextController) &&
            (identical(other.accountNameController, accountNameController) ||
                other.accountNameController == accountNameController) &&
            (identical(other.questionTextController, questionTextController) ||
                other.questionTextController == questionTextController) &&
            (identical(other.answerTextController, answerTextController) ||
                other.answerTextController == answerTextController) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.bankAccount, bankAccount) ||
                other.bankAccount == bankAccount) &&
            (identical(other.pinController, pinController) ||
                other.pinController == pinController) &&
            (identical(other.pinConfirmationController,
                    pinConfirmationController) ||
                other.pinConfirmationController == pinConfirmationController) &&
            (identical(other.withdrawalPin, withdrawalPin) ||
                other.withdrawalPin == withdrawalPin) &&
            (identical(other.confirmWithdrawalPin, confirmWithdrawalPin) ||
                other.confirmWithdrawalPin == confirmWithdrawalPin) &&
            (identical(other.securityQuestion, securityQuestion) ||
                other.securityQuestion == securityQuestion) &&
            (identical(other.otpCode, otpCode) || other.otpCode == otpCode) &&
            (identical(other.predefinedQuestions, predefinedQuestions) ||
                other.predefinedQuestions == predefinedQuestions) &&
            (identical(other.banks, banks) || other.banks == banks) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        isLoading,
        validate,
        isConfiguringPin,
        isRequestingOTP,
        isWithdrawing,
        isFetchingBanks,
        isResolvingAccount,
        isFetchingSecurityQuestions,
        isFetchingUserSecurityQuestion,
        amountTextController,
        accountNameController,
        questionTextController,
        answerTextController,
        amount,
        bankAccount,
        pinController,
        pinConfirmationController,
        withdrawalPin,
        confirmWithdrawalPin,
        securityQuestion,
        otpCode,
        predefinedQuestions,
        banks,
        status
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WithdrawStateCopyWith<_$_WithdrawState> get copyWith =>
      __$$_WithdrawStateCopyWithImpl<_$_WithdrawState>(this, _$identity);
}

abstract class _WithdrawState implements WithdrawState {
  const factory _WithdrawState(
      {final bool isLoading,
      final bool validate,
      final bool isConfiguringPin,
      final bool isRequestingOTP,
      final bool isWithdrawing,
      final bool isFetchingBanks,
      final bool isResolvingAccount,
      final bool isFetchingSecurityQuestions,
      final bool isFetchingUserSecurityQuestion,
      required final MoneyMaskedTextController amountTextController,
      required final TextEditingController accountNameController,
      required final TextEditingController questionTextController,
      required final TextEditingController answerTextController,
      required final NumField<double> amount,
      final BankAccount? bankAccount,
      required final TextEditingController pinController,
      required final TextEditingController pinConfirmationController,
      required final OTPCode withdrawalPin,
      required final OTPCode confirmWithdrawalPin,
      final SecurityQuestion? securityQuestion,
      required final OTPCode otpCode,
      final KtList<SecurityQuestion> predefinedQuestions,
      final KtList<Bank> banks,
      final Option<AppHttpResponse?> status}) = _$_WithdrawState;

  @override
  bool get isLoading;
  @override
  bool get validate;
  @override
  bool get isConfiguringPin;
  @override
  bool get isRequestingOTP;
  @override
  bool get isWithdrawing;
  @override
  bool get isFetchingBanks;
  @override
  bool get isResolvingAccount;
  @override
  bool get isFetchingSecurityQuestions;
  @override
  bool get isFetchingUserSecurityQuestion;
  @override //
  MoneyMaskedTextController get amountTextController;
  @override
  TextEditingController get accountNameController;
  @override
  TextEditingController get questionTextController;
  @override
  TextEditingController get answerTextController;
  @override
  NumField<double> get amount;
  @override
  BankAccount? get bankAccount;
  @override //
  TextEditingController get pinController;
  @override
  TextEditingController get pinConfirmationController;
  @override
  OTPCode get withdrawalPin;
  @override
  OTPCode get confirmWithdrawalPin;
  @override
  SecurityQuestion? get securityQuestion;
  @override
  OTPCode get otpCode;
  @override
  KtList<SecurityQuestion> get predefinedQuestions;
  @override //
  KtList<Bank> get banks;
  @override
  Option<AppHttpResponse?> get status;
  @override
  @JsonKey(ignore: true)
  _$$_WithdrawStateCopyWith<_$_WithdrawState> get copyWith =>
      throw _privateConstructorUsedError;
}
