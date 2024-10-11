mixin EndPoints {
  static const String APP_DEV_DOMAIN = 'staging-auction-village-backend.up.railway.app';
  // static const String APP_BETA_DOMAIN = 'auction-village-backend.herokuapp.com';
  static const String APP_BETA_DOMAIN = 'staging-auction-village-backend.up.railway.app';
  static const String APP_PROD_DOMAIN = 'api.auctionsvillage.com';
  static const String API_ENDPOINT = '/api/v1';
  static const String PUSHER_AUTH_URL = '/broadcasting/auth';
  static const String SLEEP = '/sleep';

  //.....///.....// AUTHENTICATION ENDPOINTS ....////././//...//
  static const String LOGIN = '/auth/login';
  static const String REGISTER = '/auth/sign-up';
  static const String LOGOUT = '/auth/logout';
  // UPDATE PHONE
  static const String RESEND_PHONE_VERIFICATION = '/auth/verify/phone/resend';
  static const String CONFIRM_PHONE_VERIFICATION = '/auth/verify/phone';
  // RESET ASSWORD
  static const String SEND_PASSWORD_RESET_MESSAGE = '/auth/forgot-password';
  static const String CONFIRM_PASSWORD_RESET = '/auth/reset-password';
  static const String UPDATE_PASSWORD = '/auth/change-password'; // (POST)

  // SOCIALS AUTH
  static const String GOOGLE_SIGNIN = '/auth/social/google';
  static const String FACEBOOK_SIGNIN = '/auth/social/facebook';
  static const String APPLE_SIGNIN = '/auth/social/apple';
  static const String TWITTER_SIGNIN = '/auth/social/twitter';

  /// .......///////...// USER ENDPOINTS .......///////./....//
  static const String GET_USER = '/users/me';
  static const String USER_WALLET = '/wallets/me';
  static const String UPDATE_USER_PROFILE = '/users';
  static const String UPDATE_PHONE = '/user/phone'; // (POST)
  static const String CONFIRM_UPDATE_PHONE = '/profile/phone'; // (PATCH)
  static const String DELETE_USER_ACCOUNT = '/users'; // (DELETE)
  static const String SEND_OTP = '/users/send-otp';
  static const String GET_USER_SECURITY_QUESTION = '/users/security-question';

  /// .......///////...// PROFILE ENDPOINTS .......///////./....//
  static const String ADD_DEBIT_CARD = '/users/{id}/card';
  static const String GET_USER_DEBIT_CARD = '/users/me';
  static const String FUND_WALLET = '/wallets/fund';
  static const String WITHDRAW_WALLET = '/wallets/withdraw';
  static const String SETUP_WITHDRAWAL_PIN = '/users/transaction-pin';
  static const String CONFIRM_SECURITY_ANSWER = '/check-user-answers';
  static const String FORGOT_SECURITY_ANSWER = '/user/sessions/get-otp';
  static const String RESET_WITHDRAWAL_PIN = '/user/sessions/verify-otp';
  static const String SEARCH_FOR_VENDOR = '/users';
  static const String SEARCH_FOR_DEALS = '/deals';

  /// .......///////...// DEALS ENDPOINTS .......///////./....//
  static const String CREATE_PRODUCT = '/deals';
  static const String FIND_DEALS = '/deals';
  static const String GET_SINGLE_DEAL = '/deals/{id}';
  static const String PLACE_A_BID = '/deals/{id}/bid';
  static const String FIND_CATEGORIES = '/categories';
  static const String GET_SINGLE_CATEGORY = '/categories/{id}';
  static const String FILTER_BY_CATEGORY = '/categories/{id}/deals';
  static const String WALLET_ACTIVITIES = '/data/transactions/{id}/user/stats';
  static const String MY_BID_HISTORY_STATS = '/data/deals-histories/{id}/user/stats';
  static const String MY_BID_HISTORY = '/deals/histories';
  static const String SELL_HISTORY = '/data/deals/{id}/user/stats';
  static const String WISHLIST = '/deals/me/wishlist';
  static const String MY_REVIEWS = '/ratings/get-rating';
  static const String GET_DEAL_REVIEW = '/ratings/get-rating/{id}';
  static const String GET_AVAILABLE_PLANS = '/plans';
  static const String FIND_OR_SUGGEST_TAGS = '/product/search';
  static const String FIND_OR_SUGGEST_REGIONS = '/product/search';
  static const String BID_HISTORY = '/deals/histories';
  static const String UNLIST_ITEM = '/deals/{id}';

  /// .......///////...// PAYMENT ENDPOINTS .......///////./....//
  static const String PAY_FOR_DEAL = '/transactions/make-payment';
  static const String PAY_ADMITTANCE_FEE = '/deals/pay-admittance';
  static const String ADMITTANCE_FEE_STATUS = '/deals/{id}/status';
  static const String FETCH_PREDEFINED_QUESTIONS = '/security-questions';
  static const String GET_BANKS_LIST = 'https://api.flutterwave.com/v3/banks/{iso}';
  static const String RESOLVE_BANK_ACCOUNT = 'https://api.flutterwave.com/v3/accounts/resolve';
  static const String VERIFY_TRANSACTION = '/transactions/verify';
  static const String VERIFY_PAYSTACK_TRANSACTION = 'https://api.paystack.co/transaction/verify/{reference}';
  static const String VERIFY_FLW_TRANSACTION = 'https://api.flutterwave.com/v3/transactions/{reference}/verify';

  /// .......///////...// UTILITIES ENDPOINTS .......///////./....//
  static const String CONTACT_SUPPORT = '/help-tickets';
}
