// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of payment_cubit.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaymentState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get validate => throw _privateConstructorUsedError;
  bool get isFetchingWalletBalance => throw _privateConstructorUsedError;
  bool get isFetchingWalletHistory => throw _privateConstructorUsedError;
  bool get isFundingWallet => throw _privateConstructorUsedError;
  bool get isVerifyingTransaction => throw _privateConstructorUsedError;
  bool get hasWalletBalance => throw _privateConstructorUsedError; //
  bool get isUpgradingPlan => throw _privateConstructorUsedError;
  bool get isClosingDeal => throw _privateConstructorUsedError;
  bool get isPayingAdmittanceFee => throw _privateConstructorUsedError; //
  BasicTextField get shippingAddress => throw _privateConstructorUsedError;
  BasicTextField get shippingRegion => throw _privateConstructorUsedError; //
  MoneyMaskedTextController get amountTextController =>
      throw _privateConstructorUsedError;
  NumField<double> get amount => throw _privateConstructorUsedError; //
  UserWallet? get wallet => throw _privateConstructorUsedError;
  String? get paymentRef => throw _privateConstructorUsedError;
  PaymentStatus get paymentStatus => throw _privateConstructorUsedError;
  PaymentMethod get paymentMethod => throw _privateConstructorUsedError; //
  KtList<Bank> get banks => throw _privateConstructorUsedError;
  Option<AppHttpResponse?> get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentStateCopyWith<PaymentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentStateCopyWith<$Res> {
  factory $PaymentStateCopyWith(
          PaymentState value, $Res Function(PaymentState) then) =
      _$PaymentStateCopyWithImpl<$Res, PaymentState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool validate,
      bool isFetchingWalletBalance,
      bool isFetchingWalletHistory,
      bool isFundingWallet,
      bool isVerifyingTransaction,
      bool hasWalletBalance,
      bool isUpgradingPlan,
      bool isClosingDeal,
      bool isPayingAdmittanceFee,
      BasicTextField shippingAddress,
      BasicTextField shippingRegion,
      MoneyMaskedTextController amountTextController,
      NumField<double> amount,
      UserWallet? wallet,
      String? paymentRef,
      PaymentStatus paymentStatus,
      PaymentMethod paymentMethod,
      KtList<Bank> banks,
      Option<AppHttpResponse?> status});

  $UserWalletCopyWith<$Res>? get wallet;
}

