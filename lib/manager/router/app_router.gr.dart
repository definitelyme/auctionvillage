// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter({
    GlobalKey<NavigatorState>? navigatorKey,
    required this.guestGuard,
    required this.authGuard,
  }) : super(navigatorKey);

  final GuestGuard guestGuard;

  final AuthGuard authGuard;

  @override
  final Map<String, PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const SplashScreen(),
        opaque: true,
      );
    },
    GetStartedRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const GetStartedScreen(),
        title: 'Get Started',
        opaque: true,
      );
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: LoginScreen(
          key: args.key,
          btnHeroTag: args.btnHeroTag,
        ),
        title: 'Login',
        opaque: true,
      );
    },
    SignupRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const SignupScreen()),
        title: 'Sign Up',
        opaque: true,
      );
    },
    ForgotPasswordRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const ForgotPasswordScreen()),
        fullscreenDialog: true,
        title: 'Forgot Password',
        opaque: true,
      );
    },
    PasswordResetRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const PasswordResetScreen()),
        fullscreenDialog: true,
        title: 'Reset Password',
        opaque: true,
      );
    },
    PhoneVerificationRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const PhoneVerificationScreen()),
        fullscreenDialog: true,
        title: 'OTP',
        opaque: true,
      );
    },
    DashboardRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const DashboardScreen()),
      );
    },
    DealDetailRoute.name: (routeData) {
      final args = routeData.argsAs<DealDetailRouteArgs>();
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(
            child: DealDetailScreen(
          args.deal,
          key: args.key,
          onUnlist: args.onUnlist,
        )),
        title: 'Product',
        opaque: true,
      );
    },
    DealsListRoute.name: (routeData) {
      final args = routeData.argsAs<DealsListRouteArgs>();
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(
            child: DealsListScreen(
          args.title,
          key: args.key,
          filter: args.filter,
          category: args.category,
          type: args.type,
        )),
        opaque: true,
      );
    },
    ProductListRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const ProductListScreen()),
        opaque: true,
      );
    },
    FundWalletRoute.name: (routeData) {
      final args = routeData.argsAs<FundWalletRouteArgs>(
          orElse: () => const FundWalletRouteArgs());
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(
            child: FundWalletScreen(
          key: args.key,
          onConfirmed: args.onConfirmed,
        )),
        title: 'Fund Wallet',
        opaque: true,
      );
    },
    WithdrawalRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const WithdrawalScreen()),
        title: 'Withdraw to Account',
        opaque: true,
      );
    },
    TransactionPinSetupRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<TransactionPinSetupRouteArgs>(
          orElse: () =>
              TransactionPinSetupRouteArgs(type: pathParams.getString('type')));
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(
            child: TransactionPinSetupScreen(
          key: args.key,
          type: args.type,
          duration: args.duration,
          onSuccess: args.onSuccess,
        )),
      );
    },
    ForgotTransactionPinRoute.name: (routeData) {
      final args = routeData.argsAs<ForgotTransactionPinRouteArgs>();
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(
            child: ForgotTransactionPinScreen(
          args.question,
          key: args.key,
        )),
        title: 'Forgot Transaction PIN',
        opaque: true,
      );
    },
    WalletHistoryRoute.name: (routeData) {
      final args = routeData.argsAs<WalletHistoryRouteArgs>(
          orElse: () => const WalletHistoryRouteArgs());
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(
            child: WalletHistoryScreen(
          key: args.key,
          wallet: args.wallet,
        )),
        title: 'Wallet Activities',
        opaque: true,
      );
    },
    MyBidsRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const MyBidsScreen()),
        title: 'Bidding Activities',
        opaque: true,
      );
    },
    MySellingsRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const MySellingsScreen()),
        title: 'Selling Activities',
        opaque: true,
      );
    },
    MyWishlistRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const MyWishlistScreen()),
        title: 'My Wishlist',
        opaque: true,
      );
    },
    MyReviewsRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const MyReviewsScreen()),
        title: 'My Reviews',
        opaque: true,
      );
    },
    SettingsRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const SettingsScreen()),
        title: 'Settings',
        opaque: true,
      );
    },
    EditProfileRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const EditProfileScreen()),
        fullscreenDialog: true,
        title: 'Edit Profile',
        opaque: true,
      );
    },
    EditPasswordRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const EditPasswordScreen()),
        fullscreenDialog: true,
        title: 'Update Password',
        opaque: true,
      );
    },
    PricingPlanRoute.name: (routeData) {
      final args = routeData.argsAs<PricingPlanRouteArgs>(
          orElse: () => const PricingPlanRouteArgs());
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: PricingPlanScreen(
          key: args.key,
          bloc: args.bloc,
          deal: args.deal,
          product: args.product,
        ),
        fullscreenDialog: true,
        title: 'Pricing Plan',
        opaque: true,
      );
    },
    PaymentPortalRoute.name: (routeData) {
      final args = routeData.argsAs<PaymentPortalRouteArgs>();
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(
            child: PaymentPortalScreen(
          args.payable,
          key: args.key,
          onPaymentSuccess: args.onPaymentSuccess,
          onPaymentFailed: args.onPaymentFailed,
        )),
        fullscreenDialog: true,
        title: 'Payment Portal',
        opaque: true,
      );
    },
    NotificationsRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const NotificationsScreen()),
        fullscreenDialog: true,
        title: 'Notifications',
        opaque: true,
      );
    },
    ConversationsListRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const ConversationsListScreen()),
        opaque: true,
      );
    },
    ActivityListRoute.name: (routeData) {
      final args = routeData.argsAs<ActivityListRouteArgs>();
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(
            child: ActivityListScreen(
          key: args.key,
          onRefresh: args.onRefresh,
          onLoadMore: args.onLoadMore,
        )),
        opaque: true,
      );
    },
    ActivityDetailRoute.name: (routeData) {
      final args = routeData.argsAs<ActivityDetailRouteArgs>();
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(
            child: ActivityDetailScreen(
          args.deal,
          key: args.key,
        )),
        opaque: true,
      );
    },
    ChatRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const ChatScreen()),
        fullscreenDialog: true,
        opaque: true,
      );
    },
    SuccessRoute.name: (routeData) {
      final args = routeData.argsAs<SuccessRouteArgs>();
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(
            child: SuccessScreen(
          key: args.key,
          svg: args.svg,
          image: args.image,
          title: args.title,
          description: args.description,
          footnote: args.footnote,
          footWidget: args.footWidget,
          buttonText: args.buttonText,
          animationDuration: args.animationDuration,
          fit: args.fit,
          padding: args.padding,
          width: args.width,
          height: args.height,
          onButtonPressed: args.onButtonPressed,
          onBackPressed: args.onBackPressed,
          onInitState: args.onInitState,
          hasAppbar: args.hasAppbar,
        )),
        fullscreenDialog: true,
        opaque: true,
      );
    },
    CountryPickerRoute.name: (routeData) {
      final args = routeData.argsAs<CountryPickerRouteArgs>();
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: CountryPickerScreen(
          args.initial,
          key: args.key,
          countries: args.countries,
        ),
        fullscreenDialog: true,
        opaque: true,
      );
    },
    AppearanceRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const AppearanceScreen()),
        fullscreenDialog: true,
        opaque: true,
      );
    },
    NotConnectedRoute.name: (routeData) {
      final args = routeData.argsAs<NotConnectedRouteArgs>(
          orElse: () => const NotConnectedRouteArgs());
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: NotConnectedScreen(
          key: args.key,
          title: args.title,
          description: args.description,
        ),
        fullscreenDialog: true,
        opaque: true,
      );
    },
    ContactSupportRoute.name: (routeData) {
      final args = routeData.argsAs<ContactSupportRouteArgs>(
          orElse: () => const ContactSupportRouteArgs());
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(
            child: ContactSupportScreen(
          key: args.key,
          type: args.type,
          fullName: args.fullName,
          email: args.email,
          message: args.message,
          focusMessage: args.focusMessage,
        )),
        opaque: true,
      );
    },
    HomeRouter.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const HomeScreen()),
      );
    },
    SearchRouter.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const SearchScreen()),
        customRouteBuilder: searchPageRouteBuilder,
        opaque: true,
        barrierDismissible: false,
      );
    },
    SellRouter.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const SellScreen()),
      );
    },
    ProfileRouter.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const ProfileScreen()),
      );
    },
    PinSetupRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<PinSetupRouteArgs>(
          orElse: () => const PinSetupRouteArgs());
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: PinSetupScreen(
          key: args.key,
          type: pathParams.getString('type'),
          onSuccess: args.onSuccess,
        ),
      );
    },
    SecurityQuestionRoute.name: (routeData) {
      final args = routeData.argsAs<SecurityQuestionRouteArgs>(
          orElse: () => const SecurityQuestionRouteArgs());
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: SecurityQuestionScreen(
          key: args.key,
          onSuccess: args.onSuccess,
        ),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          SplashRoute.name,
          path: '/',
          fullMatch: true,
          usesPathAsKey: true,
        ),
        RouteConfig(
          GetStartedRoute.name,
          path: '/get-started-screen',
          fullMatch: true,
          usesPathAsKey: true,
        ),
        RouteConfig(
          LoginRoute.name,
          path: '/login-screen',
          fullMatch: true,
          usesPathAsKey: true,
          guards: [guestGuard],
        ),
        RouteConfig(
          SignupRoute.name,
          path: '/signup-screen',
          fullMatch: true,
          usesPathAsKey: true,
          guards: [guestGuard],
        ),
        RouteConfig(
          ForgotPasswordRoute.name,
          path: '/forgot-password-screen',
          fullMatch: true,
          usesPathAsKey: true,
          guards: [guestGuard],
        ),
        RouteConfig(
          PasswordResetRoute.name,
          path: '/password-reset-screen',
          fullMatch: true,
          usesPathAsKey: true,
          guards: [guestGuard],
        ),
        RouteConfig(
          PhoneVerificationRoute.name,
          path: '/phone-verification-screen',
          fullMatch: true,
          usesPathAsKey: true,
        ),
        RouteConfig(
          DashboardRoute.name,
          path: '/dashboard-screen',
          fullMatch: true,
          children: [
            RouteConfig(
              HomeRouter.name,
              path: '',
              parent: DashboardRoute.name,
            ),
            RouteConfig(
              SearchRouter.name,
              path: 'search-screen',
              parent: DashboardRoute.name,
            ),
            RouteConfig(
              SellRouter.name,
              path: 'sell-screen',
              parent: DashboardRoute.name,
            ),
            RouteConfig(
              ProfileRouter.name,
              path: 'profile-screen',
              parent: DashboardRoute.name,
            ),
          ],
        ),
        RouteConfig(
          DealDetailRoute.name,
          path: '/deal-detail-screen',
          fullMatch: true,
          usesPathAsKey: true,
        ),
        RouteConfig(
          DealsListRoute.name,
          path: '/deals-list-screen',
          fullMatch: true,
          usesPathAsKey: true,
        ),
        RouteConfig(
          ProductListRoute.name,
          path: '/product-list-screen',
          fullMatch: true,
          usesPathAsKey: true,
        ),
        RouteConfig(
          FundWalletRoute.name,
          path: '/fund-wallet-screen',
          fullMatch: true,
          usesPathAsKey: true,
          guards: [authGuard],
        ),
        RouteConfig(
          WithdrawalRoute.name,
          path: '/withdrawal-screen',
          fullMatch: true,
          usesPathAsKey: true,
          guards: [authGuard],
        ),
        RouteConfig(
          TransactionPinSetupRoute.name,
          path: '/transaction-pin-setup/:type',
          fullMatch: true,
          usesPathAsKey: true,
          guards: [authGuard],
          children: [
            RouteConfig(
              PinSetupRoute.name,
              path: '',
              parent: TransactionPinSetupRoute.name,
            ),
            RouteConfig(
              SecurityQuestionRoute.name,
              path: 'security-question-screen',
              parent: TransactionPinSetupRoute.name,
            ),
          ],
        ),
        RouteConfig(
          ForgotTransactionPinRoute.name,
          path: '/forgot-transaction-pin-screen',
          fullMatch: true,
          usesPathAsKey: true,
          guards: [authGuard],
        ),
        RouteConfig(
          WalletHistoryRoute.name,
          path: '/wallet-history-screen',
          fullMatch: true,
          usesPathAsKey: true,
          guards: [authGuard],
        ),
        RouteConfig(
          MyBidsRoute.name,
          path: '/my-bids-screen',
          fullMatch: true,
          usesPathAsKey: true,
          guards: [authGuard],
        ),
        RouteConfig(
          MySellingsRoute.name,
          path: '/my-sellings-screen',
          fullMatch: true,
          usesPathAsKey: true,
          guards: [authGuard],
        ),
        RouteConfig(
          MyWishlistRoute.name,
          path: '/my-wishlist-screen',
          fullMatch: true,
          usesPathAsKey: true,
          guards: [authGuard],
        ),
        RouteConfig(
          MyReviewsRoute.name,
          path: '/my-reviews-screen',
          fullMatch: true,
          usesPathAsKey: true,
          guards: [authGuard],
        ),
        RouteConfig(
          SettingsRoute.name,
          path: '/settings-screen',
          fullMatch: true,
          usesPathAsKey: true,
          guards: [authGuard],
        ),
        RouteConfig(
          EditProfileRoute.name,
          path: '/edit-profile-screen',
          fullMatch: true,
          usesPathAsKey: true,
          guards: [authGuard],
        ),
        RouteConfig(
          EditPasswordRoute.name,
          path: '/edit-password-screen',
          fullMatch: true,
          usesPathAsKey: true,
          guards: [authGuard],
        ),
        RouteConfig(
          PricingPlanRoute.name,
          path: '/pricing-plan-screen',
          fullMatch: true,
          usesPathAsKey: true,
        ),
        RouteConfig(
          PaymentPortalRoute.name,
          path: '/payment-portal-screen',
          fullMatch: true,
          usesPathAsKey: true,
        ),
        RouteConfig(
          NotificationsRoute.name,
          path: '/notifications-screen',
          fullMatch: true,
          usesPathAsKey: true,
          guards: [authGuard],
        ),
        RouteConfig(
          ConversationsListRoute.name,
          path: '/conversations-list-screen',
          fullMatch: true,
          usesPathAsKey: true,
          guards: [authGuard],
        ),
        RouteConfig(
          ActivityListRoute.name,
          path: '/activity-list-screen',
          fullMatch: true,
          usesPathAsKey: true,
          guards: [authGuard],
        ),
        RouteConfig(
          ActivityDetailRoute.name,
          path: '/activity-detail-screen',
          fullMatch: true,
          usesPathAsKey: true,
          guards: [authGuard],
        ),
        RouteConfig(
          ChatRoute.name,
          path: '/chat-screen',
          fullMatch: true,
          usesPathAsKey: true,
          guards: [authGuard],
        ),
        RouteConfig(
          SuccessRoute.name,
          path: '/success-screen',
          fullMatch: true,
          usesPathAsKey: true,
        ),
        RouteConfig(
          CountryPickerRoute.name,
          path: '/country-picker-screen',
          fullMatch: true,
          usesPathAsKey: true,
        ),
        RouteConfig(
          AppearanceRoute.name,
          path: '/appearance-screen',
          fullMatch: true,
          usesPathAsKey: true,
        ),
        RouteConfig(
          NotConnectedRoute.name,
          path: '/not-connected-screen',
          fullMatch: true,
          usesPathAsKey: true,
        ),
        RouteConfig(
          ContactSupportRoute.name,
          path: '/contact-support-screen',
          fullMatch: true,
          usesPathAsKey: true,
        ),
      ];
}

