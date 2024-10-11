// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of rating.entity.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Rating {
  NumField<double> get delivery => throw _privateConstructorUsedError;
  NumField<double> get responsiveness => throw _privateConstructorUsedError;
  NumField<double> get quality => throw _privateConstructorUsedError;
  NumField<double> get reliability => throw _privateConstructorUsedError;
  NumField<double> get rating => throw _privateConstructorUsedError;
  KtList<Review> get reviews => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RatingCopyWith<Rating> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingCopyWith<$Res> {
  factory $RatingCopyWith(Rating value, $Res Function(Rating) then) =
      _$RatingCopyWithImpl<$Res, Rating>;
  @useResult
  $Res call(
      {NumField<double> delivery,
      NumField<double> responsiveness,
      NumField<double> quality,
      NumField<double> reliability,
      NumField<double> rating,
      KtList<Review> reviews});
}

/// @nodoc
class _$RatingCopyWithImpl<$Res, $Val extends Rating>
    implements $RatingCopyWith<$Res> {
  _$RatingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? delivery = null,
    Object? responsiveness = null,
    Object? quality = null,
    Object? reliability = null,
    Object? rating = null,
    Object? reviews = null,
  }) {
    return _then(_value.copyWith(
      delivery: null == delivery
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as NumField<double>,
      responsiveness: null == responsiveness
          ? _value.responsiveness
          : responsiveness // ignore: cast_nullable_to_non_nullable
              as NumField<double>,
      quality: null == quality
          ? _value.quality
          : quality // ignore: cast_nullable_to_non_nullable
              as NumField<double>,
      reliability: null == reliability
          ? _value.reliability
          : reliability // ignore: cast_nullable_to_non_nullable
              as NumField<double>,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as NumField<double>,
      reviews: null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as KtList<Review>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RatingCopyWith<$Res> implements $RatingCopyWith<$Res> {
  factory _$$_RatingCopyWith(_$_Rating value, $Res Function(_$_Rating) then) =
      __$$_RatingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {NumField<double> delivery,
      NumField<double> responsiveness,
      NumField<double> quality,
      NumField<double> reliability,
      NumField<double> rating,
      KtList<Review> reviews});
}

/// @nodoc
class __$$_RatingCopyWithImpl<$Res>
    extends _$RatingCopyWithImpl<$Res, _$_Rating>
    implements _$$_RatingCopyWith<$Res> {
  __$$_RatingCopyWithImpl(_$_Rating _value, $Res Function(_$_Rating) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? delivery = null,
    Object? responsiveness = null,
    Object? quality = null,
    Object? reliability = null,
    Object? rating = null,
    Object? reviews = null,
  }) {
    return _then(_$_Rating(
      delivery: null == delivery
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as NumField<double>,
      responsiveness: null == responsiveness
          ? _value.responsiveness
          : responsiveness // ignore: cast_nullable_to_non_nullable
              as NumField<double>,
      quality: null == quality
          ? _value.quality
          : quality // ignore: cast_nullable_to_non_nullable
              as NumField<double>,
      reliability: null == reliability
          ? _value.reliability
          : reliability // ignore: cast_nullable_to_non_nullable
              as NumField<double>,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as NumField<double>,
      reviews: null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as KtList<Review>,
    ));
  }
}

/// @nodoc

class _$_Rating extends _Rating {
  const _$_Rating(
      {required this.delivery,
      required this.responsiveness,
      required this.quality,
      required this.reliability,
      required this.rating,
      this.reviews = const KtList.empty()})
      : super._();

  @override
  final NumField<double> delivery;
  @override
  final NumField<double> responsiveness;
  @override
  final NumField<double> quality;
  @override
  final NumField<double> reliability;
  @override
  final NumField<double> rating;
  @override
  @JsonKey()
  final KtList<Review> reviews;

  @override
  String toString() {
    return 'Rating(delivery: $delivery, responsiveness: $responsiveness, quality: $quality, reliability: $reliability, rating: $rating, reviews: $reviews)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Rating &&
            (identical(other.delivery, delivery) ||
                other.delivery == delivery) &&
            (identical(other.responsiveness, responsiveness) ||
                other.responsiveness == responsiveness) &&
            (identical(other.quality, quality) || other.quality == quality) &&
            (identical(other.reliability, reliability) ||
                other.reliability == reliability) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.reviews, reviews) || other.reviews == reviews));
  }

  @override
  int get hashCode => Object.hash(runtimeType, delivery, responsiveness,
      quality, reliability, rating, reviews);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RatingCopyWith<_$_Rating> get copyWith =>
      __$$_RatingCopyWithImpl<_$_Rating>(this, _$identity);
}

abstract class _Rating extends Rating {
  const factory _Rating(
      {required final NumField<double> delivery,
      required final NumField<double> responsiveness,
      required final NumField<double> quality,
      required final NumField<double> reliability,
      required final NumField<double> rating,
      final KtList<Review> reviews}) = _$_Rating;
  const _Rating._() : super._();

