import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'place_geometry.freezed.dart';

@Freezed(when: FreezedWhenOptions.none, map: FreezedMapOptions.none)
class PlaceGeometry with _$PlaceGeometry {
  const factory PlaceGeometry({
    PlaceCoordinate? location,
    PlaceViewport? viewport,
  }) = _GeometryDTO;
}

@Freezed(when: FreezedWhenOptions.none, map: FreezedMapOptions.none)
class PlaceViewport with _$PlaceViewport {
  const factory PlaceViewport({
    PlaceCoordinate? northeast,
    PlaceCoordinate? southwest,
  }) = _PlaceViewport;
}

@Freezed(when: FreezedWhenOptions.none, map: FreezedMapOptions.none)
class PlaceCoordinate with _$PlaceCoordinate {
  const factory PlaceCoordinate({
    required NumField<double?> lat,
    required NumField<double?> lng,
  }) = _PlaceCoordinate;
}
