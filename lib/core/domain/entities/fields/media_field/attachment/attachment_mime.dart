library attachment_mime.dart;

import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path/path.dart' as p;
import 'package:auctionvillage/utils/utils.dart';

enum AttachmentType {
  video,
  image,
  audio,
  document,
  unknown;

  bool get isImage => this == AttachmentType.image;
  bool get isVideo => this == AttachmentType.video;
  bool get isAudio => this == AttachmentType.audio;
  bool get isDocument => this == AttachmentType.document;
  bool get isUnknown => this == AttachmentType.unknown;
}

enum MediaMimeType {
  // Audio mime types
  mp3('mp3'),
  ogg('ogg'),
  wav('wav'),
  aac('aac'),
  m4a('m4a'),
  flac('flac'),
  wma('wma'),
  midi('midi'),

  // Document mime types
  csv('csv'),
  doc('doc'),
  docx('docx'),
  xlsx('xlsx'),
  pdf('pdf'),
  ppt('ppt'),
  pptx('pptx'),

  // Video mime types
  avi('avi'),
  f4v('f4v'),
  flv('flv'),
  mkv('mkv'),
  mov('mov'),
  mp4('mp4'),
  m3u8('m3u8'),
  webm('webm'),

  // Image mime types
  png('png'),
  gif('gif'),
  jpeg('jpeg'),
  jpg('jpg'),

  // Unknown mime types
  // @BuiltValueEnumConst(fallback: true)
  unknown('unknown');

  final String name;

  const MediaMimeType(this.name);

  bool get isAudio => [mp3, ogg, wav, aac, m4a, flac, wma, midi].contains(this);
  bool get isDocument => [csv, doc, docx, xlsx, pdf].contains(this);
  bool get isImage => [png, gif, jpeg, jpg].contains(this);
  bool get isVideo => [avi, f4v, flv, mkv, mov, mp4, m3u8, webm].contains(this);

  AttachmentType get type {
    if (isDocument) {
      return AttachmentType.document;
    } else if (isImage) {
      return AttachmentType.image;
    } else if (isAudio) {
      return AttachmentType.audio;
    } else if (isVideo) {
      return AttachmentType.video;
    } else {
      return AttachmentType.unknown;
    }
  }

  static MediaMimeType valueOf(String? name) {
    switch (name?.toLowerCase()) {
      case 'mp3':
        return mp3;
      case 'ogg':
        return ogg;
      case 'wav':
        return wav;
      case 'aac':
        return aac;
      case 'm4a':
        return m4a;
      case 'flac':
        return flac;
      case 'wma':
        return wma;
      case 'midi':
        return midi;
      case 'csv':
        return csv;
      case 'doc':
        return doc;
      case 'docx':
        return docx;
      case 'xlsx':
        return xlsx;
      case 'pdf':
        return pdf;
      case 'ppt':
        return ppt;
      case 'pptx':
        return pptx;
      case 'avi':
        return avi;
      case 'f4v':
        return f4v;
      case 'flv':
        return flv;
      case 'mkv':
        return mkv;
      case 'mov':
        return mov;
      case 'mp4':
        return mp4;
      case 'm3u8':
        return m3u8;
      case 'webm':
        return webm;
      case 'png':
        return png;
      case 'gif':
        return gif;
      case 'jpeg':
        return jpeg;
      case 'jpg':
        return jpg;
      case 'unknown':
      default:
        return unknown;
    }
  }

  // static BuiltSet<MediaMimeType> get values => _$values;

  static MediaMimeType lookupFromFile(File? file) => lookupFromFileName(file?.path);

  static AttachmentType lookupTypeFromFile(File file) {
    final type = lookupFromFile(file);

    if (type.isImage) {
      return AttachmentType.image;
    } else if (type.isAudio) {
      return AttachmentType.audio;
    } else if (type.isDocument) {
      return AttachmentType.document;
    } else if (type.isVideo) {
      return AttachmentType.video;
    } else {
      return AttachmentType.unknown;
    }
  }

  static MediaMimeType lookupFromFileName(String? fileName) {
    if (fileName == null) return MediaMimeType.unknown;

    final reg = RegExp(r'\w+\.[A-Za-z0-9]{3,4}(?=\?|$)', caseSensitive: false, multiLine: true);

    final match = reg.stringMatch(fileName);

    if (match != null) {
      final mime = p.extension(match).erase(['.']);
      return MediaMimeType.valueOf(mime);
    }

    return MediaMimeType.unknown;
  }

  static MediaMimeType fromMime(String? name) {
    switch (name) {
      case 'audio/mpeg':
        return MediaMimeType.mp3;
      case 'audio/ogg':
        return MediaMimeType.ogg;
      case 'audio/wav':
        return MediaMimeType.wav;
      case 'audio/aac':
        return MediaMimeType.aac;
      case 'audio/m4a':
        return MediaMimeType.m4a;
      case 'audio/flac':
        return MediaMimeType.flac;
      case 'audio/wma':
        return MediaMimeType.wma;
      case 'audio/midi':
        return MediaMimeType.midi;
      case 'application/pdf':
        return MediaMimeType.pdf;
      case 'text/csv':
        return MediaMimeType.csv;
      case 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet':
      case 'application/vnd.ms-excel':
        return MediaMimeType.xlsx;
      case 'application/vnd.openxmlformats-officedocument.wordprocessingml.document':
        return MediaMimeType.docx;
      case 'application/msword':
        return MediaMimeType.doc;
      case 'application/vnd.ms-powerpoint':
        return MediaMimeType.ppt;
      case 'application/vnd.openxmlformats-officedocument.presentationml.presentation':
        return MediaMimeType.pptx;
      case 'video/x-msvideo':
        return MediaMimeType.avi;
      case 'video/x-f4v':
        return MediaMimeType.f4v;
      case 'video/x-flv':
        return MediaMimeType.flv;
      case 'video/x-matroska':
        return MediaMimeType.mkv;
      case 'video/quicktime':
        return MediaMimeType.mov;
      case 'video/mp4':
        return MediaMimeType.mp4;
      case 'application/x-mpegURL':
        return MediaMimeType.m3u8;
      case 'video/webm':
        return MediaMimeType.webm;
      case 'image/png':
        return MediaMimeType.png;
      case 'image/gif':
        return MediaMimeType.gif;
      case 'image/jpeg':
        return MediaMimeType.jpeg;
      case 'image/jpg':
        return MediaMimeType.jpg;
      default:
        return MediaMimeType.unknown;
    }
  }
}