/// generated route for
/// [SplashScreen]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [GetStartedScreen]
class GetStartedRoute extends PageRouteInfo<void> {
  const GetStartedRoute()
      : super(
          GetStartedRoute.name,
          path: '/get-started-screen',
        );

  static const String name = 'GetStartedRoute';
}

/// generated route for
/// [LoginScreen]
class LoginRoute extends PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    Key? key,
    Object? btnHeroTag,
  }) : super(
          LoginRoute.name,
          path: '/login-screen',
          args: LoginRouteArgs(
            key: key,
            btnHeroTag: btnHeroTag,
          ),
        );

  static const String name = 'LoginRoute';
}

class LoginRouteArgs {
  const LoginRouteArgs({
    this.key,
    this.btnHeroTag,
  });

  final Key? key;

  final Object? btnHeroTag;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key, btnHeroTag: $btnHeroTag}';
  }
}

/// generated route for
/// [SignupScreen]
class SignupRoute extends PageRouteInfo<void> {
  const SignupRoute()
      : super(
          SignupRoute.name,
          path: '/signup-screen',
        );

  static const String name = 'SignupRoute';
}

/// generated route for
/// [ForgotPasswordScreen]
class ForgotPasswordRoute extends PageRouteInfo<void> {
  const ForgotPasswordRoute()
      : super(
          ForgotPasswordRoute.name,
          path: '/forgot-password-screen',
        );

