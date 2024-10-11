library meta_field;

import 'package:auctionvillage/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_dto.freezed.dart';
part 'pagination_dto.g.dart';

PaginationDTO deserializePaginationDTO(Map<String, dynamic> json) => PaginationDTO.fromJson(json);
Map<String, dynamic> serializePaginationDTO(PaginationDTO object) => object.toJson();

@freezed
@immutable
class PaginationDTO with _$PaginationDTO {
  const PaginationDTO._();

  const factory PaginationDTO({
    @JsonKey(name: 'current') int? currentPage,
    @JsonKey(name: 'next') int? next,
    @JsonKey(name: 'per_page') int? perPage,
    @JsonKey(name: 'total_count') int? total,
  }) = _PaginationDTO;

  factory PaginationDTO.fromJson(Map<String, dynamic> json) => _$PaginationDTOFromJson(json);

  bool get endOfList => next == null;

  static const blank = PaginationDTO(currentPage: 1, perPage: Const.kPerPage);
}
