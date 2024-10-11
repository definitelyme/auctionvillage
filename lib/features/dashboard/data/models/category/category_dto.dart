library category_dto.dart;

import 'package:auctionvillage/core/data/index.dart';
import 'package:auctionvillage/features/dashboard/data/models/models.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/manager/serializer/serializers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'category_dto.g.dart';
part 'category_dto.freezed.dart';

CategoryDTO deserializeCategoryDTO(Map<String, dynamic> json) => CategoryDTO.fromJson(json);
Map<String, dynamic> serializeCategoryDTO(CategoryDTO object) => object.toJson();

@immutable
@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
class CategoryDTO with _$CategoryDTO {
  const CategoryDTO._();

  const factory CategoryDTO({
    @JsonKey(name: '_meta') MetaDTO? meta,
    required CategoryDTOData data,
  }) = _CategoryDTO;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory CategoryDTO.fromJson(Map<String, dynamic> json) => _$CategoryDTOFromJson(json);

  /// Maps the Data Transfer Object to a DealCategory Object.
  DealCategory get domain => data.domain;
}

CategoryDTOData deserializeCategoryDTOData(Map<String, dynamic> json) => CategoryDTOData.fromJson(json);
Map<String, dynamic> serializeCategoryDTOData(CategoryDTOData object) => object.toJson();

@immutable
@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
class CategoryDTOData with _$CategoryDTOData {
  const CategoryDTOData._();

  const factory CategoryDTOData({
    @IntegerSerializer() int? productsAssigned,
    @DoubleSerializer() double? percentageIncrease,
    @DoubleSerializer() double? charge,
    @BooleanSerializer() bool? active,
    @JsonKey(name: '_id') String? id,
    String? image,
    String? name,
    String? description,
    String? slug,
    DealDTOData? deal,
    @TimestampConverter() DateTime? createdAt,
    @TimestampConverter() DateTime? updatedAt,
  }) = _CategoryDTOData;

  /// Maps DealCategory to a Data Transfer Object.
  factory CategoryDTOData.fromDomain(DealCategory? instance) => CategoryDTOData(
        id: instance?.id.value,
        name: instance?.name.getOrNull,
        active: instance?.isActive,
        charge: instance?.charge.getOrNull,
        slug: instance?.slug.getOrNull,
        description: instance?.description.getOrNull,
        image: instance?.asset.getOrNull,
        percentageIncrease: instance?.percentageIncrease.getOrNull,
        productsAssigned: instance?.productsAssigned.getOrNull,
        createdAt: instance?.createdAt,
        updatedAt: instance?.updatedAt,
      );

  factory CategoryDTOData.fromJson(Map<String, dynamic> json) => _$CategoryDTODataFromJson(json);

  /// Maps the Data Transfer Object to a DealCategory Object.
  DealCategory get domain => DealCategory.blank(
        id: id,
        name: name,
        description: description,
        active: active,
        photo: image,
        charge: charge,
        productsAssigned: productsAssigned,
        percentageIncrease: percentageIncrease,
        // deal: deal.domain(),
        createdAt: createdAt,
        updatedAt: updatedAt,
      );
}

CategoryListDTO deserializeCategoryListDTO(Map<String, dynamic> json) => CategoryListDTO.fromJson(json);
Map<String, dynamic> serializeCategoryListDTO(CategoryListDTO object) => object.toJson();

@immutable
@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
class CategoryListDTO with _$CategoryListDTO {
  const CategoryListDTO._();

  const factory CategoryListDTO({
    @JsonKey(name: '_meta') MetaDTO? meta,
    @Default([]) List<CategoryDTOData> data,
  }) = _CategoryListDTO;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory CategoryListDTO.fromJson(Map<String, dynamic> json) => _$CategoryListDTOFromJson(json);

  /// Maps the Data Transfer Object to a KtList<Category> Object.
  KtList<DealCategory> get domain => KtList.from(data.map((e) => e.domain));
}
