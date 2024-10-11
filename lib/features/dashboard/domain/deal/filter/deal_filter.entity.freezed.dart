// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of deal_filter.entity.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DealFilter {
  BidStatus? get bidStatus => throw _privateConstructorUsedError;
  DealStatus get dealStatus => throw _privateConstructorUsedError;
  KtPair<NumField<double?>, NumField<double?>>? get amountRange =>
      throw _privateConstructorUsedError;
  BiddingType? get bidType => throw _privateConstructorUsedError;
  DealCategory? get category => throw _privateConstructorUsedError;
  DealPlan? get plan => throw _privateConstructorUsedError;
  DealType? get dealType => throw _privateConstructorUsedError;
  SortDealBy? get sortBy => throw _privateConstructorUsedError;
  bool? get isPrivate => throw _privateConstructorUsedError;
  bool? get sponsored => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DealFilterCopyWith<DealFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DealFilterCopyWith<$Res> {
  factory $DealFilterCopyWith(
          DealFilter value, $Res Function(DealFilter) then) =
      _$DealFilterCopyWithImpl<$Res, DealFilter>;
  @useResult
  $Res call(
      {BidStatus? bidStatus,
      DealStatus dealStatus,
      KtPair<NumField<double?>, NumField<double?>>? amountRange,
      BiddingType? bidType,
      DealCategory? category,
      DealPlan? plan,
      DealType? dealType,
      SortDealBy? sortBy,
      bool? isPrivate,
      bool? sponsored,
      double? rating});

  $DealCategoryCopyWith<$Res>? get category;
  $DealPlanCopyWith<$Res>? get plan;
}

