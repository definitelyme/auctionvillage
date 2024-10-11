// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of category_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoryDTO _$CategoryDTOFromJson(Map<String, dynamic> json) {
  return _CategoryDTO.fromJson(json);
}

/// @nodoc
mixin _$CategoryDTO {
  @JsonKey(name: '_meta')
  MetaDTO? get meta => throw _privateConstructorUsedError;
  CategoryDTOData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryDTOCopyWith<CategoryDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryDTOCopyWith<$Res> {
  factory $CategoryDTOCopyWith(
          CategoryDTO value, $Res Function(CategoryDTO) then) =
      _$CategoryDTOCopyWithImpl<$Res, CategoryDTO>;
  @useResult
  $Res call({@JsonKey(name: '_meta') MetaDTO? meta, CategoryDTOData data});

  $MetaDTOCopyWith<$Res>? get meta;
  $CategoryDTODataCopyWith<$Res> get data;
}

/// @nodoc
class _$CategoryDTOCopyWithImpl<$Res, $Val extends CategoryDTO>
    implements $CategoryDTOCopyWith<$Res> {
  _$CategoryDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = freezed,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDTO?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CategoryDTOData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MetaDTOCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $MetaDTOCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryDTODataCopyWith<$Res> get data {
    return $CategoryDTODataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CategoryDTOCopyWith<$Res>
    implements $CategoryDTOCopyWith<$Res> {
  factory _$$_CategoryDTOCopyWith(
          _$_CategoryDTO value, $Res Function(_$_CategoryDTO) then) =
      __$$_CategoryDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: '_meta') MetaDTO? meta, CategoryDTOData data});

  @override
  $MetaDTOCopyWith<$Res>? get meta;
  @override
  $CategoryDTODataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_CategoryDTOCopyWithImpl<$Res>
    extends _$CategoryDTOCopyWithImpl<$Res, _$_CategoryDTO>
    implements _$$_CategoryDTOCopyWith<$Res> {
  __$$_CategoryDTOCopyWithImpl(
      _$_CategoryDTO _value, $Res Function(_$_CategoryDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = freezed,
    Object? data = null,
  }) {
    return _then(_$_CategoryDTO(
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDTO?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CategoryDTOData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoryDTO extends _CategoryDTO {
  const _$_CategoryDTO({@JsonKey(name: '_meta') this.meta, required this.data})
      : super._();

  factory _$_CategoryDTO.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryDTOFromJson(json);

  @override
  @JsonKey(name: '_meta')
  final MetaDTO? meta;
  @override
  final CategoryDTOData data;

  @override
  String toString() {
    return 'CategoryDTO(meta: $meta, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryDTO &&
            (identical(other.meta, meta) || other.meta == meta) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, meta, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryDTOCopyWith<_$_CategoryDTO> get copyWith =>
      __$$_CategoryDTOCopyWithImpl<_$_CategoryDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryDTOToJson(
      this,
    );
  }
}

abstract class _CategoryDTO extends CategoryDTO {
  const factory _CategoryDTO(
      {@JsonKey(name: '_meta') final MetaDTO? meta,
      required final CategoryDTOData data}) = _$_CategoryDTO;
  const _CategoryDTO._() : super._();

  factory _CategoryDTO.fromJson(Map<String, dynamic> json) =
      _$_CategoryDTO.fromJson;

  @override
  @JsonKey(name: '_meta')
  MetaDTO? get meta;
  @override
  CategoryDTOData get data;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryDTOCopyWith<_$_CategoryDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoryDTOData _$CategoryDTODataFromJson(Map<String, dynamic> json) {
  return _CategoryDTOData.fromJson(json);
}

/// @nodoc
mixin _$CategoryDTOData {
  @IntegerSerializer()
  int? get productsAssigned => throw _privateConstructorUsedError;
  @DoubleSerializer()
  double? get percentageIncrease => throw _privateConstructorUsedError;
  @DoubleSerializer()
  double? get charge => throw _privateConstructorUsedError;
  @BooleanSerializer()
  bool? get active => throw _privateConstructorUsedError;
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  DealDTOData? get deal => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryDTODataCopyWith<CategoryDTOData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryDTODataCopyWith<$Res> {
  factory $CategoryDTODataCopyWith(
          CategoryDTOData value, $Res Function(CategoryDTOData) then) =
      _$CategoryDTODataCopyWithImpl<$Res, CategoryDTOData>;
  @useResult
  $Res call(
      {@IntegerSerializer() int? productsAssigned,
      @DoubleSerializer() double? percentageIncrease,
      @DoubleSerializer() double? charge,
      @BooleanSerializer() bool? active,
      @JsonKey(name: '_id') String? id,
      String? image,
      String? name,
      String? description,
      String? slug,
      DealDTOData? deal,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt});

  $DealDTODataCopyWith<$Res>? get deal;
}

/// @nodoc
class _$CategoryDTODataCopyWithImpl<$Res, $Val extends CategoryDTOData>
    implements $CategoryDTODataCopyWith<$Res> {
  _$CategoryDTODataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productsAssigned = freezed,
    Object? percentageIncrease = freezed,
    Object? charge = freezed,
    Object? active = freezed,
    Object? id = freezed,
    Object? image = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? slug = freezed,
    Object? deal = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      productsAssigned: freezed == productsAssigned
          ? _value.productsAssigned
          : productsAssigned // ignore: cast_nullable_to_non_nullable
              as int?,
      percentageIncrease: freezed == percentageIncrease
          ? _value.percentageIncrease
          : percentageIncrease // ignore: cast_nullable_to_non_nullable
              as double?,
      charge: freezed == charge
          ? _value.charge
          : charge // ignore: cast_nullable_to_non_nullable
              as double?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      deal: freezed == deal
          ? _value.deal
          : deal // ignore: cast_nullable_to_non_nullable
              as DealDTOData?,
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

  @override
  @pragma('vm:prefer-inline')
  $DealDTODataCopyWith<$Res>? get deal {
    if (_value.deal == null) {
      return null;
    }

    return $DealDTODataCopyWith<$Res>(_value.deal!, (value) {
      return _then(_value.copyWith(deal: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CategoryDTODataCopyWith<$Res>
    implements $CategoryDTODataCopyWith<$Res> {
  factory _$$_CategoryDTODataCopyWith(
          _$_CategoryDTOData value, $Res Function(_$_CategoryDTOData) then) =
      __$$_CategoryDTODataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@IntegerSerializer() int? productsAssigned,
      @DoubleSerializer() double? percentageIncrease,
      @DoubleSerializer() double? charge,
      @BooleanSerializer() bool? active,
      @JsonKey(name: '_id') String? id,
      String? image,
      String? name,
      String? description,
      String? slug,
      DealDTOData? deal,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt});

  @override
  $DealDTODataCopyWith<$Res>? get deal;
}

/// @nodoc
class __$$_CategoryDTODataCopyWithImpl<$Res>
    extends _$CategoryDTODataCopyWithImpl<$Res, _$_CategoryDTOData>
    implements _$$_CategoryDTODataCopyWith<$Res> {
  __$$_CategoryDTODataCopyWithImpl(
      _$_CategoryDTOData _value, $Res Function(_$_CategoryDTOData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productsAssigned = freezed,
    Object? percentageIncrease = freezed,
    Object? charge = freezed,
    Object? active = freezed,
    Object? id = freezed,
    Object? image = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? slug = freezed,
    Object? deal = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_CategoryDTOData(
      productsAssigned: freezed == productsAssigned
          ? _value.productsAssigned
          : productsAssigned // ignore: cast_nullable_to_non_nullable
              as int?,
      percentageIncrease: freezed == percentageIncrease
          ? _value.percentageIncrease
          : percentageIncrease // ignore: cast_nullable_to_non_nullable
              as double?,
      charge: freezed == charge
          ? _value.charge
          : charge // ignore: cast_nullable_to_non_nullable
              as double?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      deal: freezed == deal
          ? _value.deal
          : deal // ignore: cast_nullable_to_non_nullable
              as DealDTOData?,
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
class _$_CategoryDTOData extends _CategoryDTOData {
  const _$_CategoryDTOData(
      {@IntegerSerializer() this.productsAssigned,
      @DoubleSerializer() this.percentageIncrease,
      @DoubleSerializer() this.charge,
      @BooleanSerializer() this.active,
      @JsonKey(name: '_id') this.id,
      this.image,
      this.name,
      this.description,
      this.slug,
      this.deal,
      @TimestampConverter() this.createdAt,
      @TimestampConverter() this.updatedAt})
      : super._();

  factory _$_CategoryDTOData.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryDTODataFromJson(json);

  @override
  @IntegerSerializer()
  final int? productsAssigned;
  @override
  @DoubleSerializer()
  final double? percentageIncrease;
  @override
  @DoubleSerializer()
  final double? charge;
  @override
  @BooleanSerializer()
  final bool? active;
  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? image;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? slug;
  @override
  final DealDTOData? deal;
  @override
  @TimestampConverter()
  final DateTime? createdAt;
  @override
  @TimestampConverter()
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'CategoryDTOData(productsAssigned: $productsAssigned, percentageIncrease: $percentageIncrease, charge: $charge, active: $active, id: $id, image: $image, name: $name, description: $description, slug: $slug, deal: $deal, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryDTOData &&
            (identical(other.productsAssigned, productsAssigned) ||
                other.productsAssigned == productsAssigned) &&
            (identical(other.percentageIncrease, percentageIncrease) ||
                other.percentageIncrease == percentageIncrease) &&
            (identical(other.charge, charge) || other.charge == charge) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.deal, deal) || other.deal == deal) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      productsAssigned,
      percentageIncrease,
      charge,
      active,
      id,
      image,
      name,
      description,
      slug,
      deal,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryDTODataCopyWith<_$_CategoryDTOData> get copyWith =>
      __$$_CategoryDTODataCopyWithImpl<_$_CategoryDTOData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryDTODataToJson(
      this,
    );
  }
}

abstract class _CategoryDTOData extends CategoryDTOData {
  const factory _CategoryDTOData(
      {@IntegerSerializer() final int? productsAssigned,
      @DoubleSerializer() final double? percentageIncrease,
      @DoubleSerializer() final double? charge,
      @BooleanSerializer() final bool? active,
      @JsonKey(name: '_id') final String? id,
      final String? image,
      final String? name,
      final String? description,
      final String? slug,
      final DealDTOData? deal,
      @TimestampConverter() final DateTime? createdAt,
      @TimestampConverter() final DateTime? updatedAt}) = _$_CategoryDTOData;
  const _CategoryDTOData._() : super._();

  factory _CategoryDTOData.fromJson(Map<String, dynamic> json) =
      _$_CategoryDTOData.fromJson;

  @override
  @IntegerSerializer()
  int? get productsAssigned;
  @override
  @DoubleSerializer()
  double? get percentageIncrease;
  @override
  @DoubleSerializer()
  double? get charge;
  @override
  @BooleanSerializer()
  bool? get active;
  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String? get image;
  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get slug;
  @override
  DealDTOData? get deal;
  @override
  @TimestampConverter()
  DateTime? get createdAt;
  @override
  @TimestampConverter()
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryDTODataCopyWith<_$_CategoryDTOData> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoryListDTO _$CategoryListDTOFromJson(Map<String, dynamic> json) {
  return _CategoryListDTO.fromJson(json);
}

/// @nodoc
mixin _$CategoryListDTO {
  @JsonKey(name: '_meta')
  MetaDTO? get meta => throw _privateConstructorUsedError;
  List<CategoryDTOData> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryListDTOCopyWith<CategoryListDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryListDTOCopyWith<$Res> {
  factory $CategoryListDTOCopyWith(
          CategoryListDTO value, $Res Function(CategoryListDTO) then) =
      _$CategoryListDTOCopyWithImpl<$Res, CategoryListDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: '_meta') MetaDTO? meta, List<CategoryDTOData> data});

  $MetaDTOCopyWith<$Res>? get meta;
}

/// @nodoc
class _$CategoryListDTOCopyWithImpl<$Res, $Val extends CategoryListDTO>
    implements $CategoryListDTOCopyWith<$Res> {
  _$CategoryListDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = freezed,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDTO?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CategoryDTOData>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MetaDTOCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $MetaDTOCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CategoryListDTOCopyWith<$Res>
    implements $CategoryListDTOCopyWith<$Res> {
  factory _$$_CategoryListDTOCopyWith(
          _$_CategoryListDTO value, $Res Function(_$_CategoryListDTO) then) =
      __$$_CategoryListDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_meta') MetaDTO? meta, List<CategoryDTOData> data});

  @override
  $MetaDTOCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$_CategoryListDTOCopyWithImpl<$Res>
    extends _$CategoryListDTOCopyWithImpl<$Res, _$_CategoryListDTO>
    implements _$$_CategoryListDTOCopyWith<$Res> {
  __$$_CategoryListDTOCopyWithImpl(
      _$_CategoryListDTO _value, $Res Function(_$_CategoryListDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = freezed,
    Object? data = null,
  }) {
    return _then(_$_CategoryListDTO(
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDTO?,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CategoryDTOData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoryListDTO extends _CategoryListDTO {
  const _$_CategoryListDTO(
      {@JsonKey(name: '_meta') this.meta,
      final List<CategoryDTOData> data = const []})
      : _data = data,
        super._();

  factory _$_CategoryListDTO.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryListDTOFromJson(json);

  @override
  @JsonKey(name: '_meta')
  final MetaDTO? meta;
  final List<CategoryDTOData> _data;
  @override
  @JsonKey()
  List<CategoryDTOData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'CategoryListDTO(meta: $meta, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryListDTO &&
            (identical(other.meta, meta) || other.meta == meta) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, meta, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryListDTOCopyWith<_$_CategoryListDTO> get copyWith =>
      __$$_CategoryListDTOCopyWithImpl<_$_CategoryListDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryListDTOToJson(
      this,
    );
  }
}

abstract class _CategoryListDTO extends CategoryListDTO {
  const factory _CategoryListDTO(
      {@JsonKey(name: '_meta') final MetaDTO? meta,
      final List<CategoryDTOData> data}) = _$_CategoryListDTO;
  const _CategoryListDTO._() : super._();

  factory _CategoryListDTO.fromJson(Map<String, dynamic> json) =
      _$_CategoryListDTO.fromJson;

  @override
  @JsonKey(name: '_meta')
  MetaDTO? get meta;
  @override
  List<CategoryDTOData> get data;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryListDTOCopyWith<_$_CategoryListDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
