import 'package:auctionvillage/manager/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

extension PlatformX on TargetPlatform {
  T fold<T>({
    T Function()? cupertino,
    T Function()? android,
    T Function()? fuchsia,
    T Function()? linux,
    T Function()? windows,
    T Function()? macos,
    required T Function() material,
  }) {
    switch (this) {
      case TargetPlatform.iOS:
        return cupertino?.call() ?? android?.call() ?? material();
      case TargetPlatform.macOS:
        return macos?.call() ?? cupertino?.call() ?? material();
      case TargetPlatform.android:
        // return android?.call() ?? cupertino?.call() ?? material();
        return android?.call() ?? material();
      case TargetPlatform.fuchsia:
        return fuchsia?.call() ?? material();
      case TargetPlatform.linux:
        return linux?.call() ?? material();
      case TargetPlatform.windows:
        return windows?.call() ?? material();
      default:
        return material.call();
    }
  }

  T when<T>({T? cupertino, T? android, T? fuchsia, T? linux, T? windows, T? macos, required T material}) {
    switch (this) {
      case TargetPlatform.iOS:
        return cupertino ?? android ?? material;
      case TargetPlatform.macOS:
        return macos ?? cupertino ?? material;
      case TargetPlatform.android:
        // return android ?? cupertino ?? material;
        return android ?? material;
      case TargetPlatform.fuchsia:
        return fuchsia ?? material;
      case TargetPlatform.linux:
        return linux ?? material;
      case TargetPlatform.windows:
        return windows ?? material;
      default:
        return material;
    }
  }

  T? cupertino<T>(T? value) {
    switch (this) {
      case TargetPlatform.iOS:
      case TargetPlatform.macOS:
        return value as T;
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
      case TargetPlatform.linux:
      case TargetPlatform.windows:
      default:
        return null;
    }
  }

  T? material<T>(T? value) {
    switch (this) {
      case TargetPlatform.iOS:
      case TargetPlatform.macOS:
        return null;
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
      case TargetPlatform.linux:
      case TargetPlatform.windows:
      default:
        return value as T;
    }
  }
}

extension ThemeCubitContext on BuildContext {
  ThemeCubit get themeCubit => BlocProvider.of<ThemeCubit>(this);

  Brightness get iosOverlay => themeCubit.iosOverlay;

  Brightness get androidOverlay => themeCubit.androidOverlay;

  Brightness get iosOverlayInverse => themeCubit.iosOverlay == Brightness.light ? Brightness.dark : Brightness.light;

  Brightness get androidOverlayInverse => themeCubit.androidOverlay == Brightness.light ? Brightness.dark : Brightness.light;
}
