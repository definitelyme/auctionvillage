library product.entity.dart;

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/core/domain/response/index.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:dartz/dartz.dart' hide id;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'product.entity.freezed.dart';

@freezed
@immutable
class Product extends BaseEntity with _$Product {
  static DateTime startDate = localTime;
  static DateTime endDate = DateTime(localTime.year + 1000);

  const Product._();

  const factory Product({
    required UniqueId<String?> id,
    required BasicTextField name,
    required BasicTextField description,
    @Default(KtList.empty()) KtList<UploadableMedia> photos,
    @Default(false) bool isActive,
    bool? isFavorite,
    @Default(DealStatus.pending) DealStatus dealStatus,
    required BasicTextField lga,
    required BasicTextField state,
    User? owner,
    Deal? deal,
    Country? country,
    DealCategory? category,
    BrandInformation? brandInformation,
    ShippingInformation? shippingInformation,
    required ImmutableStrings tags,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Product;

  factory Product.blank({
    String? id,
    String? name,
    String? lga,
    String? state,
    String? description,
    bool? active,
    bool? isFavorite,
    DealStatus? dealStatus,
    List<String?> photos = const [],
    User? owner,
    Deal? deal,
    Country? country,
    DealCategory? category,
    BrandInformation? brand,
    ShippingInformation? shipping,
    List<String>? tags,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) =>
      Product(
        id: UniqueId.fromExternal(id),
        category: category,
        deal: deal,
        isActive: active ?? false,
        isFavorite: isFavorite,
        dealStatus: dealStatus ?? DealStatus.pending,
        owner: owner,
        photos: photos.map((e) => UploadableMedia(MediaField.network(e), id: id)).toImmutableList(),
        name: BasicTextField(name),
        lga: BasicTextField(lga),
        state: BasicTextField(state),
        description: BasicTextField(description),
        brandInformation: brand,
        shippingInformation: shipping,
        country: country,
        tags: ImmutableStrings(KtList.from((tags ?? []))),
        createdAt: createdAt,
        updatedAt: updatedAt,
      );

  factory Product.sell() => Product(
        id: UniqueId.fromExternal(null),
        deal: Deal.blank(),
        name: BasicTextField(null),
        lga: BasicTextField(null),
        state: BasicTextField(null),
        description: BasicTextField(null),
        brandInformation: BrandInformation.blank(),
        shippingInformation: ShippingInformation.blank(),
        tags: ImmutableStrings.DEFAULT,
      );

  bool get isBlank => this == Product.blank();

  bool get isSellBlank => this == Product.sell();

  UniqueId<String?> get uniqueKey => UniqueId.v4();

  ImmutableStrings get regions => shippingInformation?.regions ?? ImmutableStrings.DEFAULT;

  Product merge(Product? other) => copyWith(
        id: other?.id.value != null ? other!.id : id,
        deal: deal?.merge(other?.deal),
        category: category?.merge(other?.category),
        isActive: other?.isActive ?? isActive,
        isFavorite: other?.isFavorite ?? isFavorite,
        dealStatus: other?.dealStatus ?? dealStatus,
        owner: other?.owner ?? owner,
        photos: photos.merge(other?.photos),
        name: other?.name.isNotNull((it) => it as BasicTextField, orElse: (_) => name) ?? name,
        lga: other?.lga.isNotNull((it) => it as BasicTextField, orElse: (_) => lga) ?? lga,
        state: other?.state.isNotNull((it) => it as BasicTextField, orElse: (_) => state) ?? state,
        description: other?.description.isNotNull((it) => it as BasicTextField, orElse: (_) => description) ?? description,
        brandInformation: brandInformation?.merge(other?.brandInformation),
        shippingInformation: shippingInformation?.merge(other?.shippingInformation),
        tags: tags.merge(other?.tags),
        country: other?.country ?? country,
        createdAt: other?.createdAt ?? createdAt,
        updatedAt: other?.updatedAt ?? updatedAt,
      );

  Option<FieldObjectException<dynamic>> get failure => name.mapped
      .andThen(brandInformation!.maybeFailure)
      .andThen(shippingInformation!.maybeFailure)
      .andThen(deal!.maybeFailure)
      .fold((f) => some(f), (_) => none());
}
