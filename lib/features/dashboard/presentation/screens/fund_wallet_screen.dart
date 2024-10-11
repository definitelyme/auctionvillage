library fund_wallet_screen.dart;

import 'package:auctionvillage/core/presentation/index.dart';
import 'package:auctionvillage/features/auth/presentation/managers/managers.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/managers/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/widgets/index.dart';
import 'package:auctionvillage/manager/locator/locator.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A stateless widget to render FundWalletScreen.
class FundWalletScreen extends StatefulWidget with AutoRouteWrapper {
  final VoidCallback? onConfirmed;

  const FundWalletScreen({Key? key, this.onConfirmed}) : super(key: key);

  @override
  State<FundWalletScreen> createState() => _FundWalletScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return InheritOrCreateBlocProvider(
      orElse: () => getIt<PaymentCubit>(),
      child: MultiBlocListener(
        listeners: [
          BlocListener<PaymentCubit, PaymentState>(
            listenWhen: (p, c) =>
                p.status.getOrElse(() => null) != c.status.getOrElse(() => null) ||
                (c.status.getOrElse(() => null) != null && (c.status.getOrElse(() => null)!.response.maybeMap(orElse: () => false))),
            listener: (c, s) => s.status.fold(
              () {},
              (it) => it?.response.map(
                info: (i) => PopupDialog.info(message: i.message, show: i.message.isNotEmpty).render(),
                error: (f) => PopupDialog.error(message: f.message, show: f.show && f.message.isNotEmpty).render(),
                success: (suc) => PopupDialog.success(message: suc.message, show: suc.message.isNotEmpty).render(c),
              ),
            ),
          ),
          //
          BlocListener<PaymentCubit, PaymentState>(
            listenWhen: (p, c) => p.isFundingWallet != c.isFundingWallet,
            listener: (c, s) {
              if (!s.isFundingWallet && s.paymentStatus == PaymentStatus.confirmed) {
                onConfirmed?.call();
                if (App.currentRoute == FundWalletRoute.name) navigator.popUntilRoot();
              }
            },
          ),
        ],
        child: this,
      ),
    );
  }
}

class _FundWalletScreenState extends State<FundWalletScreen> {
  late final Iterable<PaymentMethod> _paymentMethods;
  late PaymentCubit _cubit;

  @override
  void initState() {
    super.initState();
    _cubit = context.read<PaymentCubit>();
    final _supportedPaymentMethods = context.read<RootCubit>().state.supportedPaymentMethods;
    _paymentMethods = _supportedPaymentMethods.iter;
  }

