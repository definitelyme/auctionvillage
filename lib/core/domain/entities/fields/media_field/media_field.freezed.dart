// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of media_field.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MediaMetadata _$MediaMetadataFromJson(Map<String, dynamic> json) {
  return _MediaMetadata.fromJson(json);
}

/// @nodoc
mixin _$MediaMetadata {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  set id(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'filename')
  String? get fileName => throw _privateConstructorUsedError;
  @JsonKey(name: 'filename')
  set fileName(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'filepath')
  String? get path => throw _privateConstructorUsedError;
  @JsonKey(name: 'filepath')
  set path(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbnail')
  List<int>? get bytes => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbnail')
  set bytes(List<int>? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  set title(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'mediumType')
  int? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'mediumType')
  set type(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'height')
  int? get height => throw _privateConstructorUsedError;
  @JsonKey(name: 'height')
  set height(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'width')
  int? get width => throw _privateConstructorUsedError;
  @JsonKey(name: 'width')
  set width(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'orientation')
  int? get orientation => throw _privateConstructorUsedError;
  @JsonKey(name: 'orientation')
  set orientation(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_favorite')
  bool? get isFavorite => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_favorite')
  set isFavorite(bool? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'mimeType')
  String? get mimeType => throw _privateConstructorUsedError;
  @JsonKey(name: 'mimeType')
  set mimeType(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'blur_hash')
  String? get blurHash => throw _privateConstructorUsedError;
  @JsonKey(name: 'blur_hash')
  set blurHash(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'video_duration')
  Duration? get videoDuration => throw _privateConstructorUsedError;
  @JsonKey(name: 'video_duration')
  set videoDuration(Duration? value) => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  bool get isSelected => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  set isSelected(bool value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'creationDate')
  @TimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'creationDate')
  @TimestampConverter()
  set createdAt(DateTime? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'modifiedDate')
  @TimestampConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'modifiedDate')
  @TimestampConverter()
  set updatedAt(DateTime? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'deletedDate')
  @TimestampConverter()
  DateTime? get deletedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'deletedDate')
  @TimestampConverter()
  set deletedAt(DateTime? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MediaMetadataCopyWith<MediaMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaMetadataCopyWith<$Res> {
  factory $MediaMetadataCopyWith(
          MediaMetadata value, $Res Function(MediaMetadata) then) =
      _$MediaMetadataCopyWithImpl<$Res, MediaMetadata>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
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
      @JsonKey(ignore: true) bool isSelected,
      @JsonKey(name: 'creationDate') @TimestampConverter() DateTime? createdAt,
      @JsonKey(name: 'modifiedDate') @TimestampConverter() DateTime? updatedAt,
      @JsonKey(name: 'deletedDate') @TimestampConverter() DateTime? deletedAt});
}

/// @nodoc
class _$MediaMetadataCopyWithImpl<$Res, $Val extends MediaMetadata>
    implements $MediaMetadataCopyWith<$Res> {
  _$MediaMetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fileName = freezed,
    Object? path = freezed,
    Object? bytes = freezed,
    Object? title = freezed,
    Object? type = freezed,
    Object? height = freezed,
    Object? width = freezed,
    Object? orientation = freezed,
    Object? isFavorite = freezed,
    Object? mimeType = freezed,
    Object? blurHash = freezed,
    Object? videoDuration = freezed,
    Object? isSelected = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      bytes: freezed == bytes
          ? _value.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      orientation: freezed == orientation
          ? _value.orientation
          : orientation // ignore: cast_nullable_to_non_nullable
              as int?,
      isFavorite: freezed == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool?,
      mimeType: freezed == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String?,
      blurHash: freezed == blurHash
          ? _value.blurHash
          : blurHash // ignore: cast_nullable_to_non_nullable
              as String?,
      videoDuration: freezed == videoDuration
          ? _value.videoDuration
          : videoDuration // ignore: cast_nullable_to_non_nullable
              as Duration?,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MediaMetadataCopyWith<$Res>
    implements $MediaMetadataCopyWith<$Res> {
  factory _$$_MediaMetadataCopyWith(
          _$_MediaMetadata value, $Res Function(_$_MediaMetadata) then) =
      __$$_MediaMetadataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
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
      @JsonKey(ignore: true) bool isSelected,
      @JsonKey(name: 'creationDate') @TimestampConverter() DateTime? createdAt,
      @JsonKey(name: 'modifiedDate') @TimestampConverter() DateTime? updatedAt,
      @JsonKey(name: 'deletedDate') @TimestampConverter() DateTime? deletedAt});
}

