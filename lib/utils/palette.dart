import 'dart:math' as math;

import 'package:auctionvillage/utils/utils.dart';
import 'package:flutter/material.dart';

class Palette {
  Palette._();

  static Color fromHex(String hex) {
    if (!hex.startsWith('#')) hex = '#$hex';
    return Color(int.parse(hex.substring(1, 7), radix: 16) + 0xFF000000);
  }

  static Color get random => Color((math.Random().nextDouble() * 0xFFFFFF).toInt() << 0).withOpacity(1.0);

  static String stringHex(
    Color color, {
    bool withAlpha = true,
    bool appendHash = false,
  }) {
    var value = color.toString().split('(0x')[1].split(')')[0];

    if (!withAlpha) value = value.length > 6 ? value.replaceRange(0, 2, '') : value;
    if (appendHash) value = '#$value';
    return value;
  }

  static MaterialColor material(Color color) => MaterialColor(color.value, swatch(color));

  static Map<int, Color> swatch(Color color) {
    var _color = color;
    int r, g, b;

    r = _color.red;
    g = _color.green;
    b = _color.blue;

    return {
      50: Color.fromRGBO(r, g, b, .1),
      100: Color.fromRGBO(r, g, b, .2),
      200: Color.fromRGBO(r, g, b, .3),
      300: Color.fromRGBO(r, g, b, .4),
      400: Color.fromRGBO(r, g, b, .5),
      500: Color.fromRGBO(r, g, b, .6),
      600: Color.fromRGBO(r, g, b, .7),
      700: Color.fromRGBO(r, g, b, .8),
      800: Color.fromRGBO(r, g, b, .9),
      900: Color.fromRGBO(r, g, b, 1),
    };
  }

  // App Colors
  static const _backgroundLight = 0xffFFFFFF;
  // static const _backgroundLight = 0xfff2f1f6;
  static const _backgroundDark = 0xff20252c;
  static const _primaryColor = 0xff0052BD;
  static const _primaryColorDark = 0xff3375ca;
  static const _secondaryColor = 0xff00ab06;

  static const MaterialColor backgroundColorLight = MaterialColor(
    _backgroundLight,
    <int, Color>{
      50: Color(0xFFffffff),
      100: Color(0xFFffffff),
      200: Color(0xFFffffff),
      300: Color(0xFFffffff),
      400: Color(0xFFffffff),
      500: Color(_backgroundLight),
      600: Color(0xFFcccccc),
      700: Color(0xFF999999),
      800: Color(0xFF666666),
      900: Color(0xFF333333),
    },
  );

  static const MaterialColor backgroundColorDark = MaterialColor(
    _backgroundDark,
    <int, Color>{
      50: Color(0xFF909296),
      100: Color(0xFF797c80),
      200: Color(0xFF63666b),
      300: Color(0xFF4d5156),
      400: Color(0xFF363b41),
      500: Color(_backgroundDark),
      600: Color(0xFF1d2128),
      700: Color(0xFF1a1e23),
      800: Color(0xFF161a1f),
      900: Color(0xFF13161a),
    },
  );

  static const MaterialColor primaryColor = MaterialColor(
    _primaryColor,
    <int, Color>{
      50: Color(0xFF80a9de),
      100: Color(0xFF6697d7),
      200: Color(0xFF4d86d1),
      300: Color(0xff3375ca),
      400: Color(0xFF1a63c4),
      500: Color(_primaryColor),
      600: Color(0xFF004aaa),
      700: Color(0xFF004297),
      800: Color(0xFF003984),
      900: Color(0xFF003171),
    },
  );

  static const MaterialColor secondaryColor = MaterialColor(
    _secondaryColor,
    <int, Color>{
      50: Color(0xFF80d583),
      100: Color(0xFF66cd6a),
      200: Color(0xFF4dc451),
      300: Color(0xFF33bc38),
      400: Color(0xFF1ab31f),
      500: Color(_secondaryColor),
      600: Color(0xFF009a05),
      700: Color(0xFF008905),
      800: Color(0xFF007804),
      900: Color(0xFF006704),
    },
  );

