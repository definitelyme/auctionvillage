library image_box.dart;

import 'dart:io';
import 'dart:typed_data';

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

/// A stateless widget to render ImageBox.
class ImageBox extends StatefulWidget {
  final _ImageType _type;

  final List<Widget> Function(Widget)? stackChildren;
  final void Function(ImageProvider?)? onPressed;
  final Color? Function(ImageProvider?)? circleAvatarBackgroundColor;
  final bool applyConstraintToReplacement;
  final String? avatarInitials;
  final Color backgroundColor;
  final BorderRadius? borderRadius;
  final BoxBorder? boxBorder;
  final List<BoxShadow>? boxShadow;
  final BoxShape boxShape;
  final Uint8List? bytes;
  final int? cacheHeight;
  final bool? cacheImage;
  final bool? cacheOrResizeImageInFullscreen;
  final int? cacheWidth;
  final double elevation;
  final Widget? errorReplacement;
  final bool expandsFullscreen;
  final File? file;
  final BoxFit fit;
  final double? height;
  final Object? heroTag;
  final bool? isDefaultText;
  final bool? materialInkWell;
  final double? maxHeight;
  final double? maxRadius;
  final double? maxWidth;
  final double? minRadius;
  final String? photo;
  final Color? progressIndicatorColor;
  final Color? progressIndicatorColorDark;
  final double? radius;
  final Widget? replacement;
  final String? replacementAsset;
  final ShapeBorder? shapeBorder;
  final AlignmentGeometry stackAlignment;
  final Clip stackClip;
  final StackFit stackFit;
  final double? width;

  const ImageBox.asset({
    Key? key,
    this.heroTag,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
    required this.photo,
    this.cacheHeight,
    this.cacheWidth,
    this.elevation = 0.0,
    this.boxBorder,
    this.shapeBorder,
    this.borderRadius,
    this.replacement,
    this.errorReplacement,
    this.applyConstraintToReplacement = true,
    this.expandsFullscreen = false,
    this.stackChildren,
    this.stackAlignment = AlignmentDirectional.topStart,
    this.stackFit = StackFit.loose,
    this.stackClip = Clip.hardEdge,
    this.materialInkWell,
    this.maxHeight,
    this.maxWidth,
    this.onPressed,
    this.progressIndicatorColor,
    this.progressIndicatorColorDark,
    this.isDefaultText,
    this.cacheOrResizeImageInFullscreen,
    this.cacheImage,
  })  : _type = _ImageType.asset,
        backgroundColor = Colors.transparent,
        replacementAsset = null,
        avatarInitials = null,
        file = null,
        bytes = null,
        radius = null,
        minRadius = null,
        maxRadius = null,
        boxShadow = null,
        circleAvatarBackgroundColor = null,
        boxShape = BoxShape.rectangle,
        super(key: key);

  const ImageBox.avatar({
    Key? key,
    this.heroTag,
    this.width,
    this.height,
    this.avatarInitials,
    required this.photo,
    this.circleAvatarBackgroundColor,
    this.cacheHeight,
    this.cacheWidth,
    this.shapeBorder,
    this.borderRadius,
    this.boxShadow,
    this.boxShape = BoxShape.circle,
    this.elevation = 0.0,
    this.replacement,
    this.errorReplacement,
    this.replacementAsset,
    this.applyConstraintToReplacement = true,
    this.expandsFullscreen = false,
    this.stackChildren,
    this.stackAlignment = AlignmentDirectional.topStart,
    this.stackFit = StackFit.loose,
    this.stackClip = Clip.hardEdge,
    this.materialInkWell,
    this.maxHeight,
    this.maxWidth,
    this.onPressed,
    this.radius,
    this.minRadius,
    this.maxRadius,
    this.isDefaultText,
    this.cacheOrResizeImageInFullscreen,
    this.cacheImage,
  })  : _type = _ImageType.avatar,
        fit = BoxFit.cover,
        file = null,
        bytes = null,
        boxBorder = null,
        backgroundColor = Palette.primaryColor,
        progressIndicatorColor = null,
        progressIndicatorColorDark = null,
        super(key: key);