  @override
  void dispose() {
    _cubit.disposeSocketIO();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BlocSelector<PaymentCubit, PaymentState, bool>(
          selector: (s) => s.isFundingWallet,
          builder: (c, isFundingWallet) => ConfirmMaybePop(
            active: isFundingWallet,
            title: 'Close',
            message: 'Are you sure you want to exit?',
            onTrailingButtonPressed: () {},
            contentTextAlign: Utils.platform_(material: TextAlign.left, cupertino: TextAlign.center)!,
            child: AppSliverScrollView.scaffold(
              title: 'Fund Wallet',
              useSafeArea: true,
              enablePullDown: false,
              scaffoldOverlayStyle: App.customSystemOverlay(ctx: context, android: context.androidOverlay, ios: context.iosOverlay),
              toolbarOverlayStyle: App.customSystemOverlay(ctx: context, android: context.androidOverlay, ios: context.iosOverlay),
              actions: [
                BlocSelector<PaymentCubit, PaymentState, bool>(
                  bloc: context.read<PaymentCubit>(),
                  selector: (s) => s.isLoading,
                  builder: (c, isLoading) => AnimatedVisibility(
                    visible: isLoading,
                    child: Padding(
                      padding: EdgeInsets.only(right: App.sidePadding),
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.all(1.0),
                          child: CircularProgressBar.adaptive(strokeWidth: 1.5, width: 25, height: 25),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
              slivers: [
                SliverPadding(
                  padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
                  sliver: SliverList(
                    delegate: SliverChildListDelegate.fixed([
                      const TextFormInputLabel(text: 'Amount'),
                      //
                      ReactiveTextFormField<PaymentCubit, PaymentState>(
                        controller: (s) => s.amountTextController,
                        autoDisposeController: false,
                        disabled: (s) => s.isLoading || isFundingWallet,
                        keyboardType: TextInputType.number,
                        focus: PaymentState.focusAmount,
                        // next: PaymentState.focusPin,
                        capitalization: TextCapitalization.none,
                        field: (s) => s.amount,
                        validate: (s) => s.validate,
                        response: (s) => s.status,
                        onChanged: (cubit, _) => cubit.amountChanged(),
                        prefixIcon: (s) => const CurrencyPrefixWidget(),
                        prefixMode: (s) => OverlayVisibilityMode.always,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          FilteringTextInputFormatter.singleLineFormatter,
                        ],
                      ),
                      0.02.verticalh,
                      //
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: TextFormInputLabel(text: 'Payment Method'),
                      ),
                      //
                      _PaymentMethodSelector(_paymentMethods),
                      //
                      0.02.verticalh,
                      //
                      AdaptiveText.rich(
                        TextSpan(children: [
                          ...const [
                            TextSpan(text: 'NOTE: ', style: TextStyle(fontWeight: FontWeight.w600)),
                            TextSpan(text: 'You will be charged in Nigerian Naira.'),
                            TextSpan(text: '\n'),
                          ],
                          TextSpan(
                            text: 'Learn More',
                            recognizer: TapGestureRecognizer()..onTap = () => UrlLauncher.url(Const.privacyPolicyUrl),
                            style: TextStyle(
                              color: Palette.primaryColor,
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.w600,
                              fontSize: 15.sp,
                            ),
                          ),
                        ]),
                        maxLines: 3,
                        fontSize: 15.sp,
                        // style: const TextStyle(fontStyle: FontStyle.italic),
                      ),
                      //
                      0.02.verticalh,
                      //
                      SafeArea(
                        top: false,
                        left: false,
                        right: false,
                        child: BlocBuilder<PaymentCubit, PaymentState>(
                          builder: (c, s) => Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              AdaptiveButton(
                                text: 'Continue',
                                loadingData: (d) => d.copyWith(isLoading: isFundingWallet),
                                disabled: s.isLoading || isFundingWallet || (s.amountTextController.numberValue! < 100),
                                onPressed: () {
                                  final user = c.read<AuthWatcherCubit>().state.user;
                                  enqueue(
                                    () => _cubit.fundWallet(
                                      context,
                                      user,
                                      onWalletUpdate: (value) {
                                        final amount = value?.toString().asCurrency();
                                        if (App.currentRoute != SuccessRoute.name)
                                          navigator.pushAndPopUntil(
                                            SuccessRoute(
                                              hasAppbar: false,
                                              title: 'Fund Wallet',
                                              description: 'You have successfully credited your wallet'
                                                  '${amount != null ? ' with $amount.' : '!'}',
                                              svg: AppAssets.successRinged,
                                              buttonText: 'Go Home',
                                              onButtonPressed: navigator.popUntilRoot,
                                            ),
                                            predicate: (r) => r.isFirst,
                                          );
                                      },
                                    ),
                                  );
                                },
                                child: (loader) => Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    AdaptiveText.rich(
                                      const TextSpan(children: [
                                        TextSpan(text: 'Please wait...'),
                                        TextSpan(text: ' '),
                                      ]),
                                      fontSize: 16.sp,
                                      isDefault: true,
                                      textColor: Colors.white70,
                                    ),
                                    loader,
                                  ],
                                ),
                              ),
                              //
                              0.015.verticalh,
                              //
                              Center(
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.lock_outline_rounded,
                                      size: 18,
                                      color: App.resolveColor(Palette.iconLight, dark: Palette.iconDark, ctx: c),
                                    ),
                                    //
                                    0.015.horizontalw,
                                    //
                                    AdaptiveText(
                                      'Secure Payment',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15.0.sp,
                                      textColor: Palette.subTextLight,
                                      textColorDark: Palette.subTextDark,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]),
                  ),
                ),
              ],
            ),
          ),
        ),
        //
        Positioned(
          right: 0,
          bottom: 0.03.h,
          child: BlocSelector<PaymentCubit, PaymentState, bool>(
            selector: (s) => s.isFundingWallet,
            builder: (c, isFundingWallet) => AnimatedVisibility(
              visible: isFundingWallet,
              child: Material(
                type: MaterialType.transparency,
                child: RippleAnimation(
                  waveCount: 1,
                  size: 24,
                  color: Palette.destructiveRed,
                  child: AppIconButton(
                    width: 50,
                    height: 50,
                    elevation: 0,
                    borderRadius: 100.br,
                    type: MaterialType.button,
                    tooltip: 'Please contact support if you experience issues funding your wallet.',
                    disabled: !isFundingWallet,
                    cupertinoPadding: EdgeInsets.zero,
                    backgroundColor: Palette.destructiveRed,
                    cupertinoBackgroundColor: Palette.destructiveRed,
                    useMaterialDefaultPadding: false,
                    child: Icon(Icons.help_outline_rounded, color: Palette.onError, size: 24),
                    onPressed: () => navigator.navigate(ContactSupportRoute(
                      type: FeedbackType.complaint,
                      focusMessage: true,
                    )),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _PaymentMethodSelector extends StatelessWidget {
  final Iterable<PaymentMethod> _paymentMethods;

  const _PaymentMethodSelector(this._paymentMethods, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PaymentCubit, PaymentState>(
      builder: (c, s) => Wrap(
        spacing: 0.02.w,
        runSpacing: 0.03.w,
        children: _paymentMethods
            .map(
              (e) => ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 0.38.w, maxHeight: 0.38.w),
                child: MyHero(
                  tag: null,
                  disabled: s.isFundingWallet,
                  color: App.resolveColor(Palette.cardColorLight, dark: Palette.cardColorDark, ctx: c),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(Utils.inputBorderRadius),
                    side: BorderSide(
                      color: App.resolveColor(s.paymentMethod == e ? s.paymentMethod.color : Colors.transparent)!,
                    ),
                  ),
                  child: AdaptiveInkWell(
                    onTap: () => c.read<PaymentCubit>().paymentMethodChanged(e),
                    borderRadius: BorderRadius.circular(Utils.inputBorderRadius),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0.05.sw, vertical: 0.03.sw),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Flexible(
                            flex: 2,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                color: e.when(
                                  flutterwave: () => const Color(0xffFFF0D9),
                                  paystack: () => Colors.white,
                                  wallet: () => null,
                                  stripe: () => null,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(9.0),
                                child: e.when(
                                  paystack: () => const Icon(AVIcons.paystack, color: Palette.paystack),
                                  flutterwave: () => const Icon(AVIcons.flutterwave, color: Palette.flutterwave),
                                  wallet: () => const Icon(AVIcons.flutterwave, color: Palette.flutterwave),
                                  stripe: () => AppAssets.stripeLogo,
                                ),
                              ),
                            ),
                          ),
                          //
                          VerticalSpace(height: 0.03.w),
                          //
                          Flexible(
                            child: AdaptiveText(
                              e.name.titleCase(),
                              maxLines: 2,
                              fontSize: 17.sp,
                              minFontSize: 14,
                              maxFontSize: 19,
                              fontWeight: FontWeight.w500,
                              textColor: s.paymentMethod == e ? s.paymentMethod.color : null,
                              textColorDark: s.paymentMethod == e ? s.paymentMethod.color : null,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