  static const MaterialColor paletteAccent = MaterialColor(0xFFFFD3D1, <int, Color>{
    50: Color(0xFFFFFFFF),
    100: Color(0xFFFFFBFB),
    200: Color(0xFFFFD3D1),
    400: Color(0xFFFFA29E),
    700: Color(0xFFFF8985),
  });

  static const Color primaryDark = Color(_primaryColorDark);
  // static const Color primaryDark = Color(_primaryColor);
  static const Color onPrimaryLight = Colors.white;
  static const Color onPrimaryDark = Colors.black;
  static const Color onSecondaryLight = Colors.black;
  static const Color onSecondaryDark = Colors.black;
  static const Color onBackgroundLight = Colors.black;
  static const Color onBackgroundDark = Colors.white;
  static const Color onSurface100Light = Colors.black;
  static const Color onSurface100Dark = Colors.white;
  static const Color onSurfaceLight = Colors.black87;
  static const Color onSurfaceDark = Color.fromRGBO(255, 255, 255, 0.87);
  static const Color onErrorLight = Colors.white;
  static const Color onErrorDark = Colors.black;
  static const Color destructiveRed = Color(0xFFE35959);
  static const Color surfaceOverlayLight = Color.fromRGBO(33, 33, 33, 0.08);
  static const Color surfaceOverlayDark = Color(0xff979797);
  static const Color onSurface60Light = Color.fromRGBO(0, 0, 0, 0.6);
  static const Color onSurface60Dark = Color.fromRGBO(255, 255, 255, 0.6);
  static const Color onSurfaceDisabledLight = Color.fromRGBO(0, 0, 0, 0.38);
  static const Color onSurfaceDisabledDark = Color.fromRGBO(255, 255, 255, 0.38);
  // elevationOverlay16Light = gray + white
  static Color elevationOverlay07Dark = const Color.fromRGBO(255, 255, 255, 0.07) + Palette.backgroundColorDark;
  static Color elevationOverlay12Dark = const Color.fromRGBO(255, 255, 255, 0.12) + Palette.backgroundColorDark;
  // static Color elevationOverlay16Light = const Color(0xffe0e0e0) + Palette.backgroundColorLight;
  static Color elevationOverlay16Light = const Color(0xffeeeeee) + Palette.backgroundColorLight;
  static Color elevationOverlay16Dark = const Color.fromRGBO(255, 255, 255, 0.15) + Palette.backgroundColorDark;
  static Color elevationOverlayLight = Colors.white;
  static Color elevationOverlayDark = const Color.fromRGBO(255, 255, 255, 0.16) + Palette.backgroundColorDark;

  static const Color cardColorLight = Colors.white;
  // static const Color cardColorDark = Color(0xff363B41);
  static const Color cardColorDark = Color(0xff1B1B1B);

  static const Color accentYellow = Color(0xFFF5CB4C);
  static const Color accentYellow2 = Color(0xFFFFA200);
  static const Color accentGreen = Color(0xFF00AB06);
  static const Color accentGreen2 = Color(0xFF6FCF97);
  static const Color accentGreen3 = Color(0xFF259F46);
  static const Color accentRed = Color(0xFFE35959);
  static const Color accentBlue = Color(0xFF2FA9D0);
  static const Color accentPurple = Color(0xFFBB6BD9);
  static const Color failedRed = Color(0xFFE71E67);

  static const Color accent10 = Color(0xFFFFFBFB);
  static const Color accent20 = Color(0xFFFCE8E8);
  static const Color accent40 = Color(0xFFE69F96);
  static const Color accent60 = Color(0xFFE87E70);
  static const Color accent80 = Color(0xFFF6515B);

  static const Color pastelPurple = Color(0xFFFAEEFF);
  static const Color pastelYellow = Color(0xFFFFA500);
  static const Color accentLightYellow2 = Color(0xFFFFF9DB);
  static const Color pastelGreen = Color(0xFFE7F9E8);
  static const Color accentLightGreen = pastelGreen;
  static const Color accentLightBlue = Color(0xFFE3F6FC);
  static const Color pastelBlue = Color(0xFFDAF2FF);
  static const Color orangeSolid = Color(0xFFFE9A22);
  static const Color orangeSolidDark = Color(0xFFFE9A22);
  static const Color pastelOrange = Color(0xFFFFF9F3);
  static const Color pastelOrangeDark = Color(0xFFFFE3C1);

