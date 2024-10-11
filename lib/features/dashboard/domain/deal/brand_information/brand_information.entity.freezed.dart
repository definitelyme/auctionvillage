// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of brand_information.entity.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BrandInformation {
  BasicTextField get brand => throw _privateConstructorUsedError;
  BasicTextField get brandModel => throw _privateConstructorUsedError;
  ItemCondition get condition => throw _privateConstructorUsedError;
  bool get hasRepairHistory => throw _privateConstructorUsedError;
  BasicTextField get warranty => throw _privateConstructorUsedError;
  BasicTextField get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BrandInformationCopyWith<BrandInformation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandInformationCopyWith<$Res> {
  factory $BrandInformationCopyWith(
          BrandInformation value, $Res Function(BrandInformation) then) =
      _$BrandInformationCopyWithImpl<$Res, BrandInformation>;
  @useResult
  $Res call(
      {BasicTextField brand,
      BasicTextField brandModel,
      ItemCondition condition,
      bool hasRepairHistory,
      BasicTextField warranty,
      BasicTextField description});
}

/// @nodoc
class _$BrandInformationCopyWithImpl<$Res, $Val extends BrandInformation>
    implements $BrandInformationCopyWith<$Res> {
  _$BrandInformationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brand = null,
    Object? brandModel = null,
    Object? condition = null,
    Object? hasRepairHistory = null,
    Object? warranty = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      brandModel: null == brandModel
          ? _value.brandModel
          : brandModel // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as ItemCondition,
      hasRepairHistory: null == hasRepairHistory
          ? _value.hasRepairHistory
          : hasRepairHistory // ignore: cast_nullable_to_non_nullable
              as bool,
      warranty: null == warranty
          ? _value.warranty
          : warranty // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BrandInformationCopyWith<$Res>
    implements $BrandInformationCopyWith<$Res> {
  factory _$$_BrandInformationCopyWith(
          _$_BrandInformation value, $Res Function(_$_BrandInformation) then) =
      __$$_BrandInformationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BasicTextField brand,
      BasicTextField brandModel,
      ItemCondition condition,
      bool hasRepairHistory,
      BasicTextField warranty,
      BasicTextField description});
}

/// @nodoc
class __$$_BrandInformationCopyWithImpl<$Res>
    extends _$BrandInformationCopyWithImpl<$Res, _$_BrandInformation>
    implements _$$_BrandInformationCopyWith<$Res> {
  __$$_BrandInformationCopyWithImpl(
      _$_BrandInformation _value, $Res Function(_$_BrandInformation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brand = null,
    Object? brandModel = null,
    Object? condition = null,
    Object? hasRepairHistory = null,
    Object? warranty = null,
    Object? description = null,
  }) {
    return _then(_$_BrandInformation(
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      brandModel: null == brandModel
          ? _value.brandModel
          : brandModel // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as ItemCondition,
      hasRepairHistory: null == hasRepairHistory
          ? _value.hasRepairHistory
          : hasRepairHistory // ignore: cast_nullable_to_non_nullable
              as bool,
      warranty: null == warranty
          ? _value.warranty
          : warranty // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
    ));
  }
}

/// @nodoc

class _$_BrandInformation extends _BrandInformation {
  const _$_BrandInformation(
      {required this.brand,
      required this.brandModel,
      this.condition = ItemCondition.brand_new,
      this.hasRepairHistory = false,
      required this.warranty,
      required this.description})
      : super._();

  @override
  final BasicTextField brand;
  @override
  final BasicTextField brandModel;
  @override
  @JsonKey()
  final ItemCondition condition;
  @override
  @JsonKey()
  final bool hasRepairHistory;
  @override
  final BasicTextField warranty;
  @override
  final BasicTextField description;

  @override
  String toString() {
    return 'BrandInformation(brand: $brand, brandModel: $brandModel, condition: $condition, hasRepairHistory: $hasRepairHistory, warranty: $warranty, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BrandInformation &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.brandModel, brandModel) ||
                other.brandModel == brandModel) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.hasRepairHistory, hasRepairHistory) ||
                other.hasRepairHistory == hasRepairHistory) &&
            (identical(other.warranty, warranty) ||
                other.warranty == warranty) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, brand, brandModel, condition,
      hasRepairHistory, warranty, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BrandInformationCopyWith<_$_BrandInformation> get copyWith =>
      __$$_BrandInformationCopyWithImpl<_$_BrandInformation>(this, _$identity);
}

abstract class _BrandInformation extends BrandInformation {
  const factory _BrandInformation(
      {required final BasicTextField brand,
      required final BasicTextField brandModel,
      final ItemCondition condition,
      final bool hasRepairHistory,
      required final BasicTextField warranty,
      required final BasicTextField description}) = _$_BrandInformation;
  const _BrandInformation._() : super._();

  @override
  BasicTextField get brand;
  @override
  BasicTextField get brandModel;
  @override
  ItemCondition get condition;
  @override
  bool get hasRepairHistory;
  @override
  BasicTextField get warranty;
  @override
  BasicTextField get description;
  @override
  @JsonKey(ignore: true)
  _$$_BrandInformationCopyWith<_$_BrandInformation> get copyWith =>
      throw _privateConstructorUsedError;
}
