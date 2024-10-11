// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of security_question_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

_SecurityQuestionDTOData _$_SecurityQuestionDTODataFromJson(
    Map<String, dynamic> json) {
  return __SecurityQuestionDTOData.fromJson(json);
}

/// @nodoc
mixin _$_SecurityQuestionDTOData {
  @JsonKey(name: '_id')
  @StringSerializer()
  String? get id => throw _privateConstructorUsedError;
  @StringSerializer()
  String? get userId => throw _privateConstructorUsedError;
  @StringSerializer()
  String? get question => throw _privateConstructorUsedError;
  @StringSerializer()
  String? get answer => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SecurityQuestionDTODataCopyWith<_SecurityQuestionDTOData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SecurityQuestionDTODataCopyWith<$Res> {
  factory _$SecurityQuestionDTODataCopyWith(_SecurityQuestionDTOData value,
          $Res Function(_SecurityQuestionDTOData) then) =
      __$SecurityQuestionDTODataCopyWithImpl<$Res, _SecurityQuestionDTOData>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') @StringSerializer() String? id,
      @StringSerializer() String? userId,
      @StringSerializer() String? question,
      @StringSerializer() String? answer,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt});
}

/// @nodoc
class __$SecurityQuestionDTODataCopyWithImpl<$Res,
        $Val extends _SecurityQuestionDTOData>
    implements _$SecurityQuestionDTODataCopyWith<$Res> {
  __$SecurityQuestionDTODataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? question = freezed,
    Object? answer = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
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
abstract class _$$__SecurityQuestionDTODataCopyWith<$Res>
    implements _$SecurityQuestionDTODataCopyWith<$Res> {
  factory _$$__SecurityQuestionDTODataCopyWith(
          _$__SecurityQuestionDTOData value,
          $Res Function(_$__SecurityQuestionDTOData) then) =
      __$$__SecurityQuestionDTODataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') @StringSerializer() String? id,
      @StringSerializer() String? userId,
      @StringSerializer() String? question,
      @StringSerializer() String? answer,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt});
}

