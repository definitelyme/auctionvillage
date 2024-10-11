library meta.dataclass.dart;

import 'package:auctionvillage/core/data/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'meta.dataclass.g.dart';
part 'meta.dataclass.freezed.dart';

@freezed
@immutable
class MetaDTO with _$MetaDTO {
  const MetaDTO._();

  const factory MetaDTO({
    int? statusCode,
    bool? status,
    String? message,
    PaginationDTO? pagination,
  }) = _MetaDTO;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory MetaDTO.fromJson(Map<String, dynamic> json) => _$MetaDTOFromJson(json);
}
