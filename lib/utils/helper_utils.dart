import 'dart:async';
import 'dart:io';

import 'package:auctionvillage/manager/locator/locator.dart';
import 'package:auctionvillage/manager/settings/app_settings.dart';
import 'package:auctionvillage/manager/theme/theme.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

typedef _PlatformDynamicColor = Tuple2<Color?, Color?>? Function();
typedef FutureFunction = FutureOr<dynamic> Function();

// ignore: non_constant_identifier_names
Utils get App => Utils._singleton;

Logger get log => Utils.logger;

AppSettings get settings => getIt<AppSettings>();

StackRouter get navigator => getIt<AppRouter>();

StackRouter innerNavigator(BuildContext context) => context.router;

DateTime get localTime => DateTime.now().toLocal();

/// Returns true if T1 and T2 are identical types.
///
/// This will be false if one type is a derived type of the other.
bool typesEqual<T1, T2>() => T1 == T2;

bool isNullable<U>() => null is U;

// ignore: avoid_positional_boolean_parameters
void throwIf(bool condition, Object error) {
  if (condition) throw error;
}

// ignore: avoid_positional_boolean_parameters
void throwIfNot(bool condition, Object error) {
  if (!condition) throw error;
}

List<String> guestRoutes = [
  SplashRoute.name,
  GetStartedRoute.name,
  LoginRoute.name,
  SignupRoute.name,
  ForgotPasswordRoute.name,
  PasswordResetRoute.name,
];

class Utils {
  static const Utils _singleton = Utils._();

  static const Duration autoRetrievalTimeout = Duration(seconds: 40);
  static const double buttonRadius = 4.0;
  static const BorderRadius buttonBorderRadius = BorderRadius.all(Radius.circular(buttonRadius));
  static const BorderRadius cardBorderRadius = BorderRadius.all(Radius.circular(cardRadius));
  static const double cardRadius = 12.0;
  static const double chipRadius = 20.0;
  static const BorderRadius chipBorderRadius = BorderRadius.all(Radius.circular(chipRadius));
  static const Duration crossFadeDuration = Duration(milliseconds: 400);
  static const double distanceKMConverter = 0.001;
  static const double inputBorderRadius = 4.0;

  static const EdgeInsets inputPadding = EdgeInsets.symmetric(vertical: 14.0, horizontal: 12.0);

  static const double labelLetterSpacing = 0.60;
  static const double letterSpacing = 0.8;
  static Logger logger = Logger(
    level: kReleaseMode ? Level.nothing : null,
    filter: env.flavor == BuildFlavor.dev ? DevelopmentFilter() : ProductionFilter(),
    printer: HybridPrinter(PrettyPrinter(
      methodCount: 3, // number of method calls to be displayed
      errorMethodCount: 10, // number of method calls if stacktrace is provided
      lineLength: 100, // width of the output
      colors: true, // Colorful log messages
      printEmojis: true,
      printTime: false,
    )),
  );

  static const Widget nothing = SizedBox.shrink();

  static ScrollPhysics get physics {
    if (Platform.isIOS || Platform.isMacOS) return const BouncingScrollPhysics();
    return const ClampingScrollPhysics();
  }

  static const Duration willPopTimeout = Duration(seconds: 3);

  factory Utils() => _singleton;

  const Utils._();

  static Future<Directory?> get rootDir async => await getExternalStorageDirectory();
  static Future<Directory> get cacheDir async => await getTemporaryDirectory();
  static Future<Directory> get documentsDir async => await getApplicationDocumentsDirectory();

  static Future<AndroidDeviceInfo>? get androidDeviceInfo => Utils.platform_(material: DeviceInfoPlugin().androidInfo, cupertino: null)!;

  static Future<IosDeviceInfo>? get iosDeviceInfo => Utils.platform_(material: null, cupertino: DeviceInfoPlugin().iosInfo)!;

  /// Returns the current route path
  String get currentRoute => navigator.current.name;

