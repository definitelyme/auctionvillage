part of media_field.dart;

@unfreezed
class MediaMetadata with _$MediaMetadata {
  factory MediaMetadata({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'filename') String? fileName,
    @JsonKey(name: 'filepath') String? path,
    @JsonKey(name: 'thumbnail') List<int>? bytes,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'mediumType') int? type,
    @JsonKey(name: 'height') int? height,
    @JsonKey(name: 'width') int? width,
    @JsonKey(name: 'orientation') int? orientation,
    @JsonKey(name: 'is_favorite') bool? isFavorite,
    @JsonKey(name: 'mimeType') String? mimeType,
    @JsonKey(name: 'blur_hash') String? blurHash,
    @JsonKey(name: 'video_duration') Duration? videoDuration,
    @JsonKey(ignore: true) @Default(false) bool isSelected,
    @JsonKey(name: 'creationDate') @TimestampConverter() DateTime? createdAt,
    @JsonKey(name: 'modifiedDate') @TimestampConverter() DateTime? updatedAt,
    @JsonKey(name: 'deletedDate') @TimestampConverter() DateTime? deletedAt,
  }) = _MediaMetadata;

  MediaMetadata._();

  factory MediaMetadata.fromMap(Map<String, dynamic> json, {String? path, List<int>? bytes, String? blurHash}) =>
      MediaMetadata.fromJson(json).copyWith(path: path, bytes: bytes, blurHash: blurHash);

  factory MediaMetadata.fromJson(Map<String, dynamic> json) => _$MediaMetadataFromJson(json);

  Uint8List? get thumbnail => bytes?.let((it) => Uint8List.fromList(it));

  MediaMetadata select([bool? value]) => copyWith(isSelected: value ?? !isSelected);
}
