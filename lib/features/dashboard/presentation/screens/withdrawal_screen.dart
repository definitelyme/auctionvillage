library withdrawal_screen.dart;

import 'package:auctionvillage/core/data/response/index.dart';
import 'package:auctionvillage/core/presentation/index.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/managers/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/screens/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/widgets/index.dart';
import 'package:auctionvillage/manager/locator/locator.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A stateless widget to render WithdrawalScreen.
class WithdrawalScreen extends StatefulWidget with AutoRouteWrapper {
  const WithdrawalScreen({Key? key}) : super(key: key);

  @override
  State<WithdrawalScreen> createState() => _WithdrawalScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return InheritOrCreateBlocProvider(
      orElse: () => getIt<WithdrawCubit>(),
      child: BlocListener<WithdrawCubit, WithdrawState>(
        listenWhen: (p, c) =>
            p.status.getOrElse(() => null) != c.status.getOrElse(() => null) ||
            (c.status.getOrElse(() => null) != null && (c.status.getOrElse(() => null)!.response.maybeMap(orElse: () => false))),
        listener: (c, s) => s.status.fold(
          () {},
          (it) => it?.response.mapOrNull(
            info: (i) => PopupDialog.info(message: i.message, show: i.message.isNotEmpty, duration: 4.seconds).render(),
            error: (f) => PopupDialog.error(message: f.message, show: f.show && f.message.isNotEmpty).render(),
            // success: (s) => PopupDialog.success(message: s.message, show: s.message.isNotEmpty).render(c),
          ),
        ),
        child: this,
      ),
    );
  }
}

class _WithdrawalScreenState extends State<WithdrawalScreen> {
  late WithdrawCubit _cubit;

  @override
  void initState() {
    _cubit = blocMaybeOf(context, orElse: () => getIt<WithdrawCubit>());
    assertAndEnsurePinSetup();
    _cubit.watchWithdrawalUpdates((accountNumber) {
      navigator.navigate(SuccessRoute(
        hasAppbar: false,
        title: 'Withdrawal Successful',
        description: 'Your withdrawal request has been processed.'
            ' Your account'
            '${(accountNumber != null ? ' number ending with ****${accountNumber.substring(accountNumber.length - 4)}' : '')}'
            ' will be credited within 24 hours.',
        svg: AppAssets.successRinged,
        buttonText: 'OK',
        onButtonPressed: () => navigator.popUntil((r) => r.settings.name != SuccessRoute.name),
      ));
    });
    super.initState();
  }

