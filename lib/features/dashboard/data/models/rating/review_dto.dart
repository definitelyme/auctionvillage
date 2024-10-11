library review_dto.dart;

import 'package:auctionvillage/core/data/index.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/manager/serializer/serializers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'review_dto.g.dart';
part 'review_dto.freezed.dart';

@freezed
@immutable
class ReviewDTO with _$ReviewDTO {
  const ReviewDTO._();

  const factory ReviewDTO({
    String? id,
    String? review,
    @DoubleSerializer() double? delivery,
    @DoubleSerializer() double? quality,
    @DoubleSerializer() double? responsiveness,
    @DoubleSerializer() double? reliability,
    @DoubleSerializer() double? rating,
    UserDTO? user,
    @TimestampConverter() DateTime? createdAt,
    @TimestampConverter() DateTime? updatedAt,
  }) = _ReviewDTO;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory ReviewDTO.fromJson(Map<String, dynamic> json) => _$ReviewDTOFromJson(json);

  /// Maps the Data Transfer Object to a Review Object.
  Review get domain => Review.blank(
        id: id,
        review: review,
        delivery: delivery,
        quality: quality,
        responsiveness: responsiveness,
        reliability: reliability,
        rating: rating,
        user: user?.domain,
        createdAt: createdAt,
        updatedAt: updatedAt,
      );
}
