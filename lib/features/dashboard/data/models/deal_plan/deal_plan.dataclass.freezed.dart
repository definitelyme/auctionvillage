// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of deal_plan.dataclass.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DealPlanDTO _$DealPlanDTOFromJson(Map<String, dynamic> json) {
  return _DealPlanDTO.fromJson(json);
}

/// @nodoc
mixin _$DealPlanDTO {
  @JsonKey(name: '_meta')
  MetaDTO? get meta => throw _privateConstructorUsedError;
  DealPlanDTOData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DealPlanDTOCopyWith<DealPlanDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DealPlanDTOCopyWith<$Res> {
  factory $DealPlanDTOCopyWith(
          DealPlanDTO value, $Res Function(DealPlanDTO) then) =
      _$DealPlanDTOCopyWithImpl<$Res, DealPlanDTO>;
  @useResult
  $Res call({@JsonKey(name: '_meta') MetaDTO? meta, DealPlanDTOData data});

  $MetaDTOCopyWith<$Res>? get meta;
  $DealPlanDTODataCopyWith<$Res> get data;
}

/// @nodoc
class _$DealPlanDTOCopyWithImpl<$Res, $Val extends DealPlanDTO>
    implements $DealPlanDTOCopyWith<$Res> {
  _$DealPlanDTOCopyWithImpl(this._value, this._then);

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
              as DealPlanDTOData,
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
  $DealPlanDTODataCopyWith<$Res> get data {
    return $DealPlanDTODataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DealPlanDTOCopyWith<$Res>
    implements $DealPlanDTOCopyWith<$Res> {
  factory _$$_DealPlanDTOCopyWith(
          _$_DealPlanDTO value, $Res Function(_$_DealPlanDTO) then) =
      __$$_DealPlanDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: '_meta') MetaDTO? meta, DealPlanDTOData data});

  @override
  $MetaDTOCopyWith<$Res>? get meta;
  @override
  $DealPlanDTODataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_DealPlanDTOCopyWithImpl<$Res>
    extends _$DealPlanDTOCopyWithImpl<$Res, _$_DealPlanDTO>
    implements _$$_DealPlanDTOCopyWith<$Res> {
  __$$_DealPlanDTOCopyWithImpl(
      _$_DealPlanDTO _value, $Res Function(_$_DealPlanDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = freezed,
    Object? data = null,
  }) {
    return _then(_$_DealPlanDTO(
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDTO?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DealPlanDTOData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DealPlanDTO extends _DealPlanDTO with DiagnosticableTreeMixin {
  const _$_DealPlanDTO({@JsonKey(name: '_meta') this.meta, required this.data})
      : super._();

  factory _$_DealPlanDTO.fromJson(Map<String, dynamic> json) =>
      _$$_DealPlanDTOFromJson(json);

  @override
  @JsonKey(name: '_meta')
  final MetaDTO? meta;
  @override
  final DealPlanDTOData data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DealPlanDTO(meta: $meta, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DealPlanDTO'))
      ..add(DiagnosticsProperty('meta', meta))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DealPlanDTO &&
            (identical(other.meta, meta) || other.meta == meta) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, meta, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DealPlanDTOCopyWith<_$_DealPlanDTO> get copyWith =>
      __$$_DealPlanDTOCopyWithImpl<_$_DealPlanDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DealPlanDTOToJson(
      this,
    );
  }
}

abstract class _DealPlanDTO extends DealPlanDTO {
  const factory _DealPlanDTO(
      {@JsonKey(name: '_meta') final MetaDTO? meta,
      required final DealPlanDTOData data}) = _$_DealPlanDTO;
  const _DealPlanDTO._() : super._();

  factory _DealPlanDTO.fromJson(Map<String, dynamic> json) =
      _$_DealPlanDTO.fromJson;

  @override
  @JsonKey(name: '_meta')
  MetaDTO? get meta;
  @override
  DealPlanDTOData get data;
  @override
  @JsonKey(ignore: true)
  _$$_DealPlanDTOCopyWith<_$_DealPlanDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

DealPlanDTOData _$DealPlanDTODataFromJson(Map<String, dynamic> json) {
  return _DealPlanDTOData.fromJson(json);
}

/// @nodoc
mixin _$DealPlanDTOData {
  @StringSerializer()
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  @DealPlanTypeSerializer()
  DealPlanType? get name => throw _privateConstructorUsedError;
  @DoubleSerializer()
  double? get amount => throw _privateConstructorUsedError;
  @IntegerSerializer()
  int? get priority => throw _privateConstructorUsedError;
  List<String> get features => throw _privateConstructorUsedError;
  @StringSerializer()
  String? get country => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DealPlanDTODataCopyWith<DealPlanDTOData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DealPlanDTODataCopyWith<$Res> {
  factory $DealPlanDTODataCopyWith(
          DealPlanDTOData value, $Res Function(DealPlanDTOData) then) =
      _$DealPlanDTODataCopyWithImpl<$Res, DealPlanDTOData>;
  @useResult
  $Res call(
      {@StringSerializer() @JsonKey(name: '_id') String? id,
      @DealPlanTypeSerializer() DealPlanType? name,
      @DoubleSerializer() double? amount,
      @IntegerSerializer() int? priority,
      List<String> features,
      @StringSerializer() String? country,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt});
}

/// @nodoc
class _$DealPlanDTODataCopyWithImpl<$Res, $Val extends DealPlanDTOData>
    implements $DealPlanDTODataCopyWith<$Res> {
  _$DealPlanDTODataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? amount = freezed,
    Object? priority = freezed,
    Object? features = null,
    Object? country = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as DealPlanType?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
      features: null == features
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as List<String>,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_DealPlanDTODataCopyWith<$Res>
    implements $DealPlanDTODataCopyWith<$Res> {
  factory _$$_DealPlanDTODataCopyWith(
          _$_DealPlanDTOData value, $Res Function(_$_DealPlanDTOData) then) =
      __$$_DealPlanDTODataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@StringSerializer() @JsonKey(name: '_id') String? id,
      @DealPlanTypeSerializer() DealPlanType? name,
      @DoubleSerializer() double? amount,
      @IntegerSerializer() int? priority,
      List<String> features,
      @StringSerializer() String? country,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt});
}

/// @nodoc
class __$$_DealPlanDTODataCopyWithImpl<$Res>
    extends _$DealPlanDTODataCopyWithImpl<$Res, _$_DealPlanDTOData>
    implements _$$_DealPlanDTODataCopyWith<$Res> {
  __$$_DealPlanDTODataCopyWithImpl(
      _$_DealPlanDTOData _value, $Res Function(_$_DealPlanDTOData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? amount = freezed,
    Object? priority = freezed,
    Object? features = null,
    Object? country = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_DealPlanDTOData(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as DealPlanType?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
      features: null == features
          ? _value._features
          : features // ignore: cast_nullable_to_non_nullable
              as List<String>,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
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
class _$_DealPlanDTOData extends _DealPlanDTOData with DiagnosticableTreeMixin {
  const _$_DealPlanDTOData(
      {@StringSerializer() @JsonKey(name: '_id') this.id,
      @DealPlanTypeSerializer() this.name,
      @DoubleSerializer() this.amount,
      @IntegerSerializer() this.priority,
      final List<String> features = const [],
      @StringSerializer() this.country,
      @TimestampConverter() this.createdAt,
      @TimestampConverter() this.updatedAt})
      : _features = features,
        super._();

  factory _$_DealPlanDTOData.fromJson(Map<String, dynamic> json) =>
      _$$_DealPlanDTODataFromJson(json);

  @override
  @StringSerializer()
  @JsonKey(name: '_id')
  final String? id;
  @override
  @DealPlanTypeSerializer()
  final DealPlanType? name;
  @override
  @DoubleSerializer()
  final double? amount;
  @override
  @IntegerSerializer()
  final int? priority;
  final List<String> _features;
  @override
  @JsonKey()
  List<String> get features {
    if (_features is EqualUnmodifiableListView) return _features;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_features);
  }

  @override
  @StringSerializer()
  final String? country;
  @override
  @TimestampConverter()
  final DateTime? createdAt;
  @override
  @TimestampConverter()
  final DateTime? updatedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DealPlanDTOData(id: $id, name: $name, amount: $amount, priority: $priority, features: $features, country: $country, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DealPlanDTOData'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('amount', amount))
      ..add(DiagnosticsProperty('priority', priority))
      ..add(DiagnosticsProperty('features', features))
      ..add(DiagnosticsProperty('country', country))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DealPlanDTOData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            const DeepCollectionEquality().equals(other._features, _features) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      amount,
      priority,
      const DeepCollectionEquality().hash(_features),
      country,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DealPlanDTODataCopyWith<_$_DealPlanDTOData> get copyWith =>
      __$$_DealPlanDTODataCopyWithImpl<_$_DealPlanDTOData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DealPlanDTODataToJson(
      this,
    );
  }
}

abstract class _DealPlanDTOData extends DealPlanDTOData {
  const factory _DealPlanDTOData(
      {@StringSerializer() @JsonKey(name: '_id') final String? id,
      @DealPlanTypeSerializer() final DealPlanType? name,
      @DoubleSerializer() final double? amount,
      @IntegerSerializer() final int? priority,
      final List<String> features,
      @StringSerializer() final String? country,
      @TimestampConverter() final DateTime? createdAt,
      @TimestampConverter() final DateTime? updatedAt}) = _$_DealPlanDTOData;
  const _DealPlanDTOData._() : super._();

  factory _DealPlanDTOData.fromJson(Map<String, dynamic> json) =
      _$_DealPlanDTOData.fromJson;

  @override
  @StringSerializer()
  @JsonKey(name: '_id')
  String? get id;
  @override
  @DealPlanTypeSerializer()
  DealPlanType? get name;
  @override
  @DoubleSerializer()
  double? get amount;
  @override
  @IntegerSerializer()
  int? get priority;
  @override
  List<String> get features;
  @override
  @StringSerializer()
  String? get country;
  @override
  @TimestampConverter()
  DateTime? get createdAt;
  @override
  @TimestampConverter()
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_DealPlanDTODataCopyWith<_$_DealPlanDTOData> get copyWith =>
      throw _privateConstructorUsedError;
}

DealPlanListDTO _$DealPlanListDTOFromJson(Map<String, dynamic> json) {
  return _DealPlanListDTO.fromJson(json);
}

/// @nodoc
mixin _$DealPlanListDTO {
  @JsonKey(name: '_meta')
  MetaDTO? get meta => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _deserializeDealPlanList)
  List<DealPlanDTOData> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DealPlanListDTOCopyWith<DealPlanListDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DealPlanListDTOCopyWith<$Res> {
  factory $DealPlanListDTOCopyWith(
          DealPlanListDTO value, $Res Function(DealPlanListDTO) then) =
      _$DealPlanListDTOCopyWithImpl<$Res, DealPlanListDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: '_meta') MetaDTO? meta,
      @JsonKey(fromJson: _deserializeDealPlanList) List<DealPlanDTOData> data});

  $MetaDTOCopyWith<$Res>? get meta;
}

/// @nodoc
class _$DealPlanListDTOCopyWithImpl<$Res, $Val extends DealPlanListDTO>
    implements $DealPlanListDTOCopyWith<$Res> {
  _$DealPlanListDTOCopyWithImpl(this._value, this._then);

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
              as List<DealPlanDTOData>,
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
abstract class _$$_DealPlanListDTOCopyWith<$Res>
    implements $DealPlanListDTOCopyWith<$Res> {
  factory _$$_DealPlanListDTOCopyWith(
          _$_DealPlanListDTO value, $Res Function(_$_DealPlanListDTO) then) =
      __$$_DealPlanListDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_meta') MetaDTO? meta,
      @JsonKey(fromJson: _deserializeDealPlanList) List<DealPlanDTOData> data});

  @override
  $MetaDTOCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$_DealPlanListDTOCopyWithImpl<$Res>
    extends _$DealPlanListDTOCopyWithImpl<$Res, _$_DealPlanListDTO>
    implements _$$_DealPlanListDTOCopyWith<$Res> {
  __$$_DealPlanListDTOCopyWithImpl(
      _$_DealPlanListDTO _value, $Res Function(_$_DealPlanListDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = freezed,
    Object? data = null,
  }) {
    return _then(_$_DealPlanListDTO(
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDTO?,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DealPlanDTOData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DealPlanListDTO extends _DealPlanListDTO with DiagnosticableTreeMixin {
  const _$_DealPlanListDTO(
      {@JsonKey(name: '_meta')
          this.meta,
      @JsonKey(fromJson: _deserializeDealPlanList)
          final List<DealPlanDTOData> data = const []})
      : _data = data,
        super._();

  factory _$_DealPlanListDTO.fromJson(Map<String, dynamic> json) =>
      _$$_DealPlanListDTOFromJson(json);

  @override
  @JsonKey(name: '_meta')
  final MetaDTO? meta;
  final List<DealPlanDTOData> _data;
  @override
  @JsonKey(fromJson: _deserializeDealPlanList)
  List<DealPlanDTOData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DealPlanListDTO(meta: $meta, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DealPlanListDTO'))
      ..add(DiagnosticsProperty('meta', meta))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DealPlanListDTO &&
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
  _$$_DealPlanListDTOCopyWith<_$_DealPlanListDTO> get copyWith =>
      __$$_DealPlanListDTOCopyWithImpl<_$_DealPlanListDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DealPlanListDTOToJson(
      this,
    );
  }
}

abstract class _DealPlanListDTO extends DealPlanListDTO {
  const factory _DealPlanListDTO(
      {@JsonKey(name: '_meta')
          final MetaDTO? meta,
      @JsonKey(fromJson: _deserializeDealPlanList)
          final List<DealPlanDTOData> data}) = _$_DealPlanListDTO;
  const _DealPlanListDTO._() : super._();

  factory _DealPlanListDTO.fromJson(Map<String, dynamic> json) =
      _$_DealPlanListDTO.fromJson;

  @override
  @JsonKey(name: '_meta')
  MetaDTO? get meta;
  @override
  @JsonKey(fromJson: _deserializeDealPlanList)
  List<DealPlanDTOData> get data;
  @override
  @JsonKey(ignore: true)
  _$$_DealPlanListDTOCopyWith<_$_DealPlanListDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