/// @nodoc
class _$DealFilterCopyWithImpl<$Res, $Val extends DealFilter>
    implements $DealFilterCopyWith<$Res> {
  _$DealFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bidStatus = freezed,
    Object? dealStatus = null,
    Object? amountRange = freezed,
    Object? bidType = freezed,
    Object? category = freezed,
    Object? plan = freezed,
    Object? dealType = freezed,
    Object? sortBy = freezed,
    Object? isPrivate = freezed,
    Object? sponsored = freezed,
    Object? rating = freezed,
  }) {
    return _then(_value.copyWith(
      bidStatus: freezed == bidStatus
          ? _value.bidStatus
          : bidStatus // ignore: cast_nullable_to_non_nullable
              as BidStatus?,
      dealStatus: null == dealStatus
          ? _value.dealStatus
          : dealStatus // ignore: cast_nullable_to_non_nullable
              as DealStatus,
      amountRange: freezed == amountRange
          ? _value.amountRange
          : amountRange // ignore: cast_nullable_to_non_nullable
              as KtPair<NumField<double?>, NumField<double?>>?,
      bidType: freezed == bidType
          ? _value.bidType
          : bidType // ignore: cast_nullable_to_non_nullable
              as BiddingType?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as DealCategory?,
      plan: freezed == plan
          ? _value.plan
          : plan // ignore: cast_nullable_to_non_nullable
              as DealPlan?,
      dealType: freezed == dealType
          ? _value.dealType
          : dealType // ignore: cast_nullable_to_non_nullable
              as DealType?,
      sortBy: freezed == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as SortDealBy?,
      isPrivate: freezed == isPrivate
          ? _value.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool?,
      sponsored: freezed == sponsored
          ? _value.sponsored
          : sponsored // ignore: cast_nullable_to_non_nullable
              as bool?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DealCategoryCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $DealCategoryCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DealPlanCopyWith<$Res>? get plan {
    if (_value.plan == null) {
      return null;
    }

    return $DealPlanCopyWith<$Res>(_value.plan!, (value) {
      return _then(_value.copyWith(plan: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DealFilterCopyWith<$Res>
    implements $DealFilterCopyWith<$Res> {
  factory _$$_DealFilterCopyWith(
          _$_DealFilter value, $Res Function(_$_DealFilter) then) =
      __$$_DealFilterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BidStatus? bidStatus,
      DealStatus dealStatus,
      KtPair<NumField<double?>, NumField<double?>>? amountRange,
      BiddingType? bidType,
      DealCategory? category,
      DealPlan? plan,
      DealType? dealType,
      SortDealBy? sortBy,
      bool? isPrivate,
      bool? sponsored,
      double? rating});

  @override
  $DealCategoryCopyWith<$Res>? get category;
  @override
  $DealPlanCopyWith<$Res>? get plan;
}

/// @nodoc
class __$$_DealFilterCopyWithImpl<$Res>
    extends _$DealFilterCopyWithImpl<$Res, _$_DealFilter>
    implements _$$_DealFilterCopyWith<$Res> {
  __$$_DealFilterCopyWithImpl(
      _$_DealFilter _value, $Res Function(_$_DealFilter) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bidStatus = freezed,
    Object? dealStatus = null,
    Object? amountRange = freezed,
    Object? bidType = freezed,
    Object? category = freezed,
    Object? plan = freezed,
    Object? dealType = freezed,
    Object? sortBy = freezed,
    Object? isPrivate = freezed,
    Object? sponsored = freezed,
    Object? rating = freezed,
  }) {
    return _then(_$_DealFilter(
      bidStatus: freezed == bidStatus
          ? _value.bidStatus
          : bidStatus // ignore: cast_nullable_to_non_nullable
              as BidStatus?,
      dealStatus: null == dealStatus
          ? _value.dealStatus
          : dealStatus // ignore: cast_nullable_to_non_nullable
              as DealStatus,
      amountRange: freezed == amountRange
          ? _value.amountRange
          : amountRange // ignore: cast_nullable_to_non_nullable
              as KtPair<NumField<double?>, NumField<double?>>?,
      bidType: freezed == bidType
          ? _value.bidType
          : bidType // ignore: cast_nullable_to_non_nullable
              as BiddingType?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as DealCategory?,
      plan: freezed == plan
          ? _value.plan
          : plan // ignore: cast_nullable_to_non_nullable
              as DealPlan?,
      dealType: freezed == dealType
          ? _value.dealType
          : dealType // ignore: cast_nullable_to_non_nullable
              as DealType?,
      sortBy: freezed == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as SortDealBy?,
      isPrivate: freezed == isPrivate
          ? _value.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool?,
      sponsored: freezed == sponsored
          ? _value.sponsored
          : sponsored // ignore: cast_nullable_to_non_nullable
              as bool?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$_DealFilter extends _DealFilter with DiagnosticableTreeMixin {
  const _$_DealFilter(
      {this.bidStatus,
      this.dealStatus = DealStatus.approved,
      this.amountRange,
      this.bidType,
      this.category,
      this.plan,
      this.dealType,
      this.sortBy,
      this.isPrivate,
      this.sponsored,
      this.rating})
      : super._();

  @override
  final BidStatus? bidStatus;
  @override
  @JsonKey()
  final DealStatus dealStatus;
  @override
  final KtPair<NumField<double?>, NumField<double?>>? amountRange;
  @override
  final BiddingType? bidType;
  @override
  final DealCategory? category;
  @override
  final DealPlan? plan;
  @override
  final DealType? dealType;
  @override
  final SortDealBy? sortBy;
  @override
  final bool? isPrivate;
  @override
  final bool? sponsored;
  @override
  final double? rating;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DealFilter(bidStatus: $bidStatus, dealStatus: $dealStatus, amountRange: $amountRange, bidType: $bidType, category: $category, plan: $plan, dealType: $dealType, sortBy: $sortBy, isPrivate: $isPrivate, sponsored: $sponsored, rating: $rating)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DealFilter'))
      ..add(DiagnosticsProperty('bidStatus', bidStatus))
      ..add(DiagnosticsProperty('dealStatus', dealStatus))
      ..add(DiagnosticsProperty('amountRange', amountRange))
      ..add(DiagnosticsProperty('bidType', bidType))
      ..add(DiagnosticsProperty('category', category))
      ..add(DiagnosticsProperty('plan', plan))
      ..add(DiagnosticsProperty('dealType', dealType))
      ..add(DiagnosticsProperty('sortBy', sortBy))
      ..add(DiagnosticsProperty('isPrivate', isPrivate))
      ..add(DiagnosticsProperty('sponsored', sponsored))
      ..add(DiagnosticsProperty('rating', rating));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DealFilter &&
            (identical(other.bidStatus, bidStatus) ||
                other.bidStatus == bidStatus) &&
            (identical(other.dealStatus, dealStatus) ||
                other.dealStatus == dealStatus) &&
            (identical(other.amountRange, amountRange) ||
                other.amountRange == amountRange) &&
            (identical(other.bidType, bidType) || other.bidType == bidType) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.plan, plan) || other.plan == plan) &&
            (identical(other.dealType, dealType) ||
                other.dealType == dealType) &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy) &&
            (identical(other.isPrivate, isPrivate) ||
                other.isPrivate == isPrivate) &&
            (identical(other.sponsored, sponsored) ||
                other.sponsored == sponsored) &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      bidStatus,
      dealStatus,
      amountRange,
      bidType,
      category,
      plan,
      dealType,
      sortBy,
      isPrivate,
      sponsored,
      rating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DealFilterCopyWith<_$_DealFilter> get copyWith =>
      __$$_DealFilterCopyWithImpl<_$_DealFilter>(this, _$identity);
}

abstract class _DealFilter extends DealFilter {
  const factory _DealFilter(
      {final BidStatus? bidStatus,
      final DealStatus dealStatus,
      final KtPair<NumField<double?>, NumField<double?>>? amountRange,
      final BiddingType? bidType,
      final DealCategory? category,
      final DealPlan? plan,
      final DealType? dealType,
      final SortDealBy? sortBy,
      final bool? isPrivate,
      final bool? sponsored,
      final double? rating}) = _$_DealFilter;
  const _DealFilter._() : super._();

  @override
  BidStatus? get bidStatus;
  @override
  DealStatus get dealStatus;
  @override
  KtPair<NumField<double?>, NumField<double?>>? get amountRange;
  @override
  BiddingType? get bidType;
  @override
  DealCategory? get category;
  @override
  DealPlan? get plan;
  @override
  DealType? get dealType;
  @override
  SortDealBy? get sortBy;
  @override
  bool? get isPrivate;
  @override
  bool? get sponsored;
  @override
  double? get rating;
  @override
  @JsonKey(ignore: true)
  _$$_DealFilterCopyWith<_$_DealFilter> get copyWith =>
      throw _privateConstructorUsedError;
}