  static const Color textTitle = Color(0xFF24272F);
  static const Color subtitleLight = Color(0xFF8B90A0);
  static const Color subtitleDark = Color(0xFF8B90A0);
  static const Color captionLight = Color(0xFFB0B0B0);
  static const Color captionDark = Color(0xFFB0B0B0);
  static const Color grey1Light = Color(0xFFD9D9D9);
  static const Color grey1Dark = Color(0xFFD9D9D9);

  static const Color searchBgColorLight = Color(0xFFEDEDED);
  static const Color searchBgColorDark = Color(0xFFEDEDED);

  static const Color ffffff = Color(0xFFffffff);
  static const Color neutralMoon = Color(0xFFFDFDFD);
  static const Color neutralGrey = Color(0xFFCACACA);
  static const Color neutralF9 = Color(0xFFF9F9F9);
  static const Color neutralFA = Color(0xFFFAFAFA);
  static const Color neutralF4 = Color(0xFFF4F4F4);
  static const Color neutralF3 = Color(0xFFF3F3F3);
  static const Color neutralF5 = Color(0xFFF5F5F5);
  static const Color neutralC4 = Color(0xFFc4c4c4);
  static const Color neutralC7 = Color(0xFFC7C7C7);
  static const Color neutralE2 = Color(0xFFE2E2E2);
  static const Color neutralLabel = Color(0xFF62736B);
  static const Color neutralLabel2 = Color(0xFF6E7191);

  static const Color flutterwave = Color(0xFFEBA12A);
  static const Color stripe2 = Color(0xFF2697D4);
  static const Color paystack = Color(0xFF00C3F7);
  static const Color addressDefaultBlue = pastelBlue;

  static const Color subTextLight = Color(0xFFA7A7A7);
  static const Color subTextDark = Color(0xFFA7A7A7);

  // Dark Mode Colors
  // static const Color accentDark = Color(0xFFD27D7D);
  // static const Color text100Dark = Color(0xFFBFBFBF);
  static const Color headingDark = Color(0xFFE2E2E2);
  // static const Color inputLabel = Color(0xFF6E768C);
  static const Color inputLabel = Color(0xFF5E5E5E);
  static const Color inputLabelDark = Color(0xFFcecece);
  static const Color inputTextDark = Color(0xFF212121);
  static const Color toggleDark = Color(0xFF393938);
  static const Color iconLight = Color(0xFF292D32);
  static const Color iconDark = Color(0xFFACACAC);
  static const Color neutralMoonDark = neutralFA;
  static const Color neutralLabelDark = Color(0xFFACACAC);

  static const Color accentDarkPurple = Color(0xFF3B003B);
  static const Color accentDarkYellow = Color(0xFFD8AA1C);
  static const Color accentDarkYellow2 = Color(0xFFF5C739);
  static const Color accentDarkGreen = Color(0xFF237D28);
  static const Color accentDarkBlue = Color(0xFF3F7695);

  static const Color permissionGreen1 = Color(0xFF138750);
  static const Color permissionGreen2 = Color(0xFF177649);

  static const Color permissionGrey1 = Color(0xFFB9BABB);
  static const Color permissionGrey2 = Color(0xFF979797);
  static const Color welcomeGrey = Color(0xFF637381);

  static const Color lightRed = Color(0xFFff7862);

  static const Color yellow = Color(0xFFECAE12);
  static const Color fbButton = Color(0xFF425bb4);
  static const Color googleButton = Color(0xFF34bbf0);
  static const Color twitterButton = Color(0xFF00acee);
  // static const Color loginButton = Color(0xFF3871b6);

  // static const Color errorRed = Color(0xFFED4337);
  static const Color errorRedLight = Color(0xFFB00020);
  static const Color errorRedDark = Color(0xFFCF6679);
  static const Color deepRed = Color(0xFFb3000e);

  static const Color successGreen = Color(0xFF4bb543);

  static const Color transparent = Colors.transparent;
  static const Color infoBlue = Color(0xff42a5f5);

  // static const Color inputBgColor = Color(0xffF0F0F0);

  // static const Color backgroundGrey = Color(0xffF8FAFB);

