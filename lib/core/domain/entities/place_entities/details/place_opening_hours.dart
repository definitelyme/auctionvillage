import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'place_opening_hours.freezed.dart';

@Freezed(when: FreezedWhenOptions.none, map: FreezedMapOptions.none)
class PlaceOpeningHours with _$PlaceOpeningHours {
  const factory PlaceOpeningHours({
    bool? openNow,
    @Default(KtList.empty()) KtList<PlaceOpeningPeriod> periods,
    @Default(KtList.empty()) KtList<BasicTextField?> weekdayText,
  }) = _PlaceOpeningHours;
}

@Freezed(when: FreezedWhenOptions.none, map: FreezedMapOptions.none)
class PlaceOpeningPeriod with _$PlaceOpeningPeriod {
  const factory PlaceOpeningPeriod({
    PlaceHours? close,
    PlaceHours? open,
  }) = _PlaceOpeningPeriod;
}

@Freezed(when: FreezedWhenOptions.none, map: FreezedMapOptions.none)
class PlaceHours with _$PlaceHours {
  const factory PlaceHours({
    NumField<int?>? day,
    BasicTextField? time,
  }) = _PlaceHours;
}
