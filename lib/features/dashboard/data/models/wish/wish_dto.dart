// ignore_for_file: unused_element

library wishlist_dto.dart;

import 'package:auctionvillage/core/data/index.dart';
import 'package:auctionvillage/features/dashboard/data/models/models.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/manager/serializer/serializers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'wish_dto.g.dart';
part 'wish_dto.freezed.dart';

WishDTO deserializeWishDTO(Map<String, dynamic> json) => WishDTO.fromJson(json);
Map<String, dynamic> serializeWishDTO(WishDTO object) => object.toJson();

@immutable
@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
class WishDTO with _$WishDTO {
  const WishDTO._();

  const factory WishDTO({
    @JsonKey(name: '_meta') MetaDTO? meta,
    required _WishDTOData data,
  }) = _WishDTO;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory WishDTO.fromJson(Map<String, dynamic> json) => _$WishDTOFromJson(json);
}

@immutable
@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
class _WishDTOData with _$_WishDTOData {
  const _WishDTOData._();

  const factory _WishDTOData({
    @JsonKey(name: '_id') String? id,
    @BooleanSerializer() bool? active,
    DealDTOData? deal,
    UserDTO? user,
    @TimestampConverter() DateTime? createdAt,
    @TimestampConverter() DateTime? updatedAt,
  }) = __WishDTOData;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory _WishDTOData.fromJson(Map<String, dynamic> json) => _$_WishDTODataFromJson(json);

  /// Maps the Data Transfer Object to a MyWish Object.
  MyWish get domain => MyWish.blank(
        id: id,
        active: active!,
        deal: deal?.domain.copyWith(user: deal?.domain.user ?? user?.domain),
        user: user?.domain,
        createdAt: createdAt,
        updatedAt: updatedAt,
      );
}

WishListDTO deserializeWishListDTO(Map<String, dynamic> json) => WishListDTO.fromJson(json);
Map<String, dynamic> serializeWishListDTO(WishListDTO object) => object.toJson();

@immutable
@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
class WishListDTO with _$WishListDTO {
  const WishListDTO._();

  const factory WishListDTO({
    @JsonKey(name: '_meta') MetaDTO? meta,
    @Default([]) List<_WishDTOData> data,
  }) = _WishListDTO;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory WishListDTO.fromJson(Map<String, dynamic> json) => _$WishListDTOFromJson(json);

  /// Maps the Data Transfer Object to a KtList<Wishlist> Object.
  KtList<MyWish> get domain => KtList.from(data.map((e) => e.domain));
}
