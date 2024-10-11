// ignore_for_file: unused_element

library rating_dto.dart;

import 'package:auctionvillage/core/data/models/index.dart';
import 'package:auctionvillage/features/dashboard/data/models/models.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rating_dto.g.dart';
part 'rating_dto.freezed.dart';

RatingDTO deserializeRatingDTO(Map<String, dynamic> json) => RatingDTO.fromJson(json);
Map<String, dynamic> serializeRatingDTO(RatingDTO object) => object.toJson();

@immutable
@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
class RatingDTO with _$RatingDTO {
  const RatingDTO._();

  const factory RatingDTO({
    @JsonKey(name: '_meta') MetaDTO? meta,
    required _RatingDTOData data,
  }) = _RatingDTO;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory RatingDTO.fromJson(Map<String, dynamic> json) => _$RatingDTOFromJson(json);

  /// Maps the Data Transfer Object to a Rating Object.
  Rating get domain => data.domain;
}

@immutable
@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
class _RatingDTOData with _$_RatingDTOData {
  const _RatingDTOData._();

  const factory _RatingDTOData({
    @JsonKey(name: 'value') @Default([]) List<ReviewDTO> reviews,
    ReviewDTO? average,
  }) = __RatingDTOData;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory _RatingDTOData.fromJson(Map<String, dynamic> json) => _$_RatingDTODataFromJson(json);

  /// Maps the Data Transfer Object to a Rating Object.
  Rating get domain => Rating.blank(
        reviews: reviews,
        delivery: average?.delivery,
        quality: average?.quality,
        rating: average?.rating,
        reliability: average?.reliability,
        responsiveness: average?.responsiveness,
      );
}