  void assertAndEnsurePinSetup() async {
    final hasSetupPin = await _cubit.hasSetupTransactionPin();
    if (hasSetupPin == null || !hasSetupPin) {
      WidgetsBinding.instance.endOfFrame.then((_) {
        if (mounted)
          navigator.popAndPush(TransactionPinSetupRoute(
            type: PinSetupScreenType.create.name,
            onSuccess: (text) => navigator.navigate(SuccessRoute(
              title: '$text',
              hasAppbar: false,
              svg: AppAssets.successRinged,
              buttonText: 'Continue Withdrawal',
              onButtonPressed: () => navigator.pushAndPopUntil(
                const WithdrawalRoute(),
                predicate: (r) => r.settings.name == DashboardRoute.name,
              ),
            )),
          ));
      });
    } else {
      if (_cubit.state.banks.isEmpty() && mounted) enqueue(_cubit.fetchBanks);
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppSliverScrollView.scaffold(
      title: 'Withdraw to Account',
      useSafeArea: true,
      widgetFocus: true,
      enablePullDown: false,
      subtitleTopPadding: 0.01.h,
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.manual,
      subtitleWidget: AdaptiveText.rich(
        const TextSpan(children: [
          TextSpan(text: 'Fill the form below to continue'),
        ]),
        maxLines: 2,
        maxFontSize: 18,
        fontSize: 18.sp,
        fontWeight: FontWeight.w500,
        textColor: Palette.primary,
      ),
      actions: [
        BlocSelector<WithdrawCubit, WithdrawState, bool>(
          bloc: _cubit,
          selector: (s) => s.isLoading || s.isConfiguringPin || s.isFetchingBanks,
          builder: (c, isLoading) => AnimatedVisibility(
            visible: isLoading,
            child: Padding(
              padding: EdgeInsets.only(right: App.sidePadding),
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.all(1.0),
                  child: CircularProgressBar.adaptive(strokeWidth: 2, width: 23, height: 23),
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
              0.01.verticalh,
              //
              const TextFormInputLabel(text: 'Amount'),
              //
              ReactiveTextFormField<WithdrawCubit, WithdrawState>(
                controller: (s) => s.amountTextController,
                autoDisposeController: false,
                disabled: (s) => s.isLoading || s.isWithdrawing || s.isConfiguringPin || s.isFetchingBanks,
                keyboardType: TextInputType.number,
                focus: WithdrawState.focusAmount,
                next: WithdrawState.focusAccountNumber,
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
              //
              0.01.verticalh,
              //
              const TextFormInputLabel(text: 'Bank'),
              //
              BlocBuilder<WithdrawCubit, WithdrawState>(
                builder: (c, s) => AdaptiveDropdown<Bank?>(
                  hint: '-- Select Bank --',
                  disabled: s.isConfiguringPin || s.isFetchingBanks || s.isResolvingAccount,
                  disabledHint: 'Fetching supported Banks. Please wait..',
                  items: s.banks.asList(),
                  groupValue: s.bankAccount?.bank,
                  text: (bank) => bank?.bankName.getOrNull,
                  onChanged: _cubit.bankChanged,
                ),
              ),
              //
              0.01.verticalh,
              //
              const TextFormInputLabel(text: 'Account Number'),
              //
              ReactiveTextFormField<WithdrawCubit, WithdrawState>(
                disabled: (s) => s.isLoading || s.isWithdrawing || s.isConfiguringPin || s.isResolvingAccount || s.isFetchingBanks,
                focus: WithdrawState.focusAccountNumber,
                next: WithdrawState.focusPin,
                keyboardType: TextInputType.number,
                capitalization: TextCapitalization.none,
                field: (s) => s.bankAccount?.accountNumber,
                validate: (s) => s.validate,
                response: (s) => s.status,
                onChanged: (cubit, it) => cubit.accountNumberChanged(it),
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  FilteringTextInputFormatter.singleLineFormatter,
                  LengthLimitingTextInputFormatter(WithdrawCubit.ACCOUNT_NUMBER_LENGTH),
                ],
              ),
              //
              0.01.verticalh,
              //
              const TextFormInputLabel(text: 'Account Name'),
              //
              Row(
                children: [
                  Flexible(
                    child: ReactiveTextFormField<WithdrawCubit, WithdrawState>(
                      capitalization: TextCapitalization.none,
                      field: (s) => s.bankAccount?.accountName,
                      controller: (s) => s.accountNameController,
                      disabled: (s) => true,
                      readOnly: (s) => true,
                      autoDisposeController: false,
                      validate: (s) => false,
                    ),
                  ),
                  //
                  BlocSelector<WithdrawCubit, WithdrawState, bool>(
                    selector: (s) => s.isResolvingAccount,
                    builder: (c, isLoading) => AnimatedVisibility(
                      visible: isLoading,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: App.sidePadding / 2, vertical: 2),
                        child: const CircularProgressBar.adaptive(strokeWidth: 2, width: 23, height: 23),
                      ),
                    ),
                  ),
                ],
              ),
              //
              0.02.verticalh,
              //
              BlocBuilder<WithdrawCubit, WithdrawState>(
                builder: (c, s) {
                  return Align(
                    alignment: Alignment.centerLeft,
                    child: Disabled(
                      disabled: s.isLoading || s.isWithdrawing || s.isConfiguringPin || s.isResolvingAccount || s.isFetchingBanks,
                      child: GestureDetector(
                        onTap: () => enqueue(_cubit.getUserSecurityQuestion, onResult: (_) {
                          if (_cubit.state.securityQuestion != null)
                            navigator.popAndPush(ForgotTransactionPinRoute(question: _cubit.state.securityQuestion!));
                        }),
                        child: Visibility(
                          visible: !s.isFetchingUserSecurityQuestion,
                          replacement: const CircularProgressBar.adaptive(height: 25, width: 25, radius: 12, strokeWidth: 1.5),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 4, 4, 4),
                            child: AdaptiveText(
                              'Change / Forgot PIN?',
                              maxLines: 1,
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w600,
                              textColor: Palette.primary,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
              //
              0.04.verticalh,
              //
              SafeArea(
                top: false,
                left: false,
                right: false,
                child: BlocBuilder<WithdrawCubit, WithdrawState>(
                  builder: (c, s) => AppButton(
                    text: 'Confirm Withdrawal',
                    isLoading: s.isWithdrawing,
                    disabled: !_cubit.canWithdraw,
                    onPressed: () {
                      _cubit.initPinSetup();

                      App.showAdaptiveBottomSheet(
                        context,
                        elevation: 0,
                        enableDrag: true,
                        bounce: true,
                        isDismissible: false,
                        builder: (_) => TransactionPinBottomsheet(
                          cubit: _cubit,
                          onDone: () => enqueue(
                            _cubit.withdraw,
                            onResult: (_) => _cubit.state.status.getOrNull?.success(
                              (_) => navigator.popAndPush(SuccessRoute(
                                title: 'Processing Withdrawal',
                                hasAppbar: false,
                                svg: AppAssets.successRinged,
                                description: _cubit.state.status.getOrNull?.message,
                                buttonText: 'Go Home',
                                onButtonPressed: () => navigator.popUntil((r) => r.settings.name != SuccessRoute.name),
                              )),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              //
              0.02.verticalh,
            ]),
          ),
        ),
      ],
    );
  }
}
