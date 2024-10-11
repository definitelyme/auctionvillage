// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of review_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReviewDTO _$ReviewDTOFromJson(Map<String, dynamic> json) {
  return _ReviewDTO.fromJson(json);
}

/// @nodoc
mixin _$ReviewDTO {
  String? get id => throw _privateConstructorUsedError;
  String? get review => throw _privateConstructorUsedError;
  @DoubleSerializer()
  double? get delivery => throw _privateConstructorUsedError;
  @DoubleSerializer()
  double? get quality => throw _privateConstructorUsedError;
  @DoubleSerializer()
  double? get responsiveness => throw _privateConstructorUsedError;
  @DoubleSerializer()
  double? get reliability => throw _privateConstructorUsedError;
  @DoubleSerializer()
  double? get rating => throw _privateConstructorUsedError;
  UserDTO? get user => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewDTOCopyWith<ReviewDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewDTOCopyWith<$Res> {
  factory $ReviewDTOCopyWith(ReviewDTO value, $Res Function(ReviewDTO) then) =
      _$ReviewDTOCopyWithImpl<$Res, ReviewDTO>;
  @useResult
  $Res call(
      {String? id,
      String? review,
      @DoubleSerializer() double? delivery,
      @DoubleSerializer() double? quality,
      @DoubleSerializer() double? responsiveness,
      @DoubleSerializer() double? reliability,
      @DoubleSerializer() double? rating,
      UserDTO? user,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt});

  $UserDTOCopyWith<$Res>? get user;
}

/// @nodoc
class _$ReviewDTOCopyWithImpl<$Res, $Val extends ReviewDTO>
    implements $ReviewDTOCopyWith<$Res> {
  _$ReviewDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? review = freezed,
    Object? delivery = freezed,
    Object? quality = freezed,
    Object? responsiveness = freezed,
    Object? reliability = freezed,
    Object? rating = freezed,
    Object? user = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      review: freezed == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String?,
      delivery: freezed == delivery
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as double?,
      quality: freezed == quality
          ? _value.quality
          : quality // ignore: cast_nullable_to_non_nullable
              as double?,
      responsiveness: freezed == responsiveness
          ? _value.responsiveness
          : responsiveness // ignore: cast_nullable_to_non_nullable
              as double?,
      reliability: freezed == reliability
          ? _value.reliability
          : reliability // ignore: cast_nullable_to_non_nullable
              as double?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDTO?,
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
  $UserDTOCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserDTOCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ReviewDTOCopyWith<$Res> implements $ReviewDTOCopyWith<$Res> {
  factory _$$_ReviewDTOCopyWith(
          _$_ReviewDTO value, $Res Function(_$_ReviewDTO) then) =
      __$$_ReviewDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? review,
      @DoubleSerializer() double? delivery,
      @DoubleSerializer() double? quality,
      @DoubleSerializer() double? responsiveness,
      @DoubleSerializer() double? reliability,
      @DoubleSerializer() double? rating,
      UserDTO? user,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt});

  @override
  $UserDTOCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_ReviewDTOCopyWithImpl<$Res>
    extends _$ReviewDTOCopyWithImpl<$Res, _$_ReviewDTO>
    implements _$$_ReviewDTOCopyWith<$Res> {
  __$$_ReviewDTOCopyWithImpl(
      _$_ReviewDTO _value, $Res Function(_$_ReviewDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? review = freezed,
    Object? delivery = freezed,
    Object? quality = freezed,
    Object? responsiveness = freezed,
    Object? reliability = freezed,
    Object? rating = freezed,
    Object? user = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_ReviewDTO(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      review: freezed == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String?,
      delivery: freezed == delivery
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as double?,
      quality: freezed == quality
          ? _value.quality
          : quality // ignore: cast_nullable_to_non_nullable
              as double?,
      responsiveness: freezed == responsiveness
          ? _value.responsiveness
          : responsiveness // ignore: cast_nullable_to_non_nullable
              as double?,
      reliability: freezed == reliability
          ? _value.reliability
          : reliability // ignore: cast_nullable_to_non_nullable
              as double?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDTO?,
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
class _$_ReviewDTO extends _ReviewDTO {
  const _$_ReviewDTO(
      {this.id,
      this.review,
      @DoubleSerializer() this.delivery,
      @DoubleSerializer() this.quality,
      @DoubleSerializer() this.responsiveness,
      @DoubleSerializer() this.reliability,
      @DoubleSerializer() this.rating,
      this.user,
      @TimestampConverter() this.createdAt,
      @TimestampConverter() this.updatedAt})
      : super._();

  factory _$_ReviewDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ReviewDTOFromJson(json);

  @override
  final String? id;
  @override
  final String? review;
  @override
  @DoubleSerializer()
  final double? delivery;
  @override
  @DoubleSerializer()
  final double? quality;
  @override
  @DoubleSerializer()
  final double? responsiveness;
  @override
  @DoubleSerializer()
  final double? reliability;
  @override
  @DoubleSerializer()
  final double? rating;
  @override
  final UserDTO? user;
  @override
  @TimestampConverter()
  final DateTime? createdAt;
  @override
  @TimestampConverter()
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'ReviewDTO(id: $id, review: $review, delivery: $delivery, quality: $quality, responsiveness: $responsiveness, reliability: $reliability, rating: $rating, user: $user, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReviewDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.review, review) || other.review == review) &&
            (identical(other.delivery, delivery) ||
                other.delivery == delivery) &&
            (identical(other.quality, quality) || other.quality == quality) &&
            (identical(other.responsiveness, responsiveness) ||
                other.responsiveness == responsiveness) &&
            (identical(other.reliability, reliability) ||
                other.reliability == reliability) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, review, delivery, quality,
      responsiveness, reliability, rating, user, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReviewDTOCopyWith<_$_ReviewDTO> get copyWith =>
      __$$_ReviewDTOCopyWithImpl<_$_ReviewDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReviewDTOToJson(
      this,
    );
  }
}

abstract class _ReviewDTO extends ReviewDTO {
  const factory _ReviewDTO(
      {final String? id,
      final String? review,
      @DoubleSerializer() final double? delivery,
      @DoubleSerializer() final double? quality,
      @DoubleSerializer() final double? responsiveness,
      @DoubleSerializer() final double? reliability,
      @DoubleSerializer() final double? rating,
      final UserDTO? user,
      @TimestampConverter() final DateTime? createdAt,
      @TimestampConverter() final DateTime? updatedAt}) = _$_ReviewDTO;
  const _ReviewDTO._() : super._();

  factory _ReviewDTO.fromJson(Map<String, dynamic> json) =
      _$_ReviewDTO.fromJson;

  @override
  String? get id;
  @override
  String? get review;
  @override
  @DoubleSerializer()
  double? get delivery;
  @override
  @DoubleSerializer()
  double? get quality;
  @override
  @DoubleSerializer()
  double? get responsiveness;
  @override
  @DoubleSerializer()
  double? get reliability;
  @override
  @DoubleSerializer()
  double? get rating;
  @override
  UserDTO? get user;
  @override
  @TimestampConverter()
  DateTime? get createdAt;
  @override
  @TimestampConverter()
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_ReviewDTOCopyWith<_$_ReviewDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
