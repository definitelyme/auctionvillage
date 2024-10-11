library login_layout.dart;

import 'package:auctionvillage/core/presentation/index.dart';
import 'package:auctionvillage/features/auth/presentation/managers/managers.dart';
import 'package:auctionvillage/manager/locator/locator.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A stateful widget to render LoginLayout.
class LoginLayout extends StatefulWidget {
  final Object? emailHeroTag;
  final Object? passwordHeroTag;
  final Object? emailLabelHeroTag;
  final Object? passwordLabelHeroTag;
  final Object? btnHeroTag;
  final GlobalKey<FormState> formKey;
  final List<Widget> actions;

  const LoginLayout({
    Key? key,
    required this.formKey,
    this.emailHeroTag = Const.emailFieldHeroTag,
    this.passwordHeroTag = Const.passwordFieldHeroTag,
    this.emailLabelHeroTag = Const.emailLabelHeroTag,
    this.passwordLabelHeroTag = Const.passwordLabelHeroTag,
    this.btnHeroTag = Const.loginAndSignupSwitchTag,
    this.actions = const [],
  }) : super(key: key);

  @override
  State<LoginLayout> createState() => _LoginLayoutState();
}

class _LoginLayoutState extends State<LoginLayout> {
  late AuthCubit _cubit;

  @override
  void initState() {
    _cubit = getIt<AuthCubit>();
    super.initState();
  }

  void _login(BuildContext c) {
    TextInput.finishAutofillContext();
    FocusScope.of(c).unfocus();
    enqueue(_cubit.login);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => _cubit,
      child: BlocListener<AuthCubit, AuthState>(
        listenWhen: (p, c) =>
            p.status.getOrElse(() => null) != c.status.getOrElse(() => null) ||
            (c.status.getOrElse(() => null) != null && (c.status.getOrElse(() => null)!.response.maybeMap(orElse: () => false))),
        listener: (c, s) => s.status.fold(
          () {},
          (it) => it?.response.mapOrNull(
            info: (i) => PopupDialog.info(message: i.message, show: i.message.isNotEmpty).render(),
            error: (f) => PopupDialog.error(message: f.message, show: f.show && f.message.isNotEmpty).render(),
            success: (s) => PopupDialog.success(message: s.message, show: s.message.isNotEmpty).render(),
          ),
        ),
        child: AdaptiveScaffold(
          adaptiveToolbar: !context.watchRouter.canPop()
              ? null
              : AdaptiveToolbar(
                  implyMiddle: false,
                  implyLeading: false,
                  cupertinoImplyLeading: false,
                  cupertinoLeadingWidget: (canPop) => canPop ? AdaptiveToolbar.cupertinoToolbarAction() : null,
                ),
          body: WidgetFocus(
            child: CustomScrollView(
              physics: Utils.physics,
              slivers: [
                SliverToBoxAdapter(child: 0.02.verticalh).sliverSafeTop,
                //
                SliverPadding(
                  padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
                  sliver: SliverList(
                    delegate: SliverChildListDelegate.fixed([
                      AdaptiveText(
                        'Log in',
                        fontSize: 26.sp,
                        fontWeight: FontWeight.bold,
                        letterSpacing: Utils.letterSpacing,
                      ),
                      //
                      0.01.verticalh,
                      //
                      AdaptiveText(
                        'Please complete the necessary fields to log in',
                        fontSize: 16.sp,
                        textColor: Palette.subtitle,
                      ),
                      //
                      0.035.verticalh,
                    ]),
                  ),
                ),
                //
                SliverPadding(
                  padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
                  sliver: SliverList(
                    delegate: SliverChildListDelegate.fixed([
                      Form(
                        key: widget.formKey,
                        onChanged: () => Form.of(primaryFocus!.context!)?.save(),
                        child: AutofillGroup(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              MyHero(
                                tag: widget.emailLabelHeroTag,
                                child: const TextFormInputLabel(text: 'E-mail'),
                              ),
                              //
                              EmailFormField<AuthCubit, AuthState>(
                                useHero: true,
                                heroTag: widget.emailHeroTag,
                                disabled: (s) => s.isLoading,
                                validate: (s) => s.validate,
                                field: (s) => s.user.email,
                                response: (s) => s.status,
                                focus: AuthState.emailFocus,
                                next: AuthState.passwordFocus,
                                // hintText: (s) => 'Your E-mail Address',
                                onChanged: (fn, str) => fn.emailChanged(str),
                              ),
                              //
                              0.03.verticalh,
                              //
                              MyHero(
                                tag: widget.passwordLabelHeroTag,
                                child: const TextFormInputLabel(text: 'Password'),
                              ),
                              //
                              PasswordFormField<AuthCubit, AuthState>(
                                isNew: false,
                                useHero: true,
                                disabled: (s) => s.isLoading,
                                validate: (s) => s.validate,
                                isObscured: (s) => s.isPasswordHidden,
                                field: (s) => s.user.password,
                                response: (s) => s.status,
                                heroTag: widget.passwordHeroTag,
                                focus: AuthState.passwordFocus,
                                errorField: (f) => f.errors?.messages?.password,
                                // hintText: (s) => 'Your Password',
                                onChanged: (fn, str) => fn.passwordChanged(str),
                                onToggle: (it) => it.togglePasswordVisibility(),
                                onFieldSubmitted: (cubit, s) => _login(context),
                              ),
                              //
                              if (1 != 1)
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(vertical: 0.02.h),
                                    child: TextFormInputLabel(
                                      text: 'Forgot Password?',
                                      textColor: Palette.primary,
                                      onPressed: () => navigator.navigate(const ForgotPasswordRoute()),
                                    ),
                                  ),
                                ),
                              //
                              0.05.verticalh,
                              //
                              BlocSelector<AuthCubit, AuthState, bool>(
                                selector: (s) => s.isLoading,
                                builder: (c, isLoading) => MyHero(
                                  tag: widget.btnHeroTag,
                                  child: AppButton(
                                    text: 'Login',
                                    isLoading: isLoading,
                                    disabled: (() {
                                      if (isLoading)
                                        return true;
                                      else if (kDebugMode) return false;
                                      return !c.watch<AuthCubit>().isDirty;
                                    })(),
                                    onPressed: () => _login(c),
                                  ),
                                ),
                              ),
                              //
                              if (1 != 1)
                                if (!App.platform.isIOS) ...[
                                  0.04.verticalh,
                                  //
                                  // MyHero(
                                  //   tag: Const.oauthBtnHeroTag,
                                  //   child: OAuthWidgets(cubit: context.read<AuthCubit>()),
                                  // ),
                                ],
                              //
                              0.036.verticalh,
                              //
                              Center(
                                child: BlocSelector<AuthCubit, AuthState, bool>(
                                  selector: (s) => s.isLoading || s.isAppleAuthLoading || s.isGoogleAuthLoading,
                                  builder: (c, isLoading) => Disabled(
                                    disabled: isLoading,
                                    child: GestureDetector(
                                      onTap: () => navigator.navigate(const SignupRoute()),
                                      child: AdaptiveText.rich(
                                        const TextSpan(children: [
                                          TextSpan(text: 'Don’t have an account? '),
                                          TextSpan(
                                            text: 'Sign Up',
                                            style: TextStyle(
                                              color: Palette.primaryColor,
                                              decoration: TextDecoration.underline,
                                            ),
                                          ),
                                        ]),
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w400,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              //
                              0.02.verticalh.safeBottom,
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
      ),
    );
  }
}
