import 'dart:async';
import 'dart:ui' as ui;

import 'package:async/async.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

/// A stateless widget to render ImageUploadWidget.
class ImageUploadWidget<R extends BlocBase<S>, S> extends StatefulWidget {
  final double Function(S)? height;
  final double Function(S)? width;
  final Widget? Function(S)? onSelected;
  final String? Function(S)? url;
  final void Function(R, ImageSource)? onCameraClicked;
  final void Function(R, ImageSource)? onGalleryClicked;
  final void Function(R)? onClosePressed;
  final IconData? centerIcon;
  final Color? indicatorColorDark;
  final Color? indicatorColorLight;
  final bool Function(S) isLoading;
  final BoxFit networkFit;
  final EdgeInsets? padding;
  final double radius;
  final bool showCenterIcon;
  final bool showLoading;
  final S? state;

  const ImageUploadWidget({
    Key? key,
    required this.isLoading,
    this.showLoading = true,
    this.radius = Utils.cardRadius,
    this.padding,
    this.height,
    this.width,
    this.onSelected,
    this.url,
    this.onCameraClicked,
    this.onGalleryClicked,
    this.state,
    this.networkFit = BoxFit.contain,
    this.onClosePressed,
    this.showCenterIcon = false,
    this.centerIcon,
    this.indicatorColorLight,
    this.indicatorColorDark,
  }) : super(key: key);

  @override
  State<ImageUploadWidget<R, S>> createState() => _ImageUploadWidgetState();
}

class _ImageUploadWidgetState<R extends BlocBase<S>, S> extends State<ImageUploadWidget<R, S>>
    with AutomaticKeepAliveClientMixin<ImageUploadWidget<R, S>> {
  final _completer = Completer<ui.Image>();
  final AsyncMemoizer<ui.Image> _memoizer = AsyncMemoizer();

  @override
  bool get wantKeepAlive => true;

  Widget _widget(BuildContext c, S s) => Padding(
        padding: EdgeInsets.zero.merge(widget.padding),
        child: FutureBuilder<ui.Image>(
          future: _memoizer.runOnce(() =>
              widget.url?.call(s)?.let((it) => getImageDimensions(CachedNetworkImageProvider(it))) ??
              getImageDimensions(const AssetImage(AssetsImagesDashboard.unnamedPNG))),
          builder: (_, snapshot) {
            if (widget.showLoading) if (!snapshot.hasData && !widget.isLoading(s))
              return Center(
                child: CircularProgressBar.adaptive(
                  color: widget.indicatorColorDark,
                  colorDark: widget.indicatorColorLight,
                ),
              );

            final _height = widget.height?.call(s) ?? widget.width?.call(s) ?? snapshot.data?.height.toDouble();

            final _width = widget.width?.call(s) ?? widget.height?.call(s) ?? snapshot.data?.width.toDouble();

            return SizedBox(
              height: _height,
              width: _width,
              child: Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(widget.radius),
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (widget.onSelected?.call(s) != null) Flexible(child: widget.onSelected?.call(s) ?? Utils.nothing),
                            //
                            if (widget.onSelected?.call(s) == null)
                              Flexible(
                                child: ImageBox.avatar(
                                  photo: widget.url?.call(s),
                                  // fit: widget.networkFit,
                                  height: _height ?? 0.2.w,
                                  width: _width ?? 0.2.w,
                                  replacement: Image.asset(
                                    AssetsImagesDashboard.unnamedPNG,
                                    fit: widget.networkFit,
                                    height: _height,
                                    width: _width,
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                      //
                      Positioned(
                        child: AnimatedVisibility(
                          visible: widget.showCenterIcon,
                          child: Center(
                            child: Material(
                              elevation: 0,
                              color: App.resolveColor(Palette.cardColorLight, dark: Palette.cardColorDark)?.withOpacity(0.8),
                              borderRadius: BorderRadius.circular(300),
                              child: Padding(
                                padding: const EdgeInsets.all(8),
                                child: Icon(
                                  widget.centerIcon ??
                                      Utils.platform_(
                                        material: Icons.edit_outlined,
                                        cupertino: CupertinoIcons.pencil,
                                      ),
                                  color: App.resolveColor(Palette.primary, dark: Colors.white70),
                                  size: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      //
                      Material(
                        borderRadius: BorderRadius.circular(widget.radius),
                        color: App.resolveColor(Colors.transparent),
                        elevation: 0,
                        child: AdaptiveInkWell(
                          borderRadius: BorderRadius.circular(widget.radius),
                          onTap: widget.isLoading(s)
                              ? null
                              : () {
                                  App.showAdaptiveBottomSheet(
                                    c,
                                    builder: (_) => DocumentPickerSheet(
                                      pickers: [
                                        DocumentPicker(
                                          name: 'Camera',
                                          asset: Utils.foldTheme(
                                            light: () => AppAssets.cameraColored,
                                            dark: () => AppAssets.cameraOutlined,
                                          ),
                                          onPressed: () => widget.onCameraClicked?.call(c.read<R>(), ImageSource.camera),
                                        ),
                                        DocumentPicker(
                                          name: 'Gallery',
                                          asset: Utils.foldTheme(
                                            light: () => AppAssets.galleryColored,
                                            dark: () => AppAssets.galleryOutlined,
                                          ),
                                          onPressed: () => widget.onGalleryClicked?.call(c.read<R>(), ImageSource.gallery),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                          child: const SizedBox.expand(),
                        ),
                      ),
                      //
                      Positioned(
                        top: 0,
                        right: 0,
                        child: AnimatedVisibility(
                          visible: widget.onClosePressed != null,
                          child: Material(
                            elevation: 0,
                            color: App.resolveColor(Palette.cardColorLight, dark: Colors.black87.withOpacity(0.7)),
                            borderRadius: BorderRadius.circular(widget.radius),
                            child: AdaptiveInkWell(
                              borderRadius: BorderRadius.circular(widget.radius),
                              onTap: () => widget.onClosePressed?.call(c.read<R>()),
                              child: Padding(
                                padding: EdgeInsets.all(0.015.sw),
                                child: Icon(
                                  Icons.close,
                                  size: 20,
                                  color: App.resolveColor(Palette.primary, dark: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      );

  Future<ui.Image> getImageDimensions(ImageProvider provider) {
    provider.resolve(const ImageConfiguration()).addListener(ImageStreamListener((info, _) {
      if (!_completer.isCompleted) _completer.complete(info.image);
    }));
    return _completer.future;
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return widget.state != null ? _widget(context, widget.state as S) : BlocBuilder<R, S>(builder: (c, s) => _widget(c, s));
  }
}
