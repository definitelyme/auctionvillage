library deal_bid_history_dto.dart;

import 'package:auctionvillage/core/data/index.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'deal_bid_history_dto.freezed.dart';
part 'deal_bid_history_dto.g.dart';

DealBidHistoryDTO deserializeDealBidHistoryDTO(Map<String, dynamic> json) => nested(json, DealBidHistoryDTO.fromJson);
Map<String, dynamic> serializeDealBidHistoryDTO(DealBidHistoryDTO object) => object.toJson();

@Freezed(when: FreezedWhenOptions.none, map: FreezedMapOptions.none)
class DealBidHistoryDTO with _$DealBidHistoryDTO {
  const DealBidHistoryDTO._();

  const factory DealBidHistoryDTO({
    @Default([]) List<UserDTO> users,
    @JsonKey(name: '_meta') MetaDTO? meta,
  }) = _DealBidHistoryDTO;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory DealBidHistoryDTO.fromJson(Map<String, dynamic> json) => _$DealBidHistoryDTOFromJson(json);

  /// Maps the Data Transfer Object to a KtList<User> Object.
  DealBidHistory get domain => DealBidHistory.blank(users: users.map((it) => it.domain));
}
