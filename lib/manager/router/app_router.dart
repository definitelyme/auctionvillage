library app_router.dart;

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/core/presentation/index.dart';
import 'package:auctionvillage/features/auth/presentation/index.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/managers/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/pages/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/screens/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/widgets/index.dart';
import 'package:auctionvillage/features/onboarding/index.dart';
import 'package:auctionvillage/manager/router/guards/guards.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:kt_dart/collection.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

part 'app_router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Screen,Route',
  preferRelativeImports: false,
  routes: <AutoRoute<dynamic>>[
    AdaptiveRoute(
      initial: true,
      fullMatch: true,
      usesPathAsKey: true,
      page: SplashScreen,
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      usesPathAsKey: true,
      page: GetStartedScreen,
      cupertinoPageTitle: 'Get Started',
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      usesPathAsKey: true,
      page: LoginScreen,
      cupertinoPageTitle: 'Login',
      guards: [GuestGuard],
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      usesPathAsKey: true,
      page: SignupScreen,
      cupertinoPageTitle: 'Sign Up',
      guards: [GuestGuard],
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      usesPathAsKey: true,
      fullscreenDialog: true,
      page: ForgotPasswordScreen,
      cupertinoPageTitle: 'Forgot Password',
      guards: [GuestGuard],
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      usesPathAsKey: true,
      fullscreenDialog: true,
      page: PasswordResetScreen,
      cupertinoPageTitle: 'Reset Password',
      guards: [GuestGuard],
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      fullscreenDialog: true,
      usesPathAsKey: true,
      page: PhoneVerificationScreen,
      cupertinoPageTitle: 'OTP',
    ),
    //
    dashboardRouter,
    //
    AdaptiveRoute(
      fullMatch: true,
      usesPathAsKey: true,
      cupertinoPageTitle: 'Product',
      page: DealDetailScreen,
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      usesPathAsKey: true,
      page: DealsListScreen,
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      usesPathAsKey: true,
      page: ProductListScreen,
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      usesPathAsKey: true,
      page: FundWalletScreen,
      cupertinoPageTitle: 'Fund Wallet',
      guards: [AuthGuard],
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      usesPathAsKey: true,
      page: WithdrawalScreen,
      cupertinoPageTitle: 'Withdraw to Account',
      guards: [AuthGuard],
    ),
    //
    transactionPinRouter,
    //
    AdaptiveRoute(
      fullMatch: true,
      usesPathAsKey: true,
      page: ForgotTransactionPinScreen,
      cupertinoPageTitle: 'Forgot Transaction PIN',
      guards: [AuthGuard],
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      usesPathAsKey: true,
      cupertinoPageTitle: 'Wallet Activities',
      page: WalletHistoryScreen,
      guards: [AuthGuard],
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      usesPathAsKey: true,
      cupertinoPageTitle: 'Bidding Activities',
      page: MyBidsScreen,
      guards: [AuthGuard],
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      usesPathAsKey: true,
      cupertinoPageTitle: 'Selling Activities',
      page: MySellingsScreen,
      guards: [AuthGuard],
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      usesPathAsKey: true,
      cupertinoPageTitle: 'My Wishlist',
      page: MyWishlistScreen,
      guards: [AuthGuard],
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      usesPathAsKey: true,
      cupertinoPageTitle: 'My Reviews',
      page: MyReviewsScreen,
      guards: [AuthGuard],
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      usesPathAsKey: true,
      cupertinoPageTitle: 'Settings',
      page: SettingsScreen,
      guards: [AuthGuard],
    ),
    AdaptiveRoute(
      fullMatch: true,
      usesPathAsKey: true,
      cupertinoPageTitle: 'Edit Profile',
      fullscreenDialog: true,
      page: EditProfileScreen,
      guards: [AuthGuard],
    ),
    AdaptiveRoute(
      fullMatch: true,
      usesPathAsKey: true,
      cupertinoPageTitle: 'Update Password',
      fullscreenDialog: true,
      page: EditPasswordScreen,
      guards: [AuthGuard],
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      usesPathAsKey: true,
      fullscreenDialog: true,
      cupertinoPageTitle: 'Pricing Plan',
      page: PricingPlanScreen,
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      usesPathAsKey: true,
      fullscreenDialog: true,
      cupertinoPageTitle: 'Payment Portal',
      page: PaymentPortalScreen,
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      usesPathAsKey: true,
      fullscreenDialog: true,
      cupertinoPageTitle: 'Notifications',
      page: NotificationsScreen,
      guards: [AuthGuard],
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      usesPathAsKey: true,
      page: ConversationsListScreen,
      guards: [AuthGuard],
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      usesPathAsKey: true,
      page: ActivityListScreen,
      guards: [AuthGuard],
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      usesPathAsKey: true,
      page: ActivityDetailScreen,
      guards: [AuthGuard],
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      usesPathAsKey: true,
      fullscreenDialog: true,
      page: ChatScreen,
      guards: [AuthGuard],
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      usesPathAsKey: true,
      fullscreenDialog: true,
      page: SuccessScreen,
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      usesPathAsKey: true,
      fullscreenDialog: true,
      page: CountryPickerScreen,
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      usesPathAsKey: true,
      fullscreenDialog: true,
      page: AppearanceScreen,
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      usesPathAsKey: true,
      fullscreenDialog: true,
      page: NotConnectedScreen,
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      usesPathAsKey: true,
      page: ContactSupportScreen,
    ),
  ],
)
class AppRouter extends _$AppRouter {
  AppRouter({
    super.navigatorKey,
    required super.guestGuard,
    required super.authGuard,
  });
}

const dashboardRouter = AutoRoute(
  fullMatch: true,
  page: DashboardScreen,
  children: [
    AutoRoute(initial: true, name: 'HomeRouter', page: HomeScreen),
    CustomRoute(
      name: 'SearchRouter',
      page: SearchScreen,
      customRouteBuilder: searchPageRouteBuilder,
    ),
    AutoRoute(name: 'SellRouter', page: SellScreen),
    AutoRoute(name: 'ProfileRouter', page: ProfileScreen),
  ],
);

const transactionPinRouter = AutoRoute(
  path: '/transaction-pin-setup/:type',
  fullMatch: true,
  usesPathAsKey: true,
  page: TransactionPinSetupScreen,
  guards: [AuthGuard],
  children: [
    AutoRoute(initial: true, page: PinSetupScreen),
    AutoRoute(page: SecurityQuestionScreen),
  ],
);

Route<T> searchPageRouteBuilder<T>(BuildContext context, Widget child, CustomPage<T> page) {
  return MaterialWithModalsPageRoute(
    settings: page,
    fullscreenDialog: false,
    builder: (_) => child,
  );
}
