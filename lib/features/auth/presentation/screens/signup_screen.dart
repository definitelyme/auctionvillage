library signup_screen.dart;

import 'package:auctionvillage/core/domain/validator/validator.dart';
import 'package:auctionvillage/core/presentation/index.dart';
import 'package:auctionvillage/features/auth/presentation/index.dart';
import 'package:auctionvillage/features/auth/presentation/managers/managers.dart';
import 'package:auctionvillage/manager/locator/locator.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A stateless widget to render SignupScreen.
class SignupScreen extends StatelessWidget with AutoRouteWrapper {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<AuthCubit>(),
      child: BlocListener<AuthCubit, AuthState>(
        listenWhen: (p, c) =>
            p.status.getOrElse(() => null) != c.status.getOrElse(() => null) ||
            (c.status.getOrElse(() => null) != null && (c.status.getOrElse(() => null)!.response.maybeMap(orElse: () => false))),
        listener: (c, s) => s.status.fold(
          () {},
          (it) => it?.response.map(
            info: (i) => PopupDialog.info(message: i.message, show: i.message.isNotEmpty).render(c),
            error: (f) => PopupDialog.error(message: f.message, show: f.show && f.message.isNotEmpty).render(c),
            success: (s) => PopupDialog.success(message: s.message, show: s.message.isNotEmpty).render(c),
          ),
        ),
        child: this,
      ),
    );
  }

  void _createAccount(BuildContext c, AuthCubit cubit) {
    TextInput.finishAutofillContext();
    FocusScope.of(c).unfocus();
    enqueue(() => cubit.createAccount());
  }

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
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
                    'Sign Up',
                    fontSize: 26.sp,
                    fontWeight: FontWeight.bold,
                    letterSpacing: Utils.letterSpacing,
                  ),
                  //
                  0.01.verticalh,
                  //
                  AdaptiveText(
                    'Please complete the necessary fields to register',
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
                    key: AuthState.signupFormKey,
                    onChanged: () => Form.of(primaryFocus!.context!)?.save(),
                    child: AutofillGroup(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const TextFormInputLabel(text: 'First Name'),
                          //
                          NameFormField<AuthCubit, AuthState>(
                            // prefix: 'First Name',
                            disabled: (s) => s.isLoading,
                            validate: (s) => s.validate,
                            field: (s) => s.user.firstName,
                            focus: AuthState.firstNameFocus,
                            next: AuthState.lastNameFocus,
                            // hintText: (s) => 'Your Name',
                            response: (s) => s.status,
                            errorField: (err) => err.errors?.messages?.firstName,
                            onChanged: (it, str) => it.firstNameChanged(str),
                          ),
                          //
                          0.03.verticalh,
                          //
                          const TextFormInputLabel(text: 'Last Name'),
                          //
                          NameFormField<AuthCubit, AuthState>(
                            // prefix: 'Last Name',
                            disabled: (s) => s.isLoading,
                            validate: (s) => s.validate,
                            field: (s) => s.user.lastName,
                            focus: AuthState.lastNameFocus,
                            next: AuthState.newEmailFocus,
                            // hintText: (s) => 'Enter Surname',
                            response: (s) => s.status,
                            errorField: (err) => err.errors?.messages?.lastName,
                            onChanged: (it, str) => it.lastNameChanged(str),
                          ),
                          //
                          0.03.verticalh,
                          //
                          const MyHero(
                            tag: Const.emailLabelHeroTag,
                            child: TextFormInputLabel(text: 'Email Address'),
                          ),
                          //
                          EmailFormField<AuthCubit, AuthState>(
                            useHero: true,
                            disabled: (s) => s.isLoading,
                            validate: (s) => s.validate,
                            field: (s) => s.user.email,
                            response: (s) => s.status,
                            focus: AuthState.newEmailFocus,
                            next: AuthState.newPhoneFocus,
                            // hintText: (s) => 'Enter your E-mail Address',
                            onChanged: (fn, str) => fn.emailChanged(str),
                          ),
                          //
                          0.03.verticalh,
                          //
                          const TextFormInputLabel(text: 'Phone Number'),
                          //
                          PhoneFormField<AuthCubit, AuthState>(
                            disabled: (s) => s.isLoading,
                            validate: (s) => s.validate,
                            field: (s) => s.user.phone,
                            response: (s) => s.status,
                            controller: (s) => s.phoneTextController,
                            autoDisposeController: false,
                            focus: AuthState.newPhoneFocus,
                            next: AuthState.newPasswordFocus,
                            // hintText: (s) => 'Your Phone Number',
                            selectedCountry: (s) => s.user.country,
                            onCountryChanged: (cubit, country) => cubit.countryChanged(country),
                            onChanged: (cubit, str) => cubit.phoneNumberChanged(str),
                          ),
                          //
                          0.03.verticalh,
                          //
                          const MyHero(
                            tag: Const.passwordLabelHeroTag,
                            child: TextFormInputLabel(text: 'Password'),
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
                            heroTag: Const.passwordFieldHeroTag,
                            focus: AuthState.newPasswordFocus,
                            errorField: (f) => f.errors?.messages?.password,
                            // hintText: (s) => 'Enter a Password',
                            onChanged: (fn, str) => fn.passwordChanged(str, mode: FieldValidation.basic),
                            onToggle: (it) => it.togglePasswordVisibility(),
                            onFieldSubmitted: (cubit, s) => _createAccount(context, cubit),
                          ),
                          //
                          0.02.verticalh,
                          //
                          const PPsTermsWidget(),
                          //
                          0.04.verticalh,
                          //
                          BlocSelector<AuthCubit, AuthState, bool>(
                            selector: (s) => s.isLoading,
                            builder: (c, isLoading) => MyHero(
                              tag: Const.authButtonHeroTag,
                              child: AppButton(
                                text: 'Sign Up',
                                isLoading: isLoading,
                                disabled: !c.watch<AuthCubit>().isDirty || isLoading,
                                onPressed: () => _createAccount(c, c.read<AuthCubit>()),
                              ),
                            ),
                          ),
                          //
                          if (1 != 1)
                            if (!App.platform.isIOS) ...[
                              0.03.verticalh,
                              //
                              MyHero(
                                tag: Const.oauthBtnHeroTag,
                                child: OAuthWidgets(cubit: context.read<AuthCubit>()),
                              ),
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
                                  onTap: () => navigator.navigate(LoginRoute()),
                                  child: AdaptiveText.rich(
                                    const TextSpan(children: [
                                      TextSpan(text: 'Already have an account? '),
                                      TextSpan(
                                        text: 'Log In',
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
    );
  }
}