/// @nodoc
class __$$_MediaMetadataCopyWithImpl<$Res>
    extends _$MediaMetadataCopyWithImpl<$Res, _$_MediaMetadata>
    implements _$$_MediaMetadataCopyWith<$Res> {
  __$$_MediaMetadataCopyWithImpl(
      _$_MediaMetadata _value, $Res Function(_$_MediaMetadata) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fileName = freezed,
    Object? path = freezed,
    Object? bytes = freezed,
    Object? title = freezed,
    Object? type = freezed,
    Object? height = freezed,
    Object? width = freezed,
    Object? orientation = freezed,
    Object? isFavorite = freezed,
    Object? mimeType = freezed,
    Object? blurHash = freezed,
    Object? videoDuration = freezed,
    Object? isSelected = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_$_MediaMetadata(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      bytes: freezed == bytes
          ? _value.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      orientation: freezed == orientation
          ? _value.orientation
          : orientation // ignore: cast_nullable_to_non_nullable
              as int?,
      isFavorite: freezed == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool?,
      mimeType: freezed == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String?,
      blurHash: freezed == blurHash
          ? _value.blurHash
          : blurHash // ignore: cast_nullable_to_non_nullable
              as String?,
      videoDuration: freezed == videoDuration
          ? _value.videoDuration
          : videoDuration // ignore: cast_nullable_to_non_nullable
              as Duration?,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MediaMetadata extends _MediaMetadata {
  _$_MediaMetadata(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'filename') this.fileName,
      @JsonKey(name: 'filepath') this.path,
      @JsonKey(name: 'thumbnail') this.bytes,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'mediumType') this.type,
      @JsonKey(name: 'height') this.height,
      @JsonKey(name: 'width') this.width,
      @JsonKey(name: 'orientation') this.orientation,
      @JsonKey(name: 'is_favorite') this.isFavorite,
      @JsonKey(name: 'mimeType') this.mimeType,
      @JsonKey(name: 'blur_hash') this.blurHash,
      @JsonKey(name: 'video_duration') this.videoDuration,
      @JsonKey(ignore: true) this.isSelected = false,
      @JsonKey(name: 'creationDate') @TimestampConverter() this.createdAt,
      @JsonKey(name: 'modifiedDate') @TimestampConverter() this.updatedAt,
      @JsonKey(name: 'deletedDate') @TimestampConverter() this.deletedAt})
      : super._();

  factory _$_MediaMetadata.fromJson(Map<String, dynamic> json) =>
      _$$_MediaMetadataFromJson(json);

  @override
  @JsonKey(name: 'id')
  String? id;
  @override
  @JsonKey(name: 'filename')
  String? fileName;
  @override
  @JsonKey(name: 'filepath')
  String? path;
  @override
  @JsonKey(name: 'thumbnail')
  List<int>? bytes;
  @override
  @JsonKey(name: 'title')
  String? title;
  @override
  @JsonKey(name: 'mediumType')
  int? type;
  @override
  @JsonKey(name: 'height')
  int? height;
  @override
  @JsonKey(name: 'width')
  int? width;
  @override
  @JsonKey(name: 'orientation')
  int? orientation;
  @override
  @JsonKey(name: 'is_favorite')
  bool? isFavorite;
  @override
  @JsonKey(name: 'mimeType')
  String? mimeType;
  @override
  @JsonKey(name: 'blur_hash')
  String? blurHash;
  @override
  @JsonKey(name: 'video_duration')
  Duration? videoDuration;
  @override
  @JsonKey(ignore: true)
  bool isSelected;
  @override
  @JsonKey(name: 'creationDate')
  @TimestampConverter()
  DateTime? createdAt;
  @override
  @JsonKey(name: 'modifiedDate')
  @TimestampConverter()
  DateTime? updatedAt;
  @override
  @JsonKey(name: 'deletedDate')
  @TimestampConverter()
  DateTime? deletedAt;

  @override
  String toString() {
    return 'MediaMetadata(id: $id, fileName: $fileName, path: $path, bytes: $bytes, title: $title, type: $type, height: $height, width: $width, orientation: $orientation, isFavorite: $isFavorite, mimeType: $mimeType, blurHash: $blurHash, videoDuration: $videoDuration, isSelected: $isSelected, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MediaMetadataCopyWith<_$_MediaMetadata> get copyWith =>
      __$$_MediaMetadataCopyWithImpl<_$_MediaMetadata>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MediaMetadataToJson(
      this,
    );
  }
}

