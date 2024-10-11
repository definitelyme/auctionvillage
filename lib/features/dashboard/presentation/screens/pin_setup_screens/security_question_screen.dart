part of transaction_pin_setup_screen.dart;

/// A stateless widget to render SecurityQuestionScreen.
class SecurityQuestionScreen extends StatefulWidget {
  static const index = 1;

  final void Function(String?)? onSuccess;

  const SecurityQuestionScreen({super.key, this.onSuccess});

  @override
  State<SecurityQuestionScreen> createState() => _SecurityQuestionScreenState();
}

class _SecurityQuestionScreenState extends State<SecurityQuestionScreen> {
  late WithdrawCubit _cubit;

  @override
  void initState() {
    _cubit = context.read<WithdrawCubit>();
    super.initState();
    enqueue(_cubit.fetchSecurityQuestions);
    enqueue(() => _cubit.sendOTP(OTPType.createQuestion));
  }

  @override
  Widget build(BuildContext context) {
    return InheritOrCreateBlocProvider(
      orElse: () => getIt<WithdrawCubit>(),
      child: AdaptiveScaffold(
        adaptiveToolbar: AdaptiveToolbar(
          title: 'Set Security Question',
          heroTag: 'security_question_screen_hero_tag',
          transitionBetweenRoutes: false,
          cupertinoImplyLeading: false,
          cupertinoLeadingWidget: (canPop) => canPop ? AdaptiveToolbar.cupertinoToolbarAction(onPressed: _prevPage) : null,
          leadingAction: _prevPage,
        ),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                physics: Utils.physics,
                padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    0.02.verticalh.safeTop,
                    //
                    ReactiveTextFormField<WithdrawCubit, WithdrawState>(
                      hintText: (s) => 'Enter One-Time Password (OTP)',
                      disabled: (s) => s.isLoading || s.isFetchingSecurityQuestions || s.isConfiguringPin,
                      validate: (s) => s.validate,
                      focus: WithdrawState.focusToken,
                      // next: WithdrawState.resetPasswordFocus,
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
                          // duration: kDebugMode ? const Duration(seconds: 10) : const Duration(minutes: 2),
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
                              onTap: () => enqueue(() => _cubit.sendOTP(OTPType.createQuestion), onResult: (_) => startCountDown()),
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
                    BlocBuilder<WithdrawCubit, WithdrawState>(
                      builder: (c, s) => AdaptiveDropdown<UniqueId<String?>?>(
                        hint: '-- Choose a Security Question --',
                        disabledHint: 'Please wait...',
                        disabled: s.isFetchingSecurityQuestions || s.isConfiguringPin,
                        items: s.predefinedQuestions.map((p0) => p0.id).asList(),
                        validate: s.validate,
                        groupValue: s.securityQuestion?.id,
                        text: (value) => s.predefinedQuestions.find((p0) => p0.id == value)?.question.getOrNull,
                        errorText: (q) => (q == null || s.securityQuestion?.question.isValid == false) ? 'Please select an option' : null,
                        onChanged: (value) => _cubit.onQuestionSelect(s.predefinedQuestions.find((e) => e.id == value)),
                      ),
                    ),
                    //
                    BlocBuilder<WithdrawCubit, WithdrawState>(
                      builder: (c, s) => AnimatedVisibility(
                        visible: s.securityQuestion != null && s.securityQuestion!.isOther,
                        child: Column(
                          children: [
                            0.02.verticalh,
                            //
                            ReactiveTextFormField<WithdrawCubit, WithdrawState>(
                              state: s,
                              hintText: (s) => 'Your Security Question',
                              disabled: (s) => s.isFetchingSecurityQuestions || s.isConfiguringPin,
                              validate: (s) => s.validate,
                              controller: (s) => s.questionTextController,
                              focus: WithdrawState.focusSecurityQuestion,
                              next: WithdrawState.focusSecurityAnswer,
                              keyboardType: TextInputType.text,
                              field: (s) => s.securityQuestion?.question,
                              response: (s) => s.status,
                              inputFormatters: [FilteringTextInputFormatter.singleLineFormatter],
                              onChanged: (cubit, it) => cubit.questionChanged(it),
                            ),
                          ],
                        ),
                      ),
                    ),
                    //
                    0.02.verticalh,
                    //
                    ReactiveTextFormField<WithdrawCubit, WithdrawState>(
                      hintText: (s) => 'Answer your Security Question',
                      disabled: (s) => s.securityQuestion == null || s.isConfiguringPin || !s.securityQuestion!.isValidQuestion,
                      validate: (s) => s.validate,
                      controller: (s) => s.answerTextController,
                      focus: WithdrawState.focusSecurityAnswer,
                      keyboardType: TextInputType.text,
                      field: (s) => s.securityQuestion?.answer,
                      response: (s) => s.status,
                      inputFormatters: [FilteringTextInputFormatter.singleLineFormatter],
                      onChanged: (cubit, it) => cubit.answerChanged(it),
                    ),
                    //
                    0.02.verticalh,
                    //
                  ],
                ),
              ),
            ),
            //
            Padding(
              padding: EdgeInsets.symmetric(horizontal: App.sidePadding, vertical: 0.01.h),
              child: BlocBuilder<WithdrawCubit, WithdrawState>(
                builder: (c, s) => AppButton(
                  text: 'Finish',
                  disabled: s.isConfiguringPin || (s.securityQuestion != null && !s.securityQuestion!.isValidQuestion),
                  isLoading: s.isConfiguringPin,
                  onPressed: () => enqueue(
                    _cubit.setupPin,
                    onResult: (_) => _cubit.state.status.getOrNull?.maybeMap(
                      error: (_) {},
                      orElse: widget.onSuccess != null ? () => widget.onSuccess!(_cubit.state.status.getOrNull?.message) : () {},
                    ),
                  ),
                ),
              ),
            ).safeBottom,
          ],
        ),
      ),
    );
  }
}
