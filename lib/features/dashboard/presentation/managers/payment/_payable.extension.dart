part of './payment_cubit.dart';

extension PaymentCubitX1 on PaymentCubit {
  void _logPaymentFailed(num? amount, User? user, Object? message, {String? currency}) async {
    await _firebaseAnalytics.logEvent(
      name: 'payment_failed',
      parameters: <String, dynamic>{
        'reason_message': '$message',
        'payment_type': 'CARD',
        'payment_status': 'Failed',
        'payment_reference': state.paymentRef,
        'payment_amount': amount,
        'payment_currency': currency,
      }..removeWhere((_, e) => e == null || e == ''),
    );
  }

  void _logPaymentSuccessful(
    num? amount,
    User? user, {
    String? currency,
    required TransactionType type,
    Payable? payable,
  }) async {
    await payable?.mapOrNull(
      closeBid: (c) async {
        await _firebaseAnalytics.logAddShippingInfo(
          value: amount?.toDouble(),
          currency: currency,
          callOptions: AnalyticsCallOptions(global: false),
          shippingTier: 'Delivery - ${c.deal.product?.shippingInformation?.deliveryPeriod.getOrNull}',
          items: [
            if (state.shippingRegion.isValid)
              AnalyticsEventItem(
                itemId: 'shipping-region',
                itemName: state.shippingRegion.getOrNull,
                price: amount,
                quantity: 1,
                currency: currency,
              ),
            //
            if (state.shippingAddress.isValid)
              AnalyticsEventItem(
                itemId: 'shipping-address',
                itemName: state.shippingAddress.getOrNull,
                price: amount,
                quantity: 1,
                currency: currency,
              ),
            //
            AnalyticsEventItem(
              itemId: 'pickup-type',
              itemName: c.deal.product?.shippingInformation?.isPickup == true ? 'Pickup Available' : 'Pickup Not Available',
              price: amount,
              quantity: 1,
              currency: currency,
            ),
          ],
        );
      },
    );

    await _firebaseAnalytics.logPurchase(
      currency: currency,
      value: amount?.toDouble(),
      transactionId: state.paymentRef,
      affiliation: '${env.appName} - Payment / Purchase',
      items: [
        AnalyticsEventItem(
          itemId: 'transaction-type<->${type.name}',
          itemName: type.when(
            credit: 'Wallet ${type.capitalized}',
            debit: '${type.capitalized} - Purchase',
          ),
          price: amount,
          currency: currency,
          quantity: 1,
        ),
        //
        if (payable != null)
          payable.map(
            closeBid: (p) => AnalyticsEventItem(
              itemId: 'transaction-type<->closebid',
              itemName: '${p.deal.product?.name ?? 'Item Purchase'}',
              price: amount,
              currency: currency,
              quantity: 1,
              affiliation: p.deal.product?.owner?.fullName.getOrNull,
              itemBrand: p.deal.product?.brandInformation?.brand.getOrNull,
              itemCategory: p.deal.product?.category?.name.getOrNull,
              itemListId: p.deal.id.value,
            ),
            upgradePlan: (u) => AnalyticsEventItem(
              itemId: 'transaction-type<->upgradeplan',
              itemName: 'Plan Upgrade - ${u.plan.name}',
              price: amount,
              currency: currency,
              quantity: 1,
              itemListId: u.deal.id.value,
              affiliation: u.product.owner?.fullName.getOrNull,
              itemBrand: u.product.brandInformation?.brand.getOrNull,
              itemCategory: u.product.category?.name.getOrNull,
            ),
            clearanceDeal: (c) => AnalyticsEventItem(
              itemId: 'transaction-type<->clearancedeal',
              itemName: 'Clearance Deal - ${c.deal.product?.name ?? 'Item Purchase'}',
              price: amount,
              currency: currency,
              quantity: 1,
              affiliation: c.deal.product?.owner?.fullName.getOrNull,
              itemBrand: c.deal.product?.brandInformation?.brand.getOrNull,
              itemCategory: c.deal.product?.category?.name.getOrNull,
              itemListId: c.deal.id.value,
            ),
          ),
      ],
    );

    await _firebaseAnalytics.logEvent(
      name: 'payment_successful',
      parameters: {
        'transactionType': type.name,
        'payment_status': 'Successful',
        'payment_type': 'CARD',
        'payment_reference': state.paymentRef,
        'amount': amount,
        'currency': currency,
      }..removeWhere((_, e) => e == null || e == ''),
    );
  }

