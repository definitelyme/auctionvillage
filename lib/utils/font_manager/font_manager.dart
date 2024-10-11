library font_manager.dart;

import 'dart:async';
import 'dart:convert';
import 'dart:isolate';

import 'package:dynamic_cached_fonts/dynamic_cached_fonts.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:isolate_handler/isolate_handler.dart';
import 'package:auctionvillage/core/data/index.dart';
import 'package:auctionvillage/utils/utils.dart';

part 'font_manager.hive.dart';

@HiveType(typeId: 7)
class FontManager extends HiveObject {
  static final IsolateHandler _isolateHandler = IsolateHandler();

  static const String ios = 'SanFrancisco';
  static const String android = 'Nunito';
  static const String folder = 'fonts';

  @HiveField(0)
  final String _fontFamily;

  @HiveField(1)
  final List<String> _urls;

  FontManager(this._fontFamily, this._urls);

  factory FontManager.create({required String family, List<String> urls = const []}) => FontManager(family, urls);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is FontManager && other._fontFamily == _fontFamily;
  }

  @override
  int get hashCode => _fontFamily.hashCode;

  static Future<void> _cacheFontFamily(dynamic _obj, {required String family}) async {
    final data = jsonDecode('$_obj');
    final urls = (data?['urls'] as List?)?.map((e) => '$e').toList();

    if (urls != null && urls.isNotEmpty) {
      final _family = data['family'] as String? ?? family;
      await DynamicCachedFonts.family(urls: urls, fontFamily: _family).load();
      // DynamicCachedFonts.cacheFontStream(url);
    }

    _isolateHandler.kill(_generateIsolateName(family));
  }

  static String _generateIsolateName(String fontFamily) => 'font_manager_isolate_$fontFamily';

  static Future<FontManager> _getFontMetadata(String family, {required Reference ref}) async {
    final result = await ref.listAll();
    final downloadUrls = await Future.wait(result.items.map((e) => e.getDownloadURL()));
    final font = FontManager.create(family: family, urls: downloadUrls);

    if (font.isInBox) {
      await font.save();
    } else {
      await HiveClient.fontsBox?.add(font);
    }

    return font;
  }

  static void _loadFontFamily(Map<String, dynamic> context) {
    final messenger = HandledIsolate.initialize(context);

    messenger.listen((data) async {
      final family = data['family'] as String?;
      final folder = data['folder'] as String?;

      assert(family != null && folder != null, 'Font family & Font folder must not be null');

      await BuildEnvironment.isolate(BuildFlavor.prod, callback: () async {
        await Firebase.initializeApp();
        await HiveClient.initialize();
      });

      var font = HiveClient.fontsBox?.values.firstOrNull((i) => i._fontFamily == family);

      if (font == null) {
        final ref = FirebaseStorage.instance.ref().child(folder!).child(family!);
        font = await _getFontMetadata(family, ref: ref);
      }

      final map = font._urls.map((url) => DynamicCachedFonts.canLoadFont(url));
      final result = await Future.wait(map, eagerError: true);
      final needsCaching = result.any((e) => e == false);

      if (needsCaching) {
        messenger.send(jsonEncode({'urls': font._urls, 'family': font._fontFamily}));
      } else {
        messenger.send({});
        Future.delayed(const Duration(seconds: 1), messenger.dispose);
      }
    });
  }

  static void loadFontFamily(String family, {String folder = FontManager.folder}) {
    final errorPort = ReceivePort();

    errorPort.listen((msg) {
      log.e('An error occured in Isolate: ${_generateIsolateName(family)}');
      _isolateHandler.kill(_generateIsolateName(family));
    });

    _isolateHandler.spawn(
      _loadFontFamily,
      name: _generateIsolateName(family),
      onReceive: (val) => _cacheFontFamily(val, family: family),
      errorsAreFatal: true,
      onError: errorPort.sendPort,
      debugName: _generateIsolateName(family),
      onInitialized: () => _isolateHandler.send(
        {'family': family, 'folder': folder},
        to: _generateIsolateName(family),
      ),
    );
  }

  static void registerAdapter() => Hive.registerAdapter(FontManagerAdapter());
}
