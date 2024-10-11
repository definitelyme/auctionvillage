// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of sell_history.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SellHistory {
  NumField<double> get totalProducts => throw _privateConstructorUsedError;
  NumField<double> get totalSold => throw _privateConstructorUsedError;
  NumField<double> get revenue => throw _privateConstructorUsedError;
  KtList<Deal> get deals => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SellHistoryCopyWith<SellHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SellHistoryCopyWith<$Res> {
  factory $SellHistoryCopyWith(
          SellHistory value, $Res Function(SellHistory) then) =
      _$SellHistoryCopyWithImpl<$Res, SellHistory>;
  @useResult
  $Res call(
      {NumField<double> totalProducts,
      NumField<double> totalSold,
      NumField<double> revenue,
      KtList<Deal> deals});
}

/// @nodoc
class _$SellHistoryCopyWithImpl<$Res, $Val extends SellHistory>
    implements $SellHistoryCopyWith<$Res> {
  _$SellHistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalProducts = null,
    Object? totalSold = null,
    Object? revenue = null,
    Object? deals = null,
  }) {
    return _then(_value.copyWith(
      totalProducts: null == totalProducts
          ? _value.totalProducts
          : totalProducts // ignore: cast_nullable_to_non_nullable
              as NumField<double>,
      totalSold: null == totalSold
          ? _value.totalSold
          : totalSold // ignore: cast_nullable_to_non_nullable
              as NumField<double>,
      revenue: null == revenue
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as NumField<double>,
      deals: null == deals
          ? _value.deals
          : deals // ignore: cast_nullable_to_non_nullable
              as KtList<Deal>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SellHistoryCopyWith<$Res>
    implements $SellHistoryCopyWith<$Res> {
  factory _$$_SellHistoryCopyWith(
          _$_SellHistory value, $Res Function(_$_SellHistory) then) =
      __$$_SellHistoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {NumField<double> totalProducts,
      NumField<double> totalSold,
      NumField<double> revenue,
      KtList<Deal> deals});
}

/// @nodoc
class __$$_SellHistoryCopyWithImpl<$Res>
    extends _$SellHistoryCopyWithImpl<$Res, _$_SellHistory>
    implements _$$_SellHistoryCopyWith<$Res> {
  __$$_SellHistoryCopyWithImpl(
      _$_SellHistory _value, $Res Function(_$_SellHistory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalProducts = null,
    Object? totalSold = null,
    Object? revenue = null,
    Object? deals = null,
  }) {
    return _then(_$_SellHistory(
      totalProducts: null == totalProducts
          ? _value.totalProducts
          : totalProducts // ignore: cast_nullable_to_non_nullable
              as NumField<double>,
      totalSold: null == totalSold
          ? _value.totalSold
          : totalSold // ignore: cast_nullable_to_non_nullable
              as NumField<double>,
      revenue: null == revenue
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as NumField<double>,
      deals: null == deals
          ? _value.deals
          : deals // ignore: cast_nullable_to_non_nullable
              as KtList<Deal>,
    ));
  }
}

/// @nodoc

class _$_SellHistory extends _SellHistory {
  const _$_SellHistory(
      {required this.totalProducts,
      required this.totalSold,
      required this.revenue,
      this.deals = const KtList.empty()})
      : super._();

  @override
  final NumField<double> totalProducts;
  @override
  final NumField<double> totalSold;
  @override
  final NumField<double> revenue;
  @override
  @JsonKey()
  final KtList<Deal> deals;

  @override
  String toString() {
    return 'SellHistory(totalProducts: $totalProducts, totalSold: $totalSold, revenue: $revenue, deals: $deals)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SellHistory &&
            (identical(other.totalProducts, totalProducts) ||
                other.totalProducts == totalProducts) &&
            (identical(other.totalSold, totalSold) ||
                other.totalSold == totalSold) &&
            (identical(other.revenue, revenue) || other.revenue == revenue) &&
            (identical(other.deals, deals) || other.deals == deals));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, totalProducts, totalSold, revenue, deals);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SellHistoryCopyWith<_$_SellHistory> get copyWith =>
      __$$_SellHistoryCopyWithImpl<_$_SellHistory>(this, _$identity);
}

abstract class _SellHistory extends SellHistory {
  const factory _SellHistory(
      {required final NumField<double> totalProducts,
      required final NumField<double> totalSold,
      required final NumField<double> revenue,
      final KtList<Deal> deals}) = _$_SellHistory;
  const _SellHistory._() : super._();

  @override
  NumField<double> get totalProducts;
  @override
  NumField<double> get totalSold;
  @override
  NumField<double> get revenue;
  @override
  KtList<Deal> get deals;
  @override
  @JsonKey(ignore: true)
  _$$_SellHistoryCopyWith<_$_SellHistory> get copyWith =>
      throw _privateConstructorUsedError;
}
