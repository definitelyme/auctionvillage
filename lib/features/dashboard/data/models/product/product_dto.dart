library product_dto.dart;

import 'package:auctionvillage/core/data/index.dart';
import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/features/dashboard/data/models/models.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/manager/serializer/serializers.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

import '../brand_information/brand_information_dto.dart';
import '../shipping_information/shipping_information_dto.dart';

part 'product_dto.freezed.dart';
part 'product_dto.g.dart';

ProductDTO deserializeProductDTO(Map<String, dynamic> json) => ProductDTO.fromJson(json);
Map<String, dynamic> serializeProductDTO(ProductDTO object) => object.toJson();

@immutable
@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
class ProductDTO with _$ProductDTO {
  const ProductDTO._();

  const factory ProductDTO({
    @JsonKey(name: '_meta') MetaDTO? meta,
    required ProductDTOData data,
  }) = _ProductDTO;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory ProductDTO.fromJson(Map<String, dynamic> json) => _$ProductDTOFromJson(json);

  /// Maps the Data Transfer Object to a Product Object.
  Product get domain => data.domain;
}

ProductDTOData deserializeProductDTOData(Map<String, dynamic> json) => ProductDTOData.fromJson(json);
Map<String, dynamic> serializeProductDTOData(ProductDTOData object) {
  final dealEntries = object.deal?.toJson().entries;

  final json = object
      .copyWith(deal: null)
      .toJson()
      .toImmutableMap()
      .filterValues((v) => v == null || (v is String && v.trim().isEmpty) ? false : true)
      .toMutableMap()
      .dart;
  //     .dart
  //     .map((key, value) {
  //   if (key == 'category' && object.category?.id != null)
  //     return MapEntry(key, object.category?.id);
  //   else
  //     return MapEntry(key, value is String ? value.trim() : value);
  // });

  if (dealEntries != null) json.addEntries(dealEntries);

  return json;
}

@immutable
@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
class ProductDTOData with _$ProductDTOData {
  const ProductDTOData._();

  factory ProductDTOData({
    @JsonKey(name: '_id') String? id,
    BrandInformationDTO? brandInformation,
    ShippingInformationDTO? shippingInformation,
    CategoryDTOData? category,
    UserDTO? user,
    UserDTO? owner,
    @BooleanSerializer() bool? isFavorite,
    @Default([]) List<String?> photos,
    @BooleanSerializer() bool? active,
    String? description,
    @JsonKey(toJson: DealStatus.toJson, fromJson: DealStatus.fromJson) DealStatus? status,
    DealDTOData? deal,
    String? lga,
    String? name,
    String? state,
    String? country,
    List<String>? tags,
    _ProductInfo? productInfo,
    @TimestampConverter() DateTime? createdAt,
    @TimestampConverter() DateTime? updatedAt,
  }) = _ProductDTOData;

  /// Maps Product to a Data Transfer Object.
  factory ProductDTOData.fromDomain(Product? instance) => ProductDTOData(
        brandInformation: BrandInformationDTO.fromDomain(instance?.brandInformation),
        description: instance?.description.getOrNull,
        // active: instance?.isActive,
        isFavorite: instance?.isFavorite,
        country: instance?.country?.name.getOrNull?.toUpperCase(),
        // status: instance?.dealStatus,
        category: CategoryDTOData.fromDomain(instance?.category),
        deal: DealDTOData.fromDomain(instance?.deal),
        productInfo: _ProductInfo(
          brandInformation: BrandInformationDTO.fromDomain(instance?.brandInformation),
          shippingInformation: ShippingInformationDTO.fromDomain(instance?.shippingInformation),
          isFavorite: instance?.isFavorite,
          tags: instance?.tags.getOrNull?.asList(),
          categoryId: instance?.category?.id.value,
          name: instance?.name.getOrNull,
          state: instance?.state.getOrNull,
          lga: instance?.lga.getOrNull,
          country: instance?.country?.name.getOrNull?.toUpperCase(),
          photos: instance?.photos
                  .filter((i) => i.image.getOrNull != null && i.image.getOrNull!.isNotEmpty)
                  .map((e) => e.image.getOrNull!.trim().removeAllBlankSpace())
                  .asList() ??
              [],
        ),

        // createdAt: instance?.createdAt,
        // updatedAt: instance?.updatedAt,
      );

  factory ProductDTOData.fromJson(Map<String, dynamic> json) => _$ProductDTODataFromJson(json);

  /// Maps the Data Transfer Object to a Product Object.
  Product get domain => Product.blank(
        id: id,
        category: category?.domain,
        name: productInfo?.name ?? name,
        lga: productInfo?.lga ?? lga,
        state: productInfo?.state ?? state,
        description: description,
        photos: productInfo?.photos ?? photos,
        isFavorite: productInfo?.isFavorite ?? isFavorite,
        dealStatus: status,
        active: active,
        owner: owner?.domain,
        deal: deal?.domain,
        country: Country.fromName(productInfo?.country ?? country),
        shipping: shippingInformation?.domain ?? productInfo?.shippingInformation?.domain,
        brand: productInfo?.brandInformation?.domain ?? brandInformation?.domain,
        tags: productInfo?.tags ?? tags,
        createdAt: createdAt,
        updatedAt: updatedAt,
      );
}

ProductListDTO deserializeProductListDTO(Map<String, dynamic> json) => ProductListDTO.fromJson(json);
Map<String, dynamic> serializeProductListDTO(ProductListDTO object) => object.toJson();

@immutable
@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
class ProductListDTO with _$ProductListDTO {
  const ProductListDTO._();

  const factory ProductListDTO({
    @JsonKey(name: '_meta') MetaDTO? meta,
    @Default([]) List<ProductDTOData> data,
  }) = _ProductListDTO;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory ProductListDTO.fromJson(Map<String, dynamic> json) => _$ProductListDTOFromJson(json);

  /// Maps the Data Transfer Object to a KtList<Product> Object.
  KtList<Product> get domain => KtList.from(data.map((e) => e.domain));
}

@Freezed(when: FreezedWhenOptions.none, map: FreezedMapOptions.none)
class _ProductInfo with _$_ProductInfo {
  const _ProductInfo._();

  const factory _ProductInfo({
    BrandInformationDTO? brandInformation,
    ShippingInformationDTO? shippingInformation,
    @Default([]) List<String?> photos,
    @BooleanSerializer() bool? isFavorite,
    @StringSerializer() String? lga,
    @StringSerializer() String? name,
    @StringSerializer() String? state,
    @StringSerializer() String? country,
    @JsonKey(name: 'category') String? categoryId,
    List<String>? tags,
  }) = __ProductInfo;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory _ProductInfo.fromJson(Map<String, dynamic> json) => _$_ProductInfoFromJson(json);
}
