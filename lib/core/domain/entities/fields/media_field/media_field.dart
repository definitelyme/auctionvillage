library media_field.dart;

import 'dart:io';
import 'dart:typed_data';

import 'package:auctionvillage/core/data/index.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
import 'package:path/path.dart' as p show normalize, basename, withoutExtension, extension;
import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/core/domain/response/field_object/field_object_exception.dart';
import 'package:auctionvillage/core/domain/validator/validator.dart';
import 'package:auctionvillage/manager/serializer/serializers.dart';
import 'package:auctionvillage/utils/utils.dart';

part 'media_field.freezed.dart';
part 'media_field.g.dart';
part 'media_metadata.dart';

enum MediaFieldFormat { asset, network, file }

class MediaField extends FieldObject<String?> {
  static const MediaField kDefault = MediaField._(Right(AssetsImagesDashboard.unnamedPNG), format: MediaFieldFormat.asset);

  @override
  final Either<FieldObjectException<String>, String?> value;

  final MediaFieldFormat format;
  final MediaMetadata? metadata;
  final AttachmentType? type;

  factory MediaField(String? input, {required MediaFieldFormat format, AttachmentType? type, MediaMetadata? metadata}) {
    final mimeType = MediaMimeType.lookupFromFileName(input);
    return MediaField._(Validator.isEmpty(input), format: format, type: type ?? mimeType.type, metadata: metadata);
  }

  const MediaField._(this.value, {required this.format, this.type, this.metadata});

  factory MediaField.asset(String? input, {AttachmentType? type, MediaMetadata? metadata}) {
    return MediaField(input, format: MediaFieldFormat.asset, type: type, metadata: metadata);
  }

  factory MediaField.file(File? file, {AttachmentType? type, MediaMetadata? metadata}) {
    return MediaField(file?.path, format: MediaFieldFormat.file, type: type, metadata: metadata);
  }

  factory MediaField.metadata(MediaMetadata? metadata, {required MediaFieldFormat format, AttachmentType? type}) {
    return MediaField(metadata?.path, format: format, type: type, metadata: metadata);
  }

  factory MediaField.network(String? input, {AttachmentType? type, MediaMetadata? metadata}) {
    return MediaField(input, format: MediaFieldFormat.network, type: type, metadata: metadata);
  }

  @override
  bool operator ==(other) {
    return identical(other, this) ||
        (other.runtimeType == runtimeType && other is MediaField && const DeepCollectionEquality().equals(other.value, value)) &&
            const DeepCollectionEquality().equals(other.format, format) &&
            const DeepCollectionEquality().equals(other.metadata, metadata) &&
            const DeepCollectionEquality().equals(other.type, type);
  }

  @override
  MediaField copyWith(String? newValue, {MediaFieldFormat? format, AttachmentType? type, MediaMetadata? metadata}) =>
      MediaField(newValue, format: format ?? this.format, type: type ?? this.type, metadata: metadata ?? this.metadata);

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(value), const DeepCollectionEquality().hash(format),
      const DeepCollectionEquality().hash(metadata), const DeepCollectionEquality().hash(type));

  String? get blurHash => metadata?.blurHash;
  // Actual file name extension
  String? get extension => getOrNull?.let((it) => p.extension(it));

  // Local file
  File? get file => (getOrNull ?? metadata?.path)?.let((it) => File(it));

  // Actual file name after last separator
  String? get fileName => (getOrNull ?? metadata?.fileName)?.let((it) => p.basename(it));

  // Actual file name without extension
  String? get fileNameWithoutExtension => fileName?.let((it) => p.withoutExtension(it));

  // File size in kilobytes
  double? get fileSize => file?.let((it) => it.lengthSync() / 1024);

  // Full Path to file
  String? get fullPath => (getOrNull ?? metadata?.path)?.let((it) => p.normalize(it));

  bool get isDocument => type?.isDocument ?? mimeType.isDocument;
  bool get isImage => type?.isImage ?? mimeType.isImage;
  bool get isSelected => metadata?.isSelected ?? false;
  bool get isVideo => type?.isVideo ?? mimeType.isVideo;
  MediaMimeType get mimeType => MediaMimeType.lookupFromFileName(getOrNull ?? metadata?.fileName);

  MediaField rebuild({String? value, MediaFieldFormat? format, AttachmentType? type, MediaMetadata? metadata}) =>
      MediaField(value ?? getOrNull, format: format ?? this.format, type: type ?? this.type, metadata: metadata ?? this.metadata);

  MediaField select([bool? value]) => copyWith(getOrNull, metadata: metadata?.select(value));
}

class UploadableMedia {
  final String? id;
  final MediaField image;

  final SendProgressCallback? progress;

  const UploadableMedia(this.image, {required this.id, this.progress});

  @override
  bool operator ==(other) {
    return other is UploadableMedia &&
        const DeepCollectionEquality().equals(id, other.id) &&
        const DeepCollectionEquality().equals(image, other.image) &&
        const DeepCollectionEquality().equals(progress, other.progress);
  }

  @override
  int get hashCode => Object.hash(
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(image),
        const DeepCollectionEquality().hash(progress),
      );

  @override
  String toString() => 'UploadableMedia(url: ${image.getOrNull})';

  UploadableMedia copyWith({MediaField? image, String? id, SendProgressCallback? progress}) =>
      UploadableMedia(image ?? this.image, id: id ?? this.id, progress: progress ?? this.progress);

  UploadableMedia merge(UploadableMedia? other) =>
      UploadableMedia(other?.image ?? image, id: other?.id ?? id, progress: other?.progress ?? progress);

  Map<String, dynamic> toJson() {
    final val = <String, dynamic>{};

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('url', image.getOrNull);
    writeNotNull('name', image.fileNameWithoutExtension);
    writeNotNull('mimeType', image.mimeType.mime);

    return val;
  }
}

extension UploadableMediaX on KtList<UploadableMedia> {
  KtList<UploadableMedia> addMedia(MediaField media, {String? id, String? name, String? mime}) =>
      plusElement(UploadableMedia(media, id: id));

  KtList<UploadableMedia> replaceMedia(MediaField image,
          {String? id, String? name, String? mime, SendProgressCallback? progress, int? index}) =>
      mapIndexedNotNull((i, val) => i == index ? val?.copyWith(id: id, image: image, progress: progress) : val);

  KtList<UploadableMedia> removeMedia(MediaField image) => filterNot((val) => val.image.getOrNull == image.getOrNull);

  KtList<UploadableMedia> removeMediaAt(int index) => filterIndexed((i, val) => i != index);

  KtList<UploadableMedia> merge(KtList<UploadableMedia>? other) {
    if (other == null) return this;
    return plus(other);
  }
}

extension MediaFieldFormatX on MediaFieldFormat {
  T when<T>({
    required T asset,
    required T network,
    required T file,
  }) {
    switch (this) {
      case MediaFieldFormat.asset:
        return asset;
      case MediaFieldFormat.network:
        return network;
      case MediaFieldFormat.file:
        return file;
    }
  }
}
