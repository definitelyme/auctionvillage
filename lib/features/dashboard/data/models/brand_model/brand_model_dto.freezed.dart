// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of brand_model_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BrandModelDTO _$BrandModelDTOFromJson(Map<String, dynamic> json) {
  return _BrandModelDTO.fromJson(json);
}

/// @nodoc
mixin _$BrandModelDTO {
  @BooleanSerializer()
  bool? get active => throw _privateConstructorUsedError;
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get createdBy => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get brand => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrandModelDTOCopyWith<BrandModelDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandModelDTOCopyWith<$Res> {
  factory $BrandModelDTOCopyWith(
          BrandModelDTO value, $Res Function(BrandModelDTO) then) =
      _$BrandModelDTOCopyWithImpl<$Res, BrandModelDTO>;
  @useResult
  $Res call(
      {@BooleanSerializer() bool? active,
      @JsonKey(name: '_id') String? id,
      @TimestampConverter() DateTime? createdBy,
      String? name,
      String? description,
      String? brand,
      String? slug,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt});
}

/// @nodoc
class _$BrandModelDTOCopyWithImpl<$Res, $Val extends BrandModelDTO>
    implements $BrandModelDTOCopyWith<$Res> {
  _$BrandModelDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? active = freezed,
    Object? id = freezed,
    Object? createdBy = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? brand = freezed,
    Object? slug = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BrandModelDTOCopyWith<$Res>
    implements $BrandModelDTOCopyWith<$Res> {
  factory _$$_BrandModelDTOCopyWith(
          _$_BrandModelDTO value, $Res Function(_$_BrandModelDTO) then) =
      __$$_BrandModelDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@BooleanSerializer() bool? active,
      @JsonKey(name: '_id') String? id,
      @TimestampConverter() DateTime? createdBy,
      String? name,
      String? description,
      String? brand,
      String? slug,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt});
}

/// @nodoc
class __$$_BrandModelDTOCopyWithImpl<$Res>
    extends _$BrandModelDTOCopyWithImpl<$Res, _$_BrandModelDTO>
    implements _$$_BrandModelDTOCopyWith<$Res> {
  __$$_BrandModelDTOCopyWithImpl(
      _$_BrandModelDTO _value, $Res Function(_$_BrandModelDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? active = freezed,
    Object? id = freezed,
    Object? createdBy = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? brand = freezed,
    Object? slug = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_BrandModelDTO(
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BrandModelDTO extends _BrandModelDTO {
  _$_BrandModelDTO(
      {@BooleanSerializer() this.active,
      @JsonKey(name: '_id') this.id,
      @TimestampConverter() this.createdBy,
      this.name,
      this.description,
      this.brand,
      this.slug,
      @TimestampConverter() this.createdAt,
      @TimestampConverter() this.updatedAt})
      : super._();

  factory _$_BrandModelDTO.fromJson(Map<String, dynamic> json) =>
      _$$_BrandModelDTOFromJson(json);

  @override
  @BooleanSerializer()
  final bool? active;
  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  @TimestampConverter()
  final DateTime? createdBy;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? brand;
  @override
  final String? slug;
  @override
  @TimestampConverter()
  final DateTime? createdAt;
  @override
  @TimestampConverter()
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'BrandModelDTO(active: $active, id: $id, createdBy: $createdBy, name: $name, description: $description, brand: $brand, slug: $slug, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BrandModelDTO &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, active, id, createdBy, name,
      description, brand, slug, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BrandModelDTOCopyWith<_$_BrandModelDTO> get copyWith =>
      __$$_BrandModelDTOCopyWithImpl<_$_BrandModelDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BrandModelDTOToJson(
      this,
    );
  }
}

abstract class _BrandModelDTO extends BrandModelDTO {
  factory _BrandModelDTO(
      {@BooleanSerializer() final bool? active,
      @JsonKey(name: '_id') final String? id,
      @TimestampConverter() final DateTime? createdBy,
      final String? name,
      final String? description,
      final String? brand,
      final String? slug,
      @TimestampConverter() final DateTime? createdAt,
      @TimestampConverter() final DateTime? updatedAt}) = _$_BrandModelDTO;
  _BrandModelDTO._() : super._();

  factory _BrandModelDTO.fromJson(Map<String, dynamic> json) =
      _$_BrandModelDTO.fromJson;

  @override
  @BooleanSerializer()
  bool? get active;
  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  @TimestampConverter()
  DateTime? get createdBy;
  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get brand;
  @override
  String? get slug;
  @override
  @TimestampConverter()
  DateTime? get createdAt;
  @override
  @TimestampConverter()
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_BrandModelDTOCopyWith<_$_BrandModelDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
