library image_fullscreen.dart;

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:photo_view/photo_view.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';

/// A stateless widget to render ImageFullscreen.
class ImageFullscreen extends StatefulWidget {
  static const kinitialScale = 1.0;

  final bool backgroundIsTransparent;
  final bool containMinScale;
  final Object? heroTag;
  final PhotoScaleNotifier? imageNotifier;
  final ImageProvider imageProvider;
  final double? initialScale;
  final double? maxScale;
  final double? minScale;

  const ImageFullscreen({
    Key? key,
    required this.imageProvider,
    required this.heroTag,
    this.minScale,
    this.maxScale,
    this.initialScale,
    this.containMinScale = true,
    this.backgroundIsTransparent = true,
    this.imageNotifier,
  }) : super(key: key);

  @override
  State<ImageFullscreen> createState() => _ImageFullscreenState();
}

class _ImageFullscreenState extends State<ImageFullscreen> {
  bool _canPan = false;
  late PhotoViewController _controller;
  late StreamController<double> _photoStreamController;
  late StreamSubscription<PhotoViewControllerValue> _stateSubscription;

  @override
  void dispose() {
    _stateSubscription.cancel();
    _controller.dispose();

    _photoStreamController.close();
    widget.imageNotifier?.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _controller = PhotoViewController(initialScale: initialScale);

    _photoStreamController = StreamController.broadcast();
    widget.imageNotifier?.init(_photoStreamController);

    _stateSubscription = _controller.outputStateStream.listen((evt) {
      final scale = evt.scale;
      if (scale != null) {
        _photoStreamController.sink.add(scale);

        setState(() => _canPan = scale > ImageFullscreen.kinitialScale);
      }
    });
  }

  double get initialScale => widget.initialScale ?? ImageFullscreen.kinitialScale;
  dynamic get maxScale => widget.maxScale ?? PhotoViewComputedScale.covered * 2.0;
  dynamic get minScale => widget.containMinScale || widget.minScale == null ? PhotoViewComputedScale.contained : widget.minScale;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(App.customSystemOverlay(ctx: context, ios: Brightness.dark, android: Brightness.light));

    return PhotoView(
      imageProvider: widget.imageProvider,
      backgroundDecoration: BoxDecoration(
        color: App.resolveColor(Colors.transparent, dark: Colors.black87.withOpacity(0.9), ctx: context),
      ),
      // initialScale: initialScale,
      controller: _controller,
      disableGestures: false,
      enablePanAlways: _canPan,
      // gestureDetectorBehavior: HitTestBehavior.translucent,
      minScale: minScale,
      maxScale: maxScale,
      basePosition: Alignment.center,
      // scaleStateChangedCallback: (state) {
      //   setState(() => _canPan = state == PhotoViewScaleState.zoomedIn);
      // },
      gaplessPlayback: true,
      heroAttributes: widget.heroTag != null ? PhotoViewHeroAttributes(tag: widget.heroTag!, transitionOnUserGestures: true) : null,
      loadingBuilder: (_, chunk) => CircularProgressBar.adaptive(
        height: 30,
        width: 30,
        strokeWidth: 2.5,
        value: chunk != null ? (chunk.cumulativeBytesLoaded / (chunk.expectedTotalBytes?.toDouble() ?? 1)) : 0,
      ),
    );
  }
}

class PhotoScaleNotifier extends ChangeNotifier {
  bool _ready = false;
  Stream<double>? _stream;

  bool get ready => _ready;
  Stream<double>? get stream => _stream;

  void init(StreamController<double> controller) {
    _stream = controller.stream;
    _ready = true;
    notifyListeners();
  }
}
