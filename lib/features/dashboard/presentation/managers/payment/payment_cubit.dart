library payment_cubit.dart;

import 'dart:async';

import 'package:auctionvillage/core/data/models/index.dart';
import 'package:auctionvillage/core/data/repository/socket_io_client.dart';
import 'package:auctionvillage/core/data/response/index.dart';
import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/core/presentation/index.dart';
import 'package:auctionvillage/features/dashboard/data/models/user_wallet/user_wallet_dto.dart';
import 'package:auctionvillage/features/dashboard/data/repositories/deal_repository.dart';
import 'package:auctionvillage/features/dashboard/data/repositories/seller_repository.dart';
import 'package:auctionvillage/features/dashboard/data/repositories/wallet_repository.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/manager/locator/locator.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:flutter_paystack/flutter_paystack.dart';
import 'package:flutterwave_standard/flutterwave.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

part '_payable.extension.dart';
part 'payment_cubit.freezed.dart';
part 'payment_state.dart';

typedef OnTransactionComplete = Future<void> Function(PaymentStatus);

@injectable
class PaymentCubit extends BaseCubit<PaymentState> {
  final DealRepository _dealRepository;
  final FirebaseAnalytics _firebaseAnalytics;
  final PaystackPlugin _paystack;
  final SellerRepository _sellerRepository;
  final WalletRepository _walletRepository;
  SocketIOClient? _walletSocketIOClient;

  PaymentCubit(
    this._walletRepository,
    this._paystack,
    this._firebaseAnalytics,
    this._dealRepository,
    this._sellerRepository,
  ) : super(PaymentState.initial());

  @override
  Future<void> close() {
    disposeSocketIO();
    return super.close();
  }

  void watchWalletUpdates([void Function(double?)? onUpdate]) {
    if (_walletSocketIOClient != null) {
      _walletSocketIOClient?.disconnect();
      _walletSocketIOClient?.close();
      _walletSocketIOClient?.dispose();
      _walletSocketIOClient = null;
    }

    _walletSocketIOClient = getIt<SocketIOClient>();
    _walletSocketIOClient?.connect().on('wallet-update', handler: (data, _this) {
      final json = data is Map ? data.mapToStringDynamic : data as Map<String, dynamic>;
      final amount = state.amount.getOrNull;

      try {
        emit(state.copyWith(
          amount: NumField(0),
          wallet: UserWalletDTO.fromJson(json).wallet?.domain,
        ));
        state.amountTextController.clear();
      } catch (_) {}

      if (state.paymentStatus == PaymentStatus.confirmed) {
        WidgetsBinding.instance.endOfFrame.then((_) => onUpdate?.call(amount));
        disposeSocketIO();
      } else {
        StreamSubscription<PaymentState>? _subscription;
        _subscription = stream.listen((st) {
          if (st.paymentStatus == PaymentStatus.confirmed) {
            _subscription?.cancel();
            disposeSocketIO();
            WidgetsBinding.instance.endOfFrame.then((_) => onUpdate?.call(amount));
          }
        });
      }
    });
  }

  Future<void> _paymentPortal(
    BuildContext ctx,
    User? user, {
    required PaymentMethod method,
    required num amount,
    required TransactionType type,
    Payable? payable,
    Future<void> Function()? verifyTransaction,
  }) async {
    method.maybeWhen(
      wallet: () {
        if (type == TransactionType.cr) {
          throw UnimplementedError('You can not fund your wallet with "your wallet"!');
        } else if (verifyTransaction != null) verifyTransaction();
      },
      flutterwave: () => _flutterwavePayment(
        ctx,
        user,
        amount: amount,
        type: type,
        payable: payable,
        onComplete: (s) async {
          await s.maybeWhen(
            confirmed: verifyTransaction,
            failed: () async {
              disposeSocketIO();
              emit(state.copyWith(status: some(AppHttpResponse.failure(''))));
            },
            orElse: () {},
          );
        },
      ),
      paystack: () => _paystackPay(
        ctx,
        user,
        amount: amount,
        type: type,
        payable: payable,
        onComplete: (s) async {
          await s.maybeWhen(
            confirmed: verifyTransaction,
            failed: () async {
              disposeSocketIO();
              emit(state.copyWith(status: some(AppHttpResponse.failure(''))));
            },
            orElse: () {},
          );
        },
      ),
      stripe: () async => throw UnimplementedError('Stripe payment is not yet implemented!'),
      orElse: () async => throw UnimplementedError('Payment method not supported!'),
    );
  }

