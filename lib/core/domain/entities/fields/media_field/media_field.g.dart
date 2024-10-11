// GENERATED CODE - DO NOT MODIFY BY HAND

part of media_field.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MediaMetadata _$$_MediaMetadataFromJson(Map<String, dynamic> json) =>
    _$_MediaMetadata(
      id: json['id'] as String?,
      fileName: json['filename'] as String?,
      path: json['filepath'] as String?,
      bytes:
          (json['thumbnail'] as List<dynamic>?)?.map((e) => e as int).toList(),
      title: json['title'] as String?,
      type: json['mediumType'] as int?,
      height: json['height'] as int?,
      width: json['width'] as int?,
      orientation: json['orientation'] as int?,
      isFavorite: json['is_favorite'] as bool?,
      mimeType: json['mimeType'] as String?,
      blurHash: json['blur_hash'] as String?,
      videoDuration: json['video_duration'] == null
          ? null
          : Duration(microseconds: json['video_duration'] as int),
      createdAt:
          const TimestampConverter().fromJson(json['creationDate'] as String?),
      updatedAt:
          const TimestampConverter().fromJson(json['modifiedDate'] as String?),
      deletedAt:
          const TimestampConverter().fromJson(json['deletedDate'] as String?),
    );

Map<String, dynamic> _$$_MediaMetadataToJson(_$_MediaMetadata instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('filename', instance.fileName);
  writeNotNull('filepath', instance.path);
  writeNotNull('thumbnail', instance.bytes);
  writeNotNull('title', instance.title);
  writeNotNull('mediumType', instance.type);
  writeNotNull('height', instance.height);
  writeNotNull('width', instance.width);
  writeNotNull('orientation', instance.orientation);
  writeNotNull('is_favorite', instance.isFavorite);
  writeNotNull('mimeType', instance.mimeType);
  writeNotNull('blur_hash', instance.blurHash);
  writeNotNull('video_duration', instance.videoDuration?.inMicroseconds);
  writeNotNull(
      'creationDate', const TimestampConverter().toJson(instance.createdAt));
  writeNotNull(
      'modifiedDate', const TimestampConverter().toJson(instance.updatedAt));
  writeNotNull(
      'deletedDate', const TimestampConverter().toJson(instance.deletedAt));
  return val;
}