  const ImageBox.file({
    Key? key,
    this.heroTag,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
    required this.file,
    this.cacheHeight,
    this.cacheWidth,
    this.elevation = 0.0,
    this.boxBorder,
    this.shapeBorder,
    this.borderRadius,
    this.replacement,
    this.replacementAsset,
    this.errorReplacement,
    this.applyConstraintToReplacement = true,
    this.expandsFullscreen = false,
    this.stackChildren,
    this.stackAlignment = AlignmentDirectional.topStart,
    this.stackFit = StackFit.loose,
    this.stackClip = Clip.hardEdge,
    this.materialInkWell,
    this.maxHeight,
    this.maxWidth,
    this.onPressed,
    this.progressIndicatorColor,
    this.progressIndicatorColorDark,
    this.isDefaultText,
    this.cacheOrResizeImageInFullscreen,
    this.cacheImage,
  })  : _type = _ImageType.file,
        backgroundColor = Colors.transparent,
        avatarInitials = null,
        photo = null,
        bytes = null,
        radius = null,
        minRadius = null,
        maxRadius = null,
        boxShadow = null,
        circleAvatarBackgroundColor = null,
        boxShape = BoxShape.rectangle,
        super(key: key);

  const ImageBox.memory({
    Key? key,
    this.heroTag,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
    required this.bytes,
    this.cacheHeight,
    this.cacheWidth,
    this.elevation = 0.0,
    this.boxBorder,
    this.shapeBorder,
    this.borderRadius,
    this.replacement,
    this.replacementAsset,
    this.errorReplacement,
    this.applyConstraintToReplacement = true,
    this.expandsFullscreen = false,
    this.stackChildren,
    this.stackAlignment = AlignmentDirectional.topStart,
    this.stackFit = StackFit.loose,
    this.stackClip = Clip.hardEdge,
    this.materialInkWell,
    this.maxHeight,
    this.maxWidth,
    this.onPressed,
    this.progressIndicatorColor,
    this.progressIndicatorColorDark,
    this.isDefaultText,
    this.cacheOrResizeImageInFullscreen,
    this.cacheImage,
  })  : _type = _ImageType.memory,
        backgroundColor = Colors.transparent,
        avatarInitials = null,
        file = null,
        photo = null,
        radius = null,
        minRadius = null,
        maxRadius = null,
        boxShadow = null,
        circleAvatarBackgroundColor = null,
        boxShape = BoxShape.rectangle,
        super(key: key);

  const ImageBox.network({
    Key? key,
    this.heroTag,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
    required this.photo,
    this.cacheHeight,
    this.cacheWidth,
    this.elevation = 0.0,
    this.boxBorder,
    this.shapeBorder,
    this.borderRadius,
    this.replacement,
    this.replacementAsset,
    this.errorReplacement,
    this.applyConstraintToReplacement = true,
    this.expandsFullscreen = false,
    this.stackChildren,
    this.stackAlignment = AlignmentDirectional.topStart,
    this.stackFit = StackFit.loose,
    this.stackClip = Clip.hardEdge,
    this.materialInkWell,
    this.maxHeight,
    this.maxWidth,
    this.onPressed,
    this.progressIndicatorColor,
    this.progressIndicatorColorDark,
    this.isDefaultText,
    this.cacheOrResizeImageInFullscreen,
    this.cacheImage,
  })  : _type = _ImageType.network,
        backgroundColor = Colors.transparent,
        avatarInitials = null,
        file = null,
        bytes = null,
        radius = null,
        minRadius = null,
        maxRadius = null,
        boxShadow = null,
        circleAvatarBackgroundColor = null,
        boxShape = BoxShape.rectangle,
        super(key: key);

  @override
  State<ImageBox> createState() => _ImageBoxState();

  bool get isNetworkUrl => (photo != null && (photo!.startsWith('http') || photo!.startsWith('https') || photo!.startsWith('data:image')));

  static void fullscreen(BuildContext context, {Object? heroTag, required ImageProvider provider}) {
    final notifier = PhotoScaleNotifier();

    DismissibleScreen.navigate(
      context,
      // backgroundColor: App.resolveColor(Palette.transparent, dark: Colors.black87, ctx: context),
      previousRouteName: App.currentRoute,
      useRootNavigator: true,
      dismissDirection: DismissibleDirection.vertical,
      imageNotifier: notifier,
      child: ImageFullscreen(imageProvider: provider, heroTag: heroTag, imageNotifier: notifier),
    );
  }

