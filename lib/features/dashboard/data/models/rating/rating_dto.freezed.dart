// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of rating_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RatingDTO _$RatingDTOFromJson(Map<String, dynamic> json) {
  return _RatingDTO.fromJson(json);
}

/// @nodoc
mixin _$RatingDTO {
  @JsonKey(name: '_meta')
  MetaDTO? get meta => throw _privateConstructorUsedError;
  _RatingDTOData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RatingDTOCopyWith<RatingDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingDTOCopyWith<$Res> {
  factory $RatingDTOCopyWith(RatingDTO value, $Res Function(RatingDTO) then) =
      _$RatingDTOCopyWithImpl<$Res, RatingDTO>;
  @useResult
  $Res call({@JsonKey(name: '_meta') MetaDTO? meta, _RatingDTOData data});

  $MetaDTOCopyWith<$Res>? get meta;
  _$RatingDTODataCopyWith<$Res> get data;
}

/// @nodoc
class _$RatingDTOCopyWithImpl<$Res, $Val extends RatingDTO>
    implements $RatingDTOCopyWith<$Res> {
  _$RatingDTOCopyWithImpl(this._value, this._then);

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
              as _RatingDTOData,
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
  _$RatingDTODataCopyWith<$Res> get data {
    return _$RatingDTODataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RatingDTOCopyWith<$Res> implements $RatingDTOCopyWith<$Res> {
  factory _$$_RatingDTOCopyWith(
          _$_RatingDTO value, $Res Function(_$_RatingDTO) then) =
      __$$_RatingDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: '_meta') MetaDTO? meta, _RatingDTOData data});

  @override
  $MetaDTOCopyWith<$Res>? get meta;
  @override
  _$RatingDTODataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_RatingDTOCopyWithImpl<$Res>
    extends _$RatingDTOCopyWithImpl<$Res, _$_RatingDTO>
    implements _$$_RatingDTOCopyWith<$Res> {
  __$$_RatingDTOCopyWithImpl(
      _$_RatingDTO _value, $Res Function(_$_RatingDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = freezed,
    Object? data = null,
  }) {
    return _then(_$_RatingDTO(
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDTO?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as _RatingDTOData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RatingDTO extends _RatingDTO {
  const _$_RatingDTO({@JsonKey(name: '_meta') this.meta, required this.data})
      : super._();

  factory _$_RatingDTO.fromJson(Map<String, dynamic> json) =>
      _$$_RatingDTOFromJson(json);

  @override
  @JsonKey(name: '_meta')
  final MetaDTO? meta;
  @override
  final _RatingDTOData data;

  @override
  String toString() {
    return 'RatingDTO(meta: $meta, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RatingDTO &&
            (identical(other.meta, meta) || other.meta == meta) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, meta, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RatingDTOCopyWith<_$_RatingDTO> get copyWith =>
      __$$_RatingDTOCopyWithImpl<_$_RatingDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RatingDTOToJson(
      this,
    );
  }
}

abstract class _RatingDTO extends RatingDTO {
  const factory _RatingDTO(
      {@JsonKey(name: '_meta') final MetaDTO? meta,
      required final _RatingDTOData data}) = _$_RatingDTO;
  const _RatingDTO._() : super._();

  factory _RatingDTO.fromJson(Map<String, dynamic> json) =
      _$_RatingDTO.fromJson;

  @override
  @JsonKey(name: '_meta')
  MetaDTO? get meta;
  @override
  _RatingDTOData get data;
  @override
  @JsonKey(ignore: true)
  _$$_RatingDTOCopyWith<_$_RatingDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

_RatingDTOData _$_RatingDTODataFromJson(Map<String, dynamic> json) {
  return __RatingDTOData.fromJson(json);
}

/// @nodoc
mixin _$_RatingDTOData {
  @JsonKey(name: 'value')
  List<ReviewDTO> get reviews => throw _privateConstructorUsedError;
  ReviewDTO? get average => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RatingDTODataCopyWith<_RatingDTOData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RatingDTODataCopyWith<$Res> {
  factory _$RatingDTODataCopyWith(
          _RatingDTOData value, $Res Function(_RatingDTOData) then) =
      __$RatingDTODataCopyWithImpl<$Res, _RatingDTOData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'value') List<ReviewDTO> reviews, ReviewDTO? average});

  $ReviewDTOCopyWith<$Res>? get average;
}

/// @nodoc
class __$RatingDTODataCopyWithImpl<$Res, $Val extends _RatingDTOData>
    implements _$RatingDTODataCopyWith<$Res> {
  __$RatingDTODataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviews = null,
    Object? average = freezed,
  }) {
    return _then(_value.copyWith(
      reviews: null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<ReviewDTO>,
      average: freezed == average
          ? _value.average
          : average // ignore: cast_nullable_to_non_nullable
              as ReviewDTO?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ReviewDTOCopyWith<$Res>? get average {
    if (_value.average == null) {
      return null;
    }

    return $ReviewDTOCopyWith<$Res>(_value.average!, (value) {
      return _then(_value.copyWith(average: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$__RatingDTODataCopyWith<$Res>
    implements _$RatingDTODataCopyWith<$Res> {
  factory _$$__RatingDTODataCopyWith(
          _$__RatingDTOData value, $Res Function(_$__RatingDTOData) then) =
      __$$__RatingDTODataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'value') List<ReviewDTO> reviews, ReviewDTO? average});

  @override
  $ReviewDTOCopyWith<$Res>? get average;
}

/// @nodoc
class __$$__RatingDTODataCopyWithImpl<$Res>
    extends __$RatingDTODataCopyWithImpl<$Res, _$__RatingDTOData>
    implements _$$__RatingDTODataCopyWith<$Res> {
  __$$__RatingDTODataCopyWithImpl(
      _$__RatingDTOData _value, $Res Function(_$__RatingDTOData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviews = null,
    Object? average = freezed,
  }) {
    return _then(_$__RatingDTOData(
      reviews: null == reviews
          ? _value._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<ReviewDTO>,
      average: freezed == average
          ? _value.average
          : average // ignore: cast_nullable_to_non_nullable
              as ReviewDTO?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$__RatingDTOData extends __RatingDTOData {
  const _$__RatingDTOData(
      {@JsonKey(name: 'value') final List<ReviewDTO> reviews = const [],
      this.average})
      : _reviews = reviews,
        super._();

  factory _$__RatingDTOData.fromJson(Map<String, dynamic> json) =>
      _$$__RatingDTODataFromJson(json);

  final List<ReviewDTO> _reviews;
  @override
  @JsonKey(name: 'value')
  List<ReviewDTO> get reviews {
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviews);
  }

  @override
  final ReviewDTO? average;

  @override
  String toString() {
    return '_RatingDTOData(reviews: $reviews, average: $average)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$__RatingDTOData &&
            const DeepCollectionEquality().equals(other._reviews, _reviews) &&
            (identical(other.average, average) || other.average == average));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_reviews), average);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$__RatingDTODataCopyWith<_$__RatingDTOData> get copyWith =>
      __$$__RatingDTODataCopyWithImpl<_$__RatingDTOData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$__RatingDTODataToJson(
      this,
    );
  }
}

abstract class __RatingDTOData extends _RatingDTOData {
  const factory __RatingDTOData(
      {@JsonKey(name: 'value') final List<ReviewDTO> reviews,
      final ReviewDTO? average}) = _$__RatingDTOData;
  const __RatingDTOData._() : super._();

  factory __RatingDTOData.fromJson(Map<String, dynamic> json) =
      _$__RatingDTOData.fromJson;

  @override
  @JsonKey(name: 'value')
  List<ReviewDTO> get reviews;
  @override
  ReviewDTO? get average;
  @override
  @JsonKey(ignore: true)
  _$$__RatingDTODataCopyWith<_$__RatingDTOData> get copyWith =>
      throw _privateConstructorUsedError;
}
