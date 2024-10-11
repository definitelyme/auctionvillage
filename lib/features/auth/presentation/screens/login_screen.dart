library login_screen.dart;

import 'package:auctionvillage/core/presentation/index.dart';
import 'package:auctionvillage/features/auth/presentation/widgets/login_layout.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:flutter/material.dart';

/// A stateless widget to render LoginScreen.
class LoginScreen extends StatefulWidget {
  final Object? btnHeroTag;

  const LoginScreen({Key? key, this.btnHeroTag}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with AutomaticKeepAliveClientMixin<LoginScreen>, DoubleTapToPop {
  final GlobalKey<FormState> _formKey1 = GlobalKey<FormState>();
  final GlobalKey<FormState> _formKey2 = GlobalKey<FormState>();

  @override
  bool get wantKeepAlive => true;

  Iterable<String?> routeStack = navigator.stack.map((e) => e.name).where((i) => !guestRoutes.contains(i));

  @override
  Widget build(BuildContext context) {
    super.build(context);

    if (routeStack.isNotEmpty) return LoginLayout(formKey: _formKey1, btnHeroTag: widget.btnHeroTag);

    return WillPopScope(
      onWillPop: maybePop,
      child: LoginLayout(formKey: _formKey2, btnHeroTag: widget.btnHeroTag),
    );
  }
}