class MediaMimeTypeSerializer implements JsonConverter<MediaMimeType?, String?> {
  const MediaMimeTypeSerializer();

  @override
  MediaMimeType fromJson(String? value) => MediaMimeType.fromMime(value);

  @override
  String? toJson(MediaMimeType? instance) => instance?.mime;
}

extension MediaMimeTypeExt on MediaMimeType {
  T? fold<T>({
    T Function()? audio,
    T Function()? image,
    T Function()? document,
    T Function()? video,
    T Function()? unknown,
  }) {
    switch (this) {
      case MediaMimeType.mp3:
      case MediaMimeType.ogg:
      case MediaMimeType.wav:
      case MediaMimeType.aac:
      case MediaMimeType.m4a:
      case MediaMimeType.flac:
      case MediaMimeType.wma:
      case MediaMimeType.midi:
        return audio?.call();
      case MediaMimeType.png:
      case MediaMimeType.jpg:
      case MediaMimeType.jpeg:
      case MediaMimeType.gif:
        return image?.call();
      case MediaMimeType.doc:
      case MediaMimeType.docx:
      case MediaMimeType.pdf:
      case MediaMimeType.csv:
      case MediaMimeType.xlsx:
      case MediaMimeType.ppt:
      case MediaMimeType.pptx:
        return document?.call();
      case MediaMimeType.mp4:
      case MediaMimeType.mov:
      case MediaMimeType.avi:
      case MediaMimeType.flv:
      case MediaMimeType.f4v:
      case MediaMimeType.mkv:
      case MediaMimeType.m3u8:
      case MediaMimeType.webm:
        return video?.call();
      default:
        return unknown?.call();
    }
  }
}

extension MediaMimeTypeX on MediaMimeType {
  String get mime {
    switch (this) {
      case MediaMimeType.mp3:
        return 'audio/mpeg';
      case MediaMimeType.ogg:
        return 'audio/ogg';
      case MediaMimeType.wav:
        return 'audio/wav';
      case MediaMimeType.aac:
        return 'audio/aac';
      case MediaMimeType.m4a:
        return 'audio/m4a';
      case MediaMimeType.flac:
        return 'audio/flac';
      case MediaMimeType.wma:
        return 'audio/wma';
      case MediaMimeType.midi:
        return 'audio/midi';
      case MediaMimeType.csv:
        return 'text/csv';
      case MediaMimeType.doc:
        return 'application/msword';
      case MediaMimeType.docx:
        return 'application/vnd.openxmlformats-officedocument.wordprocessingml.document';
      case MediaMimeType.xlsx:
        return 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet';
      case MediaMimeType.pdf:
        return 'application/pdf';
      case MediaMimeType.ppt:
        return 'application/vnd.ms-powerpoint';
      case MediaMimeType.pptx:
        return 'application/vnd.openxmlformats-officedocument.presentationml.presentation';
      case MediaMimeType.avi:
        return 'video/x-msvideo';
      case MediaMimeType.f4v:
        return 'video/x-f4v';
      case MediaMimeType.flv:
        return 'video/x-flv';
      case MediaMimeType.mkv:
        return 'video/x-matroska';
      case MediaMimeType.mov:
        return 'video/quicktime';
      case MediaMimeType.mp4:
        return 'video/mp4';
      case MediaMimeType.m3u8:
        return 'application/x-mpegURL';
      case MediaMimeType.webm:
        return 'video/webm';
      case MediaMimeType.png:
        return 'image/png';
      case MediaMimeType.jpg:
      case MediaMimeType.jpeg:
        return 'image/jpeg';
      case MediaMimeType.gif:
        return 'image/gif';
      default:
        return 'application/octet-stream';
    }
  }
}

extension AttachmentTypeX on AttachmentType {
  T when<T>({
    required T Function() audio,
    required T Function() image,
    required T Function() document,
    required T Function() video,
    required T Function() unknown,
  }) {
    switch (this) {
      case AttachmentType.audio:
        return audio.call();
      case AttachmentType.image:
        return image.call();
      case AttachmentType.document:
        return document.call();
      case AttachmentType.video:
        return video.call();
      case AttachmentType.unknown:
      default:
        return unknown.call();
    }
  }

  T maybeWhen<T>({
    T Function()? audio,
    T Function()? image,
    T Function()? document,
    T Function()? video,
    T Function()? unknown,
    required T Function() orElse,
  }) {
    switch (this) {
      case AttachmentType.audio:
        return audio?.call() ?? orElse.call();
      case AttachmentType.image:
        return image?.call() ?? orElse.call();
      case AttachmentType.document:
        return document?.call() ?? orElse.call();
      case AttachmentType.video:
        return video?.call() ?? orElse.call();
      case AttachmentType.unknown:
      default:
        return unknown?.call() ?? orElse.call();
    }
  }
}
