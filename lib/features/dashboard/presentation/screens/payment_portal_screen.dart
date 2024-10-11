library payment_portal_screen.dart;

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/core/presentation/index.dart';
import 'package:auctionvillage/features/auth/presentation/managers/managers.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/managers/index.dart';
import 'package:auctionvillage/manager/locator/locator.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/collection.dart';

/// A stateless widget to render PaymentPortalScreen.
class PaymentPortalScreen extends StatefulWidget with AutoRouteWrapper {
  final Payable payable;
  final VoidCallback onPaymentSuccess;
  final VoidCallback? onPaymentFailed;

  const PaymentPortalScreen(this.payable, {super.key, required this.onPaymentSuccess, this.onPaymentFailed});

  @override
  State<PaymentPortalScreen> createState() => _PaymentPortalScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return InheritOrCreateBlocProvider(
      orElse: () => getIt<PaymentCubit>(),
      child: BlocListener<PaymentCubit, PaymentState>(
        listenWhen: (p, c) =>
            p.status.getOrElse(() => null) != c.status.getOrElse(() => null) ||
            (c.status.getOrElse(() => null) != null && (c.status.getOrElse(() => null)!.response.maybeMap(orElse: () => false))),
        listener: (c, s) => s.status.fold(
          () {},
          (it) => it?.response.mapOrNull(
            error: (e) => {
              navigator.replace(SuccessRoute(
                title: 'Payment Failed',
                // description: '${s.paymentStatus.message}',
                description: 'We could not process your payment. Please try again later.',
                fit: BoxFit.contain,
                height: 0.6.w,
                width: 0.6.w,
                buttonText: 'Continue',
                onButtonPressed: navigator.pop,
                svg: AppAssets.errorRinged,
              )),
            },
            success: (s) => PopupDialog.success(
              message: s.message,
              show: s.message.isNotEmpty,
              duration: const Duration(seconds: 7),
              listener: (status) => status?.fold(
                dismissed: () {
                  if (s.pop) {
                    onPaymentSuccess();
                    // payable.map(
                    //   closeBid: (cb) => navigator.pushAndPopUntil(
                    //     DealDetailRoute(deal: cb.deal, onUnlist: navigator.popUntilRoot),
                    //     predicate: (r) => r.settings.name != PaymentPortalRoute.name,
                    //   ),
                    //   upgradePlan: (up) => navigator.pushAndPopUntil(
                    //     DealDetailRoute(deal: up.deal, onUnlist: navigator.popUntilRoot),
                    //     predicate: (r) => r.settings.name == DashboardRoute.name,
                    //   ),
                    //   clearanceDeal: (cd) => navigator.pushAndPopUntil(
                    //     DealDetailRoute(deal: cd.deal, onUnlist: navigator.popUntilRoot),
                    //     predicate: (r) => r.settings.name != PaymentPortalRoute.name,
                    //   ),
                    // );
                  }
                },
              ),
            ).render(c),
          ),
        ),
        child: this,
      ),
    );
  }
}

class _PaymentPortalScreenState extends State<PaymentPortalScreen> {
  late PaymentCubit _paymentCubit;
  late AuthWatcherCubit _watcherCubit;
  late final Iterable<PaymentMethod> _paymentMethods;

  @override
  void dispose() {
    _paymentCubit.resetPaymentPortal();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    final _supportedPaymentMethods = context.read<RootCubit>().state.supportedPaymentMethods;
    _paymentMethods = [PaymentMethod.wallet, ..._supportedPaymentMethods.asList()];
    _paymentCubit = blocMaybeOf(context, orElse: () => getIt<PaymentCubit>());
    _watcherCubit = blocMaybeOf(context, orElse: () => getIt<AuthWatcherCubit>());

    _paymentCubit.paymentMethodChanged(PaymentMethod.wallet, validate: false);
    if (_watcherCubit.isAuthenticated) enqueue(_paymentCubit.getWallet);
  }

  double? get _amount => widget.payable.map(
        closeBid: (cb) => cb.bidAmount.getOrNull,
        upgradePlan: (up) => up.plan.amount.getOrNull,
        clearanceDeal: (cd) => cd.deal.admittanceFee.getOrNull,
      );

  String? get amount => _amount?.toString();

  String? get amountAndCurrency {
    final currency = widget.payable.map(
      closeBid: (cb) => cb.deal.country?.symbol,
      upgradePlan: (up) => up.product.country?.symbol,
      clearanceDeal: (cd) => (cd.deal.country ?? cd.deal.product?.country)?.symbol,
    );

    return amount?.asCurrency(currency: currency);
  }

