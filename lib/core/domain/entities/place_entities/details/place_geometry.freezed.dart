// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_geometry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PlaceGeometry {
  PlaceCoordinate? get location => throw _privateConstructorUsedError;
  PlaceViewport? get viewport => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlaceGeometryCopyWith<PlaceGeometry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceGeometryCopyWith<$Res> {
  factory $PlaceGeometryCopyWith(
          PlaceGeometry value, $Res Function(PlaceGeometry) then) =
      _$PlaceGeometryCopyWithImpl<$Res, PlaceGeometry>;
  @useResult
  $Res call({PlaceCoordinate? location, PlaceViewport? viewport});

  $PlaceCoordinateCopyWith<$Res>? get location;
  $PlaceViewportCopyWith<$Res>? get viewport;
}

/// @nodoc
class _$PlaceGeometryCopyWithImpl<$Res, $Val extends PlaceGeometry>
    implements $PlaceGeometryCopyWith<$Res> {
  _$PlaceGeometryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = freezed,
    Object? viewport = freezed,
  }) {
    return _then(_value.copyWith(
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as PlaceCoordinate?,
      viewport: freezed == viewport
          ? _value.viewport
          : viewport // ignore: cast_nullable_to_non_nullable
              as PlaceViewport?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PlaceCoordinateCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $PlaceCoordinateCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PlaceViewportCopyWith<$Res>? get viewport {
    if (_value.viewport == null) {
      return null;
    }

    return $PlaceViewportCopyWith<$Res>(_value.viewport!, (value) {
      return _then(_value.copyWith(viewport: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GeometryDTOCopyWith<$Res>
    implements $PlaceGeometryCopyWith<$Res> {
  factory _$$_GeometryDTOCopyWith(
          _$_GeometryDTO value, $Res Function(_$_GeometryDTO) then) =
      __$$_GeometryDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PlaceCoordinate? location, PlaceViewport? viewport});

  @override
  $PlaceCoordinateCopyWith<$Res>? get location;
  @override
  $PlaceViewportCopyWith<$Res>? get viewport;
}

/// @nodoc
class __$$_GeometryDTOCopyWithImpl<$Res>
    extends _$PlaceGeometryCopyWithImpl<$Res, _$_GeometryDTO>
    implements _$$_GeometryDTOCopyWith<$Res> {
  __$$_GeometryDTOCopyWithImpl(
      _$_GeometryDTO _value, $Res Function(_$_GeometryDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = freezed,
    Object? viewport = freezed,
  }) {
    return _then(_$_GeometryDTO(
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as PlaceCoordinate?,
      viewport: freezed == viewport
          ? _value.viewport
          : viewport // ignore: cast_nullable_to_non_nullable
              as PlaceViewport?,
    ));
  }
}

/// @nodoc

class _$_GeometryDTO implements _GeometryDTO {
  const _$_GeometryDTO({this.location, this.viewport});

  @override
  final PlaceCoordinate? location;
  @override
  final PlaceViewport? viewport;

  @override
  String toString() {
    return 'PlaceGeometry(location: $location, viewport: $viewport)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GeometryDTO &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.viewport, viewport) ||
                other.viewport == viewport));
  }

  @override
  int get hashCode => Object.hash(runtimeType, location, viewport);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GeometryDTOCopyWith<_$_GeometryDTO> get copyWith =>
      __$$_GeometryDTOCopyWithImpl<_$_GeometryDTO>(this, _$identity);
}

abstract class _GeometryDTO implements PlaceGeometry {
  const factory _GeometryDTO(
      {final PlaceCoordinate? location,
      final PlaceViewport? viewport}) = _$_GeometryDTO;

  @override
  PlaceCoordinate? get location;
  @override
  PlaceViewport? get viewport;
  @override
  @JsonKey(ignore: true)
  _$$_GeometryDTOCopyWith<_$_GeometryDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PlaceViewport {
  PlaceCoordinate? get northeast => throw _privateConstructorUsedError;
  PlaceCoordinate? get southwest => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlaceViewportCopyWith<PlaceViewport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceViewportCopyWith<$Res> {
  factory $PlaceViewportCopyWith(
          PlaceViewport value, $Res Function(PlaceViewport) then) =
      _$PlaceViewportCopyWithImpl<$Res, PlaceViewport>;
  @useResult
  $Res call({PlaceCoordinate? northeast, PlaceCoordinate? southwest});

  $PlaceCoordinateCopyWith<$Res>? get northeast;
  $PlaceCoordinateCopyWith<$Res>? get southwest;
}

/// @nodoc
class _$PlaceViewportCopyWithImpl<$Res, $Val extends PlaceViewport>
    implements $PlaceViewportCopyWith<$Res> {
  _$PlaceViewportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? northeast = freezed,
    Object? southwest = freezed,
  }) {
    return _then(_value.copyWith(
      northeast: freezed == northeast
          ? _value.northeast
          : northeast // ignore: cast_nullable_to_non_nullable
              as PlaceCoordinate?,
      southwest: freezed == southwest
          ? _value.southwest
          : southwest // ignore: cast_nullable_to_non_nullable
              as PlaceCoordinate?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PlaceCoordinateCopyWith<$Res>? get northeast {
    if (_value.northeast == null) {
      return null;
    }

    return $PlaceCoordinateCopyWith<$Res>(_value.northeast!, (value) {
      return _then(_value.copyWith(northeast: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PlaceCoordinateCopyWith<$Res>? get southwest {
    if (_value.southwest == null) {
      return null;
    }

    return $PlaceCoordinateCopyWith<$Res>(_value.southwest!, (value) {
      return _then(_value.copyWith(southwest: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PlaceViewportCopyWith<$Res>
    implements $PlaceViewportCopyWith<$Res> {
  factory _$$_PlaceViewportCopyWith(
          _$_PlaceViewport value, $Res Function(_$_PlaceViewport) then) =
      __$$_PlaceViewportCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PlaceCoordinate? northeast, PlaceCoordinate? southwest});

  @override
  $PlaceCoordinateCopyWith<$Res>? get northeast;
  @override
  $PlaceCoordinateCopyWith<$Res>? get southwest;
}

/// @nodoc
class __$$_PlaceViewportCopyWithImpl<$Res>
    extends _$PlaceViewportCopyWithImpl<$Res, _$_PlaceViewport>
    implements _$$_PlaceViewportCopyWith<$Res> {
  __$$_PlaceViewportCopyWithImpl(
      _$_PlaceViewport _value, $Res Function(_$_PlaceViewport) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? northeast = freezed,
    Object? southwest = freezed,
  }) {
    return _then(_$_PlaceViewport(
      northeast: freezed == northeast
          ? _value.northeast
          : northeast // ignore: cast_nullable_to_non_nullable
              as PlaceCoordinate?,
      southwest: freezed == southwest
          ? _value.southwest
          : southwest // ignore: cast_nullable_to_non_nullable
              as PlaceCoordinate?,
    ));
  }
}

/// @nodoc

class _$_PlaceViewport implements _PlaceViewport {
  const _$_PlaceViewport({this.northeast, this.southwest});

  @override
  final PlaceCoordinate? northeast;
  @override
  final PlaceCoordinate? southwest;

  @override
  String toString() {
    return 'PlaceViewport(northeast: $northeast, southwest: $southwest)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlaceViewport &&
            (identical(other.northeast, northeast) ||
                other.northeast == northeast) &&
            (identical(other.southwest, southwest) ||
                other.southwest == southwest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, northeast, southwest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlaceViewportCopyWith<_$_PlaceViewport> get copyWith =>
      __$$_PlaceViewportCopyWithImpl<_$_PlaceViewport>(this, _$identity);
}

abstract class _PlaceViewport implements PlaceViewport {
  const factory _PlaceViewport(
      {final PlaceCoordinate? northeast,
      final PlaceCoordinate? southwest}) = _$_PlaceViewport;

  @override
  PlaceCoordinate? get northeast;
  @override
  PlaceCoordinate? get southwest;
  @override
  @JsonKey(ignore: true)
  _$$_PlaceViewportCopyWith<_$_PlaceViewport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PlaceCoordinate {
  NumField<double?> get lat => throw _privateConstructorUsedError;
  NumField<double?> get lng => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlaceCoordinateCopyWith<PlaceCoordinate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceCoordinateCopyWith<$Res> {
  factory $PlaceCoordinateCopyWith(
          PlaceCoordinate value, $Res Function(PlaceCoordinate) then) =
      _$PlaceCoordinateCopyWithImpl<$Res, PlaceCoordinate>;
  @useResult
  $Res call({NumField<double?> lat, NumField<double?> lng});
}

/// @nodoc
class _$PlaceCoordinateCopyWithImpl<$Res, $Val extends PlaceCoordinate>
    implements $PlaceCoordinateCopyWith<$Res> {
  _$PlaceCoordinateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
  }) {
    return _then(_value.copyWith(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as NumField<double?>,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as NumField<double?>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PlaceCoordinateCopyWith<$Res>
    implements $PlaceCoordinateCopyWith<$Res> {
  factory _$$_PlaceCoordinateCopyWith(
          _$_PlaceCoordinate value, $Res Function(_$_PlaceCoordinate) then) =
      __$$_PlaceCoordinateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NumField<double?> lat, NumField<double?> lng});
}

/// @nodoc
class __$$_PlaceCoordinateCopyWithImpl<$Res>
    extends _$PlaceCoordinateCopyWithImpl<$Res, _$_PlaceCoordinate>
    implements _$$_PlaceCoordinateCopyWith<$Res> {
  __$$_PlaceCoordinateCopyWithImpl(
      _$_PlaceCoordinate _value, $Res Function(_$_PlaceCoordinate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
  }) {
    return _then(_$_PlaceCoordinate(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as NumField<double?>,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as NumField<double?>,
    ));
  }
}

/// @nodoc

class _$_PlaceCoordinate implements _PlaceCoordinate {
  const _$_PlaceCoordinate({required this.lat, required this.lng});

  @override
  final NumField<double?> lat;
  @override
  final NumField<double?> lng;

  @override
  String toString() {
    return 'PlaceCoordinate(lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlaceCoordinate &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lat, lng);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlaceCoordinateCopyWith<_$_PlaceCoordinate> get copyWith =>
      __$$_PlaceCoordinateCopyWithImpl<_$_PlaceCoordinate>(this, _$identity);
}

abstract class _PlaceCoordinate implements PlaceCoordinate {
  const factory _PlaceCoordinate(
      {required final NumField<double?> lat,
      required final NumField<double?> lng}) = _$_PlaceCoordinate;

  @override
  NumField<double?> get lat;
  @override
  NumField<double?> get lng;
  @override
  @JsonKey(ignore: true)
  _$$_PlaceCoordinateCopyWith<_$_PlaceCoordinate> get copyWith =>
      throw _privateConstructorUsedError;
}
