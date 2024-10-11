import 'package:auctionvillage/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

mixin AppAssets {
  static const ASSETS_DIR = 'assets';
  static const SVG_DIR = '$ASSETS_DIR/svgs';
  static const IMAGES_DIR = '$ASSETS_DIR/images';
  static const VIDEOS_DIR = '$ASSETS_DIR/videos';
  static const RAW_DIR = '$ASSETS_DIR/raw';
  // Sub-folders
  //////////////  IMAGES  ////////////
  static const String ONBOARDING_IMAGES_DIR = '$IMAGES_DIR/onboarding';
  static const String DASHBOARD_IMAGES_DIR = '$IMAGES_DIR/dashboard';
  static const String AVATAR_IMAGES_DIR = '$DASHBOARD_IMAGES_DIR/avatars';

  /////////////  SVGS /////////////
  static const String AUTH_SVG_DIR = '$SVG_DIR/auth';
  static const String DASHBOARD_SVG_DIR = '$SVG_DIR/dashboard';
  static const String DASHBOARD_LOGO_DIR = '$DASHBOARD_SVG_DIR/logos';
  static const String QUICK_ACTIONS_DIR = '$DASHBOARD_IMAGES_DIR/quick_actions';
  static const String ONBOARDING_SVG_DIR = '$SVG_DIR/onboarding';

  /////////////////////////////////////////////////////
  /////////////////////////////////////////////////////
  /// LOGO
  static const String _logoSVG = '$SVG_DIR/logo/logo.svg';

  // Lottie Json
  static const String checkAnimation = '$RAW_DIR/check_anim.json';
  static const String hoorayAnimation = '$RAW_DIR/hooray_lottie_anim.json';
  static const String bidHammer = '$RAW_DIR/bid-hammer.json';
  static const String hammerCoins = '$RAW_DIR/hammer-coins.json';
  static const String hammerPurple = '$RAW_DIR/hammer-purple.json';
  static const String hammerWhite = '$RAW_DIR/hammer-white.json';
  static const String countries = '$RAW_DIR/countries.json';

  /// USER
  static const String user = '$IMAGES_DIR/user.png';
  static const String female = '$IMAGES_DIR/female.png';
  static const String avatarImg = '$IMAGES_DIR/avatar_png.png';

  /// DASHBOARD SVGS
  static const String _thumbsSVG = '$DASHBOARD_SVG_DIR/thumbs-up.svg';
  static const String _featherSearch = '$DASHBOARD_SVG_DIR/feather_search.svg';
  static const String _comingSoon = '$DASHBOARD_SVG_DIR/coming_soon_chat.svg';
  static const String _noConnectivity = '$DASHBOARD_SVG_DIR/no_connectivity.svg';
  static const String _noHistory = '$DASHBOARD_SVG_DIR/no_history.svg';
  static const String _errorRinged = '$DASHBOARD_SVG_DIR/error_ringed.svg';
  static const String _successRinged = '$DASHBOARD_SVG_DIR/success_ringed.svg';
  static const String _stripeLogo = '$DASHBOARD_SVG_DIR/stripe-2.svg';

  /// DASHBOARD IMAGES
  static const String cardAmericanExpress = '$IMAGES_DIR/card_logos/american_express.png';
  static const String cardMasterCard = '$IMAGES_DIR/card_logos/mastercard.png';
  static const String cardVisa = '$IMAGES_DIR/card_logos/visa.png';
  static const String cardVerve = '$IMAGES_DIR/card_logos/verve.png';
  static const String cardDiscover = '$IMAGES_DIR/card_logos/discover.png';
  static const String cardJCB = '$IMAGES_DIR/card_logos/jcb.png';
  static const String cardDinersClub = '$IMAGES_DIR/card_logos/diners_club.png';

  /////////////////////////////////////////////////////
  /////////////////////////////////////////////////////
  ///
  static const List<String> images = [
    AssetsImagesLogo.logoLightPNG,
    AssetsImagesLogo.logoDarkPNG,
    AssetsImagesDashboard.unnamedPNG,
    AssetsImagesDashboard.onboarding1PNG,
    AssetsImagesDashboard.onboarding2PNG,
    AssetsImagesDashboard.onboarding3PNG,
    AssetsImagesCardLogos.americanExpressPNG,
    AssetsImagesCardLogos.mastercardPNG,
    AssetsImagesCardLogos.visaPNG,
    AssetsImagesCardLogos.vervePNG,
    AssetsImagesCardLogos.discoverPNG,
    AssetsImagesCardLogos.jcbPNG,
    AssetsImagesCardLogos.dinnersClubPNG,
    AssetsImagesDashboard.watchDemoPNG,
    AssetsImagesDashboard.bagDemoPNG,
  ];

  static const List<String> svgs = [
    _logoSVG,
    _thumbsSVG,
    _noConnectivity,
    _featherSearch,
    _comingSoon,
    _noHistory,
    AssetsSvgsAuth.facebookSVG,
    AssetsSvgsAuth.googleSVG,
    AssetsSvgsAuth.hammerSVG,
    AssetsSvgsAuth.mailToSVG,
    AssetsSvgsProfile.helpSupportSVG,
    AssetsSvgsProfile.icWalletFilledSVG,
    AssetsSvgsProfile.profileBidsSVG,
    AssetsSvgsProfile.profileItemsSVG,
    AssetsSvgsProfile.profileLogoutSVG,
    AssetsSvgsProfile.profileMessagesSVG,
    AssetsSvgsProfile.profileOrdersSVG,
    AssetsSvgsProfile.profileReviewsSVG,
    AssetsSvgsProfile.profileSettingsSVG,
    AssetsSvgsProfile.profileWishlistSVG,
    AssetsSvgsDashboard.icBookmarkSVG,
    AssetsSvgsDashboard.icCreditCardSVG,
    AssetsSvgsDashboard.icDownTrendSVG,
    AssetsSvgsDashboard.icHammerSVG,
    AssetsSvgsDashboard.icNotificationBellSVG,
    AssetsSvgsDashboard.icSendMessageSVG,
    AssetsSvgsDashboard.icShoppingBagSVG,
    AssetsSvgsDashboard.icSortSVG,
    AssetsSvgsDashboard.icUpTrendSVG,
    AssetsSvgsDashboard.icWalletOutlinedSVG,
    AssetsSvgsDashboard.icWinnerMedalSVG,
    AssetsSvgsDashboard.navAccountSVG,
    AssetsSvgsDashboard.navHomeSVG,
    AssetsSvgsDashboard.navSearchSVG,
    AssetsSvgsDashboard.navStoreSVG,
    AssetsSvgsDashboard.stripe2SVG,
    AssetsSvgsDashboard.errorRingedSVG,
    AssetsSvgsDashboard.successRingedSVG,
    AssetsSvgsDashboard.galleryColoredSVG,
    AssetsSvgsDashboard.galleryOutlinedSVG,
  ];

  static String get logo => Utils.foldTheme(light: () => AssetsImagesLogo.logoLightPNG, dark: () => AssetsImagesLogo.logoDarkPNG);
  static String get logo1152 =>
      Utils.foldTheme(light: () => AssetsImagesLogo.splashLogoLight1152PNG, dark: () => AssetsImagesLogo.splashLogoDark1152PNG);

  static SvgPicture logoSVG = SvgPicture.asset(
    _logoSVG,
    fit: BoxFit.contain,
  );

  static SvgPicture google = SvgPicture.asset(
    '$AUTH_SVG_DIR/google.svg',
    height: 23,
    width: 23,
    fit: BoxFit.contain,
  );

  static SvgPicture facebook([Color? color]) => SvgPicture.asset(
        '$AUTH_SVG_DIR/facebook.svg',
        height: 23,
        width: 23,
        color: color,
        fit: BoxFit.contain,
      );

  static SvgPicture emailRegular([Color? color]) => SvgPicture.asset(
        '$AUTH_SVG_DIR/mail_to.svg',
        height: 22,
        width: 22,
        color: color,
        fit: BoxFit.contain,
      );

  static SvgPicture noConnectivity(BuildContext c, [Size size = const Size(23, 23)]) => SvgPicture.asset(
        _noConnectivity,
        height: size.height,
        width: size.width,
        color: App.resolveColor(Palette.neutralC7, dark: Colors.white70, ctx: c),
        fit: BoxFit.contain,
      );

  static SvgPicture noHistory(BuildContext c, {Size size = const Size(35, 35), Color? color}) => SvgPicture.asset(
        _noHistory,
        height: size.height,
        width: size.width,
        color: color ?? App.resolveColor(Palette.neutralC7, dark: Colors.white70, ctx: c),
        fit: BoxFit.contain,
      );

  static SvgPicture cameraOutlined = SvgPicture.asset(
    '$DASHBOARD_SVG_DIR/camera_outlined.svg',
    height: 25,
    width: 25,
    color: Colors.white,
    fit: BoxFit.contain,
  );

  static SvgPicture cameraColored = SvgPicture.asset(
    '$DASHBOARD_SVG_DIR/camera_colored.svg',
    height: 25,
    width: 25,
    fit: BoxFit.contain,
  );

  static SvgPicture galleryOutlined = SvgPicture.asset(
    '$DASHBOARD_SVG_DIR/gallery_outlined.svg',
    height: 25,
    width: 25,
    color: Colors.white,
    fit: BoxFit.contain,
  );

  static SvgPicture galleryColored = SvgPicture.asset(
    '$DASHBOARD_SVG_DIR/gallery_colored.svg',
    height: 25,
    width: 25,
    fit: BoxFit.contain,
  );

  static SvgPicture featherSearch([Size size = const Size(40, 40)]) => SvgPicture.asset(
        _featherSearch,
        height: size.height,
        width: size.width,
        color: App.resolveColor(
          Palette.neutralC7,
          dark: Colors.white70,
        ),
        fit: BoxFit.contain,
      );

  static SvgPicture creditCard = SvgPicture.asset(
    AssetsSvgsDashboard.icCreditCardSVG,
    fit: BoxFit.contain,
  );

  static SvgPicture sendMessage = SvgPicture.asset(
    AssetsSvgsDashboard.icSendMessageSVG,
    fit: BoxFit.contain,
  );

  static SvgPicture comingSoon = SvgPicture.asset(
    _comingSoon,
    fit: BoxFit.contain,
  );

  static SvgPicture shoppingBag([Color? color, Size? size]) => SvgPicture.asset(
        AssetsSvgsDashboard.icShoppingBagSVG,
        height: size?.height,
        width: size?.width,
        color: color,
        fit: BoxFit.contain,
      );

  static SvgPicture bookmark([Color? color, Size? size]) => SvgPicture.asset(
        AssetsSvgsDashboard.icBookmarkSVG,
        height: size?.height,
        width: size?.width,
        color: color,
        fit: BoxFit.contain,
      );
  static SvgPicture thumbs([Color? color, Size? size]) => SvgPicture.asset(
        _thumbsSVG,
        height: size?.height,
        width: size?.width,
        color: color,
        fit: BoxFit.contain,
      );

  static SvgPicture errorRinged = SvgPicture.asset(_errorRinged, fit: BoxFit.contain);

  static SvgPicture successRinged = SvgPicture.asset(_successRinged, fit: BoxFit.contain);

  static SvgPicture stripeLogo = SvgPicture.asset(_stripeLogo, fit: BoxFit.contain);

  static SvgPicture notificationBell({Size? size, Color? color}) => SvgPicture.asset(
        AssetsSvgsDashboard.icNotificationBellSVG,
        fit: BoxFit.contain,
        height: size?.height,
        width: size?.width,
        color: color,
      );

  static SvgPicture icSortSVG([Color? color]) => SvgPicture.asset(AssetsSvgsDashboard.icSortSVG, fit: BoxFit.contain, color: color);
}
