import 'dart:io';

import 'package:auctionvillage/utils/utils.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// Precache Application Images or SVGs..ensures faster rendering.
class PrecacheManager {
  const PrecacheManager._();

  static Future<void> svgs(List<String> svgs, {BuildContext? ctx, required bool network}) async {
    for (var path in svgs) {
      if (network)
        await networkSVG(path, ctx: ctx);
      else
        await assetSVG(path, ctx: ctx);
    }
  }

  static Future<void> fileSVGs(List<File> files, {BuildContext? ctx}) async {
    for (var file in files) {
      await fileSVG(file, ctx: ctx);
    }
  }

  static Future<void> networkSVG(String svg, {BuildContext? ctx}) async {
    try {
      await precachePicture(
        NetworkPicture(SvgPicture.svgByteDecoderBuilder, svg),
        ctx ?? navigator.navigatorKey.currentContext,
        onError: reportError,
      );
    } catch (_) {}
  }

  static Future<void> fileSVG(File file, {BuildContext? ctx}) async {
    try {
      await precachePicture(
        FilePicture(SvgPicture.svgByteDecoderBuilder, file),
        ctx ?? navigator.navigatorKey.currentContext,
        onError: reportError,
      );
    } catch (_) {}
  }

  static Future<void> assetSVG(String path, {BuildContext? ctx}) async {
    try {
      await precachePicture(
        ExactAssetPicture(SvgPicture.svgStringDecoderBuilder, path),
        ctx ?? navigator.navigatorKey.currentContext,
        onError: reportError,
      );
    } catch (_) {}
  }

  static Future<void> images(List<String> images, {BuildContext? ctx}) async {
    for (var img in images) {
      await (ctx ?? navigator.navigatorKey.currentContext)?.let((it) => precacheImage(AssetImage(img), it, onError: reportError));
    }
  }

  static void precacheLocalAssets([BuildContext? ctx]) {
    svgs(AppAssets.svgs, network: false, ctx: ctx);
    images(AppAssets.images, ctx: ctx);
  }

  // ignore: avoid_print
  static void reportError(Object e, StackTrace? tr) => kReleaseMode ? null : print('$e');
}