/// @nodoc
class _$PaymentStateCopyWithImpl<$Res, $Val extends PaymentState>
    implements $PaymentStateCopyWith<$Res> {
  _$PaymentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? validate = null,
    Object? isFetchingWalletBalance = null,
    Object? isFetchingWalletHistory = null,
    Object? isFundingWallet = null,
    Object? isVerifyingTransaction = null,
    Object? hasWalletBalance = null,
    Object? isUpgradingPlan = null,
    Object? isClosingDeal = null,
    Object? isPayingAdmittanceFee = null,
    Object? shippingAddress = null,
    Object? shippingRegion = null,
    Object? amountTextController = null,
    Object? amount = null,
    Object? wallet = freezed,
    Object? paymentRef = freezed,
    Object? paymentStatus = null,
    Object? paymentMethod = null,
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
      isFetchingWalletBalance: null == isFetchingWalletBalance
          ? _value.isFetchingWalletBalance
          : isFetchingWalletBalance // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingWalletHistory: null == isFetchingWalletHistory
          ? _value.isFetchingWalletHistory
          : isFetchingWalletHistory // ignore: cast_nullable_to_non_nullable
              as bool,
      isFundingWallet: null == isFundingWallet
          ? _value.isFundingWallet
          : isFundingWallet // ignore: cast_nullable_to_non_nullable
              as bool,
      isVerifyingTransaction: null == isVerifyingTransaction
          ? _value.isVerifyingTransaction
          : isVerifyingTransaction // ignore: cast_nullable_to_non_nullable
              as bool,
      hasWalletBalance: null == hasWalletBalance
          ? _value.hasWalletBalance
          : hasWalletBalance // ignore: cast_nullable_to_non_nullable
              as bool,
      isUpgradingPlan: null == isUpgradingPlan
          ? _value.isUpgradingPlan
          : isUpgradingPlan // ignore: cast_nullable_to_non_nullable
              as bool,
      isClosingDeal: null == isClosingDeal
          ? _value.isClosingDeal
          : isClosingDeal // ignore: cast_nullable_to_non_nullable
              as bool,
      isPayingAdmittanceFee: null == isPayingAdmittanceFee
          ? _value.isPayingAdmittanceFee
          : isPayingAdmittanceFee // ignore: cast_nullable_to_non_nullable
              as bool,
      shippingAddress: null == shippingAddress
          ? _value.shippingAddress
          : shippingAddress // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      shippingRegion: null == shippingRegion
          ? _value.shippingRegion
          : shippingRegion // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      amountTextController: null == amountTextController
          ? _value.amountTextController
          : amountTextController // ignore: cast_nullable_to_non_nullable
              as MoneyMaskedTextController,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as NumField<double>,
      wallet: freezed == wallet
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as UserWallet?,
      paymentRef: freezed == paymentRef
          ? _value.paymentRef
          : paymentRef // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as PaymentStatus,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod,
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
  $UserWalletCopyWith<$Res>? get wallet {
    if (_value.wallet == null) {
      return null;
    }

    return $UserWalletCopyWith<$Res>(_value.wallet!, (value) {
      return _then(_value.copyWith(wallet: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PaymentStateCopyWith<$Res>
    implements $PaymentStateCopyWith<$Res> {
  factory _$$_PaymentStateCopyWith(
          _$_PaymentState value, $Res Function(_$_PaymentState) then) =
      __$$_PaymentStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool validate,
      bool isFetchingWalletBalance,
      bool isFetchingWalletHistory,
      bool isFundingWallet,
      bool isVerifyingTransaction,
      bool hasWalletBalance,
      bool isUpgradingPlan,
      bool isClosingDeal,
      bool isPayingAdmittanceFee,
      BasicTextField shippingAddress,
      BasicTextField shippingRegion,
      MoneyMaskedTextController amountTextController,
      NumField<double> amount,
      UserWallet? wallet,
      String? paymentRef,
      PaymentStatus paymentStatus,
      PaymentMethod paymentMethod,
      KtList<Bank> banks,
      Option<AppHttpResponse?> status});

  @override
  $UserWalletCopyWith<$Res>? get wallet;
}

/// @nodoc
class __$$_PaymentStateCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$_PaymentState>
    implements _$$_PaymentStateCopyWith<$Res> {
  __$$_PaymentStateCopyWithImpl(
      _$_PaymentState _value, $Res Function(_$_PaymentState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? validate = null,
    Object? isFetchingWalletBalance = null,
    Object? isFetchingWalletHistory = null,
    Object? isFundingWallet = null,
    Object? isVerifyingTransaction = null,
    Object? hasWalletBalance = null,
    Object? isUpgradingPlan = null,
    Object? isClosingDeal = null,
    Object? isPayingAdmittanceFee = null,
    Object? shippingAddress = null,
    Object? shippingRegion = null,
    Object? amountTextController = null,
    Object? amount = null,
    Object? wallet = freezed,
    Object? paymentRef = freezed,
    Object? paymentStatus = null,
    Object? paymentMethod = null,
    Object? banks = null,
    Object? status = null,
  }) {
    return _then(_$_PaymentState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      validate: null == validate
          ? _value.validate
          : validate // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingWalletBalance: null == isFetchingWalletBalance
          ? _value.isFetchingWalletBalance
          : isFetchingWalletBalance // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingWalletHistory: null == isFetchingWalletHistory
          ? _value.isFetchingWalletHistory
          : isFetchingWalletHistory // ignore: cast_nullable_to_non_nullable
              as bool,
      isFundingWallet: null == isFundingWallet
          ? _value.isFundingWallet
          : isFundingWallet // ignore: cast_nullable_to_non_nullable
              as bool,
      isVerifyingTransaction: null == isVerifyingTransaction
          ? _value.isVerifyingTransaction
          : isVerifyingTransaction // ignore: cast_nullable_to_non_nullable
              as bool,
      hasWalletBalance: null == hasWalletBalance
          ? _value.hasWalletBalance
          : hasWalletBalance // ignore: cast_nullable_to_non_nullable
              as bool,
      isUpgradingPlan: null == isUpgradingPlan
          ? _value.isUpgradingPlan
          : isUpgradingPlan // ignore: cast_nullable_to_non_nullable
              as bool,
      isClosingDeal: null == isClosingDeal
          ? _value.isClosingDeal
          : isClosingDeal // ignore: cast_nullable_to_non_nullable
              as bool,
      isPayingAdmittanceFee: null == isPayingAdmittanceFee
          ? _value.isPayingAdmittanceFee
          : isPayingAdmittanceFee // ignore: cast_nullable_to_non_nullable
              as bool,
      shippingAddress: null == shippingAddress
          ? _value.shippingAddress
          : shippingAddress // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      shippingRegion: null == shippingRegion
          ? _value.shippingRegion
          : shippingRegion // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      amountTextController: null == amountTextController
          ? _value.amountTextController
          : amountTextController // ignore: cast_nullable_to_non_nullable
              as MoneyMaskedTextController,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as NumField<double>,
      wallet: freezed == wallet
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as UserWallet?,
      paymentRef: freezed == paymentRef
          ? _value.paymentRef
          : paymentRef // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as PaymentStatus,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod,
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

class _$_PaymentState with DiagnosticableTreeMixin implements _PaymentState {
  const _$_PaymentState(
      {this.isLoading = false,
      this.validate = false,
      this.isFetchingWalletBalance = false,
      this.isFetchingWalletHistory = false,
      this.isFundingWallet = false,
      this.isVerifyingTransaction = false,
      this.hasWalletBalance = false,
      this.isUpgradingPlan = false,
      this.isClosingDeal = false,
      this.isPayingAdmittanceFee = false,
      required this.shippingAddress,
      required this.shippingRegion,
      required this.amountTextController,
      required this.amount,
      this.wallet,
      this.paymentRef,
      this.paymentStatus = PaymentStatus.pending,
      this.paymentMethod = PaymentMethod.flutterwave,
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
  final bool isFetchingWalletBalance;
  @override
  @JsonKey()
  final bool isFetchingWalletHistory;
  @override
  @JsonKey()
  final bool isFundingWallet;
  @override
  @JsonKey()
  final bool isVerifyingTransaction;
  @override
  @JsonKey()
  final bool hasWalletBalance;
//
  @override
  @JsonKey()
  final bool isUpgradingPlan;
  @override
  @JsonKey()
  final bool isClosingDeal;
  @override
  @JsonKey()
  final bool isPayingAdmittanceFee;
//
  @override
  final BasicTextField shippingAddress;
  @override
  final BasicTextField shippingRegion;
//
  @override
  final MoneyMaskedTextController amountTextController;
  @override
  final NumField<double> amount;
//
  @override
  final UserWallet? wallet;
  @override
  final String? paymentRef;
  @override
  @JsonKey()
  final PaymentStatus paymentStatus;
  @override
  @JsonKey()
  final PaymentMethod paymentMethod;
//
  @override
  @JsonKey()
  final KtList<Bank> banks;
  @override
  @JsonKey()
  final Option<AppHttpResponse?> status;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PaymentState(isLoading: $isLoading, validate: $validate, isFetchingWalletBalance: $isFetchingWalletBalance, isFetchingWalletHistory: $isFetchingWalletHistory, isFundingWallet: $isFundingWallet, isVerifyingTransaction: $isVerifyingTransaction, hasWalletBalance: $hasWalletBalance, isUpgradingPlan: $isUpgradingPlan, isClosingDeal: $isClosingDeal, isPayingAdmittanceFee: $isPayingAdmittanceFee, shippingAddress: $shippingAddress, shippingRegion: $shippingRegion, amountTextController: $amountTextController, amount: $amount, wallet: $wallet, paymentRef: $paymentRef, paymentStatus: $paymentStatus, paymentMethod: $paymentMethod, banks: $banks, status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PaymentState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('validate', validate))
      ..add(DiagnosticsProperty(
          'isFetchingWalletBalance', isFetchingWalletBalance))
      ..add(DiagnosticsProperty(
          'isFetchingWalletHistory', isFetchingWalletHistory))
      ..add(DiagnosticsProperty('isFundingWallet', isFundingWallet))
      ..add(
          DiagnosticsProperty('isVerifyingTransaction', isVerifyingTransaction))
      ..add(DiagnosticsProperty('hasWalletBalance', hasWalletBalance))
      ..add(DiagnosticsProperty('isUpgradingPlan', isUpgradingPlan))
      ..add(DiagnosticsProperty('isClosingDeal', isClosingDeal))
      ..add(DiagnosticsProperty('isPayingAdmittanceFee', isPayingAdmittanceFee))
      ..add(DiagnosticsProperty('shippingAddress', shippingAddress))
      ..add(DiagnosticsProperty('shippingRegion', shippingRegion))
      ..add(DiagnosticsProperty('amountTextController', amountTextController))
      ..add(DiagnosticsProperty('amount', amount))
      ..add(DiagnosticsProperty('wallet', wallet))
      ..add(DiagnosticsProperty('paymentRef', paymentRef))
      ..add(DiagnosticsProperty('paymentStatus', paymentStatus))
      ..add(DiagnosticsProperty('paymentMethod', paymentMethod))
      ..add(DiagnosticsProperty('banks', banks))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.validate, validate) ||
                other.validate == validate) &&
            (identical(
                    other.isFetchingWalletBalance, isFetchingWalletBalance) ||
                other.isFetchingWalletBalance == isFetchingWalletBalance) &&
            (identical(
                    other.isFetchingWalletHistory, isFetchingWalletHistory) ||
                other.isFetchingWalletHistory == isFetchingWalletHistory) &&
            (identical(other.isFundingWallet, isFundingWallet) ||
                other.isFundingWallet == isFundingWallet) &&
            (identical(other.isVerifyingTransaction, isVerifyingTransaction) ||
                other.isVerifyingTransaction == isVerifyingTransaction) &&
            (identical(other.hasWalletBalance, hasWalletBalance) ||
                other.hasWalletBalance == hasWalletBalance) &&
            (identical(other.isUpgradingPlan, isUpgradingPlan) ||
                other.isUpgradingPlan == isUpgradingPlan) &&
            (identical(other.isClosingDeal, isClosingDeal) ||
                other.isClosingDeal == isClosingDeal) &&
            (identical(other.isPayingAdmittanceFee, isPayingAdmittanceFee) ||
                other.isPayingAdmittanceFee == isPayingAdmittanceFee) &&
            (identical(other.shippingAddress, shippingAddress) ||
                other.shippingAddress == shippingAddress) &&
            (identical(other.shippingRegion, shippingRegion) ||
                other.shippingRegion == shippingRegion) &&
            (identical(other.amountTextController, amountTextController) ||
                other.amountTextController == amountTextController) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.wallet, wallet) || other.wallet == wallet) &&
            (identical(other.paymentRef, paymentRef) ||
                other.paymentRef == paymentRef) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.banks, banks) || other.banks == banks) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        isLoading,
        validate,
        isFetchingWalletBalance,
        isFetchingWalletHistory,
        isFundingWallet,
        isVerifyingTransaction,
        hasWalletBalance,
        isUpgradingPlan,
        isClosingDeal,
        isPayingAdmittanceFee,
        shippingAddress,
        shippingRegion,
        amountTextController,
        amount,
        wallet,
        paymentRef,
        paymentStatus,
        paymentMethod,
        banks,
        status
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentStateCopyWith<_$_PaymentState> get copyWith =>
      __$$_PaymentStateCopyWithImpl<_$_PaymentState>(this, _$identity);
}

abstract class _PaymentState implements PaymentState {
  const factory _PaymentState(
      {final bool isLoading,
      final bool validate,
      final bool isFetchingWalletBalance,
      final bool isFetchingWalletHistory,
      final bool isFundingWallet,
      final bool isVerifyingTransaction,
      final bool hasWalletBalance,
      final bool isUpgradingPlan,
      final bool isClosingDeal,
      final bool isPayingAdmittanceFee,
      required final BasicTextField shippingAddress,
      required final BasicTextField shippingRegion,
      required final MoneyMaskedTextController amountTextController,
      required final NumField<double> amount,
      final UserWallet? wallet,
      final String? paymentRef,
      final PaymentStatus paymentStatus,
      final PaymentMethod paymentMethod,
      final KtList<Bank> banks,
      final Option<AppHttpResponse?> status}) = _$_PaymentState;

  @override
  bool get isLoading;
  @override
  bool get validate;
  @override
  bool get isFetchingWalletBalance;
  @override
  bool get isFetchingWalletHistory;
  @override
  bool get isFundingWallet;
  @override
  bool get isVerifyingTransaction;
  @override
  bool get hasWalletBalance;
  @override //
  bool get isUpgradingPlan;
  @override
  bool get isClosingDeal;
  @override
  bool get isPayingAdmittanceFee;
  @override //
  BasicTextField get shippingAddress;
  @override
  BasicTextField get shippingRegion;
  @override //
  MoneyMaskedTextController get amountTextController;
  @override
  NumField<double> get amount;
  @override //
  UserWallet? get wallet;
  @override
  String? get paymentRef;
  @override
  PaymentStatus get paymentStatus;
  @override
  PaymentMethod get paymentMethod;
  @override //
  KtList<Bank> get banks;
  @override
  Option<AppHttpResponse?> get status;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentStateCopyWith<_$_PaymentState> get copyWith =>
      throw _privateConstructorUsedError;
}