  static const String name = 'ForgotPasswordRoute';
}

/// generated route for
/// [PasswordResetScreen]
class PasswordResetRoute extends PageRouteInfo<void> {
  const PasswordResetRoute()
      : super(
          PasswordResetRoute.name,
          path: '/password-reset-screen',
        );

  static const String name = 'PasswordResetRoute';
}

/// generated route for
/// [PhoneVerificationScreen]
class PhoneVerificationRoute extends PageRouteInfo<void> {
  const PhoneVerificationRoute()
      : super(
          PhoneVerificationRoute.name,
          path: '/phone-verification-screen',
        );

  static const String name = 'PhoneVerificationRoute';
}

/// generated route for
/// [DashboardScreen]
class DashboardRoute extends PageRouteInfo<void> {
  const DashboardRoute({List<PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          path: '/dashboard-screen',
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';
}

/// generated route for
/// [DealDetailScreen]
class DealDetailRoute extends PageRouteInfo<DealDetailRouteArgs> {
  DealDetailRoute({
    required Deal deal,
    Key? key,
    void Function()? onUnlist,
  }) : super(
          DealDetailRoute.name,
          path: '/deal-detail-screen',
          args: DealDetailRouteArgs(
            deal: deal,
            key: key,
            onUnlist: onUnlist,
          ),
        );

  static const String name = 'DealDetailRoute';
}

class DealDetailRouteArgs {
  const DealDetailRouteArgs({
    required this.deal,
    this.key,
    this.onUnlist,
  });

  final Deal deal;

  final Key? key;

  final void Function()? onUnlist;

  @override
  String toString() {
    return 'DealDetailRouteArgs{deal: $deal, key: $key, onUnlist: $onUnlist}';
  }
}

/// generated route for
/// [DealsListScreen]
class DealsListRoute extends PageRouteInfo<DealsListRouteArgs> {
  DealsListRoute({
    required String title,
    Key? key,
    required DealFilter? filter,
    DealCategory? category,
    DealType? type,
  }) : super(
          DealsListRoute.name,
          path: '/deals-list-screen',
          args: DealsListRouteArgs(
            title: title,
            key: key,
            filter: filter,
            category: category,
            type: type,
          ),
        );

  static const String name = 'DealsListRoute';
}

class DealsListRouteArgs {
  const DealsListRouteArgs({
    required this.title,
    this.key,
    required this.filter,
    this.category,
    this.type,
  });

  final String title;

  final Key? key;

  final DealFilter? filter;

  final DealCategory? category;

  final DealType? type;

  @override
  String toString() {
    return 'DealsListRouteArgs{title: $title, key: $key, filter: $filter, category: $category, type: $type}';
  }
}

/// generated route for
/// [ProductListScreen]
class ProductListRoute extends PageRouteInfo<void> {
  const ProductListRoute()
      : super(
          ProductListRoute.name,
          path: '/product-list-screen',
        );

  static const String name = 'ProductListRoute';
}

/// generated route for
/// [FundWalletScreen]
class FundWalletRoute extends PageRouteInfo<FundWalletRouteArgs> {
  FundWalletRoute({
    Key? key,
    void Function()? onConfirmed,
  }) : super(
          FundWalletRoute.name,
          path: '/fund-wallet-screen',
          args: FundWalletRouteArgs(
            key: key,
            onConfirmed: onConfirmed,
          ),
        );

  static const String name = 'FundWalletRoute';
}

class FundWalletRouteArgs {
  const FundWalletRouteArgs({
    this.key,
    this.onConfirmed,
  });

  final Key? key;

  final void Function()? onConfirmed;

  @override
  String toString() {
    return 'FundWalletRouteArgs{key: $key, onConfirmed: $onConfirmed}';
  }
}

/// generated route for
/// [WithdrawalScreen]
class WithdrawalRoute extends PageRouteInfo<void> {
  const WithdrawalRoute()
      : super(
          WithdrawalRoute.name,
          path: '/withdrawal-screen',
        );

  static const String name = 'WithdrawalRoute';
}

/// generated route for
/// [TransactionPinSetupScreen]
class TransactionPinSetupRoute
    extends PageRouteInfo<TransactionPinSetupRouteArgs> {
  TransactionPinSetupRoute({
    Key? key,
    required String type,
    Duration duration = const Duration(minutes: 2),
    void Function(String?)? onSuccess,
    List<PageRouteInfo>? children,
  }) : super(
          TransactionPinSetupRoute.name,
          path: '/transaction-pin-setup/:type',
          args: TransactionPinSetupRouteArgs(
            key: key,
            type: type,
            duration: duration,
            onSuccess: onSuccess,
          ),
          rawPathParams: {'type': type},
          initialChildren: children,
        );

  static const String name = 'TransactionPinSetupRoute';
}

class TransactionPinSetupRouteArgs {
  const TransactionPinSetupRouteArgs({
    this.key,
    required this.type,
    this.duration = const Duration(minutes: 2),
    this.onSuccess,
  });

  final Key? key;

  final String type;

  final Duration duration;

  final void Function(String?)? onSuccess;

  @override
  String toString() {
    return 'TransactionPinSetupRouteArgs{key: $key, type: $type, duration: $duration, onSuccess: $onSuccess}';
  }
}

/// generated route for
/// [ForgotTransactionPinScreen]
class ForgotTransactionPinRoute
    extends PageRouteInfo<ForgotTransactionPinRouteArgs> {
  ForgotTransactionPinRoute({
    required SecurityQuestion question,
    Key? key,
  }) : super(
          ForgotTransactionPinRoute.name,
          path: '/forgot-transaction-pin-screen',
          args: ForgotTransactionPinRouteArgs(
            question: question,
            key: key,
          ),
        );

  static const String name = 'ForgotTransactionPinRoute';
}

class ForgotTransactionPinRouteArgs {
  const ForgotTransactionPinRouteArgs({
    required this.question,
    this.key,
  });

  final SecurityQuestion question;

  final Key? key;

  @override
  String toString() {
    return 'ForgotTransactionPinRouteArgs{question: $question, key: $key}';
  }
}

/// generated route for
/// [WalletHistoryScreen]
class WalletHistoryRoute extends PageRouteInfo<WalletHistoryRouteArgs> {
  WalletHistoryRoute({
    Key? key,
    UserWallet? wallet,
  }) : super(
          WalletHistoryRoute.name,
          path: '/wallet-history-screen',
          args: WalletHistoryRouteArgs(
            key: key,
            wallet: wallet,
          ),
        );

  static const String name = 'WalletHistoryRoute';
}

class WalletHistoryRouteArgs {
  const WalletHistoryRouteArgs({
    this.key,
    this.wallet,
  });

  final Key? key;

  final UserWallet? wallet;

  @override
  String toString() {
    return 'WalletHistoryRouteArgs{key: $key, wallet: $wallet}';
  }
}

/// generated route for
/// [MyBidsScreen]
class MyBidsRoute extends PageRouteInfo<void> {
  const MyBidsRoute()
      : super(
          MyBidsRoute.name,
          path: '/my-bids-screen',
        );

  static const String name = 'MyBidsRoute';
}

/// generated route for
/// [MySellingsScreen]
class MySellingsRoute extends PageRouteInfo<void> {
  const MySellingsRoute()
      : super(
          MySellingsRoute.name,
          path: '/my-sellings-screen',
        );

  static const String name = 'MySellingsRoute';
}

/// generated route for
/// [MyWishlistScreen]
class MyWishlistRoute extends PageRouteInfo<void> {
  const MyWishlistRoute()
      : super(
          MyWishlistRoute.name,
          path: '/my-wishlist-screen',
        );

  static const String name = 'MyWishlistRoute';
}

/// generated route for
/// [MyReviewsScreen]
class MyReviewsRoute extends PageRouteInfo<void> {
  const MyReviewsRoute()
      : super(
          MyReviewsRoute.name,
          path: '/my-reviews-screen',
        );

  static const String name = 'MyReviewsRoute';
}

/// generated route for
/// [SettingsScreen]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute()
      : super(
          SettingsRoute.name,
          path: '/settings-screen',
        );

  static const String name = 'SettingsRoute';
}

/// generated route for
/// [EditProfileScreen]
class EditProfileRoute extends PageRouteInfo<void> {
  const EditProfileRoute()
      : super(
          EditProfileRoute.name,
          path: '/edit-profile-screen',
        );

