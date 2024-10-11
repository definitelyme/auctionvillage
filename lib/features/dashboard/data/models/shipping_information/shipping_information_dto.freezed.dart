// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of shipping_information_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShippingInformationDTO _$ShippingInformationDTOFromJson(
    Map<String, dynamic> json) {
  return _ShippingInformationDTO.fromJson(json);
}

/// @nodoc
mixin _$ShippingInformationDTO {
  String? get deliveryPeriod => throw _privateConstructorUsedError;
  @JsonKey(toJson: BooleanSerializer.toJsonString)
  @BooleanSerializer()
  bool? get pickUpAvailable => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<String>? get regions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShippingInformationDTOCopyWith<ShippingInformationDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShippingInformationDTOCopyWith<$Res> {
  factory $ShippingInformationDTOCopyWith(ShippingInformationDTO value,
          $Res Function(ShippingInformationDTO) then) =
      _$ShippingInformationDTOCopyWithImpl<$Res, ShippingInformationDTO>;
  @useResult
  $Res call(
      {String? deliveryPeriod,
      @JsonKey(toJson: BooleanSerializer.toJsonString)
      @BooleanSerializer()
          bool? pickUpAvailable,
      String? description,
      List<String>? regions});
}

/// @nodoc
class _$ShippingInformationDTOCopyWithImpl<$Res,
        $Val extends ShippingInformationDTO>
    implements $ShippingInformationDTOCopyWith<$Res> {
  _$ShippingInformationDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deliveryPeriod = freezed,
    Object? pickUpAvailable = freezed,
    Object? description = freezed,
    Object? regions = freezed,
  }) {
    return _then(_value.copyWith(
      deliveryPeriod: freezed == deliveryPeriod
          ? _value.deliveryPeriod
          : deliveryPeriod // ignore: cast_nullable_to_non_nullable
              as String?,
      pickUpAvailable: freezed == pickUpAvailable
          ? _value.pickUpAvailable
          : pickUpAvailable // ignore: cast_nullable_to_non_nullable
              as bool?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      regions: freezed == regions
          ? _value.regions
          : regions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShippingInformationDTOCopyWith<$Res>
    implements $ShippingInformationDTOCopyWith<$Res> {
  factory _$$_ShippingInformationDTOCopyWith(_$_ShippingInformationDTO value,
          $Res Function(_$_ShippingInformationDTO) then) =
      __$$_ShippingInformationDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? deliveryPeriod,
      @JsonKey(toJson: BooleanSerializer.toJsonString)
      @BooleanSerializer()
          bool? pickUpAvailable,
      String? description,
      List<String>? regions});
}

/// @nodoc
class __$$_ShippingInformationDTOCopyWithImpl<$Res>
    extends _$ShippingInformationDTOCopyWithImpl<$Res,
        _$_ShippingInformationDTO>
    implements _$$_ShippingInformationDTOCopyWith<$Res> {
  __$$_ShippingInformationDTOCopyWithImpl(_$_ShippingInformationDTO _value,
      $Res Function(_$_ShippingInformationDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deliveryPeriod = freezed,
    Object? pickUpAvailable = freezed,
    Object? description = freezed,
    Object? regions = freezed,
  }) {
    return _then(_$_ShippingInformationDTO(
      deliveryPeriod: freezed == deliveryPeriod
          ? _value.deliveryPeriod
          : deliveryPeriod // ignore: cast_nullable_to_non_nullable
              as String?,
      pickUpAvailable: freezed == pickUpAvailable
          ? _value.pickUpAvailable
          : pickUpAvailable // ignore: cast_nullable_to_non_nullable
              as bool?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      regions: freezed == regions
          ? _value._regions
          : regions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShippingInformationDTO extends _ShippingInformationDTO {
  _$_ShippingInformationDTO(
      {this.deliveryPeriod,
      @JsonKey(toJson: BooleanSerializer.toJsonString)
      @BooleanSerializer()
          this.pickUpAvailable,
      this.description,
      final List<String>? regions})
      : _regions = regions,
        super._();

  factory _$_ShippingInformationDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ShippingInformationDTOFromJson(json);

  @override
  final String? deliveryPeriod;
  @override
  @JsonKey(toJson: BooleanSerializer.toJsonString)
  @BooleanSerializer()
  final bool? pickUpAvailable;
  @override
  final String? description;
  final List<String>? _regions;
  @override
  List<String>? get regions {
    final value = _regions;
    if (value == null) return null;
    if (_regions is EqualUnmodifiableListView) return _regions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ShippingInformationDTO(deliveryPeriod: $deliveryPeriod, pickUpAvailable: $pickUpAvailable, description: $description, regions: $regions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShippingInformationDTO &&
            (identical(other.deliveryPeriod, deliveryPeriod) ||
                other.deliveryPeriod == deliveryPeriod) &&
            (identical(other.pickUpAvailable, pickUpAvailable) ||
                other.pickUpAvailable == pickUpAvailable) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._regions, _regions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, deliveryPeriod, pickUpAvailable,
      description, const DeepCollectionEquality().hash(_regions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShippingInformationDTOCopyWith<_$_ShippingInformationDTO> get copyWith =>
      __$$_ShippingInformationDTOCopyWithImpl<_$_ShippingInformationDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShippingInformationDTOToJson(
      this,
    );
  }
}

abstract class _ShippingInformationDTO extends ShippingInformationDTO {
  factory _ShippingInformationDTO(
      {final String? deliveryPeriod,
      @JsonKey(toJson: BooleanSerializer.toJsonString)
      @BooleanSerializer()
          final bool? pickUpAvailable,
      final String? description,
      final List<String>? regions}) = _$_ShippingInformationDTO;
  _ShippingInformationDTO._() : super._();

  factory _ShippingInformationDTO.fromJson(Map<String, dynamic> json) =
      _$_ShippingInformationDTO.fromJson;

  @override
  String? get deliveryPeriod;
  @override
  @JsonKey(toJson: BooleanSerializer.toJsonString)
  @BooleanSerializer()
  bool? get pickUpAvailable;
  @override
  String? get description;
  @override
  List<String>? get regions;
  @override
  @JsonKey(ignore: true)
  _$$_ShippingInformationDTOCopyWith<_$_ShippingInformationDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
