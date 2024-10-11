part of transaction_pin_setup_screen.dart;

/// A stateless widget to render PinSetupScreen.
class PinSetupScreen extends StatefulWidget {
  static const index = 0;

  final String type;
  final void Function(String?)? onSuccess;

  const PinSetupScreen({super.key, @pathParam required this.type, this.onSuccess});

  @override
  State<PinSetupScreen> createState() => _PinSetupScreenState();
}

class _PinSetupScreenState extends State<PinSetupScreen> {
  late PinSetupScreenType _type;
  late WithdrawCubit _cubit;

  @override
  void initState() {
    _type = widget.type.pinSetupScreenType;
    _cubit = context.read<WithdrawCubit>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InheritOrCreateBlocProvider(
      orElse: () => getIt<WithdrawCubit>(),
      child: AdaptiveScaffold(
        backgroundColor: Palette.primary,
        overlayStyle: App.customSystemOverlay(ctx: context, android: Brightness.light, ios: Brightness.dark),
        adaptiveToolbar: AdaptiveToolbar(
          title: _type.title,
          backgroundColor: Palette.primary,
          leadingIconColor: Colors.white,
          cupertinoTitleColor: Colors.white,
          materialTitleColor: Colors.white,
          cupertinoLeadingWidget: (canPop) => canPop ? AdaptiveToolbar.cupertinoToolbarAction(iconColor: Colors.white) : null,
          heroTag: 'pin_setup_screen_hero_tag',
          transitionBetweenRoutes: false,
        ),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                physics: Utils.physics,
                padding: EdgeInsets.all(App.sidePadding),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    0.1.verticalh.safeTop,
                    //
                    AdaptiveText.rich(
                      _type.when(
                        create: () => const TextSpan(children: [
                          TextSpan(text: 'Please create a '),
                          TextSpan(text: '${WithdrawState.maxPinLength} digit pin', style: TextStyle(fontWeight: FontWeight.w600)),
                          TextSpan(text: ' to secure transactions on your account.'),
                        ]),
                        confirm: () => const TextSpan(children: [
                          TextSpan(text: 'Confirm your '),
                          TextSpan(text: '${WithdrawState.maxPinLength} digit pin', style: TextStyle(fontWeight: FontWeight.w600)),
                        ]),
                      ),
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w400,
                      textAlign: TextAlign.center,
                      textColor: Colors.white,
                      textColorDark: Colors.white,
                    ),
                    //
                    0.04.verticalh,
                    //
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _type.when(
                          create: () => PinInputFormField<WithdrawCubit, WithdrawState>(
                            length: WithdrawState.maxPinLength,
                            validate: (s) => s.validate,
                            disabled: (s) => s.isLoading,
                            controller: (s) => s.pinController,
                            focus: WithdrawState.focusPin,
                            cursorColor: Palette.onPrimary,
                            borderColor: Palette.onPrimary,
                            obscureText: true,
                            obscuringWidget: Icon(Icons.circle, color: Palette.onPrimary, size: 14.sp),
                            style: TextStyle(color: Palette.onPrimary, fontSize: 20.sp),
                            keyboardType: TextInputType.number,
                            response: (s) => s.status,
                            field: (s) => s.withdrawalPin,
                            errorField: (it) => it.errors?.messages?.transactionPin,
                            onChanged: (cubit, s) => cubit.pinChanged(s),
                            onCompleted: (cubit, s) => cubit.validateForm(),
                            onSubmitted: (cubit, s) => cubit.validateForm(),
                          ),
                          confirm: () => PinInputFormField<WithdrawCubit, WithdrawState>(
                            length: WithdrawState.maxPinLength,
                            validate: (s) => s.validate,
                            disabled: (s) => s.isLoading,
                            controller: (s) => s.pinConfirmationController,
                            focus: WithdrawState.focusPinConfirmation,
                            cursorColor: Palette.onPrimary,
                            borderColor: Palette.onPrimary,
                            obscureText: true,
                            obscuringWidget: Icon(Icons.circle, color: Palette.onPrimary, size: 14.sp),
                            style: TextStyle(color: Palette.onPrimary, fontSize: 20.sp),
                            keyboardType: TextInputType.number,
                            response: (s) => s.status,
                            field: (s) => s.confirmWithdrawalPin,
                            errorField: (it) => it.errors?.messages?.confirmTransactionPin,
                            onChanged: (cubit, s) => cubit.pinConfirmationChanged(s),
                            onCompleted: (cubit, s) => cubit.validateForm(),
                            onSubmitted: (cubit, s) => cubit.validateForm(),
                          ),
                        ),
                      ],
                    ),
                    //
                    0.1.verticalh,
                  ],
                ),
              ),
            ),
            //
            Padding(
              padding: EdgeInsets.only(bottom: 0.02.h, right: App.sidePadding, left: App.sidePadding),
              child: Row(
                children: [
                  Visibility(
                    visible: _type == PinSetupScreenType.confirm,
                    child: AppButton(
                      text: 'Back',
                      width: 0.25.w,
                      height: 0.05.h,
                      fontWeight: FontWeight.w600,
                      backgroundColor: App.resolveColor(Colors.white, dark: Colors.white70),
                      textColor: Palette.primary,
                      textColorDark: Palette.primary,
                      onPressed: () {
                        _cubit.initPinSetup();
                        WithdrawState.focusPin.requestFocus();
                        WidgetsBinding.instance.addPostFrameCallback((_) => setState(() => _type = PinSetupScreenType.create));
                      },
                    ),
                  ),
                  //
                  const Spacer(),
                  //
                  AppButton(
                    text: 'Next',
                    width: 0.25.w,
                    height: 0.05.h,
                    fontWeight: FontWeight.w600,
                    backgroundColor: App.resolveColor(Colors.white, dark: Colors.white70),
                    textColor: Palette.primary,
                    textColorDark: Palette.primary,
                    onPressed: () => _type.when(
                      create: () {
                        _cubit.validateForm();

                        if (_cubit.state.withdrawalPin.isValid) {
                          _cubit.validateForm(false);
                          WithdrawState.focusPinConfirmation.requestFocus();
                          WidgetsBinding.instance.addPostFrameCallback((_) => setState(() => _type = PinSetupScreenType.confirm));
                        }
                      },
                      confirm: () {
                        _cubit.validateForm();

                        if (_cubit.state.confirmWithdrawalPin.isValid &&
                            _cubit.state.withdrawalPin.equals(_cubit.state.confirmWithdrawalPin)) {
                          _cubit.validateForm(false);
                          _nextPage();
                        }
                      },
                    ),
                  ),
                ],
              ),
            ).safeBottom,
          ],
        ),
      ),
    );
  }
}