  Future<void> _flutterwavePayment(
    BuildContext ctx,
    User? user, {
    required num amount,
    required TransactionType type,
    Payable? payable,
    OnTransactionComplete? onComplete,
  }) async {
    emit(state.copyWith(paymentRef: reference, status: none()));

    final name = user?.fullName.getOrEmpty;
    final email = user?.email.getOrEmpty;
    final phone = user?.phone.getOrNull;
    final _currency = user?.phone.country?.type?.name ?? Country.defaultCountry?.type?.name;
    final _reference = state.paymentRef!;

    final _style = FlutterwaveStyle(
      appBarText: state.paymentMethod.formatted,
      appBarTitleTextStyle: TextStyle(color: Palette.onSurfaceDark, fontSize: 20.sp),
      buttonColor: Palette.primary,
      appBarIcon: Icon(Icons.keyboard_backspace_rounded, color: Palette.onPrimary),
      buttonTextStyle: TextStyle(color: Palette.cardColorLight, fontSize: 18.sp),
      appBarColor: Palette.primary,
      dialogContinueTextStyle: TextStyle(color: App.resolveColor(Palette.primary), fontSize: 18.sp),
      dialogCancelTextStyle: TextStyle(
        color: App.resolveColor(Palette.onSurfaceLight, dark: Palette.onSurfaceDark),
        fontSize: 18.sp,
      ),
    );

    final _flutterwave = Flutterwave(
      context: ctx,
      style: _style,
      publicKey: env.flutterwaveKey,
      currency: _currency,
      txRef: _reference,
      amount: '$amount',
      isTestMode: env.flavor.isDev,
      redirectUrl: '/',
      customer: Customer(name: type.toJson, email: '$email', phoneNumber: '$phone'),
      paymentOptions: 'card,banktransfer,ussd,barter',
      meta: {
        'name': type.toJson,
        'transactionType': type.toJson,
        'consumer_id': user?.id.value,
        'consumer_name': user?.name?.getOrNull,
        'email': email,
        'phone': phone,
      }..removeWhere((_, e) => e == null || e == ''),
      customization: Customization(
        title: '${env.appName} - Fund Wallet / Other Payment',
        description: '$name wants to pay the sum of $amount, please honor if valid.',
        logo: Const.logoPng,
      ),
    );

    try {
      final _flwResponse = await _flutterwave.charge();

      if (_flwResponse != null) {
        emit(state.copyWith(isVerifyingTransaction: true));

        await _verifyTransaction(
          _flwResponse.transactionId!,
          PaymentMethod.flutterwave,
          amount: amount,
          currency: _currency,
          user: user,
          type: type,
          payable: payable,
          onComplete: onComplete,
          failureMessage: _flwResponse.status,
        );
      } else {
        emit(state.copyWith(paymentStatus: PaymentStatus.pending, isFundingWallet: false, isLoading: false));
      }
    } catch (e) {
      if (e is FormatException) return;

      emit(state.copyWith(status: some(AppHttpResponse.failure('$e')), paymentStatus: PaymentStatus.failed));
      onComplete?.call(PaymentStatus.failed);
    }
  }

  Future<void> _paystackPay(
    BuildContext ctx,
    User? user, {
    required num amount,
    required TransactionType type,
    Payable? payable,
    OnTransactionComplete? onComplete,
  }) async {
    emit(state.copyWith(paymentRef: reference, status: none()));

    final name = user?.fullName.getOrEmpty;
    final email = user?.email.getOrEmpty;
    final phone = user?.phone.getOrNull;
    final _currency = user?.phone.country?.type?.name ?? Country.defaultCountry?.type?.name;
    final _realAmount = amount * 100;
    final _reference = state.paymentRef!;

    final _charge = Charge()
      ..amount = _realAmount.floor()
      ..email = email
      ..reference = _reference
      ..currency = _currency
      ..putMetaData('transactionType', type.toJson)
      ..putCustomField('Full Name', '$name')
      ..putCustomField('Phone Number', '$phone')
      ..putCustomField('Email Address', '$email')
      ..putCustomField('Payment Currency', '$_currency')
      ..putCustomField('Payment Reference', state.paymentRef!);

    try {
      final _checkoutResponse = await _paystack.checkout(
        ctx,
        charge: _charge,
        fullscreen: true,
        hideAmount: false,
        hideEmail: false,
        logo: Image.asset(AppAssets.logo, width: 0.25.w, height: 0.15.w),
        method: CheckoutMethod.card,
      );

      if (_checkoutResponse.verify) {
        emit(state.copyWith(isVerifyingTransaction: true));

        await _verifyTransaction(
          _reference,
          PaymentMethod.paystack,
          amount: amount,
          currency: _currency,
          user: user,
          type: type,
          payable: payable,
          onComplete: onComplete,
        );
      }

      if (!_checkoutResponse.status && _checkoutResponse.message.isNotEmpty) {
        emit(state.copyWith(paymentStatus: PaymentStatus.pending, isFundingWallet: false, isLoading: false));
      }
    } on PaystackException catch (e) {
      emit(state.copyWith(status: some(AppHttpResponse.failure('${e.message}')), paymentStatus: PaymentStatus.failed));
      onComplete?.call(PaymentStatus.failed);
    }
  }