abstract class _MediaMetadata extends MediaMetadata {
  factory _MediaMetadata(
      {@JsonKey(name: 'id')
          String? id,
      @JsonKey(name: 'filename')
          String? fileName,
      @JsonKey(name: 'filepath')
          String? path,
      @JsonKey(name: 'thumbnail')
          List<int>? bytes,
      @JsonKey(name: 'title')
          String? title,
      @JsonKey(name: 'mediumType')
          int? type,
      @JsonKey(name: 'height')
          int? height,
      @JsonKey(name: 'width')
          int? width,
      @JsonKey(name: 'orientation')
          int? orientation,
      @JsonKey(name: 'is_favorite')
          bool? isFavorite,
      @JsonKey(name: 'mimeType')
          String? mimeType,
      @JsonKey(name: 'blur_hash')
          String? blurHash,
      @JsonKey(name: 'video_duration')
          Duration? videoDuration,
      @JsonKey(ignore: true)
          bool isSelected,
      @JsonKey(name: 'creationDate')
      @TimestampConverter()
          DateTime? createdAt,
      @JsonKey(name: 'modifiedDate')
      @TimestampConverter()
          DateTime? updatedAt,
      @JsonKey(name: 'deletedDate')
      @TimestampConverter()
          DateTime? deletedAt}) = _$_MediaMetadata;
  _MediaMetadata._() : super._();

  factory _MediaMetadata.fromJson(Map<String, dynamic> json) =
      _$_MediaMetadata.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @JsonKey(name: 'id')
  set id(String? value);
  @override
  @JsonKey(name: 'filename')
  String? get fileName;
  @JsonKey(name: 'filename')
  set fileName(String? value);
  @override
  @JsonKey(name: 'filepath')
  String? get path;
  @JsonKey(name: 'filepath')
  set path(String? value);
  @override
  @JsonKey(name: 'thumbnail')
  List<int>? get bytes;
  @JsonKey(name: 'thumbnail')
  set bytes(List<int>? value);
  @override
  @JsonKey(name: 'title')
  String? get title;
  @JsonKey(name: 'title')
  set title(String? value);
  @override
  @JsonKey(name: 'mediumType')
  int? get type;
  @JsonKey(name: 'mediumType')
  set type(int? value);
  @override
  @JsonKey(name: 'height')
  int? get height;
  @JsonKey(name: 'height')
  set height(int? value);
  @override
  @JsonKey(name: 'width')
  int? get width;
  @JsonKey(name: 'width')
  set width(int? value);
  @override
  @JsonKey(name: 'orientation')
  int? get orientation;
  @JsonKey(name: 'orientation')
  set orientation(int? value);
  @override
  @JsonKey(name: 'is_favorite')
  bool? get isFavorite;
  @JsonKey(name: 'is_favorite')
  set isFavorite(bool? value);
  @override
  @JsonKey(name: 'mimeType')
  String? get mimeType;
  @JsonKey(name: 'mimeType')
  set mimeType(String? value);
  @override
  @JsonKey(name: 'blur_hash')
  String? get blurHash;
  @JsonKey(name: 'blur_hash')
  set blurHash(String? value);
  @override
  @JsonKey(name: 'video_duration')
  Duration? get videoDuration;
  @JsonKey(name: 'video_duration')
  set videoDuration(Duration? value);
  @override
  @JsonKey(ignore: true)
  bool get isSelected;
  @JsonKey(ignore: true)
  set isSelected(bool value);
  @override
  @JsonKey(name: 'creationDate')
  @TimestampConverter()
  DateTime? get createdAt;
  @JsonKey(name: 'creationDate')
  @TimestampConverter()
  set createdAt(DateTime? value);
  @override
  @JsonKey(name: 'modifiedDate')
  @TimestampConverter()
  DateTime? get updatedAt;
  @JsonKey(name: 'modifiedDate')
  @TimestampConverter()
  set updatedAt(DateTime? value);
  @override
  @JsonKey(name: 'deletedDate')
  @TimestampConverter()
  DateTime? get deletedAt;
  @JsonKey(name: 'deletedDate')
  @TimestampConverter()
  set deletedAt(DateTime? value);
  @override
  @JsonKey(ignore: true)
  _$$_MediaMetadataCopyWith<_$_MediaMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}