  static const String name = 'EditProfileRoute';
}

/// generated route for
/// [EditPasswordScreen]
class EditPasswordRoute extends PageRouteInfo<void> {
  const EditPasswordRoute()
      : super(
          EditPasswordRoute.name,
          path: '/edit-password-screen',
        );

  static const String name = 'EditPasswordRoute';
}

/// generated route for
/// [PricingPlanScreen]
class PricingPlanRoute extends PageRouteInfo<PricingPlanRouteArgs> {
  PricingPlanRoute({
    Key? key,
    ProductBloc? bloc,
    Deal? deal,
    Product? product,
  }) : super(
          PricingPlanRoute.name,
          path: '/pricing-plan-screen',
          args: PricingPlanRouteArgs(
            key: key,
            bloc: bloc,
            deal: deal,
            product: product,
          ),
        );

  static const String name = 'PricingPlanRoute';
}

class PricingPlanRouteArgs {
  const PricingPlanRouteArgs({
    this.key,
    this.bloc,
    this.deal,
    this.product,
  });

  final Key? key;

  final ProductBloc? bloc;

  final Deal? deal;

  final Product? product;

  @override
  String toString() {
    return 'PricingPlanRouteArgs{key: $key, bloc: $bloc, deal: $deal, product: $product}';
  }
}

/// generated route for
/// [PaymentPortalScreen]
class PaymentPortalRoute extends PageRouteInfo<PaymentPortalRouteArgs> {
  PaymentPortalRoute({
    required Payable payable,
    Key? key,
    required void Function() onPaymentSuccess,
    void Function()? onPaymentFailed,
  }) : super(
          PaymentPortalRoute.name,
          path: '/payment-portal-screen',
          args: PaymentPortalRouteArgs(
            payable: payable,
            key: key,
            onPaymentSuccess: onPaymentSuccess,
            onPaymentFailed: onPaymentFailed,
          ),
        );

