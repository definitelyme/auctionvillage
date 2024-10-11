// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of brand_information_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BrandInformationDTO _$BrandInformationDTOFromJson(Map<String, dynamic> json) {
  return _BrandInformationDTO.fromJson(json);
}

/// @nodoc
mixin _$BrandInformationDTO {
  String? get brand => throw _privateConstructorUsedError;
  String? get brandModel => throw _privateConstructorUsedError;
  @JsonKey(toJson: ItemConditionSerializer.toJsonString)
  @ItemConditionSerializer()
  ItemCondition? get condition => throw _privateConstructorUsedError;
  @JsonKey(toJson: BooleanSerializer.toJsonString)
  @BooleanSerializer()
  bool? get repairHistory => throw _privateConstructorUsedError;
  String? get warranty => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrandInformationDTOCopyWith<BrandInformationDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandInformationDTOCopyWith<$Res> {
  factory $BrandInformationDTOCopyWith(
          BrandInformationDTO value, $Res Function(BrandInformationDTO) then) =
      _$BrandInformationDTOCopyWithImpl<$Res, BrandInformationDTO>;
  @useResult
  $Res call(
      {String? brand,
      String? brandModel,
      @JsonKey(toJson: ItemConditionSerializer.toJsonString)
      @ItemConditionSerializer()
          ItemCondition? condition,
      @JsonKey(toJson: BooleanSerializer.toJsonString)
      @BooleanSerializer()
          bool? repairHistory,
      String? warranty,
      String? description});
}

/// @nodoc
class _$BrandInformationDTOCopyWithImpl<$Res, $Val extends BrandInformationDTO>
    implements $BrandInformationDTOCopyWith<$Res> {
  _$BrandInformationDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brand = freezed,
    Object? brandModel = freezed,
    Object? condition = freezed,
    Object? repairHistory = freezed,
    Object? warranty = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      brandModel: freezed == brandModel
          ? _value.brandModel
          : brandModel // ignore: cast_nullable_to_non_nullable
              as String?,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as ItemCondition?,
      repairHistory: freezed == repairHistory
          ? _value.repairHistory
          : repairHistory // ignore: cast_nullable_to_non_nullable
              as bool?,
      warranty: freezed == warranty
          ? _value.warranty
          : warranty // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BrandInformationDTOCopyWith<$Res>
    implements $BrandInformationDTOCopyWith<$Res> {
  factory _$$_BrandInformationDTOCopyWith(_$_BrandInformationDTO value,
          $Res Function(_$_BrandInformationDTO) then) =
      __$$_BrandInformationDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? brand,
      String? brandModel,
      @JsonKey(toJson: ItemConditionSerializer.toJsonString)
      @ItemConditionSerializer()
          ItemCondition? condition,
      @JsonKey(toJson: BooleanSerializer.toJsonString)
      @BooleanSerializer()
          bool? repairHistory,
      String? warranty,
      String? description});
}

/// @nodoc
class __$$_BrandInformationDTOCopyWithImpl<$Res>
    extends _$BrandInformationDTOCopyWithImpl<$Res, _$_BrandInformationDTO>
    implements _$$_BrandInformationDTOCopyWith<$Res> {
  __$$_BrandInformationDTOCopyWithImpl(_$_BrandInformationDTO _value,
      $Res Function(_$_BrandInformationDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brand = freezed,
    Object? brandModel = freezed,
    Object? condition = freezed,
    Object? repairHistory = freezed,
    Object? warranty = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_BrandInformationDTO(
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      brandModel: freezed == brandModel
          ? _value.brandModel
          : brandModel // ignore: cast_nullable_to_non_nullable
              as String?,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as ItemCondition?,
      repairHistory: freezed == repairHistory
          ? _value.repairHistory
          : repairHistory // ignore: cast_nullable_to_non_nullable
              as bool?,
      warranty: freezed == warranty
          ? _value.warranty
          : warranty // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BrandInformationDTO extends _BrandInformationDTO {
  _$_BrandInformationDTO(
      {this.brand,
      this.brandModel,
      @JsonKey(toJson: ItemConditionSerializer.toJsonString)
      @ItemConditionSerializer()
          this.condition,
      @JsonKey(toJson: BooleanSerializer.toJsonString)
      @BooleanSerializer()
          this.repairHistory,
      this.warranty,
      this.description})
      : super._();

  factory _$_BrandInformationDTO.fromJson(Map<String, dynamic> json) =>
      _$$_BrandInformationDTOFromJson(json);

  @override
  final String? brand;
  @override
  final String? brandModel;
  @override
  @JsonKey(toJson: ItemConditionSerializer.toJsonString)
  @ItemConditionSerializer()
  final ItemCondition? condition;
  @override
  @JsonKey(toJson: BooleanSerializer.toJsonString)
  @BooleanSerializer()
  final bool? repairHistory;
  @override
  final String? warranty;
  @override
  final String? description;

  @override
  String toString() {
    return 'BrandInformationDTO(brand: $brand, brandModel: $brandModel, condition: $condition, repairHistory: $repairHistory, warranty: $warranty, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BrandInformationDTO &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.brandModel, brandModel) ||
                other.brandModel == brandModel) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.repairHistory, repairHistory) ||
                other.repairHistory == repairHistory) &&
            (identical(other.warranty, warranty) ||
                other.warranty == warranty) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, brand, brandModel, condition,
      repairHistory, warranty, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BrandInformationDTOCopyWith<_$_BrandInformationDTO> get copyWith =>
      __$$_BrandInformationDTOCopyWithImpl<_$_BrandInformationDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BrandInformationDTOToJson(
      this,
    );
  }
}

abstract class _BrandInformationDTO extends BrandInformationDTO {
  factory _BrandInformationDTO(
      {final String? brand,
      final String? brandModel,
      @JsonKey(toJson: ItemConditionSerializer.toJsonString)
      @ItemConditionSerializer()
          final ItemCondition? condition,
      @JsonKey(toJson: BooleanSerializer.toJsonString)
      @BooleanSerializer()
          final bool? repairHistory,
      final String? warranty,
      final String? description}) = _$_BrandInformationDTO;
  _BrandInformationDTO._() : super._();

  factory _BrandInformationDTO.fromJson(Map<String, dynamic> json) =
      _$_BrandInformationDTO.fromJson;

  @override
  String? get brand;
  @override
  String? get brandModel;
  @override
  @JsonKey(toJson: ItemConditionSerializer.toJsonString)
  @ItemConditionSerializer()
  ItemCondition? get condition;
  @override
  @JsonKey(toJson: BooleanSerializer.toJsonString)
  @BooleanSerializer()
  bool? get repairHistory;
  @override
  String? get warranty;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_BrandInformationDTOCopyWith<_$_BrandInformationDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
