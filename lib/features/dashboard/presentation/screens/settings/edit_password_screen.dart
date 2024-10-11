library edit_password_screen.dart;

import 'package:auctionvillage/core/data/response/index.dart';
import 'package:auctionvillage/core/domain/validator/validator.dart';
import 'package:auctionvillage/core/presentation/index.dart';
import 'package:auctionvillage/features/auth/presentation/managers/managers.dart';
import 'package:auctionvillage/manager/locator/locator.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A stateless widget that renders EditPasswordScreen.
class EditPasswordScreen extends StatelessWidget with AutoRouteWrapper {
  const EditPasswordScreen({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return InheritOrCreateBlocProvider(
      orElse: () => getIt<AuthCubit>(),
      child: BlocListener<AuthCubit, AuthState>(
        listenWhen: (p, c) =>
            p.status.getOrElse(() => null) != c.status.getOrElse(() => null) ||
            (c.status.getOrElse(() => null) != null && (c.status.getOrElse(() => null)!.response.maybeMap(orElse: () => false))),
        listener: (c, s) => s.status.fold(
          () {},
          (th) => th?.response.map(
            info: (i) => PopupDialog.info(message: i.message, show: i.message.isNotEmpty).render(c),
            error: (f) => PopupDialog.error(message: f.message, show: f.show && f.message.isNotEmpty).render(c),
            success: (s) => PopupDialog.success(message: s.message, show: s.message.isNotEmpty).render(c),
          ),
        ),
        child: this,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      adaptiveToolbar: const AdaptiveToolbar(title: 'Change Password', centerTitle: false),
      body: AdaptiveScaffoldBody(
        body: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate.fixed([
                0.008.verticalh,
                //
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
                  child: const _FormLayout(),
                ),
                //
                0.03.verticalh,
                //
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
                  child: BlocBuilder<AuthCubit, AuthState>(
                    buildWhen: (p, c) => p.isLoading != c.isLoading,
                    builder: (c, s) => Hero(
                      tag: Const.profileLogoutBtnHerotag,
                      child: AppButton(
                        text: 'Continue',
                        isLoading: s.isLoading,
                        onPressed: () => enqueue(
                          c.read<AuthCubit>().updatePassword,
                          onResult: (_) => c.read<AuthCubit>().state.status.getOrNull?.success(
                                (_) => navigator.popUntil((r) => r.settings.name != null),
                              ),
                        ),
                      ),
                    ),
                  ),
                ),
                //
                0.02.verticalh,
              ]),
            ),
          ],
        ),
      ),
    );
  }
}

class _FormLayout extends StatelessWidget {
  const _FormLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TextFormInputLabel(text: 'Current Password'),
        //
        PasswordFormField<AuthCubit, AuthState>(
          isNew: false,
          useHero: false,
          disabled: (s) => s.isLoading,
          validate: (s) => s.validate,
          isObscured: (s) => s.isOldPasswordHidden,
          field: (s) => s.user.oldPassword,
          focus: AuthState.oldPasswordFocus,
          next: AuthState.passwordFocus,
          response: (s) => s.status,
          errorField: (f) => f.errors?.messages?.oldPassword,
          onChanged: (fn, str) => fn.oldPasswordChanged(str),
          onToggle: (it) => it.toggleOldPasswordVisibility(),
        ),
        //
        VerticalSpace(height: 0.03.sw),
        //
        const TextFormInputLabel(text: 'New Password'),
        //
        PasswordFormField<AuthCubit, AuthState>(
          isNew: true,
          useHero: false,
          disabled: (s) => s.isLoading,
          validate: (s) => s.validate,
          isObscured: (s) => s.isPasswordHidden,
          field: (s) => s.user.password,
          focus: AuthState.passwordFocus,
          next: AuthState.passwordConfirmationFocus,
          response: (s) => s.status,
          errorField: (f) => f.errors?.messages?.password,
          onChanged: (fn, str) => fn.passwordChanged(str, mode: FieldValidation.basic),
          onToggle: (it) => it.togglePasswordVisibility(),
        ),
        //
        VerticalSpace(height: 0.03.sw),
        //
        const TextFormInputLabel(text: 'Confirm New Password'),
        //
        PasswordFormField<AuthCubit, AuthState>(
          isNew: true,
          useHero: false,
          disabled: (s) => s.isLoading,
          validate: (s) => s.validate,
          isObscured: (s) => s.isPasswordConfirmationHidden,
          field: (s) => s.user.passwordConfirmation,
          focus: AuthState.passwordConfirmationFocus,
          response: (s) => s.status,
          errorField: (f) => f.errors?.messages?.passwordConfirmation,
          onChanged: (fn, str) => fn.passwordConfirmationChanged(str, mode: FieldValidation.basic),
          onToggle: (it) => it.togglePasswordconfirmationVisibility(),
        ),
      ],
    );
  }
}
