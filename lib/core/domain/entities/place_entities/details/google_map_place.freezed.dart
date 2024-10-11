// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of google_map_place.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GoogleMapPlace {
  UniqueId<String?> get placeId => throw _privateConstructorUsedError;
  KtList<AddressComponent> get addressComponents =>
      throw _privateConstructorUsedError;
  BasicTextField get formattedAddress => throw _privateConstructorUsedError;
  BasicTextField get formattedPhoneNumber => throw _privateConstructorUsedError;
  BasicTextField get icon => throw _privateConstructorUsedError;
  BasicTextField get iconBackgroundColor => throw _privateConstructorUsedError;
  BasicTextField get iconMaskBaseUri => throw _privateConstructorUsedError;
  BasicTextField get internationalPhoneNumber =>
      throw _privateConstructorUsedError;
  BasicTextField get name => throw _privateConstructorUsedError;
  NumField<double?> get rating => throw _privateConstructorUsedError;
  BasicTextField get reference => throw _privateConstructorUsedError;
  KtList<BasicTextField?> get types => throw _privateConstructorUsedError;
  BasicTextField get url => throw _privateConstructorUsedError;
  BasicTextField get website => throw _privateConstructorUsedError;
  PlacePlusCode? get plusCode => throw _privateConstructorUsedError;
  PlaceGeometry? get geometry => throw _privateConstructorUsedError;
  PlaceOpeningHours? get openingHours => throw _privateConstructorUsedError;
  PlaceStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GoogleMapPlaceCopyWith<GoogleMapPlace> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoogleMapPlaceCopyWith<$Res> {
  factory $GoogleMapPlaceCopyWith(
          GoogleMapPlace value, $Res Function(GoogleMapPlace) then) =
      _$GoogleMapPlaceCopyWithImpl<$Res, GoogleMapPlace>;
  @useResult
  $Res call(
      {UniqueId<String?> placeId,
      KtList<AddressComponent> addressComponents,
      BasicTextField formattedAddress,
      BasicTextField formattedPhoneNumber,
      BasicTextField icon,
      BasicTextField iconBackgroundColor,
      BasicTextField iconMaskBaseUri,
      BasicTextField internationalPhoneNumber,
      BasicTextField name,
      NumField<double?> rating,
      BasicTextField reference,
      KtList<BasicTextField?> types,
      BasicTextField url,
      BasicTextField website,
      PlacePlusCode? plusCode,
      PlaceGeometry? geometry,
      PlaceOpeningHours? openingHours,
      PlaceStatus status});

  $PlacePlusCodeCopyWith<$Res>? get plusCode;
  $PlaceGeometryCopyWith<$Res>? get geometry;
  $PlaceOpeningHoursCopyWith<$Res>? get openingHours;
}

