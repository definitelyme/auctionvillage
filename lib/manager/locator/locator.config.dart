// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auctionvillage/core/data/index.dart' as _i4;
import 'package:auctionvillage/core/data/repository/firebase_messaging_service.dart'
    as _i22;
import 'package:auctionvillage/core/data/repository/socket_io_client.dart'
    as _i31;
import 'package:auctionvillage/core/domain/facades/index.dart' as _i19;
import 'package:auctionvillage/core/presentation/index.dart' as _i25;
import 'package:auctionvillage/core/presentation/managers/network_internet/network_internet_bloc.dart'
    as _i23;
import 'package:auctionvillage/core/presentation/managers/tab_navigation/tab_navigation_cubit.dart'
    as _i32;
import 'package:auctionvillage/core/presentation/managers/util/util_cubit.dart'
    as _i44;
import 'package:auctionvillage/features/auth/data/repositories/auth/auth_facade_impl.dart'
    as _i46;
import 'package:auctionvillage/features/auth/data/repositories/repos.dart'
    as _i3;
import 'package:auctionvillage/features/auth/data/sources/local/auth_local_source.dart'
    as _i7;
import 'package:auctionvillage/features/auth/data/sources/remote/auth_remote_source.dart'
    as _i39;
import 'package:auctionvillage/features/auth/domain/index.dart' as _i45;
import 'package:auctionvillage/features/auth/presentation/managers/auth_cubit/auth_cubit.dart'
    as _i48;
import 'package:auctionvillage/features/auth/presentation/managers/watcher/auth_watcher_cubit.dart'
    as _i47;
import 'package:auctionvillage/features/dashboard/data/remote/deal_remote/deal_remote.dart'
    as _i12;
import 'package:auctionvillage/features/dashboard/data/remote/search/search.remote.dart'
    as _i26;
import 'package:auctionvillage/features/dashboard/data/remote/sell_remote/sell_remote.dart'
    as _i28;
import 'package:auctionvillage/features/dashboard/data/remote/util_remote/util_remote.dart'
    as _i34;
import 'package:auctionvillage/features/dashboard/data/remote/wallet_remote/wallet_remote.dart'
    as _i36;
import 'package:auctionvillage/features/dashboard/data/repositories/deal_repository.dart'
    as _i13;
import 'package:auctionvillage/features/dashboard/data/repositories/search_repository.dart'
    as _i27;
import 'package:auctionvillage/features/dashboard/data/repositories/seller_repository.dart'
    as _i29;
import 'package:auctionvillage/features/dashboard/data/repositories/util_repository.dart'
    as _i35;
import 'package:auctionvillage/features/dashboard/data/repositories/wallet_repository.dart'
    as _i37;
import 'package:auctionvillage/features/dashboard/presentation/managers/bottom_navigation/bottom_navigation_cubit.dart'
    as _i9;
import 'package:auctionvillage/features/dashboard/presentation/managers/deal/deal_cubit.dart'
    as _i40;
import 'package:auctionvillage/features/dashboard/presentation/managers/payment/payment_cubit.dart'
    as _i41;
import 'package:auctionvillage/features/dashboard/presentation/managers/product/product_bloc.dart'
    as _i42;
import 'package:auctionvillage/features/dashboard/presentation/managers/search/search_bloc.dart'
    as _i43;
import 'package:auctionvillage/features/dashboard/presentation/managers/withdraw/withdraw_cubit.dart'
    as _i38;