  /// The current [WidgetsBinding], if one has been created.
  WidgetsBinding? get engine => WidgetsBinding.instance;

  /// give access to FocusScope.of(context)
  FocusNode? get focusScope => FocusManager.instance.primaryFocus;

  static bool get isPlatformDark => SchedulerBinding.instance.window.platformBrightness == Brightness.dark;

  GlobalKey<NavigatorState> get key => navigator.navigatorKey;

  /// give access to the current platform
  TargetPlatform get platform => key.currentContext?.let((it) => Theme.of(it).platform) ?? defaultTargetPlatform;

  /// Returns the current route path
  String get rootRoute => navigator.root.stackData.first.name;

  // 0.064
  double get sidePadding => platform_(cupertino: 1.sw * 0.035, material: 1.sw * 0.05)!;

  TextStyle get titleStyle => TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 19.0.sp,
        letterSpacing: Utils.letterSpacing,
        color: Colors.white,
      );
  // double get topPadding => 1.sw * 0.03;

  // Widget get loadingHourGlass => SpinKitPouringHourGlass(
  //       color: App.resolveColor(
  //         Palette.primary,
  //         dark: Colors.white70,
  //       )!,
  //       size: 34.0,
  //       duration: const Duration(milliseconds: 1100),
  //     );

  // Widget get loadingWave => SpinKitWave(
  //       color: App.resolveColor(
  //         Palette.primary,
  //         dark: Colors.white70,
  //       )!,
  //       size: 35.0,
  //       duration: const Duration(milliseconds: 1200),
  //       itemCount: 8,
  //       type: SpinKitWaveType.center,
  //     );

  // double get topPadding => shortest * 0.03;

  PageRoute<T> adaptivePageRoute<T>({
    String? title,
    required WidgetBuilder builder,
    RouteSettings? settings,
    bool maintainState = true,
    bool fullscreenDialog = false,
  }) {
    return Platform.isIOS
        ? CupertinoPageRoute(
            title: title,
            builder: builder,
            settings: settings,
            maintainState: maintainState,
            fullscreenDialog: fullscreenDialog,
          )
        : MaterialPageRoute(
            builder: builder,
            settings: settings,
            maintainState: maintainState,
            fullscreenDialog: fullscreenDialog,
          );
  }

  int calculateAge(DateTime birthDate) {
    var currentDate = localTime;
    var age = currentDate.year - birthDate.year;
    var month1 = currentDate.month;
    var month2 = birthDate.month;
    if (month2 > month1) {
      age--;
    } else if (month1 == month2) {
      var day1 = currentDate.day;
      var day2 = birthDate.day;
      if (day2 > day1) {
        age--;
      }
    }
    return age;
  }

  static Widget circularLoader({
    BuildContext? ctx,
    double? width,
    double? height,
    double? stroke,
    double? radius,
    Color? color,
  }) =>
      CircularProgressBar.adaptive(
        width: width ?? 1.w * 0.08,
        height: height ?? 1.w * 0.08,
        strokeWidth: stroke ?? 3.5,
        radius: radius ?? 11,
        color: App.resolveColor(color, ctx: ctx)!,
      );

  Widget circularLoadingOverlay([Color? background, Color? progressColor]) => background != null
      ? DecoratedBox(
          decoration: BoxDecoration(color: background.withOpacity(0.65)),
          child: Center(
            child: CircularProgressBar.adaptive(
              width: 1.w * 0.08,
              height: 1.w * 0.08,
              strokeWidth: 3.5,
              radius: 14,
              color: progressColor,
            ),
          ),
        )
      : Center(
          child: CircularProgressBar.adaptive(
            width: 1.w * 0.08,
            height: 1.w * 0.08,
            strokeWidth: 3.5,
            radius: 14,
            color: progressColor,
          ),
        );

  static Widget crossFadeLayoutBuilder(
    Widget firstChild,
    Key firstChildKey,
    Widget secondChild,
    Key secondChildKey,
  ) {
    return Stack(
      clipBehavior: Clip.hardEdge,
      alignment: Alignment.center,
      children: [
        Positioned(
          key: secondChildKey,
          top: 0,
          left: 0,
          right: 0,
          child: secondChild,
        ),
        //
        Positioned(
          key: firstChildKey,
          child: firstChild,
        ),
      ],
    );
  }

  SystemUiOverlayStyle customSystemOverlay({
    BuildContext? ctx,
    Brightness? android,
    Brightness? ios,
  }) {
    final context = ctx ?? navigator.navigatorKey.currentContext;
    assert(context != null);

    return SystemUiOverlayStyle(
      // For Android.
      // Use [light] for white status bar and [dark] for black status bar.
      statusBarIconBrightness: android ?? context!.androidOverlay,
      // For iOS.
      // Use [dark] for white status bar and [light] for black status bar.
      statusBarBrightness: ios ?? context!.iosOverlay,
    );
  }

  static T foldTheme<T>({
    required T Function() light,
    T Function()? dark,
    BuildContext? context,
  }) {
    var isdarkMode = isDarkMode(context);

    if (isdarkMode) {
      if (dark == null) return light.call();
      return dark.call();
    } else
      return light.call();
  }

  /// As a rule, Flutter knows which widget to update,
  /// so this command is rarely needed. We can mention situations
  /// where you use const so that widgets are not updated with setState,
  /// but you want it to be forcefully updated when an event like
  /// language change happens. using context to make the widget dirty
  /// for performRebuild() is a viable solution.
  /// However, in situations where this is not possible, or at least,
  /// is not desired by the developer, the only solution for updating
  /// widgets that Flutter does not want to update is to use reassemble
  /// to forcibly rebuild all widgets. Attention: calling this function will
  /// reconstruct the application from the sketch, use this with caution.
  /// Your entire application will be rebuilt, and touch events will not
  /// work until the end of rendering.
  Future<void> forceAppUpdate() async {
    void rebuild(Element el) {
      el.markNeedsBuild();
      el.visitChildren(rebuild);
    }

    try {
      navigator.navigatorKey.currentContext?.let((it) => (it as Element).visitChildren(rebuild));
    } catch (_) {
      if (kDebugMode) rethrow;
    }
    // await engine?.reassembleApplication();
  }

  static bool isDarkMode([BuildContext? context]) {
    BuildContext? ctx;

    try {
      ctx = context ?? navigator.navigatorKey.currentContext;
    } catch (_) {
      if (kDebugMode) rethrow;
    }

    if (ctx != null) {
      final isDeviceTheme = ctx.read<ThemeCubit>().isDeviceThemeMode;
      return ctx.read<ThemeCubit>().isDarkMode || (isDeviceTheme ? isPlatformDark : false);
    } else
      return false;
  }

  static Brightness get brightness => getIt<ThemeCubit>().state.themeData().brightness;

  AppTheme get appTheme => isDarkMode() ? AppTheme.dark() : AppTheme.light();

  static String greeting(TimeOfDay time) {
    final hour = time.hour;

    if (hour < 12) {
      return 'Good Morning';
    } else if (hour < 18) {
      return 'Good Afternoon';
    } else {
      return 'Good Evening';
    }
  }

  Widget loadingSpinningLines([Color? color]) => SpinKitLoader(
        color: App.resolveColor(Palette.primary, dark: color ?? Colors.white70)!,
        duration: const Duration(milliseconds: 900),
      );

  Future<void> logEvent(
    String event, {
    Map<String, Object?>? parameters,
    bool? global,
  }) async {
    await getIt<FirebaseAnalytics>().logEvent(
      name: event,
      parameters: parameters,
      callOptions: global != null ? AnalyticsCallOptions(global: global) : null,
    );
  }

  static Future<void> platformPop({bool animated = true}) async {
    await SystemChannels.platform.invokeMethod<void>('SystemNavigator.pop', animated);
  }

  static T? platform_<T>({T? material, T? cupertino}) {
    if (Platform.isIOS || Platform.isMacOS)
      return cupertino;
    else
      return material;
  }

  // End ////

  static void popupIfNoAuth(BuildContext ctx, {String? msg}) {
    PopupDialog.info(
      message: msg ?? 'Login to perform this action!',
      duration: const Duration(seconds: 5),
      button: AppButton(
        width: 0.2.w,
        height: 0.045.h,
        cupertinoWidth: 0.2.w,
        cupertinoHeight: 0.045.h,
        fontWeight: FontWeight.w600,
        text: 'Login',
        onPressed: () => navigator.push(LoginRoute()),
      ),
    ).render(ctx);
  }

  Widget positionedLoader(
    BuildContext context, [
    bool overlay = true,
    Widget? loader,
  ]) {
    final _keyboardClosed = MediaQuery.of(context).viewInsets.bottom == 0;
    double? _topHeight;
    try {
      _topHeight = Scaffold.of(context).appBarMaxHeight;
    } catch (e) {
      _topHeight = kToolbarHeight;
    }

    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: _topHeight ?? kToolbarHeight),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: _keyboardClosed ? MainAxisAlignment.end : MainAxisAlignment.start,
          children: [loader ?? circularLoader()],
        ),
      ),
    );
  }

  static Future<void> report(
    dynamic exception,
    StackTrace stack, {
    bool printDetails = true,
    String? reason,
    bool fatal = false,
    bool firebase = true,
    bool sentry = true,
    FirebaseCrashlytics? crashlytics,
  }) async {
    final _crashlytics = crashlytics ?? getIt<FirebaseCrashlytics>();

    if (_crashlytics.isCrashlyticsCollectionEnabled) {
      if (firebase) {
        final msg = reason ?? (fatal ? 'Fatal Error (Possibly caught in the nearest zone)' : 'Non-fatal Try/Catch Exception');
        await _crashlytics.recordError(exception, stack, printDetails: printDetails, reason: msg, fatal: fatal, information: [
          DiagnosticsNode.message('Error Report'),
          DiagnosticsProperty<Object>('Exception', exception, style: DiagnosticsTreeStyle.errorProperty),
          DiagnosticsProperty<StackTrace>('Stack Trace', stack, style: DiagnosticsTreeStyle.errorProperty),
        ]);
      }

      if (sentry) await Sentry.captureException(exception, stackTrace: stack);
    } else {
      Logger().e(exception.toString(), exception, stack);
    }
  }

  static Future<void> reportFlutterError(
    Object exception,
    StackTrace? stack, {
    String? reason,
    FirebaseCrashlytics? crashlytics,
    bool firebase = true,
    bool sentry = true,
  }) async {
    final _crashlytics = crashlytics ?? getIt<FirebaseCrashlytics>();

    if (_crashlytics.isCrashlyticsCollectionEnabled) {
      final _reason = reason ?? 'Non-fatal Try/Catch Exception';
      final details = FlutterErrorDetails(
        exception: exception,
        stack: stack,
        library: 'Flutter',
        context: ErrorDescription(_reason),
        informationCollector: () sync* {
          yield* [
            DiagnosticsNode.message('Flutter Error Report'),
            DiagnosticsProperty<Object>('Exception', exception, style: DiagnosticsTreeStyle.errorProperty),
            DiagnosticsProperty<StackTrace>('Stack Trace', stack, style: DiagnosticsTreeStyle.errorProperty),
            DiagnosticsStackTrace(_reason, stack),
          ];
        },
      );
      if (firebase) await _crashlytics.recordFlutterError(details);
      if (sentry) await Sentry.captureException(exception, stackTrace: stack);
    } else {
      Logger().e(reason ?? exception.toString(), exception, stack);
    }
  }

  Color? resolveColor(
    Color? light, {
    Color? dark,
    _PlatformDynamicColor? material,
    _PlatformDynamicColor? cupertino,
    BuildContext? ctx,
  }) {
    BuildContext? _ctx;

    try {
      _ctx = ctx ?? navigator.navigatorKey.currentContext!;
    } catch (e) {
      _ctx = null;
    }

    Color _resolvable() {
      return CupertinoDynamicColor.withBrightness(
        color: foldTheme(
                light: () => cupertino?.call()?.value1 ?? light, dark: () => cupertino?.call()?.value2 ?? dark ?? light, context: ctx) ??
            Palette.primary.invertLuminance,
        darkColor: cupertino?.call()?.value2 ?? dark ?? light ?? Palette.backgroundColorDark.invertLuminance,
      );
    }

    return platform.fold(
      material: () =>
          foldTheme(light: () => material?.call()?.value1 ?? light, dark: () => material?.call()?.value2 ?? dark ?? light, context: ctx),
      cupertino: () => _ctx?.let((it) => CupertinoDynamicColor.resolve(_resolvable(), it)) ?? _resolvable(),
    );
  }

  FutureOr<T?> showAdaptiveBottomSheet<T>(
    BuildContext context, {
    required WidgetBuilder builder,
    Radius topRadius = const Radius.circular(24),
    bool isDismissible = true,
    Color? backgroundColor,
    Color? barrierColor,
    double? elevation,
    bool enableDrag = true,
    bool useRootNavigator = true,
    ShapeBorder shape = const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
    ),
    bool expand = false,
    bool bounce = false,
    Duration? duration,
    double? backgroundOpacity,
  }) async {
    try {
      return await Theme.of(context).platform.fold(
            material: () async => await showMaterialModalBottomSheet(
              context: context,
              builder: builder,
              isDismissible: isDismissible,
              barrierColor: barrierColor,
              elevation: elevation,
              enableDrag: enableDrag,
              backgroundColor: backgroundColor ?? Palette.transparent,
              clipBehavior: Clip.hardEdge,
              shape: shape,
              expand: expand,
              bounce: bounce,
              duration: duration,
              useRootNavigator: useRootNavigator,
            ) as T,
            cupertino: () async => await showCupertinoModalBottomSheet(
              context: context,
              builder: builder,
              isDismissible: isDismissible,
              barrierColor: barrierColor,
              elevation: elevation,
              enableDrag: enableDrag,
              backgroundColor: backgroundColor ?? Palette.transparent,
              shadow: const BoxShadow(color: Palette.transparent),
              shape: shape,
              expand: expand,
              bounce: bounce,
              topRadius: topRadius,
              duration: duration,
              useRootNavigator: useRootNavigator,
            ) as T,
          );
    } catch (_) {
      return null;
    }
  }

  Future<U> showAdaptiveDatePicker<U>(
    BuildContext context, {
    DateTime? selectedDate,
    DateTime? firstDate,
    DateTime? lastDate,
    DatePickerMode initialDatePickerMode = DatePickerMode.year,
    String? confirmText,
    String? cancelText,
    String? fieldHintText,
    String? fieldLabelText,
    String? helpText,
    Locale? locale,
    DateTime? currentDate,
    String? errorFormatText,
    String? errorInvalidText,
    DatePickerDateOrder? dateOrder,
    CupertinoDatePickerMode? mode,
    Widget Function(BuildContext, Widget?)? builder,
    bool Function(DateTime)? selectableDayPredicate,
    required void Function(DateTime?) onChanged,
  }) async {
    // Set defaults
    firstDate ??= DateTime(1910);
    lastDate ??= localTime;
    selectedDate ??= currentDate ?? lastDate;

    switch (Theme.of(context).platform) {
      case TargetPlatform.iOS:
      case TargetPlatform.macOS:
        return showCupertinoDatePicker(
          context,
          selectedDate: selectedDate,
          firstDate: firstDate,
          lastDate: lastDate,
          confirmText: confirmText,
          cancelText: cancelText,
          fieldHintText: fieldHintText,
          fieldLabelText: fieldLabelText,
          dateOrder: dateOrder,
          mode: mode,
          helpText: helpText,
          locale: locale,
          backgroundColor: App.resolveColor(
            CupertinoColors.lightBackgroundGray,
            dark: CupertinoColors.darkBackgroundGray,
            ctx: context,
          ),
          currentDate: currentDate,
          errorFormatText: errorFormatText,
          errorInvalidText: errorInvalidText,
          builder: builder,
          onChanged: onChanged,
        ) as U;
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
      case TargetPlatform.linux:
      case TargetPlatform.windows:
      default:
        final date = await showDatePicker(
          context: context,
          initialDate: selectedDate,
          firstDate: firstDate,
          lastDate: lastDate,
          confirmText: confirmText,
          cancelText: cancelText,
          fieldHintText: fieldHintText,
          fieldLabelText: fieldLabelText,
          initialDatePickerMode: initialDatePickerMode,
          helpText: helpText,
          locale: locale,
          currentDate: currentDate,
          errorFormatText: errorFormatText,
          errorInvalidText: errorInvalidText,
          builder: builder,
          selectableDayPredicate: selectableDayPredicate,
        );
        // Fire callback after selection
        return onChanged(date) as U;
    }
  }

  static FutureOr<U?> showAlertDialog<U>({
    required BuildContext context,
    required WidgetBuilder builder,
    bool barrierDismissible = true,
    Color? barrierColor,
    bool useSafeArea = true,
    bool useRootNavigator = true,
    RouteSettings? routeSettings,
  }) async {
    // ignore: no_leading_underscores_for_local_identifiers
    final _barrierColor = barrierColor ??
        App.resolveColor(
          Colors.grey.shade800.withOpacity(0.55),
          dark: Colors.black87.withOpacity(0.55),
          ctx: context,
        );

    if (Platform.isIOS || Platform.isMacOS)
      return (await showCupertinoDialog<U?>(
        context: context,
        builder: builder,
        useRootNavigator: useRootNavigator,
        barrierDismissible: barrierDismissible,
        routeSettings: routeSettings,
      ));
    return (await showDialog<U?>(
      context: context,
      builder: builder,
      barrierDismissible: barrierDismissible,
      barrierColor: _barrierColor,
      useSafeArea: useSafeArea,
      useRootNavigator: useRootNavigator,
      routeSettings: routeSettings,
    ));
  }

  Future<U> showCupertinoDatePicker<U>(
    BuildContext context, {
    DateTime? selectedDate,
    DateTime? firstDate,
    DateTime? lastDate,
    String? confirmText,
    String? cancelText,
    String? fieldHintText,
    String? fieldLabelText,
    String? helpText,
    Locale? locale,
    DateTime? currentDate,
    String? errorFormatText,
    String? errorInvalidText,
    Color? backgroundColor,
    bool use24hFormat = false,
    DatePickerDateOrder? dateOrder,
    CupertinoDatePickerMode? mode,
    Function(BuildContext, Widget)? builder,
    required void Function(DateTime) onChanged,
  }) async {
    return showCupertinoModalBottomSheet(
      context: context,
      expand: false,
      bounce: false,
      useRootNavigator: true,
      elevation: 4,
      builder: (context) => SizedBox(
        height: 0.4.h,
        child: CupertinoDatePicker(
          mode: mode ?? CupertinoDatePickerMode.date,
          dateOrder: dateOrder,
          backgroundColor: backgroundColor,
          onDateTimeChanged: onChanged,
          initialDateTime: selectedDate,
          minimumDate: firstDate,
          maximumDate: lastDate,
          use24hFormat: use24hFormat,
        ),
      ),
    ) as U;
  }

  SystemUiOverlayStyle systemUIOverlayStyle([BuildContext? c]) => customSystemOverlay(ctx: c);

  static String writeNotNull(String other) {
    if (other.trim().isNotEmpty) return other;
    return '';
  }
}

extension on AppTheme {
  static T? dark<T>(T value) {
    if (Utils.isDarkMode()) return value;
    return null;
  }

  static T? light<T>(T value) {
    if (!Utils.isDarkMode()) return value;
    return null;
  }
}
