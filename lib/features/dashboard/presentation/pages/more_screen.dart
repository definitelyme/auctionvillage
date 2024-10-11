library more_screen.dart;

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/core/presentation/index.dart';
import 'package:auctionvillage/features/auth/presentation/managers/managers.dart';
import 'package:auctionvillage/features/auth/presentation/widgets/login_layout.dart';
import 'package:auctionvillage/features/dashboard/presentation/managers/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/widgets/index.dart';
import 'package:auctionvillage/features/onboarding/index.dart';
import 'package:auctionvillage/manager/locator/locator.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart' hide State;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A stateful widget to render MoreScreen.
class MoreScreen extends StatefulWidget with AutoRouteWrapper {
  static const index = 4;

  const MoreScreen({Key? key}) : super(key: key);

  @override
  _MoreScreenState createState() => _MoreScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }
}

class _MoreScreenState extends State<MoreScreen> with AutomaticKeepAliveClientMixin<MoreScreen>, MoreScreenKeyMixin {
  static String supportTourDescription = '${env.appName} offers 24/7 support in a way that is convenient for you.'
      '\n\nNeed help? Reach out to us today.';

  final GlobalKey<FormState> _loginFormKey = GlobalKey<FormState>();
  late PaymentCubit _paymentCubit;
  late AuthWatcherCubit _watcherCubit;

  @override
  void initState() {
    _paymentCubit = blocMaybeOf(context, orElse: () => getIt<PaymentCubit>());
    _watcherCubit = context.read<AuthWatcherCubit>();
    if (_watcherCubit.isAuthenticated) {
      enqueue(_paymentCubit.getWallet);
      _paymentCubit.watchWalletUpdates();
    }
    super.initState();
    settings.runAllTours(context, keys);
    if (!_watcherCubit.isAuthenticated) settings.runTour(context, helpSupportFABKey);
  }

  @override
  bool get wantKeepAlive => true;

