// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of shipping_information.entity.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ShippingInformation {
  BasicTextField get description => throw _privateConstructorUsedError;
  BasicTextField get deliveryPeriod => throw _privateConstructorUsedError;
  bool get isPickup => throw _privateConstructorUsedError;
  ImmutableStrings get regions => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShippingInformationCopyWith<ShippingInformation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShippingInformationCopyWith<$Res> {
  factory $ShippingInformationCopyWith(
          ShippingInformation value, $Res Function(ShippingInformation) then) =
      _$ShippingInformationCopyWithImpl<$Res, ShippingInformation>;
  @useResult
  $Res call(
      {BasicTextField description,
      BasicTextField deliveryPeriod,
      bool isPickup,
      ImmutableStrings regions});
}

/// @nodoc
class _$ShippingInformationCopyWithImpl<$Res, $Val extends ShippingInformation>
    implements $ShippingInformationCopyWith<$Res> {
  _$ShippingInformationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? deliveryPeriod = null,
    Object? isPickup = null,
    Object? regions = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      deliveryPeriod: null == deliveryPeriod
          ? _value.deliveryPeriod
          : deliveryPeriod // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      isPickup: null == isPickup
          ? _value.isPickup
          : isPickup // ignore: cast_nullable_to_non_nullable
              as bool,
      regions: null == regions
          ? _value.regions
          : regions // ignore: cast_nullable_to_non_nullable
              as ImmutableStrings,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShippingInformationCopyWith<$Res>
    implements $ShippingInformationCopyWith<$Res> {
  factory _$$_ShippingInformationCopyWith(_$_ShippingInformation value,
          $Res Function(_$_ShippingInformation) then) =
      __$$_ShippingInformationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BasicTextField description,
      BasicTextField deliveryPeriod,
      bool isPickup,
      ImmutableStrings regions});
}

/// @nodoc
class __$$_ShippingInformationCopyWithImpl<$Res>
    extends _$ShippingInformationCopyWithImpl<$Res, _$_ShippingInformation>
    implements _$$_ShippingInformationCopyWith<$Res> {
  __$$_ShippingInformationCopyWithImpl(_$_ShippingInformation _value,
      $Res Function(_$_ShippingInformation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? deliveryPeriod = null,
    Object? isPickup = null,
    Object? regions = null,
  }) {
    return _then(_$_ShippingInformation(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      deliveryPeriod: null == deliveryPeriod
          ? _value.deliveryPeriod
          : deliveryPeriod // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      isPickup: null == isPickup
          ? _value.isPickup
          : isPickup // ignore: cast_nullable_to_non_nullable
              as bool,
      regions: null == regions
          ? _value.regions
          : regions // ignore: cast_nullable_to_non_nullable
              as ImmutableStrings,
    ));
  }
}

/// @nodoc

class _$_ShippingInformation extends _ShippingInformation {
  const _$_ShippingInformation(
      {required this.description,
      required this.deliveryPeriod,
      this.isPickup = false,
      required this.regions})
      : super._();

  @override
  final BasicTextField description;
  @override
  final BasicTextField deliveryPeriod;
  @override
  @JsonKey()
  final bool isPickup;
  @override
  final ImmutableStrings regions;

  @override
  String toString() {
    return 'ShippingInformation(description: $description, deliveryPeriod: $deliveryPeriod, isPickup: $isPickup, regions: $regions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShippingInformation &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.deliveryPeriod, deliveryPeriod) ||
                other.deliveryPeriod == deliveryPeriod) &&
            (identical(other.isPickup, isPickup) ||
                other.isPickup == isPickup) &&
            (identical(other.regions, regions) || other.regions == regions));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, description, deliveryPeriod, isPickup, regions);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShippingInformationCopyWith<_$_ShippingInformation> get copyWith =>
      __$$_ShippingInformationCopyWithImpl<_$_ShippingInformation>(
          this, _$identity);
}

abstract class _ShippingInformation extends ShippingInformation {
  const factory _ShippingInformation(
      {required final BasicTextField description,
      required final BasicTextField deliveryPeriod,
      final bool isPickup,
      required final ImmutableStrings regions}) = _$_ShippingInformation;
  const _ShippingInformation._() : super._();

  @override
  BasicTextField get description;
  @override
  BasicTextField get deliveryPeriod;
  @override
  bool get isPickup;
  @override
  ImmutableStrings get regions;
  @override
  @JsonKey(ignore: true)
  _$$_ShippingInformationCopyWith<_$_ShippingInformation> get copyWith =>
      throw _privateConstructorUsedError;
}
