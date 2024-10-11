library my_wish.entity.dart;

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_wish.entity.freezed.dart';

@freezed
@immutable
class MyWish extends BaseEntity with _$MyWish {
  const MyWish._();

  const factory MyWish({
    required UniqueId<String?> id,
    @Default(false) bool active,
    required Deal? deal,
    required User? user,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _MyWish;

  factory MyWish.blank({
    String? id,
    bool? active,
    Deal? deal,
    User? user,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) =>
      MyWish(
        id: UniqueId.fromExternal(id),
        active: active ?? false,
        deal: deal,
        user: user,
        createdAt: createdAt,
        updatedAt: updatedAt,
      );
}
