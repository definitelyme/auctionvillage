// ignore_for_file: unused_element

library user_bid_history_dto.dart;

import 'package:auctionvillage/core/data/models/index.dart';
import 'package:auctionvillage/features/dashboard/data/models/models.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/manager/serializer/serializers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'user_bid_history_dto.g.dart';
part 'user_bid_history_dto.freezed.dart';

UserBidHistoryDTO deserializeUserBidHistoryDTO(Map<String, dynamic> json) => UserBidHistoryDTO.fromJson(json);
Map<String, dynamic> serializeUserBidHistoryDTO(UserBidHistoryDTO object) => object.toJson();

@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
class UserBidHistoryDTO with _$UserBidHistoryDTO {
  const UserBidHistoryDTO._();

  const factory UserBidHistoryDTO({
    @JsonKey(name: '_meta') MetaDTO? meta,
    required _UserBidHistoryDTOData data,
  }) = _UserBidHistoryDTO;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory UserBidHistoryDTO.fromJson(Map<String, dynamic> json) => _$UserBidHistoryDTOFromJson(json);

  /// Maps the Data Transfer Object to a UserBidHistory Object.
  UserBidHistory get domain => data.domain;
}

@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
class _UserBidHistoryDTOData with _$_UserBidHistoryDTOData {
  const _UserBidHistoryDTOData._();

  const factory _UserBidHistoryDTOData({
    @JsonKey(name: '_id') String? id,
    @IntegerSerializer() double? totalAuctionsParticipated,
    @IntegerSerializer() double? totalWinningBid,
    @IntegerSerializer() double? totalAmountSpent,
    @Default([]) List<DealDTOData> dealHistory,
    @IntegerSerializer() double? amount,
    DealDTOData? deal,
    @TimestampConverter() DateTime? createdAt,
    @TimestampConverter() DateTime? updatedAt,
  }) = __UserBidHistoryDTOData;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory _UserBidHistoryDTOData.fromJson(Map<String, dynamic> json) => _$_UserBidHistoryDTODataFromJson(json);

  /// Maps the Data Transfer Object to a UserBidHistory Object.
  UserBidHistory get domain => UserBidHistory.blank(
        id: id,
        totalAuctionsParticipated: totalAuctionsParticipated,
        totalWinningBid: totalWinningBid,
        totalAmountSpent: totalAmountSpent,
        history: KtList.from(dealHistory.map((e) => e.domain)),
        amount: amount,
        deal: deal?.domain,
        createdAt: createdAt,
        updatedAt: updatedAt,
      );
}

UserBidHistoryListDTO deserializeUserBidHistoryListDTO(Map<String, dynamic> json) => UserBidHistoryListDTO.fromJson(json);
Map<String, dynamic> serializeUserBidHistoryListDTO(UserBidHistoryListDTO object) => object.toJson();

@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
class UserBidHistoryListDTO with _$UserBidHistoryListDTO {
  const UserBidHistoryListDTO._();

  const factory UserBidHistoryListDTO({
    @JsonKey(name: '_meta') MetaDTO? meta,
    @Default([]) List<_UserBidHistoryDTOData> data,
  }) = _UserBidHistoryListDTO;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory UserBidHistoryListDTO.fromJson(Map<String, dynamic> json) => _$UserBidHistoryListDTOFromJson(json);

  /// Maps the Data Transfer Object to a KtList<Deal> Object.
  KtList<UserBidHistory> get domain => KtList.from(data.map((e) => e.domain));
}
