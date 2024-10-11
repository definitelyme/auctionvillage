mixin Const {
  static const String sentryPub = 'auction-village';
  static const String appNameDev = 'AV Dev.';
  // static const String appNameBeta = 'Auction Village-Beta';
  static const String appName = 'Auction Village';
  static const String appDescription = 'A peer to peer auction marketplace. '
      'Participate in auctions, clearance and private room sales from different businesses and vendors.';
  static const String packageNameProd = 'com.mobile.app.auctionvillage';
  static const String packageNameBeta = 'com.mobile.app.auctionvillage.beta';
  static const String packageNameDev = 'com.mobile.app.auctionvillage.dev';
  static const String database = 'acution_village.db';
  static const String rateMyAppPrefKey = 'rate-my-app-pref-key';
  static const String minSDKVersion = '21';
  // static const String pingAddress = '1.1.1.1';
  // Hero Tags
  static const String emailLabelHeroTag = 'email-label-hero-tag';
  static const String emailFieldHeroTag = 'email-address-input--hero-tag';
  static const String passwordLabelHeroTag = 'password-label-hero-tag';
  static const String passwordFieldHeroTag = 'password-input--hero-tag';
  static const String authButtonHeroTag = 'auth-btns-hero-tag';
  static const String oauthBtnHeroTag = 'google-facebook-hero-tag';
  static const String loginAndSignupSwitchTag = 'login-and-signup-toggle-hero-tag';
  static const String profileLogoutBtnHerotag = 'profile-logout-button-hero-tag';
  static const String walletBalanceCardTag = 'wallet-balance-card-hero-tag';
  static const String profilePhotoHeroTag = 'user=profile-photo-hero-tag';

  // country constants
  static const String countriesFolder = 'countries';
  static const String defaultISO = 'NG';
  static const String defaultLocale = 'en_NG';
  static const String defaultCurrencyIcon = '₦';

  static const String kAccessTokenBoxKey = 'access-token-box-v1';
  static const String kAccessTokenKey = 'access-token-key';
  static const String kAccessTokenExpiryKey = 'access-token-expiry-key';
  static const String kPhoneNumberPrefKey = 'user-phone-number-pref-key';
  static const String kEmailPrefKey = 'user-email-pref-key';

  static const double maxImageUploadSize = 1e+7;
  static const double maxVideoUploadSize = 1e+7;
  static const double maxImageUploadWidth = 500;
  static const double maxImageUploadHeight = 640;
  static const int imageQuality = 40;
  static const int kPerPage = 7;

  //
  static const String logoPng = 'https://res.cloudinary.com/auctionvillage/image/upload/v1652334118/mobile/Misc/launch_icon_b9oauw.png';
  static const String privacyPolicyUrl = 'https://app.auctionsvillage.com/privacy-policy';
  static const String missingPickerPluginTxt = 'Image picker is not available on this device.';
}