/// @nodoc
class _$GoogleMapPlaceCopyWithImpl<$Res, $Val extends GoogleMapPlace>
    implements $GoogleMapPlaceCopyWith<$Res> {
  _$GoogleMapPlaceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeId = null,
    Object? addressComponents = null,
    Object? formattedAddress = null,
    Object? formattedPhoneNumber = null,
    Object? icon = null,
    Object? iconBackgroundColor = null,
    Object? iconMaskBaseUri = null,
    Object? internationalPhoneNumber = null,
    Object? name = null,
    Object? rating = null,
    Object? reference = null,
    Object? types = null,
    Object? url = null,
    Object? website = null,
    Object? plusCode = freezed,
    Object? geometry = freezed,
    Object? openingHours = freezed,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      placeId: null == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      addressComponents: null == addressComponents
          ? _value.addressComponents
          : addressComponents // ignore: cast_nullable_to_non_nullable
              as KtList<AddressComponent>,
      formattedAddress: null == formattedAddress
          ? _value.formattedAddress
          : formattedAddress // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      formattedPhoneNumber: null == formattedPhoneNumber
          ? _value.formattedPhoneNumber
          : formattedPhoneNumber // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      iconBackgroundColor: null == iconBackgroundColor
          ? _value.iconBackgroundColor
          : iconBackgroundColor // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      iconMaskBaseUri: null == iconMaskBaseUri
          ? _value.iconMaskBaseUri
          : iconMaskBaseUri // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      internationalPhoneNumber: null == internationalPhoneNumber
          ? _value.internationalPhoneNumber
          : internationalPhoneNumber // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as NumField<double?>,
      reference: null == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as KtList<BasicTextField?>,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      website: null == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      plusCode: freezed == plusCode
          ? _value.plusCode
          : plusCode // ignore: cast_nullable_to_non_nullable
              as PlacePlusCode?,
      geometry: freezed == geometry
          ? _value.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as PlaceGeometry?,
      openingHours: freezed == openingHours
          ? _value.openingHours
          : openingHours // ignore: cast_nullable_to_non_nullable
              as PlaceOpeningHours?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PlaceStatus,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PlacePlusCodeCopyWith<$Res>? get plusCode {
    if (_value.plusCode == null) {
      return null;
    }

    return $PlacePlusCodeCopyWith<$Res>(_value.plusCode!, (value) {
      return _then(_value.copyWith(plusCode: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PlaceGeometryCopyWith<$Res>? get geometry {
    if (_value.geometry == null) {
      return null;
    }

    return $PlaceGeometryCopyWith<$Res>(_value.geometry!, (value) {
      return _then(_value.copyWith(geometry: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PlaceOpeningHoursCopyWith<$Res>? get openingHours {
    if (_value.openingHours == null) {
      return null;
    }

    return $PlaceOpeningHoursCopyWith<$Res>(_value.openingHours!, (value) {
      return _then(_value.copyWith(openingHours: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GoogleMapPlaceCopyWith<$Res>
    implements $GoogleMapPlaceCopyWith<$Res> {
  factory _$$_GoogleMapPlaceCopyWith(
          _$_GoogleMapPlace value, $Res Function(_$_GoogleMapPlace) then) =
      __$$_GoogleMapPlaceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId<String?> placeId,
      KtList<AddressComponent> addressComponents,
      BasicTextField formattedAddress,
      BasicTextField formattedPhoneNumber,
      BasicTextField icon,
      BasicTextField iconBackgroundColor,
      BasicTextField iconMaskBaseUri,
      BasicTextField internationalPhoneNumber,
      BasicTextField name,
      NumField<double?> rating,
      BasicTextField reference,
      KtList<BasicTextField?> types,
      BasicTextField url,
      BasicTextField website,
      PlacePlusCode? plusCode,
      PlaceGeometry? geometry,
      PlaceOpeningHours? openingHours,
      PlaceStatus status});

  @override
  $PlacePlusCodeCopyWith<$Res>? get plusCode;
  @override
  $PlaceGeometryCopyWith<$Res>? get geometry;
  @override
  $PlaceOpeningHoursCopyWith<$Res>? get openingHours;
}

/// @nodoc
class __$$_GoogleMapPlaceCopyWithImpl<$Res>
    extends _$GoogleMapPlaceCopyWithImpl<$Res, _$_GoogleMapPlace>
    implements _$$_GoogleMapPlaceCopyWith<$Res> {
  __$$_GoogleMapPlaceCopyWithImpl(
      _$_GoogleMapPlace _value, $Res Function(_$_GoogleMapPlace) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeId = null,
    Object? addressComponents = null,
    Object? formattedAddress = null,
    Object? formattedPhoneNumber = null,
    Object? icon = null,
    Object? iconBackgroundColor = null,
    Object? iconMaskBaseUri = null,
    Object? internationalPhoneNumber = null,
    Object? name = null,
    Object? rating = null,
    Object? reference = null,
    Object? types = null,
    Object? url = null,
    Object? website = null,
    Object? plusCode = freezed,
    Object? geometry = freezed,
    Object? openingHours = freezed,
    Object? status = null,
  }) {
    return _then(_$_GoogleMapPlace(
      placeId: null == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      addressComponents: null == addressComponents
          ? _value.addressComponents
          : addressComponents // ignore: cast_nullable_to_non_nullable
              as KtList<AddressComponent>,
      formattedAddress: null == formattedAddress
          ? _value.formattedAddress
          : formattedAddress // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      formattedPhoneNumber: null == formattedPhoneNumber
          ? _value.formattedPhoneNumber
          : formattedPhoneNumber // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      iconBackgroundColor: null == iconBackgroundColor
          ? _value.iconBackgroundColor
          : iconBackgroundColor // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      iconMaskBaseUri: null == iconMaskBaseUri
          ? _value.iconMaskBaseUri
          : iconMaskBaseUri // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      internationalPhoneNumber: null == internationalPhoneNumber
          ? _value.internationalPhoneNumber
          : internationalPhoneNumber // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as NumField<double?>,
      reference: null == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as KtList<BasicTextField?>,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      website: null == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      plusCode: freezed == plusCode
          ? _value.plusCode
          : plusCode // ignore: cast_nullable_to_non_nullable
              as PlacePlusCode?,
      geometry: freezed == geometry
          ? _value.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as PlaceGeometry?,
      openingHours: freezed == openingHours
          ? _value.openingHours
          : openingHours // ignore: cast_nullable_to_non_nullable
              as PlaceOpeningHours?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PlaceStatus,
    ));
  }
}

/// @nodoc

class _$_GoogleMapPlace extends _GoogleMapPlace {
  const _$_GoogleMapPlace(
      {required this.placeId,
      this.addressComponents = const KtList.empty(),
      required this.formattedAddress,
      required this.formattedPhoneNumber,
      required this.icon,
      required this.iconBackgroundColor,
      required this.iconMaskBaseUri,
      required this.internationalPhoneNumber,
      required this.name,
      required this.rating,
      required this.reference,
      this.types = const KtList.empty(),
      required this.url,
      required this.website,
      this.plusCode,
      this.geometry,
      this.openingHours,
      this.status = PlaceStatus.ZERO_RESULTS})
      : super._();

  @override
  final UniqueId<String?> placeId;
  @override
  @JsonKey()
  final KtList<AddressComponent> addressComponents;
  @override
  final BasicTextField formattedAddress;
  @override
  final BasicTextField formattedPhoneNumber;
  @override
  final BasicTextField icon;
  @override
  final BasicTextField iconBackgroundColor;
  @override
  final BasicTextField iconMaskBaseUri;
  @override
  final BasicTextField internationalPhoneNumber;
  @override
  final BasicTextField name;
  @override
  final NumField<double?> rating;
  @override
  final BasicTextField reference;
  @override
  @JsonKey()
  final KtList<BasicTextField?> types;
  @override
  final BasicTextField url;
  @override
  final BasicTextField website;
  @override
  final PlacePlusCode? plusCode;
  @override
  final PlaceGeometry? geometry;
  @override
  final PlaceOpeningHours? openingHours;
  @override
  @JsonKey()
  final PlaceStatus status;

  @override
  String toString() {
    return 'GoogleMapPlace(placeId: $placeId, addressComponents: $addressComponents, formattedAddress: $formattedAddress, formattedPhoneNumber: $formattedPhoneNumber, icon: $icon, iconBackgroundColor: $iconBackgroundColor, iconMaskBaseUri: $iconMaskBaseUri, internationalPhoneNumber: $internationalPhoneNumber, name: $name, rating: $rating, reference: $reference, types: $types, url: $url, website: $website, plusCode: $plusCode, geometry: $geometry, openingHours: $openingHours, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GoogleMapPlace &&
            (identical(other.placeId, placeId) || other.placeId == placeId) &&
            (identical(other.addressComponents, addressComponents) ||
                other.addressComponents == addressComponents) &&
            (identical(other.formattedAddress, formattedAddress) ||
                other.formattedAddress == formattedAddress) &&
            (identical(other.formattedPhoneNumber, formattedPhoneNumber) ||
                other.formattedPhoneNumber == formattedPhoneNumber) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.iconBackgroundColor, iconBackgroundColor) ||
                other.iconBackgroundColor == iconBackgroundColor) &&
            (identical(other.iconMaskBaseUri, iconMaskBaseUri) ||
                other.iconMaskBaseUri == iconMaskBaseUri) &&
            (identical(
                    other.internationalPhoneNumber, internationalPhoneNumber) ||
                other.internationalPhoneNumber == internationalPhoneNumber) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.reference, reference) ||
                other.reference == reference) &&
            (identical(other.types, types) || other.types == types) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.website, website) || other.website == website) &&
            (identical(other.plusCode, plusCode) ||
                other.plusCode == plusCode) &&
            (identical(other.geometry, geometry) ||
                other.geometry == geometry) &&
            (identical(other.openingHours, openingHours) ||
                other.openingHours == openingHours) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      placeId,
      addressComponents,
      formattedAddress,
      formattedPhoneNumber,
      icon,
      iconBackgroundColor,
      iconMaskBaseUri,
      internationalPhoneNumber,
      name,
      rating,
      reference,
      types,
      url,
      website,
      plusCode,
      geometry,
      openingHours,
      status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GoogleMapPlaceCopyWith<_$_GoogleMapPlace> get copyWith =>
      __$$_GoogleMapPlaceCopyWithImpl<_$_GoogleMapPlace>(this, _$identity);
}

abstract class _GoogleMapPlace extends GoogleMapPlace {
  const factory _GoogleMapPlace(
      {required final UniqueId<String?> placeId,
      final KtList<AddressComponent> addressComponents,
      required final BasicTextField formattedAddress,
      required final BasicTextField formattedPhoneNumber,
      required final BasicTextField icon,
      required final BasicTextField iconBackgroundColor,
      required final BasicTextField iconMaskBaseUri,
      required final BasicTextField internationalPhoneNumber,
      required final BasicTextField name,
      required final NumField<double?> rating,
      required final BasicTextField reference,
      final KtList<BasicTextField?> types,
      required final BasicTextField url,
      required final BasicTextField website,
      final PlacePlusCode? plusCode,
      final PlaceGeometry? geometry,
      final PlaceOpeningHours? openingHours,
      final PlaceStatus status}) = _$_GoogleMapPlace;
  const _GoogleMapPlace._() : super._();

  @override
  UniqueId<String?> get placeId;
  @override
  KtList<AddressComponent> get addressComponents;
  @override
  BasicTextField get formattedAddress;
  @override
  BasicTextField get formattedPhoneNumber;
  @override
  BasicTextField get icon;
  @override
  BasicTextField get iconBackgroundColor;
  @override
  BasicTextField get iconMaskBaseUri;
  @override
  BasicTextField get internationalPhoneNumber;
  @override
  BasicTextField get name;
  @override
  NumField<double?> get rating;
  @override
  BasicTextField get reference;
  @override
  KtList<BasicTextField?> get types;
  @override
  BasicTextField get url;
  @override
  BasicTextField get website;
  @override
  PlacePlusCode? get plusCode;
  @override
  PlaceGeometry? get geometry;
  @override
  PlaceOpeningHours? get openingHours;
  @override
  PlaceStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_GoogleMapPlaceCopyWith<_$_GoogleMapPlace> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PlacePlusCode {
  BasicTextField? get compoundCode => throw _privateConstructorUsedError;
  BasicTextField? get globalCode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlacePlusCodeCopyWith<PlacePlusCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlacePlusCodeCopyWith<$Res> {
  factory $PlacePlusCodeCopyWith(
          PlacePlusCode value, $Res Function(PlacePlusCode) then) =
      _$PlacePlusCodeCopyWithImpl<$Res, PlacePlusCode>;
  @useResult
  $Res call({BasicTextField? compoundCode, BasicTextField? globalCode});
}

/// @nodoc
class _$PlacePlusCodeCopyWithImpl<$Res, $Val extends PlacePlusCode>
    implements $PlacePlusCodeCopyWith<$Res> {
  _$PlacePlusCodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? compoundCode = freezed,
    Object? globalCode = freezed,
  }) {
    return _then(_value.copyWith(
      compoundCode: freezed == compoundCode
          ? _value.compoundCode
          : compoundCode // ignore: cast_nullable_to_non_nullable
              as BasicTextField?,
      globalCode: freezed == globalCode
          ? _value.globalCode
          : globalCode // ignore: cast_nullable_to_non_nullable
              as BasicTextField?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PlacePlusCodeCopyWith<$Res>
    implements $PlacePlusCodeCopyWith<$Res> {
  factory _$$_PlacePlusCodeCopyWith(
          _$_PlacePlusCode value, $Res Function(_$_PlacePlusCode) then) =
      __$$_PlacePlusCodeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BasicTextField? compoundCode, BasicTextField? globalCode});
}

/// @nodoc
class __$$_PlacePlusCodeCopyWithImpl<$Res>
    extends _$PlacePlusCodeCopyWithImpl<$Res, _$_PlacePlusCode>
    implements _$$_PlacePlusCodeCopyWith<$Res> {
  __$$_PlacePlusCodeCopyWithImpl(
      _$_PlacePlusCode _value, $Res Function(_$_PlacePlusCode) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? compoundCode = freezed,
    Object? globalCode = freezed,
  }) {
    return _then(_$_PlacePlusCode(
      compoundCode: freezed == compoundCode
          ? _value.compoundCode
          : compoundCode // ignore: cast_nullable_to_non_nullable
              as BasicTextField?,
      globalCode: freezed == globalCode
          ? _value.globalCode
          : globalCode // ignore: cast_nullable_to_non_nullable
              as BasicTextField?,
    ));
  }
}

/// @nodoc

class _$_PlacePlusCode implements _PlacePlusCode {
  const _$_PlacePlusCode({this.compoundCode, this.globalCode});

  @override
  final BasicTextField? compoundCode;
  @override
  final BasicTextField? globalCode;

  @override
  String toString() {
    return 'PlacePlusCode(compoundCode: $compoundCode, globalCode: $globalCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlacePlusCode &&
            (identical(other.compoundCode, compoundCode) ||
                other.compoundCode == compoundCode) &&
            (identical(other.globalCode, globalCode) ||
                other.globalCode == globalCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, compoundCode, globalCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlacePlusCodeCopyWith<_$_PlacePlusCode> get copyWith =>
      __$$_PlacePlusCodeCopyWithImpl<_$_PlacePlusCode>(this, _$identity);
}

abstract class _PlacePlusCode implements PlacePlusCode {
  const factory _PlacePlusCode(
      {final BasicTextField? compoundCode,
      final BasicTextField? globalCode}) = _$_PlacePlusCode;

  @override
  BasicTextField? get compoundCode;
  @override
  BasicTextField? get globalCode;
  @override
  @JsonKey(ignore: true)
  _$$_PlacePlusCodeCopyWith<_$_PlacePlusCode> get copyWith =>
      throw _privateConstructorUsedError;
}
