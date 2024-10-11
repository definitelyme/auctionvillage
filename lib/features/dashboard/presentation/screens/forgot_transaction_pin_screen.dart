library forgot_transaction_pin_screen.dart;

import 'package:auctionvillage/core/data/models/index.dart';
import 'package:auctionvillage/core/data/response/index.dart';
import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/core/presentation/index.dart';
import 'package:auctionvillage/features/auth/presentation/managers/managers.dart';
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

/// A stateless widget to render ForgotTransactionPinScreen.
class ForgotTransactionPinScreen extends StatelessWidget with AutoRouteWrapper {
  final SecurityQuestion question;

  const ForgotTransactionPinScreen(this.question, {Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return InheritOrCreateBlocProvider(
      orElse: () => getIt<WithdrawCubit>()
        ..onQuestionSelect(question)
        ..sendOTP(OTPType.resetPin),
      child: BlocListener<WithdrawCubit, WithdrawState>(
        listenWhen: (p, c) =>
            p.status.getOrElse(() => null) != c.status.getOrElse(() => null) ||
            (c.status.getOrElse(() => null) != null && (c.status.getOrElse(() => null)!.response.maybeMap(orElse: () => false))),
        listener: (c, state) => state.status.fold(
          () {},
          (it) => it?.response.mapOrNull(
            error: (f) => PopupDialog.error(message: f.message, show: f.show && f.message.isNotEmpty).render(),
            info: (i) => PopupDialog.success(message: i.message, show: i.message.isNotEmpty).render(c),
            success: (s) => PopupDialog.success(message: s.message, show: s.message.isNotEmpty).render(c),
          ),
        ),
        child: this,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppSliverScrollView.scaffold(
      title: 'Reset PIN',
      useSafeArea: true,
      enablePullDown: false,
      subtitleTopPadding: 0.01.h,
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.manual,
      subtitleWidget: AdaptiveText.rich(
        TextSpan(children: [
          const TextSpan(text: 'Provide the '),
          const TextSpan(text: 'answer', style: TextStyle(fontWeight: FontWeight.w700)),
          const TextSpan(text: ' to your Security Question and the OTP we sent to '),
          TextSpan(
            text: '${context.read<AuthWatcherCubit>().user?.email}',
            style: TextStyle(fontWeight: FontWeight.bold, decoration: TextDecoration.underline, color: Palette.primary),
          ),
          const TextSpan(text: ' to reset your transaction PIN.'),
        ]),
        // maxLines: 3,
        maxFontSize: 18,
        fontSize: 18.sp,
        fontWeight: FontWeight.w500,
        textColor: Palette.primary,
      ),
      slivers: [
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
          sliver: SliverList(
            delegate: SliverChildListDelegate.fixed([
              0.01.verticalh,
              //
              const TextFormInputLabel(text: 'Security Question:'),
              //
              BlocBuilder<AuthWatcherCubit, AuthWatcherState>(
                builder: (c, s) => AdaptiveText(
                  '${question.question}',
                  maxFontSize: 18,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              //
              0.01.verticalh,
              //
              const TextFormInputLabel(text: 'Your Answer:'),
              //
              ReactiveTextFormField<WithdrawCubit, WithdrawState>(
                disabled: (s) => s.isLoading || s.isConfiguringPin,
                hintText: (s) => 'Enter answer to security question',
                focus: WithdrawState.focusSecurityAnswer,
                next: WithdrawState.focusToken,
                keyboardType: TextInputType.text,
                response: (s) => s.status,
                validate: (s) => s.validate,
                field: (s) => s.securityQuestion?.answer,
                inputFormatters: [FilteringTextInputFormatter.singleLineFormatter],
                onChanged: (cubit, it) => cubit.answerChanged(it),
              ),
              //
              0.01.verticalh,
              //
              const TextFormInputLabel(text: 'One-Time Password (OTP):'),
              //
              ReactiveTextFormField<WithdrawCubit, WithdrawState>(
                hintText: (s) => 'Enter ${OTPCode.CODE_LENGTH} digits OTP',
                disabled: (s) => s.isLoading || s.isFetchingSecurityQuestions || s.isConfiguringPin,
                validate: (s) => s.validate,
                focus: WithdrawState.focusToken,
                keyboardType: TextInputType.number,
                field: (s) => s.otpCode,
                response: (s) => s.status,
                errorField: (s) => s.errors?.messages?.code,
                onChanged: (cubit, it) => cubit.otpCodeChanged(it),
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  FilteringTextInputFormatter.singleLineFormatter,
                  LengthLimitingTextInputFormatter(OTPCode.CODE_LENGTH),
                ],
                suffixMode: (s) => OverlayVisibilityMode.always,
                suffixIcon: (s) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                  child: CountdownWidget(
                    autostart: true,
                    duration: const Duration(minutes: 2),
                    showHourRemainder: false,
                    ticker: (tick) => AdaptiveText(
                      tick,
                      maxLines: 1,
                      fontSize: 16.sp,
                      maxFontSize: 16,
                      fontWeight: FontWeight.w500,
                      textAlign: TextAlign.end,
                    ),
                    child: (startCountDown) => BlocSelector<WithdrawCubit, WithdrawState, bool>(
                      selector: (s) => s.isRequestingOTP,
                      builder: (c, isLoading) => GestureDetector(
                        onTap: () => enqueue(
                          () => c.read<WithdrawCubit>().sendOTP(OTPType.createQuestion),
                          onResult: (_) => startCountDown(),
                        ),
                        child: AdaptiveText.rich(
                          TextSpan(children: [
                            if (!isLoading)
                              const TextSpan(
                                text: 'Resend',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                            //
                            WidgetSpan(
                              child: Visibility(
                                visible: isLoading,
                                child: const CircularProgressBar.adaptive(width: 23, height: 23, strokeWidth: 1.4, radius: 10),
                              ),
                            ),
                          ]),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          textColor: Palette.primary,
                          textColorDark: Palette.primary,
                          letterSpacing: Utils.labelLetterSpacing,
                          textAlign: TextAlign.center,
                          isDefault: true,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              //
              0.02.verticalh,
              //
              AdaptiveInkWell(
                onTap: () => navigator.navigate(ContactSupportRoute(
                  type: FeedbackType.complaint,
                  message: 'Hi, I would like to reset the Security Question for my Auction Village account.',
                )),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 4, 4, 4),
                  child: AdaptiveText(
                    'I have forgotten the answer to my security question.',
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w600,
                    textColor: Utils.platform_(material: Palette.errorRed, cupertino: Palette.destructiveRed),
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              //
              0.04.verticalh,
              //
              BlocBuilder<WithdrawCubit, WithdrawState>(
                builder: (c, s) => AppButton(
                  text: 'Continue',
                  isLoading: s.isConfiguringPin,
                  onPressed: !s.securityQuestion!.answer.isValid || !s.otpCode.isValid
                      ? c.read<WithdrawCubit>().validateForm
                      : () {
                          c.read<WithdrawCubit>().initPinSetup(resetOTP: false);

                          App.showAdaptiveBottomSheet(
                            context,
                            elevation: 0,
                            enableDrag: true,
                            bounce: true,
                            isDismissible: false,
                            builder: (_) => TransactionPinBottomsheet(
                              cubit: c.read<WithdrawCubit>(),
                              type: PinSetupScreenType.confirm,
                              description: const TextSpan(children: [
                                TextSpan(text: 'Please create a '),
                                TextSpan(text: '${WithdrawState.maxPinLength} digit pin', style: TextStyle(fontWeight: FontWeight.w600)),
                                TextSpan(text: ' to secure transactions on your account.'),
                              ]),
                              confirmationDescription: const TextSpan(children: [
                                TextSpan(text: 'Confirm your '),
                                TextSpan(text: '${WithdrawState.maxPinLength} digit pin', style: TextStyle(fontWeight: FontWeight.w600)),
                              ]),
                              onDone: () => enqueue(
                                c.read<WithdrawCubit>().setupPin,
                                onResult: (_) => c.read<WithdrawCubit>().state.status.getOrNull?.success(
                                      (_) => navigator.pushAndPopUntil(
                                        const WithdrawalRoute(),
                                        predicate: (r) => r.settings.name == DashboardRoute.name,
                                      ),
                                    ),
                              ),
                            ),
                          );
                        },
                ),
              ).safeBottom,
              //
              0.02.verticalh,
            ]),
          ),
        ),
      ],
    );
  }
}
