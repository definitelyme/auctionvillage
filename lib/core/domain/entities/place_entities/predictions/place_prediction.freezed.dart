// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of place_prediction.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PlacePrediction {
  UniqueId<String?> get placeId => throw _privateConstructorUsedError;
  UniqueId<String?> get reference => throw _privateConstructorUsedError;
  BasicTextField get description => throw _privateConstructorUsedError;
  ImmutableStrings get types => throw _privateConstructorUsedError;
  KtList<MatchedSubstrings?> get matched => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlacePredictionCopyWith<PlacePrediction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlacePredictionCopyWith<$Res> {
  factory $PlacePredictionCopyWith(
          PlacePrediction value, $Res Function(PlacePrediction) then) =
      _$PlacePredictionCopyWithImpl<$Res, PlacePrediction>;
  @useResult
  $Res call(
      {UniqueId<String?> placeId,
      UniqueId<String?> reference,
      BasicTextField description,
      ImmutableStrings types,
      KtList<MatchedSubstrings?> matched});
}

/// @nodoc
class _$PlacePredictionCopyWithImpl<$Res, $Val extends PlacePrediction>
    implements $PlacePredictionCopyWith<$Res> {
  _$PlacePredictionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeId = null,
    Object? reference = null,
    Object? description = null,
    Object? types = null,
    Object? matched = null,
  }) {
    return _then(_value.copyWith(
      placeId: null == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      reference: null == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as ImmutableStrings,
      matched: null == matched
          ? _value.matched
          : matched // ignore: cast_nullable_to_non_nullable
              as KtList<MatchedSubstrings?>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PlacePredictionCopyWith<$Res>
    implements $PlacePredictionCopyWith<$Res> {
  factory _$$_PlacePredictionCopyWith(
          _$_PlacePrediction value, $Res Function(_$_PlacePrediction) then) =
      __$$_PlacePredictionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId<String?> placeId,
      UniqueId<String?> reference,
      BasicTextField description,
      ImmutableStrings types,
      KtList<MatchedSubstrings?> matched});
}

/// @nodoc
class __$$_PlacePredictionCopyWithImpl<$Res>
    extends _$PlacePredictionCopyWithImpl<$Res, _$_PlacePrediction>
    implements _$$_PlacePredictionCopyWith<$Res> {
  __$$_PlacePredictionCopyWithImpl(
      _$_PlacePrediction _value, $Res Function(_$_PlacePrediction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeId = null,
    Object? reference = null,
    Object? description = null,
    Object? types = null,
    Object? matched = null,
  }) {
    return _then(_$_PlacePrediction(
      placeId: null == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      reference: null == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as ImmutableStrings,
      matched: null == matched
          ? _value.matched
          : matched // ignore: cast_nullable_to_non_nullable
              as KtList<MatchedSubstrings?>,
    ));
  }
}

/// @nodoc

class _$_PlacePrediction extends _PlacePrediction {
  const _$_PlacePrediction(
      {required this.placeId,
      required this.reference,
      required this.description,
      required this.types,
      required this.matched})
      : super._();

  @override
  final UniqueId<String?> placeId;
  @override
  final UniqueId<String?> reference;
  @override
  final BasicTextField description;
  @override
  final ImmutableStrings types;
  @override
  final KtList<MatchedSubstrings?> matched;

  @override
  String toString() {
    return 'PlacePrediction(placeId: $placeId, reference: $reference, description: $description, types: $types, matched: $matched)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlacePrediction &&
            (identical(other.placeId, placeId) || other.placeId == placeId) &&
            (identical(other.reference, reference) ||
                other.reference == reference) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.types, types) || other.types == types) &&
            (identical(other.matched, matched) || other.matched == matched));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, placeId, reference, description, types, matched);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlacePredictionCopyWith<_$_PlacePrediction> get copyWith =>
      __$$_PlacePredictionCopyWithImpl<_$_PlacePrediction>(this, _$identity);
}