/// @nodoc
class __$$__SecurityQuestionDTODataCopyWithImpl<$Res>
    extends __$SecurityQuestionDTODataCopyWithImpl<$Res,
        _$__SecurityQuestionDTOData>
    implements _$$__SecurityQuestionDTODataCopyWith<$Res> {
  __$$__SecurityQuestionDTODataCopyWithImpl(_$__SecurityQuestionDTOData _value,
      $Res Function(_$__SecurityQuestionDTOData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? question = freezed,
    Object? answer = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$__SecurityQuestionDTOData(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
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
class _$__SecurityQuestionDTOData extends __SecurityQuestionDTOData {
  const _$__SecurityQuestionDTOData(
      {@JsonKey(name: '_id') @StringSerializer() this.id,
      @StringSerializer() this.userId,
      @StringSerializer() this.question,
      @StringSerializer() this.answer,
      @TimestampConverter() this.createdAt,
      @TimestampConverter() this.updatedAt})
      : super._();

  factory _$__SecurityQuestionDTOData.fromJson(Map<String, dynamic> json) =>
      _$$__SecurityQuestionDTODataFromJson(json);

  @override
  @JsonKey(name: '_id')
  @StringSerializer()
  final String? id;
  @override
  @StringSerializer()
  final String? userId;
  @override
  @StringSerializer()
  final String? question;
  @override
  @StringSerializer()
  final String? answer;
  @override
  @TimestampConverter()
  final DateTime? createdAt;
  @override
  @TimestampConverter()
  final DateTime? updatedAt;

  @override
  String toString() {
    return '_SecurityQuestionDTOData(id: $id, userId: $userId, question: $question, answer: $answer, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$__SecurityQuestionDTOData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.answer, answer) || other.answer == answer) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, userId, question, answer, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$__SecurityQuestionDTODataCopyWith<_$__SecurityQuestionDTOData>
      get copyWith => __$$__SecurityQuestionDTODataCopyWithImpl<
          _$__SecurityQuestionDTOData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$__SecurityQuestionDTODataToJson(
      this,
    );
  }
}

abstract class __SecurityQuestionDTOData extends _SecurityQuestionDTOData {
  const factory __SecurityQuestionDTOData(
          {@JsonKey(name: '_id') @StringSerializer() final String? id,
          @StringSerializer() final String? userId,
          @StringSerializer() final String? question,
          @StringSerializer() final String? answer,
          @TimestampConverter() final DateTime? createdAt,
          @TimestampConverter() final DateTime? updatedAt}) =
      _$__SecurityQuestionDTOData;
  const __SecurityQuestionDTOData._() : super._();

  factory __SecurityQuestionDTOData.fromJson(Map<String, dynamic> json) =
      _$__SecurityQuestionDTOData.fromJson;

  @override
  @JsonKey(name: '_id')
  @StringSerializer()
  String? get id;
  @override
  @StringSerializer()
  String? get userId;
  @override
  @StringSerializer()
  String? get question;
  @override
  @StringSerializer()
  String? get answer;
  @override
  @TimestampConverter()
  DateTime? get createdAt;
  @override
  @TimestampConverter()
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$__SecurityQuestionDTODataCopyWith<_$__SecurityQuestionDTOData>
      get copyWith => throw _privateConstructorUsedError;
}

SecurityQuestionDTO _$SecurityQuestionDTOFromJson(Map<String, dynamic> json) {
  return _SecurityQuestionDTO.fromJson(json);
}

/// @nodoc
mixin _$SecurityQuestionDTO {
  @JsonKey(name: '_meta')
  MetaDTO? get meta => throw _privateConstructorUsedError;
  _SecurityQuestionDTOData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SecurityQuestionDTOCopyWith<SecurityQuestionDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SecurityQuestionDTOCopyWith<$Res> {
  factory $SecurityQuestionDTOCopyWith(
          SecurityQuestionDTO value, $Res Function(SecurityQuestionDTO) then) =
      _$SecurityQuestionDTOCopyWithImpl<$Res, SecurityQuestionDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: '_meta') MetaDTO? meta, _SecurityQuestionDTOData data});

  $MetaDTOCopyWith<$Res>? get meta;
  _$SecurityQuestionDTODataCopyWith<$Res> get data;
}

/// @nodoc
class _$SecurityQuestionDTOCopyWithImpl<$Res, $Val extends SecurityQuestionDTO>
    implements $SecurityQuestionDTOCopyWith<$Res> {
  _$SecurityQuestionDTOCopyWithImpl(this._value, this._then);

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
              as _SecurityQuestionDTOData,
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
  _$SecurityQuestionDTODataCopyWith<$Res> get data {
    return _$SecurityQuestionDTODataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SecurityQuestionDTOCopyWith<$Res>
    implements $SecurityQuestionDTOCopyWith<$Res> {
  factory _$$_SecurityQuestionDTOCopyWith(_$_SecurityQuestionDTO value,
          $Res Function(_$_SecurityQuestionDTO) then) =
      __$$_SecurityQuestionDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_meta') MetaDTO? meta, _SecurityQuestionDTOData data});

  @override
  $MetaDTOCopyWith<$Res>? get meta;
  @override
  _$SecurityQuestionDTODataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_SecurityQuestionDTOCopyWithImpl<$Res>
    extends _$SecurityQuestionDTOCopyWithImpl<$Res, _$_SecurityQuestionDTO>
    implements _$$_SecurityQuestionDTOCopyWith<$Res> {
  __$$_SecurityQuestionDTOCopyWithImpl(_$_SecurityQuestionDTO _value,
      $Res Function(_$_SecurityQuestionDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = freezed,
    Object? data = null,
  }) {
    return _then(_$_SecurityQuestionDTO(
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDTO?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as _SecurityQuestionDTOData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SecurityQuestionDTO extends _SecurityQuestionDTO {
  const _$_SecurityQuestionDTO(
      {@JsonKey(name: '_meta') this.meta, required this.data})
      : super._();

  factory _$_SecurityQuestionDTO.fromJson(Map<String, dynamic> json) =>
      _$$_SecurityQuestionDTOFromJson(json);

  @override
  @JsonKey(name: '_meta')
  final MetaDTO? meta;
  @override
  final _SecurityQuestionDTOData data;

  @override
  String toString() {
    return 'SecurityQuestionDTO(meta: $meta, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SecurityQuestionDTO &&
            (identical(other.meta, meta) || other.meta == meta) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, meta, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SecurityQuestionDTOCopyWith<_$_SecurityQuestionDTO> get copyWith =>
      __$$_SecurityQuestionDTOCopyWithImpl<_$_SecurityQuestionDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SecurityQuestionDTOToJson(
      this,
    );
  }
}

abstract class _SecurityQuestionDTO extends SecurityQuestionDTO {
  const factory _SecurityQuestionDTO(
      {@JsonKey(name: '_meta') final MetaDTO? meta,
      required final _SecurityQuestionDTOData data}) = _$_SecurityQuestionDTO;
  const _SecurityQuestionDTO._() : super._();

  factory _SecurityQuestionDTO.fromJson(Map<String, dynamic> json) =
      _$_SecurityQuestionDTO.fromJson;

  @override
  @JsonKey(name: '_meta')
  MetaDTO? get meta;
  @override
  _SecurityQuestionDTOData get data;
  @override
  @JsonKey(ignore: true)
  _$$_SecurityQuestionDTOCopyWith<_$_SecurityQuestionDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

SecurityQuestionListDTO _$SecurityQuestionListDTOFromJson(
    Map<String, dynamic> json) {
  return _SecurityQuestionListDTO.fromJson(json);
}

/// @nodoc
mixin _$SecurityQuestionListDTO {
  Iterable<_SecurityQuestionDTOData> get data =>
      throw _privateConstructorUsedError;
  @JsonKey(name: '_meta')
  MetaDTO? get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SecurityQuestionListDTOCopyWith<SecurityQuestionListDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SecurityQuestionListDTOCopyWith<$Res> {
  factory $SecurityQuestionListDTOCopyWith(SecurityQuestionListDTO value,
          $Res Function(SecurityQuestionListDTO) then) =
      _$SecurityQuestionListDTOCopyWithImpl<$Res, SecurityQuestionListDTO>;
  @useResult
  $Res call(
      {Iterable<_SecurityQuestionDTOData> data,
      @JsonKey(name: '_meta') MetaDTO? meta});

  $MetaDTOCopyWith<$Res>? get meta;
}

/// @nodoc
class _$SecurityQuestionListDTOCopyWithImpl<$Res,
        $Val extends SecurityQuestionListDTO>
    implements $SecurityQuestionListDTOCopyWith<$Res> {
  _$SecurityQuestionListDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? meta = freezed,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Iterable<_SecurityQuestionDTOData>,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDTO?,
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
abstract class _$$_SecurityQuestionListDTOCopyWith<$Res>
    implements $SecurityQuestionListDTOCopyWith<$Res> {
  factory _$$_SecurityQuestionListDTOCopyWith(_$_SecurityQuestionListDTO value,
          $Res Function(_$_SecurityQuestionListDTO) then) =
      __$$_SecurityQuestionListDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Iterable<_SecurityQuestionDTOData> data,
      @JsonKey(name: '_meta') MetaDTO? meta});

  @override
  $MetaDTOCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$_SecurityQuestionListDTOCopyWithImpl<$Res>
    extends _$SecurityQuestionListDTOCopyWithImpl<$Res,
        _$_SecurityQuestionListDTO>
    implements _$$_SecurityQuestionListDTOCopyWith<$Res> {
  __$$_SecurityQuestionListDTOCopyWithImpl(_$_SecurityQuestionListDTO _value,
      $Res Function(_$_SecurityQuestionListDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? meta = freezed,
  }) {
    return _then(_$_SecurityQuestionListDTO(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Iterable<_SecurityQuestionDTOData>,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDTO?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SecurityQuestionListDTO extends _SecurityQuestionListDTO {
  const _$_SecurityQuestionListDTO(
      {this.data = const [], @JsonKey(name: '_meta') this.meta})
      : super._();

  factory _$_SecurityQuestionListDTO.fromJson(Map<String, dynamic> json) =>
      _$$_SecurityQuestionListDTOFromJson(json);

  @override
  @JsonKey()
  final Iterable<_SecurityQuestionDTOData> data;
  @override
  @JsonKey(name: '_meta')
  final MetaDTO? meta;

  @override
  String toString() {
    return 'SecurityQuestionListDTO(data: $data, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SecurityQuestionListDTO &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data), meta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SecurityQuestionListDTOCopyWith<_$_SecurityQuestionListDTO>
      get copyWith =>
          __$$_SecurityQuestionListDTOCopyWithImpl<_$_SecurityQuestionListDTO>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SecurityQuestionListDTOToJson(
      this,
    );
  }
}

abstract class _SecurityQuestionListDTO extends SecurityQuestionListDTO {
  const factory _SecurityQuestionListDTO(
          {final Iterable<_SecurityQuestionDTOData> data,
          @JsonKey(name: '_meta') final MetaDTO? meta}) =
      _$_SecurityQuestionListDTO;
  const _SecurityQuestionListDTO._() : super._();

  factory _SecurityQuestionListDTO.fromJson(Map<String, dynamic> json) =
      _$_SecurityQuestionListDTO.fromJson;

  @override
  Iterable<_SecurityQuestionDTOData> get data;
  @override
  @JsonKey(name: '_meta')
  MetaDTO? get meta;
  @override
  @JsonKey(ignore: true)
  _$$_SecurityQuestionListDTOCopyWith<_$_SecurityQuestionListDTO>
      get copyWith => throw _privateConstructorUsedError;
}