  Widget _visibeWhenAuthenticated({required Widget child, Widget replacement = Utils.nothing}) {
    return BlocSelector<AuthWatcherCubit, AuthWatcherState, Option<User?>>(
      bloc: _watcherCubit,
      selector: (s) => s.option,
      builder: (_, option) => option.fold(() => replacement, (_) => child),
    );
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return InheritOrCreateBlocProvider(
      orElse: () => _paymentCubit,
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthWatcherCubit, AuthWatcherState>(
            // listenWhen: (p, c) => c.user != null && p.user != c.user,
            listenWhen: (p, c) => c.user != null && !c.isLoggingOut,
            listener: (_, __) {
              enqueue(_paymentCubit.getWallet);
              _paymentCubit.watchWalletUpdates();
            },
          ),
          //
          BlocListener<PaymentCubit, PaymentState>(
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
          ),
        ],
        child: Builder(
          builder: (c) => _visibeWhenAuthenticated(
            replacement: BlocProvider(
              create: (_) => getIt<AuthCubit>(),
              child: BlocListener<AuthCubit, AuthState>(
                listenWhen: (p, c) =>
                    p.status.getOrElse(() => null) != c.status.getOrElse(() => null) ||
                    (c.status.getOrElse(() => null) != null && (c.status.getOrElse(() => null)!.fold(orElse: () => false))),
                listener: (c, s) => s.status.fold(
                  () {},
                  (it) => it?.response.mapOrNull(
                    info: (i) => PopupDialog.info(message: i.message).render(c),
                    error: (f) => PopupDialog.error(message: f.message, show: f.show).render(c),
                    success: (s) => PopupDialog.success(message: s.message).render(c),
                  ),
                ),
                child: Stack(
                  children: [
                    LoginLayout(
                      formKey: _loginFormKey,
                      btnHeroTag: 'login-btn-hero',
                      emailHeroTag: 'more-email-hero-tag',
                      passwordHeroTag: 'more-pass-hero-tag',
                      emailLabelHeroTag: 'more-email-label-hero-tag',
                      passwordLabelHeroTag: 'more-password-label-hero-tag',
                      actions: const [AppearanceScreenButton()],
                    ),
                    //
                    Positioned(
                      right: App.sidePadding,
                      bottom: 0.04.h,
                      child: TourGuide(
                        key: helpSupportFABKey,
                        title: 'Help & Support',
                        description: supportTourDescription,
                        disposeOnTap: true,
                        targetBorderRadius: 100.br,
                        targetPadding: 5.all,
                        onTargetClick: () => navigator.navigate(ContactSupportRoute()),
                        child: Center(
                          child: ClipRRect(
                            borderRadius: 100.br,
                            child: MyHero(
                              tag: null,
                              elevation: 0,
                              borderRadius: 100.br,
                              color: Palette.primaryColor,
                              child: IconButton(
                                onPressed: () => navigator.navigate(ContactSupportRoute()),
                                color: Palette.onPrimary,
                                padding: const EdgeInsets.all(15),
                                iconSize: 25,
                                icon: const Icon(Icons.contact_support_outlined, color: Palette.onPrimaryLight),
                              ),
                            ),
                          ),
                        ),
                      ).safeBottom,
                    ),
                  ],
                ),
              ),
            ),
            child: AdaptiveScaffold(
              backgroundColor: Palette.primary,
              overlayStyle: App.customSystemOverlay(ctx: c, android: Brightness.light, ios: Brightness.dark),
              body: CustomScrollView(
                slivers: [
                  SliverSafeArea(
                    left: false,
                    right: false,
                    bottom: false,
                    sliver: SliverPadding(
                      padding: EdgeInsets.all(App.sidePadding),
                      sliver: SliverToBoxAdapter(
                        child: GestureDetector(
                          // onTap: () => navigator.navigate(EditProfileRoute(user: _watcherCubit.state.user)),
                          child: Row(
                            children: [
                              BlocSelector<AuthWatcherCubit, AuthWatcherState, User?>(
                                selector: (s) => s.user,
                                builder: (c, user) => ImageBox.network(
                                  heroTag: Const.profilePhotoHeroTag,
                                  photo: user?.photo.image.getOrNull,
                                  width: 50,
                                  height: 50,
                                  fit: BoxFit.cover,
                                  borderRadius: 100.br,
                                  expandsFullscreen: true,
                                  boxBorder: Border.all(color: Colors.white70, width: 0.5),
                                  progressIndicatorColor: Colors.white70,
                                  progressIndicatorColorDark: Colors.white70,
                                  replacement: Image.asset(AssetsImagesDashboard.unnamedPNG, fit: BoxFit.cover, width: 50, height: 50),
                                ),
                              ),
                              //
                              0.03.horizontalw,
                              //
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  BlocSelector<AuthWatcherCubit, AuthWatcherState, User?>(
                                    selector: (s) => s.user,
                                    builder: (c, user) => AdaptiveText(
                                      '${user?.fullName}',
                                      fontSize: 18.sp,
                                      textColor: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  //
                                  0.002.verticalh,
                                  //
                                  Row(
                                    children: [
                                      AdaptiveText(
                                        'Edit Profile',
                                        fontSize: 14.sp,
                                        textColor: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        // decoration: TextDecoration.underline,
                                      ),
                                      //
                                      0.01.horizontalw,
                                      //
                                      Icon(
                                        Utils.platform_(material: Icons.edit, cupertino: CupertinoIcons.pencil),
                                        color: Colors.white,
                                        size: 11.sp,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              //
                              const Spacer(),
                              //
                              const AppearanceScreenButton(),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  //
                  SliverFillRemaining(
                    child: Material(
                      color: Palette.background,
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: App.sidePadding),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
                              child: BlocBuilder<PaymentCubit, PaymentState>(
                                builder: (c, s) => WalletBalanceCard(
                                  isLoading: s.isFetchingWalletBalance,
                                  balance: '${s.wallet?.balance.getOrNull ?? 0}',
                                  onTapWithdraw: (action) => settings.runTour(context, withdrawBtnKey, onTargetClick: action),
                                  onTapFundWallet: (action) => settings.runTour(context, fundWalletBtnKey, onTargetClick: action),
                                  withdrawButton: (btn) => TourGuide(
                                    key: withdrawBtnKey,
                                    title: 'Withdraw',
                                    description: 'Withdraw funds from your wallet back to your bank account.',
                                    child: btn,
                                  ),
                                  fundWalletButton: (btn) => TourGuide(
                                    key: fundWalletBtnKey,
                                    title: 'Fund wallet',
                                    description: 'Fund your ${env.appName} wallet via '
                                        'bank transfer, USSD or with your debit card.',
                                    child: btn,
                                  ),
                                ),
                              ),
                            ),
                            //
                            0.018.verticalh,
                            //
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
                              child: TourGuide(
                                key: walletHistoryBtnKey,
                                title: 'See wallet history',
                                description: 'see detailed history of all your wallet transactions.',
                                onTargetClick: () => navigator.navigate(WalletHistoryRoute(wallet: _paymentCubit.state.wallet)),
                                child: AdaptiveInkWell(
                                  borderRadius: 5.br,
                                  onTap: () => settings.runTour(
                                    context,
                                    walletHistoryBtnKey,
                                    onTargetClick: () => navigator.navigate(WalletHistoryRoute(wallet: _paymentCubit.state.wallet)),
                                  ),
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      border: Border.all(color: App.resolveColor(Palette.primary, dark: Palette.primaryColor.shade300)!),
                                      borderRadius: 5.br,
                                    ),
                                    child: Center(
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(vertical: 0.015.h),
                                        child: AdaptiveText(
                                          'See wallet history',
                                          maxLines: 1,
                                          softWrap: true,
                                          fontSize: 17.sp,
                                          textColor: Palette.primaryColor,
                                          textColorDark: Palette.primaryColor.shade300,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: Utils.letterSpacing,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            //
                            0.025.verticalh,
                            //

                            //
                            0.03.verticalh,
                            //
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
                              child: BlocSelector<AuthWatcherCubit, AuthWatcherState, bool>(
                                selector: (s) => s.isLoggingOut,
                                builder: (c, isLoading) => AppOutlinedButton(
                                  text: 'LOGOUT',
                                  isLoading: isLoading,
                                  fontWeight: FontWeight.w600,
                                  textColor: Palette.errorRed,
                                  borderColor: Palette.errorRed,
                                  borderColorDark: Palette.errorRed,
                                  splashColor: Palette.errorRed.withOpacity(0.06),
                                  // splashColorDark: Palette.errorRed.withOpacity(0.1),
                                  highlightColorLight: Palette.errorRed.withOpacity(0.0),
                                  // highlightColorDark: Palette.errorRed.withOpacity(0.1),
                                  onPressed: () async {
                                    await _watcherCubit.signOut();
                                    navigator.navigatorKey.currentContext?.read<BottomNavigationCubit>().reset();
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _Action {
  final Widget asset;
  final ShowcaseKey key;
  final VoidCallback? onPressed;
  final String title;
  final String? tourDescription;
  final String? tourTitle;

  const _Action({
    required this.title,
    required this.asset,
    this.onPressed,
    required this.key,
    this.tourTitle,
    this.tourDescription,
  });

  static List<_Action> get list => [
        _Action(
          key: MoreScreenKeyMixin.myBidsTileKey,
          title: 'My Bids',
          tourTitle: 'My Bids',
          tourDescription: 'See a list of all your bids in each auction.',
          // asset: AppAssets.hammer(
          //   App.resolveColor(
          //     Utils.platform_(material: Palette.primary, cupertino: CupertinoColors.systemGrey6),
          //     dark: Utils.platform_(material: Colors.white70, cupertino: CupertinoColors.systemGrey6),
          //   ),
          //   const Size(21, 21),
          // ),
          asset: const Icon(Icons.fax_sharp),
          onPressed: () => navigator.navigate(const MyBidsRoute()),
        ),
        _Action(
          key: MoreScreenKeyMixin.mySalesTileKey,
          title: 'My Sales',
          tourTitle: 'My Sales',
          tourDescription: 'Contains a listing of all your items on sale.',
          asset: AppAssets.shoppingBag(
            App.resolveColor(
              Utils.platform_(material: Palette.primary, cupertino: CupertinoColors.systemGrey6),
              dark: Utils.platform_(material: Colors.white70, cupertino: CupertinoColors.systemGrey6),
            ),
            const Size(21, 21),
          ),
          onPressed: () => navigator.navigate(const MySellingsRoute()),
        ),
        _Action(
          key: MoreScreenKeyMixin.myWishListTileKey,
          title: 'My Wishlist',
          tourTitle: 'Wishlist',
          tourDescription: 'Keep track of your favorite items on the wishlist page.',
          asset: AppAssets.bookmark(
            App.resolveColor(
              Utils.platform_(material: Palette.primary, cupertino: CupertinoColors.systemGrey6),
              dark: Utils.platform_(material: Colors.white70, cupertino: CupertinoColors.systemGrey6),
            ),
            const Size(20, 20),
          ),
          onPressed: () => navigator.navigate(const MyWishlistRoute()),
        ),
        _Action(
          key: MoreScreenKeyMixin.myReviewsTileKey,
          title: 'My Reviews',
          tourTitle: 'My Reviews',
          tourDescription: 'View feedback from your customers and other vendors.',
          asset: AppAssets.thumbs(
            App.resolveColor(
              Utils.platform_(material: Palette.primary, cupertino: CupertinoColors.systemGrey6),
              dark: Utils.platform_(material: Colors.white70, cupertino: CupertinoColors.systemGrey6),
            ),
            const Size(20, 20),
          ),
          onPressed: () => navigator.navigate(const MyReviewsRoute()),
        ),
        _Action(
          key: MoreScreenKeyMixin.helpSupportTileKey,
          title: 'Help & Support',
          tourTitle: 'Help & support',
          tourDescription: _MoreScreenState.supportTourDescription,
          asset: Icon(
            Icons.help_outline_rounded,
            color: App.resolveColor(
              Utils.platform_(material: Palette.primary, cupertino: CupertinoColors.systemGrey6),
              dark: Utils.platform_(material: Colors.white70, cupertino: CupertinoColors.systemGrey6),
            ),
            size: 21,
          ),
          onPressed: () => navigator.navigate(ContactSupportRoute()),
        ),
      ];
}
