library place_prediction.dart;

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'place_prediction.freezed.dart';

@Freezed(when: FreezedWhenOptions.none, map: FreezedMapOptions.none)
class PlacePrediction with _$PlacePrediction {
  const PlacePrediction._();

  const factory PlacePrediction({
    required UniqueId<String?> placeId,
    required UniqueId<String?> reference,
    required BasicTextField description,
    required ImmutableStrings types,
    required KtList<MatchedSubstrings?> matched,
  }) = _PlacePrediction;

  factory PlacePrediction.fromQuery(String? query) => PlacePrediction(
        placeId: UniqueId.fromExternal(null),
        reference: UniqueId.fromExternal(null),
        description: BasicTextField(query),
        types: ImmutableStrings(null),
        matched: const KtList.empty(),
      );
}

@Freezed(when: FreezedWhenOptions.none, map: FreezedMapOptions.none)
class MatchedSubstrings with _$MatchedSubstrings {
  const MatchedSubstrings._();

  const factory MatchedSubstrings({
    required NumField<int?> length,
    required NumField<int?> offset,
  }) = _MatchedSubstrings;
}