  ImageProvider? provider({String? photo, File? file, Uint8List? bytes, bool cache = true, Size? cacheSize}) {
    final _cacheHeight = cacheSize?.height.toInt() ?? cacheHeight;
    final _cacheWidth = cacheSize?.width.toInt() ?? cacheWidth;
    final _cache = cache && cacheImage != false && _cacheHeight != null && _cacheWidth != null;

    return _type.maybeWhen(
      asset: () => (photo ?? this.photo)?.let(
        (it) => _cache ? ResizeImage.resizeIfNeeded(_cacheWidth, _cacheHeight, AssetImage(it)) : AssetImage(it),
      ),
      file: () => (file ?? this.file)?.let(
        (it) => _cache ? ResizeImage.resizeIfNeeded(_cacheWidth, _cacheHeight, FileImage(it)) : FileImage(it),
      ),
      memory: () => (bytes ?? this.bytes)?.let(
        (it) => _cache ? ResizeImage.resizeIfNeeded(_cacheWidth, _cacheHeight, MemoryImage(it)) : MemoryImage(it),
      ),
      network: () => (photo ?? this.photo)?.let(
        (it) => CachedNetworkImageProvider(
          it,
          maxHeight: _cache ? cacheHeight?.ceil() : null,
          maxWidth: _cache ? cacheWidth?.ceil() : null,
        ),
      ),
      orElse: () => (photo ?? this.photo)?.let(
        (it) {
          if (isNetworkUrl) {
            return CachedNetworkImageProvider(
              it,
              maxHeight: _cache ? cacheHeight?.ceil() : null,
              maxWidth: _cache ? cacheWidth?.ceil() : null,
            );
          } else {
            if (_cache) {
              return ResizeImage.resizeIfNeeded(_cacheWidth, _cacheHeight, AssetImage(it));
            } else {
              return AssetImage(it);
            }
          }
        },
      ),
    );
  }
}

class _ImageBoxState extends State<ImageBox> with AutomaticKeepAliveClientMixin<ImageBox> {
  double? _actualHeight;
  double? _actualWidth;

  @override
  bool get wantKeepAlive => true;

  int? get _cacheHeight => widget.cacheHeight ?? (_height == double.infinity || _height == double.maxFinite ? null : _height?.toInt());

  bool get _cacheImage => widget.cacheImage != false && _cacheHeight != null && _cacheWidth != null;

  bool get _cacheOrResizeInFullscreen => widget.cacheOrResizeImageInFullscreen ?? (widget.cacheHeight != null && widget.cacheWidth != null);

  int? get _cacheWidth => widget.cacheWidth ?? (_width == double.infinity || _width == double.maxFinite ? null : _width?.toInt());

