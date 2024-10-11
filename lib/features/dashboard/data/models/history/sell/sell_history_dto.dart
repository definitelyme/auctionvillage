// ignore_for_file: unused_element

library sell_history_dto.dart;

import 'package:auctionvillage/core/data/models/index.dart';
import 'package:auctionvillage/features/dashboard/data/models/models.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/manager/serializer/serializers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'sell_history_dto.g.dart';
part 'sell_history_dto.freezed.dart';

SellHistoryDTO deserializeSellHistoryDTO(Map<String, dynamic> json) => SellHistoryDTO.fromJson(json);
Map<String, dynamic> serializeSellHistoryDTO(SellHistoryDTO object) => object.toJson();

@immutable
@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
class SellHistoryDTO with _$SellHistoryDTO {
  const SellHistoryDTO._();

  const factory SellHistoryDTO({
    @JsonKey(name: '_meta') MetaDTO? meta,
    required _SellHistoryDTOData data,
  }) = _SellHistoryDTO;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory SellHistoryDTO.fromJson(Map<String, dynamic> json) => _$SellHistoryDTOFromJson(json);

  /// Maps the Data Transfer Object to a SellHistory Object.
  SellHistory get domain => data.domain;
}

@immutable
@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
class _SellHistoryDTOData with _$_SellHistoryDTOData {
  const _SellHistoryDTOData._();

  const factory _SellHistoryDTOData({
    @IntegerSerializer() double? totalProducts,
    @IntegerSerializer() double? totalSold,
    @IntegerSerializer() double? revenue,
    @Default([]) List<DealDTOData> deals,
  }) = __SellHistoryDTOData;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory _SellHistoryDTOData.fromJson(Map<String, dynamic> json) => _$_SellHistoryDTODataFromJson(json);

  /// Maps the Data Transfer Object to a SellHistory Object.
  SellHistory get domain => SellHistory.blank(
        revenue: revenue,
        totalSold: totalSold,
        totalProducts: totalProducts,
        history: KtList.from(deals.map((e) => e.domain)),
      );
}