  static const String name = 'PaymentPortalRoute';
}

class PaymentPortalRouteArgs {
  const PaymentPortalRouteArgs({
    required this.payable,
    this.key,
    required this.onPaymentSuccess,
    this.onPaymentFailed,
  });

  final Payable payable;

  final Key? key;

  final void Function() onPaymentSuccess;

  final void Function()? onPaymentFailed;

  @override
  String toString() {
    return 'PaymentPortalRouteArgs{payable: $payable, key: $key, onPaymentSuccess: $onPaymentSuccess, onPaymentFailed: $onPaymentFailed}';
  }
}

/// generated route for
/// [NotificationsScreen]
class NotificationsRoute extends PageRouteInfo<void> {
  const NotificationsRoute()
      : super(
          NotificationsRoute.name,
          path: '/notifications-screen',
        );

  static const String name = 'NotificationsRoute';
}

/// generated route for
/// [ConversationsListScreen]
class ConversationsListRoute extends PageRouteInfo<void> {
  const ConversationsListRoute()
      : super(
          ConversationsListRoute.name,
          path: '/conversations-list-screen',
        );

  static const String name = 'ConversationsListRoute';
}

/// generated route for
/// [ActivityListScreen]
class ActivityListRoute extends PageRouteInfo<ActivityListRouteArgs> {
  ActivityListRoute({
    Key? key,
    required void Function(
      DealCubit,
      DragToRefreshState,
    )
        onRefresh,
    required void Function(
      DealCubit,
      DragToRefreshState,
    )
        onLoadMore,
  }) : super(
          ActivityListRoute.name,
          path: '/activity-list-screen',
          args: ActivityListRouteArgs(
            key: key,
            onRefresh: onRefresh,
            onLoadMore: onLoadMore,
          ),
        );

