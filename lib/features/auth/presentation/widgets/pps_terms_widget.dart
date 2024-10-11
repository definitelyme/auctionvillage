library pps_terms_widget.dart;

import 'package:auctionvillage/features/auth/presentation/managers/managers.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PPsTermsWidget extends StatelessWidget {
  const PPsTermsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BlocSelector<AuthCubit, AuthState, bool>(
          selector: (s) => s.acceptedTerms,
          builder: (c, accepted) => Material(
            type: MaterialType.transparency,
            child: Checkbox(
              value: accepted,
              side: Utils.platform_(cupertino: BorderSide(color: CupertinoColors.systemGrey.resolveFrom(context), width: 1)),
              onChanged: c.read<AuthCubit>().toggleAcceptTerms,
              activeColor: Palette.primary,
            ),
          ),
        ),
        //
        Flexible(
          child: AdaptiveText.rich(
            TextSpan(children: [
              const TextSpan(
                text: 'By signing up, I agree to the ',
              ),
              //
              TextSpan(
                text: 'Terms of Service',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  decoration: TextDecoration.underline,
                  color: Palette.primary,
                ),
                recognizer: TapGestureRecognizer()..onTap = () => UrlLauncher.url(Const.privacyPolicyUrl),
              ),
              //
              const TextSpan(
                text: ' & ',
              ),
              //
              TextSpan(
                text: 'Privacy Policy.',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  decoration: TextDecoration.underline,
                  color: Palette.primary,
                ),
                recognizer: TapGestureRecognizer()..onTap = () => UrlLauncher.url(Const.privacyPolicyUrl),
              ),
            ]),
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
            letterSpacing: Utils.letterSpacing,
          ),
        ),
      ],
    );
  }
}
