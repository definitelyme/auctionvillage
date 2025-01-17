import 'dart:async';
import 'dart:io';

import 'package:auctionvillage/features/auth/presentation/managers/managers.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:sign_in_with_apple/sign_in_with_apple.dart';

class OAuthWidgets extends StatelessWidget {
  final AuthCubit cubit;
  final bool email;
  final bool google;
  final bool apple;

  const OAuthWidgets({
    Key? key,
    required this.cubit,
    this.email = false,
    this.google = true,
    this.apple = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: cubit,
      child: Builder(
        builder: (context) => Material(
          type: MaterialType.transparency,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: BlocSelector<AuthWatcherCubit, AuthWatcherState, bool>(
                  selector: (s) => s.isLoading,
                  builder: (c, isLoading) => SocialBuilder(
                    isLoading: !isLoading,
                    visiblility: email,
                    text: 'Continue with Email',
                    color: App.resolveColor(
                      const Color(0xff110D3A),
                      dark: Palette.backgroundColorDark.shade300,
                    ),
                    icon: AppAssets.emailRegular(Palette.primary),
                    onPressed: () async {
                      await BlocProvider.of<AuthWatcherCubit>(context).signOut();
                      unawaited(navigator.push(LoginRoute()));
                    },
                  ),
                ),
              ),
              //
              Flexible(
                child: BlocSelector<AuthCubit, AuthState, bool>(
                  selector: (s) => s.isGoogleAuthLoading,
                  builder: (c, isLoading) => SocialBuilder(
                    isLoading: !isLoading,
                    visiblility: google,
                    text: 'Continue with Google',
                    color: App.resolveColor(
                      const Color(0xff110D3A),
                      dark: Palette.backgroundColorDark.shade300,
                    ),
                    icon: AppAssets.google,
                    onPressed: BlocProvider.of<AuthCubit>(context).googleAuth,
                  ),
                ),
              ),
              //
              if (Platform.isIOS || Platform.isMacOS) ...[
                if (apple) HorizontalSpace(width: 0.07.sw),
                //
                // Flexible(
                //   child: BlocSelector<AuthCubit, AuthState, bool>(
                //     selector: (s) => s.isAppleAuthLoading,
                //     builder: (c, isLoading) => AnimatedVisibility(
                //       visible: apple,
                //       child: AnimatedVisibility(
                //         visible: !isLoading,
                //         replacement: App.loadingSpinningLines(),
                //         child: SignInWithAppleButton(
                //           onPressed: context.read<AuthCubit>().appleAuth,
                //           borderRadius: Utils.buttonRadius.br,
                //           style: SignInWithAppleButtonStyle.black,
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
              ]
            ],
          ),
        ),
      ),
    );
  }
}

class SocialBuilder extends StatelessWidget {
  final bool visiblility;
  final bool isLoading;
  final Color? color;
  final Color? bgColor;
  final Widget icon;
  final String text;
  final VoidCallback? onPressed;
  final Color? splashLight;
  final Color? splashDark;

  const SocialBuilder({
    Key? key,
    required this.visiblility,
    this.isLoading = false,
    this.color,
    this.bgColor,
    required this.icon,
    required this.text,
    this.onPressed,
    this.splashLight,
    this.splashDark,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedVisibility(
      visible: visiblility,
      child: AnimatedVisibility(
        visible: isLoading,
        replacement: App.loadingSpinningLines(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Flexible(
            //   child: AdaptiveButton(
            //     leading: icon,
            //     text: text,
            //     textColor: App.resolveColor(color ?? Palette.neutralF4),
            //     backgroundColor: App.resolveColor(bgColor ?? Palette.neutralF4),
            //     childPadding: EdgeInsets.symmetric(horizontal: 0.04.sw),
            //     side: BorderSide(
            //       color: Utils.foldTheme(
            //         light: () => Palette.neutralF4,
            //         dark: () => Palette.cardColorDark,
            //       ),
            //     ),
            //     splashColor: App.resolveColor(
            //       splashLight ?? Colors.grey.shade300,
            //       dark: splashDark ?? Colors.grey.shade800,
            //     ),
            //     onPressed: onPressed,
            //   ),
            // ),
            //
            VerticalSpace(height: 0.03.sw),
          ],
        ),
      ),
    );
  }
}
