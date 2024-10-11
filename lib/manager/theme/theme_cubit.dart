library theme_cubit.dart;

import 'package:auctionvillage/core/data/index.dart';
import 'package:auctionvillage/core/presentation/index.dart';
import 'package:auctionvillage/manager/theme/theme.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@singleton
class ThemeCubit extends Cubit<AppTheme> with ActiveCubit<AppTheme> {
  static final String _themeKey = '${env.packageName}-style';
  static final String _themeModeKey = '${env.packageName}-theme-mode';

  static AppTheme get defaultTheme => AppTheme.light();

  ThemeCubit() : super(defaultTheme) {
    HiveClient.subscribe((status) {
      status.when(loaded: () => emit(_get()));
    });
  }

  bool get isDarkMode => state.id == darkThemeID;

  bool get isDeviceThemeMode => state.themeMode == ThemeMode.system;

  /// Toggles Application theme from Light Mode to Dark Mode
  void toggleTheme([AppTheme? theme]) {
    emit(theme ?? (isDarkMode ? AppTheme.light() : AppTheme.dark()));
    App.forceAppUpdate();
    _save();
  }

  void toggleThemeMode() {
    emit((isDarkMode ? AppTheme.light() : state).copyWith(themeMode: isDeviceThemeMode ? ThemeMode.light : ThemeMode.system));
    if (!isDeviceThemeMode) emit(defaultTheme);
    App.forceAppUpdate();
    _save();
  }

  void watch(void Function(Brightness) onChange) {
    final window = WidgetsBinding.instance.window;
    window.onPlatformBrightnessChanged = () {
      WidgetsBinding.instance.handlePlatformBrightnessChanged();
      onChange(window.platformBrightness);
    };
  }

  bool get _isDarkMode =>
      isDarkMode || (isDeviceThemeMode ? (SchedulerBinding.instance.window.platformBrightness == Brightness.dark) : false);

  Brightness get iosOverlay => isDeviceThemeMode ? SchedulerBinding.instance.window.platformBrightness : state.themeData().brightness;

  Brightness get androidOverlay => _isDarkMode ? Brightness.light : Brightness.dark;

  AppTheme _get() {
    final type = HiveClient.settingsBox?.get(_themeKey) as String?;
    final index = HiveClient.settingsBox?.get(_themeModeKey) as int?;

    switch (type) {
      case lightThemeID:
        return AppTheme.light().copyWith(themeMode: index != null ? ThemeMode.values.elementAt(index) : null);
      case darkThemeID:
        return AppTheme.dark().copyWith(themeMode: index != null ? ThemeMode.values.elementAt(index) : null);
      default:
        return defaultTheme.copyWith(themeMode: index != null ? ThemeMode.values.elementAt(index) : null);
    }
  }

  void _save() {
    final json = {_themeKey: state.id, _themeModeKey: state.themeMode.index};
    HiveClient.settingsBox?.putAll(json);
  }
}
