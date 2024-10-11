library appearance_screen.dart;

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auctionvillage/manager/theme/theme.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';

/// A stateless widget to render AppearanceScreen.
class AppearanceScreen extends StatelessWidget with AutoRouteWrapper {
  const AppearanceScreen({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider.value(
      value: context.read<ThemeCubit>(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      adaptiveToolbar: const AdaptiveToolbar(
        centerTitle: false,
        title: 'Appearance',
        cupertinoImplyLeading: false,
        cupertinoTitleAlignment: Alignment.centerLeft,
        cupertinoLeadingStyle: TextStyle(fontSize: 17),
      ),
      body: AdaptiveScaffoldBody(
        builder: (c) => Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            1.vertical.safeTop,
            //
            Disabled(
              disabled: context.watch<ThemeCubit>().isDeviceThemeMode,
              child: AdaptiveListTile.adaptiveSwitch(
                value: context.watch<ThemeCubit>().isDarkMode,
                title: AdaptiveText(
                  !context.watch<ThemeCubit>().isDarkMode ? 'Light Mode' : 'Dark Mode',
                  maxLines: 1,
                  fontSize: 17.sp,
                  maxFontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
                subtitle: AdaptiveText.rich(
                  TextSpan(children: [
                    WidgetSpan(
                      alignment: PlaceholderAlignment.middle,
                      child: Icon(
                        Utils.platform_(cupertino: CupertinoIcons.info, material: Icons.info_outline_rounded),
                        color: App.resolveColor(Palette.subTextLight, dark: const Color(0xff656f7c), ctx: c),
                        size: 19,
                      ),
                    ),
                    const TextSpan(text: ' Flip the switch to toggle.'),
                  ]),
                  fontSize: 13.sp,
                  maxFontSize: 14,
                  isDefault: true,
                  textColor: Palette.subTextLight,
                  textColorDark: const Color(0xff656f7c),
                ),
                // inactiveThumbColor: Palette.text40,
                inactiveThumbColor: Palette.surface,
                inactiveTrackColor: Palette.surfaceOverlay,
                activeTrackColor: Palette.primaryColor.withOpacity(0.38),
                // activeColor: Palette.primaryColor,
                thumbColor: Utils.platform_(material: Palette.primaryColor),
                cupertinoTrackColor: Palette.surfaceOverlay,
                noCupertinoBorder: true,
                borderRadius: 0.br,
                onChanged: (_) => context.read<ThemeCubit>().toggleTheme(),
              ),
            ),
            //
            AdaptiveListTile.adaptiveSwitch(
              value: context.watch<ThemeCubit>().isDeviceThemeMode,
              title: AdaptiveText(
                'Use Device Settings',
                maxLines: 1,
                fontSize: 17.sp,
                maxFontSize: 17,
                fontWeight: FontWeight.w600,
              ),
              subtitle: AdaptiveText.rich(
                const TextSpan(children: [
                  TextSpan(text: 'Upon activation, Day or Night mode will be determined by device settings.'),
                ]),
                fontSize: 13.sp,
                maxFontSize: 14,
                isDefault: true,
                textColor: Palette.subTextLight,
                textColorDark: const Color(0xff656f7c),
              ),
              // inactiveThumbColor: Palette.text40,
              inactiveThumbColor: Palette.surface,
              inactiveTrackColor: Palette.surfaceOverlay,
              activeTrackColor: Palette.primaryColor.withOpacity(0.38),
              // activeColor: Palette.primaryColor,
              thumbColor: Utils.platform_(material: Palette.primaryColor),
              cupertinoTrackColor: Palette.surfaceOverlay,
              noCupertinoBorder: true,
              borderRadius: 0.br,
              onChanged: (_) => context.read<ThemeCubit>().toggleThemeMode(),
            ),
          ],
        ),
      ),
    );
  }
}