  static const String name = 'ActivityListRoute';
}

class ActivityListRouteArgs {
  const ActivityListRouteArgs({
    this.key,
    required this.onRefresh,
    required this.onLoadMore,
  });

  final Key? key;

  final void Function(
    DealCubit,
    DragToRefreshState,
  ) onRefresh;

  final void Function(
    DealCubit,
    DragToRefreshState,
  ) onLoadMore;

  @override
  String toString() {
    return 'ActivityListRouteArgs{key: $key, onRefresh: $onRefresh, onLoadMore: $onLoadMore}';
  }
}

/// generated route for
/// [ActivityDetailScreen]
class ActivityDetailRoute extends PageRouteInfo<ActivityDetailRouteArgs> {
  ActivityDetailRoute({
    required Deal deal,
    Key? key,
  }) : super(
          ActivityDetailRoute.name,
          path: '/activity-detail-screen',
          args: ActivityDetailRouteArgs(
            deal: deal,
            key: key,
          ),
        );

  static const String name = 'ActivityDetailRoute';
}

class ActivityDetailRouteArgs {
  const ActivityDetailRouteArgs({
    required this.deal,
    this.key,
  });

  final Deal deal;

  final Key? key;

  @override
  String toString() {
    return 'ActivityDetailRouteArgs{deal: $deal, key: $key}';
  }
}

/// generated route for
/// [ChatScreen]
class ChatRoute extends PageRouteInfo<void> {
  const ChatRoute()
      : super(
          ChatRoute.name,
          path: '/chat-screen',
        );

