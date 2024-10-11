// GENERATED CODE - DO NOT MODIFY BY HAND

part of product_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductDTO _$$_ProductDTOFromJson(Map<String, dynamic> json) =>
    _$_ProductDTO(
      meta: json['_meta'] == null
          ? null
          : MetaDTO.fromJson(json['_meta'] as Map<String, dynamic>),
      data: ProductDTOData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ProductDTOToJson(_$_ProductDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('_meta', instance.meta?.toJson());
  val['data'] = instance.data.toJson();
  return val;
}

_$_ProductDTOData _$$_ProductDTODataFromJson(Map<String, dynamic> json) =>
    _$_ProductDTOData(
      id: json['_id'] as String?,
      brandInformation: json['brandInformation'] == null
          ? null
          : BrandInformationDTO.fromJson(
              json['brandInformation'] as Map<String, dynamic>),
      shippingInformation: json['shippingInformation'] == null
          ? null
          : ShippingInformationDTO.fromJson(
              json['shippingInformation'] as Map<String, dynamic>),
      category: json['category'] == null
          ? null
          : CategoryDTOData.fromJson(json['category'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : UserDTO.fromJson(json['user'] as Map<String, dynamic>),
      owner: json['owner'] == null
          ? null
          : UserDTO.fromJson(json['owner'] as Map<String, dynamic>),
      isFavorite: const BooleanSerializer().fromJson(json['isFavorite']),
      photos: (json['photos'] as List<dynamic>?)
              ?.map((e) => e as String?)
              .toList() ??
          const [],
      active: const BooleanSerializer().fromJson(json['active']),
      description: json['description'] as String?,
      status: DealStatus.fromJson(json['status'] as String?),
      deal: json['deal'] == null
          ? null
          : DealDTOData.fromJson(json['deal'] as Map<String, dynamic>),
      lga: json['lga'] as String?,
      name: json['name'] as String?,
      state: json['state'] as String?,
      country: json['country'] as String?,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      productInfo: json['productInfo'] == null
          ? null
          : _ProductInfo.fromJson(json['productInfo'] as Map<String, dynamic>),
      createdAt:
          const TimestampConverter().fromJson(json['createdAt'] as String?),
      updatedAt:
          const TimestampConverter().fromJson(json['updatedAt'] as String?),
    );

Map<String, dynamic> _$$_ProductDTODataToJson(_$_ProductDTOData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('_id', instance.id);
  writeNotNull('brandInformation', instance.brandInformation?.toJson());
  writeNotNull('shippingInformation', instance.shippingInformation?.toJson());
  writeNotNull('category', instance.category?.toJson());
  writeNotNull('user', instance.user?.toJson());
  writeNotNull('owner', instance.owner?.toJson());
  writeNotNull(
      'isFavorite', const BooleanSerializer().toJson(instance.isFavorite));
  val['photos'] = instance.photos;
  writeNotNull('active', const BooleanSerializer().toJson(instance.active));
  writeNotNull('description', instance.description);
  writeNotNull('status', DealStatus.toJson(instance.status));
  writeNotNull('deal', instance.deal?.toJson());
  writeNotNull('lga', instance.lga);
  writeNotNull('name', instance.name);
  writeNotNull('state', instance.state);
  writeNotNull('country', instance.country);
  writeNotNull('tags', instance.tags);
  writeNotNull('productInfo', instance.productInfo?.toJson());
  writeNotNull(
      'createdAt', const TimestampConverter().toJson(instance.createdAt));
  writeNotNull(
      'updatedAt', const TimestampConverter().toJson(instance.updatedAt));
  return val;
}

_$_ProductListDTO _$$_ProductListDTOFromJson(Map<String, dynamic> json) =>
    _$_ProductListDTO(
      meta: json['_meta'] == null
          ? null
          : MetaDTO.fromJson(json['_meta'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => ProductDTOData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ProductListDTOToJson(_$_ProductListDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('_meta', instance.meta?.toJson());
  val['data'] = instance.data.map((e) => e.toJson()).toList();
  return val;
}

_$__ProductInfo _$$__ProductInfoFromJson(Map<String, dynamic> json) =>
    _$__ProductInfo(
      brandInformation: json['brandInformation'] == null
          ? null
          : BrandInformationDTO.fromJson(
              json['brandInformation'] as Map<String, dynamic>),
      shippingInformation: json['shippingInformation'] == null
          ? null
          : ShippingInformationDTO.fromJson(
              json['shippingInformation'] as Map<String, dynamic>),
      photos: (json['photos'] as List<dynamic>?)
              ?.map((e) => e as String?)
              .toList() ??
          const [],
      isFavorite: const BooleanSerializer().fromJson(json['isFavorite']),
      lga: const StringSerializer().fromJson(json['lga']),
      name: const StringSerializer().fromJson(json['name']),
      state: const StringSerializer().fromJson(json['state']),
      country: const StringSerializer().fromJson(json['country']),
      categoryId: json['category'] as String?,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$__ProductInfoToJson(_$__ProductInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('brandInformation', instance.brandInformation?.toJson());
  writeNotNull('shippingInformation', instance.shippingInformation?.toJson());
  val['photos'] = instance.photos;
  writeNotNull(
      'isFavorite', const BooleanSerializer().toJson(instance.isFavorite));
  writeNotNull('lga', const StringSerializer().toJson(instance.lga));
  writeNotNull('name', const StringSerializer().toJson(instance.name));
  writeNotNull('state', const StringSerializer().toJson(instance.state));
  writeNotNull('country', const StringSerializer().toJson(instance.country));
  writeNotNull('category', instance.categoryId);
  writeNotNull('tags', instance.tags);
  return val;
}