  Widget get _defaultErrorReplacement => Center(
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: AdaptiveText(
            '😢\nFailed to load: ${widget.photo ?? widget.file ?? widget.bytes ?? 'image'}',
            textColor: Palette.errorRed,
            textColorDark: Palette.errorRed,
            minFontSize: 12,
            fontSize: 14.sp,
            textAlign: TextAlign.center,
            isDefault: widget.isDefaultText,
          ),
        ),
      );

  double? get _height => widget.height ?? _actualHeight;

  Object? get _heroTag => widget.heroTag ?? UniqueId.v4().value;

  ImageProvider? get _replacementAssetProvider => widget.replacementAsset
      ?.let((it) => _cacheImage ? ResizeImage.resizeIfNeeded(_cacheWidth, _cacheHeight, AssetImage(it)) : AssetImage(it));

  double? get _width => widget.width ?? _actualWidth;

  BoxConstraints get constraints =>
      BoxConstraints(maxHeight: widget.maxHeight ?? _height ?? double.infinity, maxWidth: widget.maxWidth ?? _width ?? double.infinity);

  Widget? get replacement =>
      widget.replacementAsset?.let((it) => _imageBuilder(provider: AssetImage(it), hero: false)) ??
      (widget.applyConstraintToReplacement ? widget.replacement?.let((it) => it) : widget.replacement);

  Widget _circleAvatar({ImageProvider? provider}) => CircleAvatar(
        backgroundColor: _circleAvatarBackgroundColor(provider),
        // backgroundImage: provider,
        foregroundImage: provider,
        maxRadius: widget.maxRadius,
        minRadius: widget.minRadius,
        radius: widget.radius,
        child: widget.avatarInitials?.let((it) => Text(it)) ?? replacement ?? _defaultErrorReplacement,
      );

  Color? _circleAvatarBackgroundColor(ImageProvider? provider) =>
      widget.circleAvatarBackgroundColor?.call(provider) ?? widget.backgroundColor;

  Widget _image(ImageProvider provider) => Image(
        width: _width,
        height: _height,
        image: _cacheImage ? ResizeImage.resizeIfNeeded(_cacheWidth, _cacheHeight, provider) : provider,
        fit: widget.fit,
        semanticLabel: widget.photo,
        errorBuilder: (_, error, tr) {
          log.e('Error loading image: $error', error, tr); // Log the error to the console.
          return widget.errorReplacement ?? replacement ?? _defaultErrorReplacement;
        },
        loadingBuilder: (_, child, progress) => Visibility(
          visible: progress == null || progress.expectedTotalBytes == null || progress.expectedTotalBytes == 0,
          replacement: Center(
            child: CircularProgressBar.adaptive(
              value: progress == null ? null : progress.cumulativeBytesLoaded / (progress.expectedTotalBytes ?? 1),
              strokeWidth: 2,
              width: 25,
              height: 25,
              color: widget.progressIndicatorColor,
              colorDark: widget.progressIndicatorColorDark,
            ),
          ),
          child: child,
        ),
      );

  Widget _imageBuilder({ImageProvider? provider, Widget? child, bool hero = true}) {
    final _onTap = onTap();

    return _maybeBoxDecoration(
      color: widget.backgroundColor,
      boxBorder: widget.boxBorder,
      child: _maybeClipRRect(
        child: MyHero(
          tag: hero ? (widget.expandsFullscreen ? _heroTag : null) : null,
          type: MaterialType.transparency,
          borderRadius: widget.borderRadius,
          elevation: widget.elevation,
          shape: widget.shapeBorder,
          child: Stack(
            alignment: widget.stackAlignment,
            clipBehavior: widget.stackClip,
            fit: widget.stackFit,
            children: [
              if (widget.stackChildren == null) ...[
                provider != null ? _image(provider) : child ?? _defaultErrorReplacement,
              ],
              //
              ...?widget.stackChildren?.call(provider == null ? child! : _image(provider)),
              //
              Positioned.fill(
                child: Material(
                  type: MaterialType.transparency,
                  child: AdaptiveInkWell(
                    onTap: _onTap,
                    borderRadius: widget.borderRadius,
                    material: widget.materialInkWell,
                    child: Utils.nothing,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _maybeBoxDecoration({required Widget child, List<BoxShadow>? boxShadow, BoxBorder? boxBorder, Color? color}) {
    if (boxShadow == null && boxBorder == null) return child;

    return DecoratedBox(
      decoration: BoxDecoration(
        color: color,
        borderRadius: widget.borderRadius,
        shape: widget.borderRadius != null ? BoxShape.rectangle : widget.boxShape,
        boxShadow: boxShadow,
        border: boxBorder,
      ),
      child: child,
    );
  }

  Widget _maybeClipRRect({required Widget child}) {
    if (widget.borderRadius == null) return child;
    return ClipRRect(borderRadius: widget.borderRadius, clipBehavior: Clip.hardEdge, child: child);
  }

  VoidCallback? onTap() {
    final value = widget.provider(
          photo: widget.photo,
          file: widget.file,
          bytes: widget.bytes,
          cache: _cacheOrResizeInFullscreen,
        ) ??
        _replacementAssetProvider;

    if (value != null) {
      if (widget.expandsFullscreen) {
        return () => ImageBox.fullscreen(context, provider: value, heroTag: _heroTag);
      } else if (widget.onPressed != null) {
        return () => widget.onPressed!(value);
      }
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    final provider = widget.provider(
      photo: widget.photo,
      file: widget.file,
      bytes: widget.bytes,
      cache: widget._type.isAvatar,
      cacheSize: _cacheWidth != null && _cacheHeight != null ? Size(_cacheWidth!.toDouble(), _cacheHeight!.toDouble()) : null,
    );

    return ConstrainedBox(
      constraints: constraints,
      child: widget._type.when(
        asset: () => _imageBuilder(provider: provider),
        file: () => _imageBuilder(provider: provider),
        memory: () => _imageBuilder(provider: provider),
        network: () =>
            widget.photo?.let(
              (it) => _imageBuilder(
                child: CachedNetworkImage(
                  imageUrl: it,
                  fit: widget.fit,
                  width: _width,
                  height: _height,
                  memCacheHeight: _cacheHeight,
                  memCacheWidth: _cacheWidth,
                  errorWidget: (_, url, error) {
                    log.e('Error loading image: $error', error); // Log the error to the console.
                    return widget.errorReplacement ?? replacement ?? _defaultErrorReplacement;
                  },
                  progressIndicatorBuilder: (_, url, download) => Center(
                    child: CircularProgressBar.adaptive(
                      width: 25,
                      height: 25,
                      strokeWidth: 2,
                      value: download.progress,
                      color: widget.progressIndicatorColor,
                      colorDark: widget.progressIndicatorColorDark,
                    ),
                  ),
                ),
              ),
            ) ??
            (replacement ?? _defaultErrorReplacement),
        avatar: () => _maybeBoxDecoration(
          color: widget.circleAvatarBackgroundColor?.call(provider),
          boxBorder: widget.boxBorder,
          boxShadow: widget.boxShadow,
          child: MyHero(
            // tag: widget.expandsFullscreen ? _heroTag : null,
            tag: null,
            borderRadius: widget.borderRadius,
            type: MaterialType.transparency,
            elevation: widget.elevation,
            shape: widget.shapeBorder,
            child: Stack(
              alignment: widget.stackAlignment,
              clipBehavior: widget.stackClip,
              fit: widget.stackFit,
              children: [
                if (widget.stackChildren == null) ...[
                  _circleAvatar(provider: provider ?? _replacementAssetProvider),
                ],
                //
                ...?widget.stackChildren?.call(_circleAvatar(provider: provider ?? _replacementAssetProvider)),
                //
                Positioned.fill(
                  child: Material(
                    type: MaterialType.transparency,
                    child: AdaptiveInkWell(
                      onTap: onTap(),
                      borderRadius: widget.borderRadius,
                      material: widget.materialInkWell,
                      child: Utils.nothing,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

enum _ImageType {
  asset,
  network,
  file,
  memory,
  avatar;

  bool get isAsset => this == _ImageType.asset;
  bool get isNetwork => this == _ImageType.network;
  bool get isFile => this == _ImageType.file;
  bool get isMemory => this == _ImageType.memory;
  bool get isAvatar => this == _ImageType.avatar;

  T when<T>({
    required T Function() asset,
    required T Function() network,
    required T Function() file,
    required T Function() memory,
    required T Function() avatar,
  }) {
    switch (this) {
      case _ImageType.asset:
        return asset();
      case _ImageType.network:
        return network();
      case _ImageType.file:
        return file();
      case _ImageType.memory:
        return memory();
      case _ImageType.avatar:
        return avatar();
    }
  }

  T maybeWhen<T>({
    T Function()? asset,
    T Function()? network,
    T Function()? file,
    T Function()? memory,
    T Function()? avatar,
    required T Function() orElse,
  }) {
    switch (this) {
      case _ImageType.asset:
        return asset != null ? asset() : orElse();
      case _ImageType.network:
        return network != null ? network() : orElse();
      case _ImageType.file:
        return file != null ? file() : orElse();
      case _ImageType.memory:
        return memory != null ? memory() : orElse();
      case _ImageType.avatar:
        return avatar != null ? avatar() : orElse();
    }
  }
}

extension on _ImageType {
  T? avatar<T>({
    T? Function()? avatar,
    required T? Function()? orElse,
  }) {
    switch (this) {
      case _ImageType.asset:
      case _ImageType.network:
      case _ImageType.file:
      case _ImageType.memory:
        return orElse?.call();
      case _ImageType.avatar:
        return avatar?.call();
    }
  }
}