  static const String name = 'ChatRoute';
}

/// generated route for
/// [SuccessScreen]
class SuccessRoute extends PageRouteInfo<SuccessRouteArgs> {
  SuccessRoute({
    Key? key,
    Widget? svg,
    Widget? image,
    required String title,
    String? description,
    String? footnote,
    Widget? footWidget,
    String? buttonText,
    Duration animationDuration = const Duration(milliseconds: 1600),
    BoxFit fit = BoxFit.cover,
    EdgeInsets? padding,
    double? width,
    double? height,
    void Function()? onButtonPressed,
    Future<bool> Function()? onBackPressed,
    Future<void> Function()? onInitState,
    bool hasAppbar = true,
  }) : super(
          SuccessRoute.name,
          path: '/success-screen',
          args: SuccessRouteArgs(
            key: key,
            svg: svg,
            image: image,
            title: title,
            description: description,
            footnote: footnote,
            footWidget: footWidget,
            buttonText: buttonText,
            animationDuration: animationDuration,
            fit: fit,
            padding: padding,
            width: width,
            height: height,
            onButtonPressed: onButtonPressed,
            onBackPressed: onBackPressed,
            onInitState: onInitState,
            hasAppbar: hasAppbar,
          ),
        );

  static const String name = 'SuccessRoute';
}

class SuccessRouteArgs {
  const SuccessRouteArgs({
    this.key,
    this.svg,
    this.image,
    required this.title,
    this.description,
    this.footnote,
    this.footWidget,
    this.buttonText,
    this.animationDuration = const Duration(milliseconds: 1600),
    this.fit = BoxFit.cover,
    this.padding,
    this.width,
    this.height,
    this.onButtonPressed,
    this.onBackPressed,
    this.onInitState,
    this.hasAppbar = true,
  });

  final Key? key;

  final Widget? svg;

  final Widget? image;

  final String title;

  final String? description;

  final String? footnote;

  final Widget? footWidget;

  final String? buttonText;

  final Duration animationDuration;

  final BoxFit fit;

  final EdgeInsets? padding;

  final double? width;

  final double? height;

  final void Function()? onButtonPressed;

  final Future<bool> Function()? onBackPressed;

  final Future<void> Function()? onInitState;

  final bool hasAppbar;

  @override
  String toString() {
    return 'SuccessRouteArgs{key: $key, svg: $svg, image: $image, title: $title, description: $description, footnote: $footnote, footWidget: $footWidget, buttonText: $buttonText, animationDuration: $animationDuration, fit: $fit, padding: $padding, width: $width, height: $height, onButtonPressed: $onButtonPressed, onBackPressed: $onBackPressed, onInitState: $onInitState, hasAppbar: $hasAppbar}';
  }
}

/// generated route for
/// [CountryPickerScreen]
class CountryPickerRoute extends PageRouteInfo<CountryPickerRouteArgs> {
  CountryPickerRoute({
    required Country? initial,
    Key? key,
    KtList<Country> countries = const KtList.empty(),
  }) : super(
          CountryPickerRoute.name,
          path: '/country-picker-screen',
          args: CountryPickerRouteArgs(
            initial: initial,
            key: key,
            countries: countries,
          ),
        );

  static const String name = 'CountryPickerRoute';
}

class CountryPickerRouteArgs {
  const CountryPickerRouteArgs({
    required this.initial,
    this.key,
    this.countries = const KtList.empty(),
  });

  final Country? initial;

  final Key? key;

  final KtList<Country> countries;