  static Color inputBgColorLight = Colors.transparent;
  static const Color inputBgColorDark = Colors.transparent;

  static const Color inputBorderFocusedColorLight = Colors.black45;
  static const Color inputBorderFocusedColorDark = Color(0xffDCDCDC);

  static const Color inputBorderColorLight = Color(0xffDCDCDC);
  static const Color inputBorderColorDark = Colors.white38;

  static const Color dottedBorderColorLight = Color(0xff3A5A33);
  static const Color dottedBorderColorDark = Color(0xff3A5A33);

  static const Color disabledInputBorderColorLight = Color(0xff848484);
  static const Color disabledInputBorderColorDark = Color(0xff6e6e6e);

  static Color get primary => Utils.foldTheme(light: () => primaryColor.shade500, dark: () => primaryColor.shade400);

  static Color get primaryVariant => Utils.foldTheme(light: () => primaryColor.shade700, dark: () => primaryColor.shade700);

  static Color get secondary => Utils.foldTheme(light: () => secondaryColor.shade200, dark: () => secondaryColor.shade200);

  static Color get secondaryVariant => Utils.foldTheme(light: () => secondaryColor.shade900, dark: () => secondaryColor.shade200);

  static Color get background => Utils.foldTheme(light: () => backgroundColorLight, dark: () => backgroundColorDark);

  static Color get surface => background;

  static Color get errorRed => Utils.foldTheme(light: () => errorRedLight, dark: () => errorRedDark);

  static Color get onPrimary => Utils.foldTheme(light: () => onPrimaryLight, dark: () => onPrimaryDark);

  static Color get onSecondary => Utils.foldTheme(light: () => onSecondaryLight, dark: () => onSecondaryDark);

  static Color get onBackground => Utils.foldTheme(light: () => onBackgroundLight, dark: () => onBackgroundDark);

  static Color get onSurface100 => Utils.foldTheme(light: () => onSurface100Light, dark: () => onSurface100Dark);

  static Color get onSurfaceDisabled => Utils.foldTheme(light: () => onSurfaceDisabledLight, dark: () => onSurfaceDisabledDark);

  static Color get onSurface => Utils.foldTheme(light: () => onSurfaceLight, dark: () => onSurfaceDark);

  static Color get onSurface60 => Utils.foldTheme(light: () => onSurface60Light, dark: () => onSurface60Dark);

  static Color get onError => Utils.foldTheme(light: () => onErrorLight, dark: () => onErrorDark);

  static Color get dottedBorderColor => Utils.foldTheme(light: () => dottedBorderColorLight, dark: () => dottedBorderColorDark);

  static Color get surfaceOverlay => Utils.foldTheme(light: () => surfaceOverlayLight, dark: () => surfaceOverlayDark);

  static Color get inputBgColor => App.resolveColor(inputBgColorLight, dark: inputBgColorDark)!;

  static Color get cardColor => App.resolveColor(cardColorLight, dark: cardColorDark)!;

  static Color get inputBorderColor => Utils.foldTheme(light: () => inputBorderColorLight, dark: () => inputBorderColorDark);

  static Color get inputBorderFocusedColor =>
      Utils.foldTheme(light: () => inputBorderFocusedColorLight, dark: () => inputBorderFocusedColorDark);

  static Color get iconColor => Utils.foldTheme(light: () => iconLight, dark: () => iconDark);

  static Color get elevationOverlay => Utils.foldTheme(light: () => elevationOverlayLight, dark: () => elevationOverlayDark);

  static Color get elevationOverlay16 => Utils.foldTheme(light: () => elevationOverlay16Light, dark: () => elevationOverlay16Dark);

  static Color get subtitle => Utils.foldTheme(light: () => subtitleLight, dark: () => subtitleDark);

  static Color get caption => Utils.foldTheme(light: () => captionLight, dark: () => captionDark);

  static Color get grey1 => Utils.foldTheme(light: () => grey1Light, dark: () => grey1Dark);

  static Color get searchBgColor => Utils.foldTheme(light: () => searchBgColorLight, dark: () => searchBgColorDark);

  static Color get disabledInputBorderColor =>
      Utils.foldTheme(light: () => disabledInputBorderColorLight, dark: () => disabledInputBorderColorDark);
}