abstract class _PlacePrediction extends PlacePrediction {
  const factory _PlacePrediction(
      {required final UniqueId<String?> placeId,
      required final UniqueId<String?> reference,
      required final BasicTextField description,
      required final ImmutableStrings types,
      required final KtList<MatchedSubstrings?> matched}) = _$_PlacePrediction;
  const _PlacePrediction._() : super._();

  @override
  UniqueId<String?> get placeId;
  @override
  UniqueId<String?> get reference;
  @override
  BasicTextField get description;
  @override
  ImmutableStrings get types;
  @override
  KtList<MatchedSubstrings?> get matched;
  @override
  @JsonKey(ignore: true)
  _$$_PlacePredictionCopyWith<_$_PlacePrediction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MatchedSubstrings {
  NumField<int?> get length => throw _privateConstructorUsedError;
  NumField<int?> get offset => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MatchedSubstringsCopyWith<MatchedSubstrings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchedSubstringsCopyWith<$Res> {
  factory $MatchedSubstringsCopyWith(
          MatchedSubstrings value, $Res Function(MatchedSubstrings) then) =
      _$MatchedSubstringsCopyWithImpl<$Res, MatchedSubstrings>;
  @useResult
  $Res call({NumField<int?> length, NumField<int?> offset});
}

/// @nodoc
class _$MatchedSubstringsCopyWithImpl<$Res, $Val extends MatchedSubstrings>
    implements $MatchedSubstringsCopyWith<$Res> {
  _$MatchedSubstringsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? length = null,
    Object? offset = null,
  }) {
    return _then(_value.copyWith(
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as NumField<int?>,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as NumField<int?>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MatchedSubstringsCopyWith<$Res>
    implements $MatchedSubstringsCopyWith<$Res> {
  factory _$$_MatchedSubstringsCopyWith(_$_MatchedSubstrings value,
          $Res Function(_$_MatchedSubstrings) then) =
      __$$_MatchedSubstringsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NumField<int?> length, NumField<int?> offset});
}

/// @nodoc
class __$$_MatchedSubstringsCopyWithImpl<$Res>
    extends _$MatchedSubstringsCopyWithImpl<$Res, _$_MatchedSubstrings>
    implements _$$_MatchedSubstringsCopyWith<$Res> {
  __$$_MatchedSubstringsCopyWithImpl(
      _$_MatchedSubstrings _value, $Res Function(_$_MatchedSubstrings) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? length = null,
    Object? offset = null,
  }) {
    return _then(_$_MatchedSubstrings(
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as NumField<int?>,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as NumField<int?>,
    ));
  }
}

/// @nodoc

class _$_MatchedSubstrings extends _MatchedSubstrings {
  const _$_MatchedSubstrings({required this.length, required this.offset})
      : super._();

  @override
  final NumField<int?> length;
  @override
  final NumField<int?> offset;

  @override
  String toString() {
    return 'MatchedSubstrings(length: $length, offset: $offset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MatchedSubstrings &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.offset, offset) || other.offset == offset));
  }

  @override
  int get hashCode => Object.hash(runtimeType, length, offset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MatchedSubstringsCopyWith<_$_MatchedSubstrings> get copyWith =>
      __$$_MatchedSubstringsCopyWithImpl<_$_MatchedSubstrings>(
          this, _$identity);
}

abstract class _MatchedSubstrings extends MatchedSubstrings {
  const factory _MatchedSubstrings(
      {required final NumField<int?> length,
      required final NumField<int?> offset}) = _$_MatchedSubstrings;
  const _MatchedSubstrings._() : super._();

  @override
  NumField<int?> get length;
  @override
  NumField<int?> get offset;
  @override
  @JsonKey(ignore: true)
  _$$_MatchedSubstringsCopyWith<_$_MatchedSubstrings> get copyWith =>
      throw _privateConstructorUsedError;
}