  void fundWallet(BuildContext c, User? user, {void Function(double?)? onWalletUpdate}) async {
    emit(state.copyWith(isFundingWallet: true, validate: true, status: none()));

    final _conn = await connection();

    await _conn.fold(
      () async {
        watchWalletUpdates(onWalletUpdate);

        await _paymentPortal(
          c,
          user,
          method: state.paymentMethod,
          amount: state.amount.getExact(),
          type: TransactionType.cr,
        );
      },
      (f) async => emit(state.copyWith(status: optionOf(f), isFundingWallet: false)),
    );
  }

  void payAndCloseBid(
    BuildContext ctx,
    Deal deal, {
    required PaymentMethod method,
    required PaymentResource resource,
    required double? amount,
    Payable? payable,
    User? user,
  }) async {
    emit(state.copyWith(isClosingDeal: true, validate: true, status: none()));

    final shippingAddress = state.shippingAddress;
    final shippingRegion = state.shippingRegion;

    if (shippingRegion.isValid && shippingAddress.isValid) {
      Future<void> confirmPayment() async {
        final response = await _sellerRepository.payment(
          deal: deal,
          paymentMethod: method,
          resource: resource,
          deliveryAddress: shippingAddress,
          region: shippingRegion,
          reference: method.maybeWhen(orElse: () => state.paymentRef, wallet: () => null),
        );

        emit(state.copyWith(status: optionOf(AppHttpResponse.successful(response.message)), validate: response.isFailure));
      }

      final _conn = await connection();

      await _conn.fold(
        () async => await _paymentPortal(
          ctx,
          user,
          method: method,
          amount: amount ?? 0,
          type: TransactionType.dr,
          payable: payable,
          verifyTransaction: confirmPayment,
        ),
        (f) async => emit(state.copyWith(status: optionOf(f))),
      );
    }

    emit(state.copyWith(isClosingDeal: false));
  }

  void upgradePlan(
    BuildContext ctx,
    Deal deal, {
    required DealPlan plan,
    required PaymentMethod method,
    required PaymentResource resource,
    required double? amount,
    Payable? payable,
    User? user,
  }) async {
    emit(state.copyWith(isUpgradingPlan: true, status: none()));

    Future<void> confirmPayment() async {
      final response = await _dealRepository.upgradePlan(
        deal,
        paymentMethod: method,
        plan: plan,
        resource: resource,
        reference: method.maybeWhen(orElse: () => state.paymentRef, wallet: () => null),
      );
      emit(state.copyWith(status: optionOf(AppHttpResponse.successful(response.message)), validate: response.isFailure));
    }

    final _conn = await connection();

    await _conn.fold(
      () async => await _paymentPortal(
        ctx,
        user,
        method: method,
        amount: amount ?? 0,
        type: TransactionType.dr,
        payable: payable,
        verifyTransaction: confirmPayment,
      ),
      (f) async => emit(state.copyWith(status: optionOf(f))),
    );

    emit(state.copyWith(isUpgradingPlan: false));
  }

  void payAdmittanceFee(
    BuildContext ctx,
    Deal deal, {
    required PaymentMethod method,
    required PaymentResource resource,
    required double? amount,
    Payable? payable,
    User? user,
  }) async {
    emit(state.copyWith(isPayingAdmittanceFee: true, status: none()));

    Future<void> confirmPayment() async {
      final response = await _dealRepository.payAdmittanceFee(
        deal,
        reference: method.maybeWhen(orElse: () => state.paymentRef, wallet: () => null),
      );
      emit(state.copyWith(status: optionOf(AppHttpResponse.successful(response.message)), validate: response.isFailure));
    }

    final _conn = await connection();

    await _conn.fold(
      () async => await _paymentPortal(
        ctx,
        user,
        method: method,
        amount: amount ?? 0,
        type: TransactionType.dr,
        payable: payable,
        verifyTransaction: confirmPayment,
      ),
      (f) async => emit(state.copyWith(status: optionOf(f))),
    );

    emit(state.copyWith(isPayingAdmittanceFee: false));
  }

  void resetPaymentPortal() {
    emit(state.copyWith(
      status: none(),
      validate: false,
      isLoading: false,
      isClosingDeal: false,
      isUpgradingPlan: false,
      isPayingAdmittanceFee: false,
      isFetchingWalletBalance: false,
      isFetchingWalletHistory: false,
      paymentRef: reference,
      paymentMethod: PaymentMethod.flutterwave,
      shippingAddress: BasicTextField(null),
      shippingRegion: BasicTextField(null),
      paymentStatus: PaymentStatus.pending,
    ));
  }
}