  double? get _walletBalance => context.watch<PaymentCubit>().state.wallet?.balance.getOrNull;

  String get walletBalance {
    if (_walletBalance == null) return '';

    final actualBalance = _walletBalance.toString().asCurrency();
    return 'Balance: ($actualBalance)';
  }

  bool get hasInsufficientBalance => (_walletBalance ?? 0) < (_amount ?? 0);

  void onClosePortal() {
    navigator.popUntil((r) => r.settings.name != PaymentPortalRoute.name);
  }

  MediaField? photo(Deal deal, {Product? product}) {
    final _productPhoto = product?.let((it) => it.photos.map((e) => e.image)).getOrNull(0);
    final _dealPhoto = deal.product?.photos.getOrNull(0)?.image;

    return _productPhoto?.value.fold(
      (_) => _dealPhoto?.value.fold((f2) => _productPhoto, (_) => _dealPhoto),
      (_) => _productPhoto,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ConfirmMaybePop(
      autoPop: true,
      title: 'Close',
      message: 'Are you sure you want to exit?',
      onTrailingButtonPressed: onClosePortal,
      contentTextAlign: Utils.platform_(material: TextAlign.left, cupertino: TextAlign.center)!,
      child: AdaptiveScaffold(
        iosContentPadding: true,
        adaptiveToolbar: AdaptiveToolbar(
          showCupertinoCustomLeading: true,
          cupertinoImplyLeading: false,
          leadingAction: navigator.pop,
          centerTitle: true,
          title: widget.payable.maybeMap(
            upgradePlan: (_) => 'Upgrade Plan',
            clearanceDeal: (_) => 'Clearance Fee',
            orElse: () => 'Payment',
          ),
        ),
        body: SingleChildScrollView(
          physics: Utils.physics,
          padding: EdgeInsets.symmetric(horizontal: App.sidePadding).copyWith(top: App.sidePadding),
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Column(
            children: [
              Material(
                color: App.resolveColor(Palette.neutralFA, dark: Palette.backgroundColorDark.shade400, ctx: context),
                shape: RoundedRectangleBorder(
                  borderRadius: 8.br,
                  side: const BorderSide(color: Colors.grey, width: 1),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 0.32.w,
                        height: 0.32.w,
                        child: ImageBox.network(
                          photo: widget.payable.map(
                            closeBid: (cb) => '${photo(cb.deal, product: cb.deal.product)}',
                            upgradePlan: (up) => '${photo(up.deal, product: up.product)}',
                            clearanceDeal: (cd) => '${photo(cd.deal, product: cd.deal.product)}',
                          ),
                          elevation: 3,
                          expandsFullscreen: true,
                          heroTag: 'product-photo',
                          boxBorder: Border.all(color: Colors.grey, width: 0.4),
                          borderRadius: 8.br,
                        ),
                      ),
                      //
                      0.035.horizontalw,
                      //
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AdaptiveText.rich(
                              TextSpan(children: [
                                widget.payable.map(
                                  closeBid: (cb) => TextSpan(text: '${cb.deal.product?.name}'),
                                  upgradePlan: (up) => TextSpan(text: '${up.product.name}'),
                                  clearanceDeal: (cd) => TextSpan(text: '${cd.deal.product?.name}'),
                                ),
                              ]),
                              maxLines: 1,
                              minFontSize: 15,
                              fontSize: 15.sp,
                              maxFontSize: 17,
                              fontWeight: FontWeight.w600,
                              overflow: TextOverflow.ellipsis,
                            ),
                            //
                            0.005.verticalh,
                            //
                            AdaptiveText.rich(
                              TextSpan(children: [
                                ...?widget.payable.mapOrNull(
                                  upgradePlan: (up) => [
                                    if (up.product.brandInformation?.description.isValid == true)
                                      TextSpan(text: '${up.product.brandInformation?.description}'),
                                  ],
                                  closeBid: (cb) => [
                                    if (cb.deal.product?.brandInformation?.description.isValid == true)
                                      TextSpan(text: '${cb.deal.product?.brandInformation?.description}'),
                                  ],
                                  clearanceDeal: (cd) => [
                                    if (cd.deal.product?.brandInformation?.description.isValid == true)
                                      TextSpan(text: '${cd.deal.product?.brandInformation?.description}'),
                                  ],
                                ),
                              ]),
                              maxLines: 2,
                              minFontSize: 14,
                              height: 1.2,
                              fontSize: 15.sp,
                              maxFontSize: 17,
                              overflow: TextOverflow.ellipsis,
                            ),
                            //
                            0.01.verticalh,
                            //
                            ...?widget.payable.mapOrNull(
                              upgradePlan: (p) => [
                                AdaptiveText(
                                  ' - ${p.plan.name} Plan',
                                  maxLines: 1,
                                  minFontSize: 13,
                                  fontSize: 13.sp,
                                  maxFontSize: 16,
                                  textColor: Palette.primary,
                                  textColorDark: Palette.primary,
                                  fontWeight: FontWeight.bold,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                            //
                            0.015.verticalh,
                            //
                            Row(
                              children: [
                                DecoratedBox(
                                  decoration: BoxDecoration(color: Colors.grey.shade400, borderRadius: 100.br),
                                  child: Padding(
                                    padding: const EdgeInsets.all(7),
                                    child: Center(
                                      child: Icon(Icons.person, color: Colors.grey.shade800),
                                    ),
                                  ),
                                ),
                                //
                                (App.sidePadding * 0.5).horizontal,
                                //
                                Flexible(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      AdaptiveText(
                                        '${widget.payable.user.fullName}',
                                        maxLines: 1,
                                        fontSize: 13.sp,
                                        minFontSize: 13,
                                        maxFontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      //
                                      AdaptiveText(
                                        '${widget.payable.user.email}',
                                        maxLines: 2,
                                        fontSize: 13.sp,
                                        minFontSize: 13,
                                        maxFontSize: 15,
                                        fontWeight: FontWeight.w300,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //
              Divider(
                height: 0.035.h,
                thickness: 1,
                indent: App.sidePadding,
                endIndent: App.sidePadding,
              ),
              //
              ...?widget.payable.mapOrNull(
                closeBid: (i) => [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: TextFormInputLabel(text: 'Select Shipping Region / Area'),
                  ),
                  //
                  BlocBuilder<PaymentCubit, PaymentState>(
                    builder: (c, s) => AdaptiveDropdown<String?>(
                      hint: '-- Select --',
                      items: widget.payable.maybeMap(
                        closeBid: (i) => i.deal.product?.regions.toList ?? [],
                        orElse: () => [],
                      ),
                      text: (value) => value,
                      validate: s.validate,
                      disabled: s.isLoading || s.isClosingDeal || s.isUpgradingPlan,
                      groupValue: s.shippingRegion.getOrNull,
                      errorText: (value) => value == null ? 'Select a delivery Region' : null,
                      onChanged: (it) => _paymentCubit.shippingRegionChanged(it),
                    ),
                  ),
                  //
                  0.008.verticalh,
                  //
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: TextFormInputLabel(text: 'Shipping Address'),
                  ),
                  //
                  ReactiveTextFormField<PaymentCubit, PaymentState>(
                    minLines: 3,
                    hintText: (s) => 'No 1, Jalan Sri Semantan, 50200 Kuala ...',
                    disabled: (s) => s.isLoading || s.isClosingDeal || s.isUpgradingPlan,
                    focus: PaymentState.shippingAddressFocus,
                    keyboardType: TextInputType.multiline,
                    action: TextInputAction.newline,
                    capitalization: TextCapitalization.none,
                    autoDisposeController: false,
                    field: (s) => s.shippingAddress,
                    validate: (s) => s.validate,
                    response: (s) => s.status,
                    onChanged: (cubit, it) => cubit.shippingAddressChanged(it),
                  ),
                  //
                  Divider(
                    height: 0.04.h,
                    thickness: 1,
                    indent: App.sidePadding,
                    endIndent: App.sidePadding,
                  ),
                ],
              ),
              //
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AdaptiveText(
                    'Total',
                    maxLines: 3,
                    fontSize: 17.sp,
                    fontWeight: FontWeight.bold,
                    overflow: TextOverflow.ellipsis,
                  ),
                  //
                  AdaptiveText(
                    amountAndCurrency ?? '',
                    maxLines: 3,
                    fontSize: 18.sp,
                    maxFontSize: 20,
                    fontWeight: FontWeight.bold,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
              //
              0.03.verticalh,
              //
              ..._paymentMethods.map(
                (e) => Theme(
                  data: Theme.of(context).copyWith(
                    splashColor: Utils.platform_(cupertino: Colors.transparent),
                    highlightColor: Utils.platform_(cupertino: Colors.transparent),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 0.02.h),
                    child: Material(
                      type: MaterialType.transparency,
                      child: BlocSelector<PaymentCubit, PaymentState, PaymentMethod>(
                        selector: (s) => s.paymentMethod,
                        builder: (c, groupValue) => RadioTheme(
                          data: Utils.platform_(
                            cupertino: RadioTheme.of(context).copyWith(fillColor: MaterialStateProperty.all(Palette.onSurface)),
                            material: RadioTheme.of(context),
                          )!,
                          child: RadioListTile<PaymentMethod>(
                            value: e,
                            dense: true,
                            isThreeLine: true,
                            enableFeedback: true,
                            activeColor: Palette.primary,
                            groupValue: groupValue,
                            visualDensity: VisualDensity.comfortable,
                            contentPadding: EdgeInsets.symmetric(horizontal: App.sidePadding * 0.4, vertical: 0.014.h),
                            title: AdaptiveText(
                              e.formatted,
                              maxLines: 1,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              overflow: TextOverflow.ellipsis,
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: AdaptiveText.rich(
                                TextSpan(children: [
                                  ...e.maybeWhen(
                                    wallet: () => [
                                      TextSpan(text: e.description),
                                      if (walletBalance.isNotEmpty) ...[
                                        const TextSpan(text: ' - '),
                                        TextSpan(
                                          text: walletBalance,
                                          style: TextStyle(color: Palette.primary, fontWeight: FontWeight.w600),
                                        ),
                                        //
                                        WidgetSpan(
                                          child: Baseline(
                                            baseline: 1,
                                            baselineType: TextBaseline.alphabetic,
                                            child: BlocSelector<PaymentCubit, PaymentState, bool>(
                                              selector: (s) => !s.hasWalletBalance || s.isFetchingWalletBalance,
                                              builder: (c, isLoading) => Visibility(
                                                visible: isLoading,
                                                child: const Padding(
                                                  padding: EdgeInsets.all(2.0),
                                                  child: CircularProgressBar.adaptive(width: 20, height: 20, strokeWidth: 1.5),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                      // const TextSpan(text: '.'),
                                    ],
                                    orElse: () => [TextSpan(text: e.description)],
                                  ),
                                ]),
                                fontSize: 14.sp,
                                maxFontSize: 17,
                                fontWeight: FontWeight.w300,
                                isDefault: true,
                              ),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: 8.br,
                              side: const BorderSide(color: Colors.grey, width: 1),
                            ),
                            onChanged: c.read<PaymentCubit>().paymentMethodChanged,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              //
              // const Spacer(),
              //
              Padding(
                padding: EdgeInsets.only(bottom: 0.02.h),
                child: BlocBuilder<PaymentCubit, PaymentState>(
                  builder: (ctx, s) => AppButton(
                    text: 'Pay $amountAndCurrency',
                    isLoading: s.isUpgradingPlan || s.isClosingDeal || s.isPayingAdmittanceFee,
                    disabled: s.isUpgradingPlan ||
                        s.isClosingDeal ||
                        s.isPayingAdmittanceFee ||
                        (hasInsufficientBalance && s.paymentMethod == PaymentMethod.wallet),
                    onPressed: () => widget.payable.map(
                      closeBid: (cb) => enqueue(
                        () => _paymentCubit.payAndCloseBid(
                          ctx,
                          cb.deal,
                          method: _paymentCubit.state.paymentMethod,
                          resource: cb.resource,
                          user: widget.payable.user,
                          amount: _amount,
                          payable: cb,
                        ),
                      ),
                      upgradePlan: (up) => enqueue(
                        () => _paymentCubit.upgradePlan(
                          ctx,
                          up.deal,
                          method: _paymentCubit.state.paymentMethod,
                          plan: up.plan,
                          resource: up.resource,
                          user: widget.payable.user,
                          amount: _amount,
                          payable: up,
                        ),
                      ),
                      clearanceDeal: (cd) => enqueue(
                        () => _paymentCubit.payAdmittanceFee(
                          ctx,
                          cd.deal,
                          method: _paymentCubit.state.paymentMethod,
                          resource: cd.resource,
                          user: widget.payable.user,
                          amount: _amount,
                          payable: cd,
                        ),
                      ),
                    ),
                  ),
                ),
              ).safeBottom,
            ],
          ),
        ),
      ),
    );
  }
}