  Future<void> _verifyTransaction(
    String reference,
    PaymentMethod method, {
    num? amount,
    User? user,
    String? currency,
    required TransactionType type,
    Payable? payable,
    OnTransactionComplete? onComplete,
    String? failureMessage,
  }) async {
    final response = await _walletRepository.verifyTransaction(reference, method: method, type: type);

    await response.fold(
      (f) async => emit(state.copyWith(
        status: optionOf(f),
        isLoading: false,
        isFundingWallet: false,
        isVerifyingTransaction: false,
      )),
      (transaction) async {
        if (transaction != null && transaction.status) {
          _logPaymentSuccessful(amount, user, currency: currency, type: type, payable: payable);
          await onComplete?.call(PaymentStatus.confirmed);
          emit(state.copyWith(paymentStatus: PaymentStatus.confirmed));
        } else {
          _logPaymentFailed(amount, user, transaction?.message ?? failureMessage, currency: currency);
          await onComplete?.call(PaymentStatus.failed);
        }
      },
    );

    emit(state.copyWith(
      isLoading: false,
      isFundingWallet: false,
      isVerifyingTransaction: false,
    ));
  }

  void disposeSocketIO() {
    try {
      _walletSocketIOClient?.disconnect();
      _walletSocketIOClient?.close();
      _walletSocketIOClient?.dispose();
      _walletSocketIOClient = null;
    } catch (_) {}

    emit(state.copyWith(
      isLoading: false,
      isFundingWallet: false,
      isClosingDeal: false,
      isUpgradingPlan: false,
      isPayingAdmittanceFee: false,
      isFetchingWalletBalance: false,
      isFetchingWalletHistory: false,
      paymentStatus: PaymentStatus.pending,
    ));
  }

  Future<void> getWallet() async {
    emit(state.copyWith(isFetchingWalletBalance: true, status: none()));
    final result = await _walletRepository.getWallet();

    emit(result.fold(
      (e) => state.copyWith(status: optionOf(e), isFetchingWalletBalance: false),
      (wallet) => state.copyWith(wallet: wallet, isFetchingWalletBalance: false, hasWalletBalance: true),
    ));
  }

  void getWalletActivities(User? user, {UserWallet? existing, int? perPage, bool? nextPage, EndOfListCallback? endOfList}) async {
    if (state.status.getOrNull == AppHttpResponse.endOfList && nextPage == true) return endOfList?.call();

    assert(user != null, 'User cannot be null');

    emit(state.copyWith(isFetchingWalletHistory: true, status: none(), wallet: state.wallet ?? existing));

    final response = await _walletRepository.walletActivities(user!);

    emit(response.fold(
      (f) => state.copyWith(status: optionOf(f), isFetchingWalletHistory: false),
      (wallet) => state.copyWith(wallet: wallet, isFetchingWalletHistory: false),
    ));
  }

  void paymentMethodChanged(PaymentMethod? value, {bool? validate}) =>
      emit(state.copyWith(paymentMethod: value ?? state.paymentMethod, validate: validate ?? state.validate));

  void toggleLoading([bool? isLoading, Option<AppHttpResponse?>? status]) =>
      emit(state.copyWith(isLoading: isLoading ?? !state.isLoading, status: status ?? state.status));
}

extension PaymentCubitFieldChanges on PaymentCubit {
  void validateForm([bool value = true]) => emit(state.copyWith(validate: value));

  void amountChanged() {
    final value = state.amountTextController.numberValue;
    emit(state.copyWith(amount: NumField((value ?? 0).toDouble())));
  }

  void shippingAddressChanged(String? value) => emit(state.copyWith(shippingAddress: BasicTextField(value)));

  void shippingRegionChanged(String? value) => emit(state.copyWith(shippingRegion: BasicTextField(value)));
}