  @override
  NumField<double> get delivery;
  @override
  NumField<double> get responsiveness;
  @override
  NumField<double> get quality;
  @override
  NumField<double> get reliability;
  @override
  NumField<double> get rating;
  @override
  KtList<Review> get reviews;
  @override
  @JsonKey(ignore: true)
  _$$_RatingCopyWith<_$_Rating> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Review {
  UniqueId<String?> get id => throw _privateConstructorUsedError;
  NumField<double> get delivery => throw _privateConstructorUsedError;
  NumField<double> get quality => throw _privateConstructorUsedError;
  NumField<double> get responsiveness => throw _privateConstructorUsedError;
  NumField<double> get reliability => throw _privateConstructorUsedError;
  NumField<double> get rating => throw _privateConstructorUsedError;
  BasicTextField get review => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReviewCopyWith<Review> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewCopyWith<$Res> {
  factory $ReviewCopyWith(Review value, $Res Function(Review) then) =
      _$ReviewCopyWithImpl<$Res, Review>;
  @useResult
  $Res call(
      {UniqueId<String?> id,
      NumField<double> delivery,
      NumField<double> quality,
      NumField<double> responsiveness,
      NumField<double> reliability,
      NumField<double> rating,
      BasicTextField review,
      User? user,
      DateTime? createdAt,
      DateTime? updatedAt});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$ReviewCopyWithImpl<$Res, $Val extends Review>
    implements $ReviewCopyWith<$Res> {
  _$ReviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? delivery = null,
    Object? quality = null,
    Object? responsiveness = null,
    Object? reliability = null,
    Object? rating = null,
    Object? review = null,
    Object? user = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      delivery: null == delivery
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as NumField<double>,
      quality: null == quality
          ? _value.quality
          : quality // ignore: cast_nullable_to_non_nullable
              as NumField<double>,
      responsiveness: null == responsiveness
          ? _value.responsiveness
          : responsiveness // ignore: cast_nullable_to_non_nullable
              as NumField<double>,
      reliability: null == reliability
          ? _value.reliability
          : reliability // ignore: cast_nullable_to_non_nullable
              as NumField<double>,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as NumField<double>,
      review: null == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
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
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ReviewCopyWith<$Res> implements $ReviewCopyWith<$Res> {
  factory _$$_ReviewCopyWith(_$_Review value, $Res Function(_$_Review) then) =
      __$$_ReviewCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId<String?> id,
      NumField<double> delivery,
      NumField<double> quality,
      NumField<double> responsiveness,
      NumField<double> reliability,
      NumField<double> rating,
      BasicTextField review,
      User? user,
      DateTime? createdAt,
      DateTime? updatedAt});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_ReviewCopyWithImpl<$Res>
    extends _$ReviewCopyWithImpl<$Res, _$_Review>
    implements _$$_ReviewCopyWith<$Res> {
  __$$_ReviewCopyWithImpl(_$_Review _value, $Res Function(_$_Review) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? delivery = null,
    Object? quality = null,
    Object? responsiveness = null,
    Object? reliability = null,
    Object? rating = null,
    Object? review = null,
    Object? user = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_Review(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      delivery: null == delivery
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as NumField<double>,
      quality: null == quality
          ? _value.quality
          : quality // ignore: cast_nullable_to_non_nullable
              as NumField<double>,
      responsiveness: null == responsiveness
          ? _value.responsiveness
          : responsiveness // ignore: cast_nullable_to_non_nullable
              as NumField<double>,
      reliability: null == reliability
          ? _value.reliability
          : reliability // ignore: cast_nullable_to_non_nullable
              as NumField<double>,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as NumField<double>,
      review: null == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
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

class _$_Review extends _Review {
  const _$_Review(
      {required this.id,
      required this.delivery,
      required this.quality,
      required this.responsiveness,
      required this.reliability,
      required this.rating,
      required this.review,
      this.user,
      this.createdAt,
      this.updatedAt})
      : super._();

  @override
  final UniqueId<String?> id;
  @override
  final NumField<double> delivery;
  @override
  final NumField<double> quality;
  @override
  final NumField<double> responsiveness;
  @override
  final NumField<double> reliability;
  @override
  final NumField<double> rating;
  @override
  final BasicTextField review;
  @override
  final User? user;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Review(id: $id, delivery: $delivery, quality: $quality, responsiveness: $responsiveness, reliability: $reliability, rating: $rating, review: $review, user: $user, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Review &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.delivery, delivery) ||
                other.delivery == delivery) &&
            (identical(other.quality, quality) || other.quality == quality) &&
            (identical(other.responsiveness, responsiveness) ||
                other.responsiveness == responsiveness) &&
            (identical(other.reliability, reliability) ||
                other.reliability == reliability) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.review, review) || other.review == review) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, delivery, quality,
      responsiveness, reliability, rating, review, user, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReviewCopyWith<_$_Review> get copyWith =>
      __$$_ReviewCopyWithImpl<_$_Review>(this, _$identity);
}

abstract class _Review extends Review {
  const factory _Review(
      {required final UniqueId<String?> id,
      required final NumField<double> delivery,
      required final NumField<double> quality,
      required final NumField<double> responsiveness,
      required final NumField<double> reliability,
      required final NumField<double> rating,
      required final BasicTextField review,
      final User? user,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$_Review;
  const _Review._() : super._();

  @override
  UniqueId<String?> get id;
  @override
  NumField<double> get delivery;
  @override
  NumField<double> get quality;
  @override
  NumField<double> get responsiveness;
  @override
  NumField<double> get reliability;
  @override
  NumField<double> get rating;
  @override
  BasicTextField get review;
  @override
  User? get user;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_ReviewCopyWith<_$_Review> get copyWith =>
      throw _privateConstructorUsedError;
}
