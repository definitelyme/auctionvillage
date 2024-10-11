library bank.entity.dart;

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bank.entity.freezed.dart';

@freezed
@immutable
class Bank extends BaseEntity with _$Bank {
  const Bank._();

  const factory Bank({
    required UniqueId<String?> id,
    required BasicTextField code,
    required BasicTextField bankName,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Bank;

  factory Bank.blank({String? id, String? code, String? name}) => Bank(
        id: UniqueId.fromExternal(id),
        code: BasicTextField(code),
        bankName: BasicTextField(name),
      );
}
