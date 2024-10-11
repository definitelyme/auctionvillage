part of 'payment_cubit.dart';

@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
class PaymentState extends BaseState with _$PaymentState {
  static FocusNode cardName = FocusNode();
  static FocusNode cardNumber = FocusNode();
  static FocusNode cardExpiry = FocusNode();
  static FocusNode cardCVV = FocusNode();
  static FocusNode focusAmount = FocusNode();
  static FocusNode shippingAddressFocus = FocusNode();
  static FocusNode shippingRegionFocus = FocusNode();

  const factory PaymentState({
    @Default(false) bool isLoading,
    @Default(false) bool validate,
    @Default(false) bool isFetchingWalletBalance,
    @Default(false) bool isFetchingWalletHistory,
    @Default(false) bool isFundingWallet,
    @Default(false) bool isVerifyingTransaction,
    @Default(false) bool hasWalletBalance,
    //
    @Default(false) bool isUpgradingPlan,
    @Default(false) bool isClosingDeal,
    @Default(false) bool isPayingAdmittanceFee,
    //
    required BasicTextField shippingAddress,
    required BasicTextField shippingRegion,
    //
    required MoneyMaskedTextController amountTextController,
    required NumField<double> amount,
    //
    UserWallet? wallet,
    String? paymentRef,
    @Default(PaymentStatus.pending) PaymentStatus paymentStatus,
    @Default(PaymentMethod.flutterwave) PaymentMethod paymentMethod,
    //
    @Default(KtList.empty()) KtList<Bank> banks,
    @Default(None()) Option<AppHttpResponse?> status,
  }) = _PaymentState;

  factory PaymentState.initial() => PaymentState(
        amount: NumField(0),
        shippingRegion: BasicTextField(null),
        shippingAddress: BasicTextField(null),
        amountTextController: MoneyMaskedTextController(
          initialValue: 0,
          precision: 0,
          decimalSeparator: '',
          thousandSeparator: ',',
        ),
      );
}