import 'package:auctionvillage/manager/locator/modules/modules.dart' as _i49;
import 'package:auctionvillage/manager/settings/app_settings.dart' as _i6;
import 'package:auctionvillage/manager/theme/theme_cubit.dart' as _i33;
import 'package:auctionvillage/utils/utils.dart' as _i5;
import 'package:awesome_notifications/awesome_notifications.dart' as _i8;
import 'package:cloudinary_public/cloudinary_public.dart' as _i10;
import 'package:connectivity_plus/connectivity_plus.dart' as _i11;
import 'package:firebase_analytics/firebase_analytics.dart' as _i14;
import 'package:firebase_core/firebase_core.dart' as _i15;
import 'package:firebase_crashlytics/firebase_crashlytics.dart' as _i16;
import 'package:firebase_messaging/firebase_messaging.dart' as _i17;
import 'package:firebase_remote_config/firebase_remote_config.dart' as _i18;
import 'package:firebase_storage/firebase_storage.dart' as _i20;
import 'package:flutter_paystack/flutter_paystack.dart' as _i24;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i21;
import 'package:shared_preferences/shared_preferences.dart' as _i30;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of main-scope dependencies inside of [GetIt]
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModules = _$AppModules();
    final serviceModules = _$ServiceModules();
    final firebaseModules = _$FirebaseModules();
    gh.lazySingleton<_i3.AccessTokenManager>(
        () => appModules.accessTokenManager);
    gh.singleton<_i4.AppHttpClient>(appModules.httpClient);
    gh.singleton<_i5.AppRouter>(appModules.router);
    gh.singleton<_i6.AppSettings>(appModules.appSettings);
    gh.singleton<_i7.AuthLocalDatasource>(
        _i7.AuthLocalDatasource(gh<_i3.AccessTokenManager>()));
    gh.lazySingleton<_i8.AwesomeNotifications>(
        () => serviceModules.awesomeNotifications);
    gh.singleton<_i9.BottomNavigationCubit>(_i9.BottomNavigationCubit());
    gh.singleton<_i10.CloudinaryPublic>(firebaseModules.cloudinary);
    gh.lazySingleton<_i11.Connectivity>(() => serviceModules.connectionStatus);
    gh.lazySingleton<_i12.DealRemote>(
        () => _i12.DealRemote(gh<_i4.AppHttpClient>()));
    gh.factory<_i13.DealRepository>(
        () => _i13.DealRepository(gh<_i12.DealRemote>()));
    gh.lazySingleton<_i14.FirebaseAnalytics>(
        () => firebaseModules.firebaseAnalytics);
    await gh.singletonAsync<_i15.FirebaseApp>(
      () => firebaseModules.firebaseApp,
      preResolve: true,
    );
    gh.lazySingleton<_i16.FirebaseCrashlytics>(
        () => firebaseModules.firebaseCrashlytics);
    gh.lazySingleton<_i17.FirebaseMessaging>(
        () => firebaseModules.firebaseMessaging);
    gh.lazySingleton<_i18.FirebaseRemoteConfig>(
        () => firebaseModules.firebaseRemoteConfig);
    await gh.lazySingletonAsync<_i19.FirebaseRemoteConfigFacade>(
      () => appModules.remoteConfigService(gh<_i18.FirebaseRemoteConfig>()),
      preResolve: true,
    );
    gh.lazySingleton<_i20.FirebaseStorage>(
        () => firebaseModules.firebaseStorage);
    gh.lazySingleton<_i21.InternetConnectionChecker>(
        () => serviceModules.connectionChecker);
    gh.singleton<_i19.MessagingFacade>(
      _i22.InAppMessaging(
        gh<_i17.FirebaseMessaging>(),
        gh<_i21.InternetConnectionChecker>(),
        gh<_i11.Connectivity>(),
        gh<_i8.AwesomeNotifications>(),
      ),
      dispose: (i) => i.dispose(),
    );
    gh.singleton<_i23.NetworkInternetBloc>(_i23.NetworkInternetBloc(
      gh<_i11.Connectivity>(),
      gh<_i21.InternetConnectionChecker>(),
    ));
    gh.lazySingleton<_i24.PaystackPlugin>(() => serviceModules.paystackInit);
    gh.singleton<_i25.RootCubit>(
        appModules.rootCubit(gh<_i19.FirebaseRemoteConfigFacade>()));
    gh.lazySingleton<_i26.SearchRemote>(
        () => _i26.SearchRemote(gh<_i4.AppHttpClient>()));
    gh.factory<_i27.SearchRepository>(
        () => _i27.SearchRepository(gh<_i26.SearchRemote>()));
    gh.lazySingleton<_i28.SellRemote>(
        () => _i28.SellRemote(gh<_i4.AppHttpClient>()));
    gh.factory<_i29.SellerRepository>(
        () => _i29.SellerRepository(gh<_i28.SellRemote>()));
    await gh.factoryAsync<_i30.SharedPreferences>(
      () => serviceModules.preferences,
      preResolve: true,
    );
    gh.factory<_i31.SocketIOClient>(() => _i31.SocketIOClient.intance());
    gh.factory<_i32.TabNavigationCubit>(() => _i32.TabNavigationCubit());
    gh.singleton<_i33.ThemeCubit>(_i33.ThemeCubit());
    gh.lazySingleton<_i34.UtilRemote>(
        () => _i34.UtilRemote(gh<_i4.AppHttpClient>()));
    gh.factory<_i35.UtilRepository>(
        () => _i35.UtilRepository(gh<_i34.UtilRemote>()));
    gh.lazySingleton<_i36.WalletRemote>(
        () => _i36.WalletRemote(gh<_i4.AppHttpClient>()));
    gh.factory<_i37.WalletRepository>(
        () => _i37.WalletRepository(gh<_i36.WalletRemote>()));
    gh.factory<_i38.WithdrawCubit>(() => _i38.WithdrawCubit(
          gh<_i37.WalletRepository>(),
          gh<_i35.UtilRepository>(),
        ));
    gh.singleton<_i39.AuthRemoteDatasource>(_i39.AuthRemoteDatasource(
      gh<_i4.AppHttpClient>(),
      gh<_i14.FirebaseAnalytics>(),
    ));
    gh.factory<_i40.DealCubit>(() => _i40.DealCubit(
          gh<_i13.DealRepository>(),
          gh<_i29.SellerRepository>(),
        ));
    gh.factory<_i41.PaymentCubit>(() => _i41.PaymentCubit(
          gh<_i37.WalletRepository>(),
          gh<_i24.PaystackPlugin>(),
          gh<_i14.FirebaseAnalytics>(),
          gh<_i13.DealRepository>(),
          gh<_i29.SellerRepository>(),
        ));
    gh.factory<_i42.ProductBloc>(() => _i42.ProductBloc(
          gh<_i13.DealRepository>(),
          gh<_i29.SellerRepository>(),
          gh<_i10.CloudinaryPublic>(),
        ));
    gh.factory<_i43.SearchBloc>(
        () => _i43.SearchBloc(gh<_i27.SearchRepository>()));
    gh.factory<_i44.UtilCubit>(() => _i44.UtilCubit(
          gh<_i35.UtilRepository>(),
          gh<_i10.CloudinaryPublic>(),
        ));
    gh.lazySingleton<_i45.AuthFacade>(() => _i46.AuthFacadeImpl(
          gh<_i39.AuthRemoteDatasource>(),
          gh<_i7.AuthLocalDatasource>(),
          gh<_i14.FirebaseAnalytics>(),
          gh<_i6.AppSettings>(),
        ));
    gh.singleton<_i47.AuthWatcherCubit>(
        _i47.AuthWatcherCubit(gh<_i45.AuthFacade>()));
    gh.factory<_i48.AuthCubit>(() => _i48.AuthCubit(
          gh<_i45.AuthFacade>(),
          gh<_i10.CloudinaryPublic>(),
        ));
    return this;
  }
}

class _$FirebaseModules extends _i49.FirebaseModules {}

class _$AppModules extends _i49.AppModules {}

class _$ServiceModules extends _i49.ServiceModules {}