  @override
  String toString() {
    return 'CountryPickerRouteArgs{initial: $initial, key: $key, countries: $countries}';
  }
}

/// generated route for
/// [AppearanceScreen]
class AppearanceRoute extends PageRouteInfo<void> {
  const AppearanceRoute()
      : super(
          AppearanceRoute.name,
          path: '/appearance-screen',
        );

  static const String name = 'AppearanceRoute';
}

/// generated route for
/// [NotConnectedScreen]
class NotConnectedRoute extends PageRouteInfo<NotConnectedRouteArgs> {
  NotConnectedRoute({
    Key? key,
    String? title,
    Widget? description,
  }) : super(
          NotConnectedRoute.name,
          path: '/not-connected-screen',
          args: NotConnectedRouteArgs(
            key: key,
            title: title,
            description: description,
          ),
        );

  static const String name = 'NotConnectedRoute';
}

class NotConnectedRouteArgs {
  const NotConnectedRouteArgs({
    this.key,
    this.title,
    this.description,
  });

  final Key? key;

  final String? title;

  final Widget? description;

  @override
  String toString() {
    return 'NotConnectedRouteArgs{key: $key, title: $title, description: $description}';
  }
}

/// generated route for
/// [ContactSupportScreen]
class ContactSupportRoute extends PageRouteInfo<ContactSupportRouteArgs> {
  ContactSupportRoute({
    Key? key,
    FeedbackType? type,
    String? fullName,
    String? email,
    String? message,
    bool focusMessage = false,
  }) : super(
          ContactSupportRoute.name,
          path: '/contact-support-screen',
          args: ContactSupportRouteArgs(
            key: key,
            type: type,
            fullName: fullName,
            email: email,
            message: message,
            focusMessage: focusMessage,
          ),
        );

  static const String name = 'ContactSupportRoute';
}

class ContactSupportRouteArgs {
  const ContactSupportRouteArgs({
    this.key,
    this.type,
    this.fullName,
    this.email,
    this.message,
    this.focusMessage = false,
  });

  final Key? key;

  final FeedbackType? type;

  final String? fullName;

  final String? email;

  final String? message;

  final bool focusMessage;

  @override
  String toString() {
    return 'ContactSupportRouteArgs{key: $key, type: $type, fullName: $fullName, email: $email, message: $message, focusMessage: $focusMessage}';
  }
}

/// generated route for
/// [HomeScreen]
class HomeRouter extends PageRouteInfo<void> {
  const HomeRouter()
      : super(
          HomeRouter.name,
          path: '',
        );

  static const String name = 'HomeRouter';
}

/// generated route for
/// [SearchScreen]
class SearchRouter extends PageRouteInfo<void> {
  const SearchRouter()
      : super(
          SearchRouter.name,
          path: 'search-screen',
        );

  static const String name = 'SearchRouter';
}

/// generated route for
/// [SellScreen]
class SellRouter extends PageRouteInfo<void> {
  const SellRouter()
      : super(
          SellRouter.name,
          path: 'sell-screen',
        );

  static const String name = 'SellRouter';
}

/// generated route for
/// [ProfileScreen]
class ProfileRouter extends PageRouteInfo<void> {
  const ProfileRouter()
      : super(
          ProfileRouter.name,
          path: 'profile-screen',
        );

  static const String name = 'ProfileRouter';
}

/// generated route for
/// [PinSetupScreen]
class PinSetupRoute extends PageRouteInfo<PinSetupRouteArgs> {
  PinSetupRoute({
    Key? key,
    void Function(String?)? onSuccess,
  }) : super(
          PinSetupRoute.name,
          path: '',
          args: PinSetupRouteArgs(
            key: key,
            onSuccess: onSuccess,
          ),
        );

  static const String name = 'PinSetupRoute';
}

class PinSetupRouteArgs {
  const PinSetupRouteArgs({
    this.key,
    this.onSuccess,
  });

  final Key? key;

  final void Function(String?)? onSuccess;

  @override
  String toString() {
    return 'PinSetupRouteArgs{key: $key, onSuccess: $onSuccess}';
  }
}

/// generated route for
/// [SecurityQuestionScreen]
class SecurityQuestionRoute extends PageRouteInfo<SecurityQuestionRouteArgs> {
  SecurityQuestionRoute({
    Key? key,
    void Function(String?)? onSuccess,
  }) : super(
          SecurityQuestionRoute.name,
          path: 'security-question-screen',
          args: SecurityQuestionRouteArgs(
            key: key,
            onSuccess: onSuccess,
          ),
        );

  static const String name = 'SecurityQuestionRoute';
}

class SecurityQuestionRouteArgs {
  const SecurityQuestionRouteArgs({
    this.key,
    this.onSuccess,
  });

  final Key? key;

  final void Function(String?)? onSuccess;

  @override
  String toString() {
    return 'SecurityQuestionRouteArgs{key: $key, onSuccess: $onSuccess}';
  }
}
