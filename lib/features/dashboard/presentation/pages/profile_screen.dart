library profile_screen.dart;

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/core/presentation/index.dart';
import 'package:auctionvillage/features/auth/presentation/managers/managers.dart';
import 'package:auctionvillage/features/dashboard/presentation/managers/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/widgets/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

/// A stateless widget that renders ProfileScreen.
class ProfileScreen extends StatefulWidget with AutoRouteWrapper {
  static const index = 3;

  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }
}

class _ProfileScreenState extends State<ProfileScreen> with AutomaticKeepAliveClientMixin<ProfileScreen> {
  @override
  bool get wantKeepAlive => true;

  List<_ProfileTiles> _tiles(BuildContext ctx) => _ProfileTiles.list(ctx);

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return AdaptiveScaffold(
      body: AdaptiveScaffoldBody(
        body: CustomScrollView(
          physics: Utils.physics,
          slivers: [
            SliverAppBar(
              title: const AdaptiveText('Profile', maxLines: 1, maxFontSize: 20, fontWeight: FontWeight.w700),
              collapsedHeight: kToolbarHeight,
              toolbarHeight: kToolbarHeight,
              excludeHeaderSemantics: true,
              scrolledUnderElevation: Utils.platform_(cupertino: 1.5, material: 3),
              automaticallyImplyLeading: false,
              pinned: true,
              stretch: true,
              centerTitle: false,
              backgroundColor: Palette.background,
              actions: [
                Padding(
                  padding: EdgeInsets.only(right: App.sidePadding / 2),
                  child: const Center(child: AppearanceScreenButton()),
                ),
              ],
            ),
            //
            BlocSelector<AuthWatcherCubit, AuthWatcherState, User?>(
              selector: (s) => s.user,
              builder: (c, user) => SliverList(
                delegate: SliverChildListDelegate.fixed([
                  Center(
                    child: SizedBox(
                      width: 0.25.w,
                      height: 0.25.w,
                      child: ImageBox.avatar(
                        minRadius: 70,
                        maxRadius: 80,
                        borderRadius: 100.br,
                        avatarInitials: user?.initials,
                        photo: user?.photo.image.getOrNull,
                        cacheOrResizeImageInFullscreen: false,
                        replacementAsset: AssetsImagesDashboard.unnamedPNG,
                        expandsFullscreen: user?.photo.image.isValid == true,
                        circleAvatarBackgroundColor: (image) => image == null ? Palette.primary : Palette.transparent,
                      ),
                    ),
                  ),
                  //
                  if (user != null) ...[
                    if (user.fullName.isValid) ...[
                      0.02.verticalh,
                      //
                      AdaptiveText(
                        '${user.fullName}',
                        maxLines: 2,
                        minFontSize: 16,
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w500,
                        textAlign: TextAlign.center,
                      ),
                    ],
                    //
                    0.02.verticalh,
                    //
                    Center(
                      child: Material(
                        color: Palette.fromHex('#D3DDF2'),
                        borderRadius: 100.br,
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          child: AdaptiveText('Signed In', fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                  //
                  0.03.verticalh,
                ]),
              ),
            ),
            //
            Utils.platform_(
              material: SliverList(
                delegate: SliverChildBuilderDelegate(
                  (c, i) => Visibility(
                    visible: _tiles(c).elementAt(i).protected != null
                        ? _tiles(c).elementAt(i).protected == false
                        : c.watch<AuthWatcherCubit>().state.user != null,
                    child: AdaptiveListTile(
                      horizontalTitleGap: 0,
                      onTap: _tiles(c).getOrNull(i)?.onPressed,
                      contentPadding: EdgeInsets.only(right: App.sidePadding, left: App.sidePadding * 0.7),
                      leading: SizedBox.square(
                        dimension: 35,
                        child: Center(
                          child: _tiles(c).elementAt(i).asset is String
                              ? SvgPicture.asset(_tiles(c).elementAt(i).asset as String, fit: BoxFit.contain)
                              : _tiles(c).elementAt(i).asset as Widget?,
                        ),
                      ),
                      trailing: Icon(
                        App.platform.material(Icons.arrow_forward_ios_rounded),
                        color: App.resolveColor(Palette.fromHex('#292D32'), dark: Colors.white70),
                        size: 17.sp,
                      ),
                      title: AdaptiveText(
                        _tiles(c).elementAt(i).title,
                        maxLines: 1,
                        minFontSize: 15,
                        fontSize: 16.sp,
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ),
                  childCount: _tiles(context).length,
                ),
              ),
              cupertino: SliverList(
                delegate: SliverChildBuilderDelegate(
                  (c, i) => Visibility(
                    visible: _tiles(c).elementAt(i).protected != null
                        ? _tiles(c).elementAt(i).protected == false
                        : c.watch<AuthWatcherCubit>().state.user != null,
                    child: AdaptiveListTile(
                      horizontalTitleGap: 0,
                      noCupertinoBorder: true,
                      onTap: _tiles(c).elementAt(i).onPressed,
                      contentPadding: EdgeInsets.symmetric(horizontal: App.sidePadding),
                      trailing: Icon(CupertinoIcons.chevron_right, size: 15.sp),
                      leading: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Palette.primary,
                          borderRadius: 8.br,
                        ),
                        child: SizedBox.square(
                          dimension: 35,
                          child: Center(
                            child: _tiles(c).elementAt(i).asset is String
                                ? SvgPicture.asset(_tiles(c).elementAt(i).asset as String, fit: BoxFit.contain)
                                : _tiles(c).elementAt(i).asset as Widget?,
                          ),
                        ),
                      ),
                      title: AdaptiveText(
                        _tiles(c).elementAt(i).title,
                        fontSize: 17.sp,
                        textColor: App.resolveColor(Palette.primary, dark: Colors.white70),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  childCount: _tiles(context).length,
                ),
              ),
            )!,
            //
            SliverToBoxAdapter(child: 0.02.verticalh).sliverSafeBottom,
            // Utils.platform_(
            //   cupertino: Padding(
            //     padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
            //     child: ClipRRect(
            //       borderRadius: 12.br,
            //       child: ColoredBox(
            //         color: App.resolveColor(
            //           Palette.surfaceOverlay,
            //           dark: Palette.backgroundColorDark.shade900.withOpacity(0.4),
            //         )!,
            //       ),
            //     ),
            //   ),
            //   material: k,
            // )!,
          ],
        ),
      ),
    );
  }
}

class _ProfileTiles {
  final dynamic asset;
  final VoidCallback? onPressed;
  final bool? protected;
  final String title;

  const _ProfileTiles({
    required this.title,
    required this.asset,
    this.onPressed,
    this.protected,
  });

  static void _loginOrLogout(BuildContext c) {
    final cubit = c.read<AuthWatcherCubit>();

    if (cubit.isAuthenticated) {
      Utils.showAlertDialog(
        context: c,
        useRootNavigator: true,
        barrierDismissible: false,
        builder: (_) => ReactiveAdaptiveAlertdialog<AuthWatcherCubit, AuthWatcherState>.value(
          bloc: cubit,
          dialog: (_, s) => AdaptiveAlertdialog(
            title: 'Logout',
            content: 'Are you sure you want to logout?',
            titleHeight: 0.035.h,
            contentFontSize: 17.sp,
            contentTextAlignment: Utils.platform_(material: TextAlign.left, cupertino: TextAlign.center)!,
            leadingButtonConfig: (d) => d.copyWith(text: 'No, Go Back', isDefaultAction: true, width: 0.32.w),
            trailingButtonConfig: (d) => d.copyWith(
              width: 0.2.w,
              autoPop: false,
              isDestructiveAction: true,
              isLoading: s.isLoading || s.isLoggingOut,
              loadingSize: const Size.square(16),
              loadingColorLight: Palette.destructiveRed,
              loadingColorDark: Palette.destructiveRed,
              buttonChild: (loader) => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const AdaptiveText(
                    'Yes',
                    maxLines: 1,
                    softWrap: true,
                    textAlign: TextAlign.center,
                    fontSize: 16,
                    textColor: Palette.destructiveRed,
                    textColorDark: Palette.destructiveRed,
                    isDefault: true,
                  ),
                  //
                  0.01.horizontalw,
                  //
                  if (loader != null) loader,
                ],
              ),
              onPressed: () => enqueue(
                c.read<AuthWatcherCubit>().signOut,
                onResult: (_) {
                  try {
                    navigator.navigatorKey.currentContext?.read<BottomNavigationCubit>().reset();
                    // navigator.pop();
                  } catch (_) {
                    if (kDebugMode) rethrow;
                  }
                },
              ),
            ),
          ),
        ),
      );
    } else {
      navigator.navigate(LoginRoute(btnHeroTag: Const.authButtonHeroTag));
    }
  }

  static List<_ProfileTiles> list(BuildContext c) => [
        _ProfileTiles(
          title: 'Wallet',
          asset: AssetsSvgsProfile.icWalletFilledSVG,
          // onPressed: () => navigator.navigate(const MyBidsRoute()),
          onPressed: () {},
        ),
        _ProfileTiles(
          title: 'My Bids',
          asset: AssetsSvgsProfile.profileBidsSVG,
          onPressed: () => navigator.navigate(const MyBidsRoute()),
        ),
        _ProfileTiles(
          title: 'My Items',
          asset: AssetsSvgsProfile.profileItemsSVG,
          onPressed: () => navigator.navigate(const MySellingsRoute()),
        ),
        _ProfileTiles(
          title: 'Messages',
          asset: AssetsSvgsProfile.profileMessagesSVG,
          onPressed: () => navigator.navigate(const ConversationsListRoute()),
        ),
        _ProfileTiles(
          title: 'Reviews',
          asset: AssetsSvgsProfile.profileReviewsSVG,
          onPressed: () => navigator.navigate(const MyReviewsRoute()),
        ),
        // _ProfileTiles(
        //   title: 'My Orders',
        //   asset: AssetsSvgsProfile.profileOrdersSVG,
        //   // onPressed: () => navigator.navigate(const MySellingsRoute()),
        // ),
        _ProfileTiles(
          title: 'Wishlist',
          asset: AssetsSvgsProfile.profileWishlistSVG,
          onPressed: () => navigator.navigate(const MyWishlistRoute()),
        ),
        _ProfileTiles(
          title: 'Settings',
          asset: AssetsSvgsProfile.profileSettingsSVG,
          onPressed: () => navigator.navigate(const SettingsRoute()),
        ),
        _ProfileTiles(
          title: 'Help & Support',
          asset: AssetsSvgsProfile.helpSupportSVG,
          protected: false,
          onPressed: () => navigator.navigate(ContactSupportRoute()),
        ),
        _ProfileTiles(
          title: c.watch<AuthWatcherCubit>().state.user != null ? 'Logout' : 'Login',
          asset: c.watch<AuthWatcherCubit>().state.user != null
              ? AssetsSvgsProfile.profileLogoutSVG
              : RotatedBox(
                  quarterTurns: 2,
                  child: SvgPicture.asset(AssetsSvgsProfile.profileLogoutSVG, fit: BoxFit.contain),
                ),
          protected: false,
          onPressed: () => _loginOrLogout(c),
        ),
      ];
}
