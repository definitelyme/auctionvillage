library generic_paginated_list.dart;

import 'package:kt_dart/kt.dart';
import 'package:auctionvillage/core/data/models/index.dart';
import 'package:json_annotation/json_annotation.dart';

part 'generic_paginated_list.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class GenericPaginatedListDTO<T> {
  final List<T> data;
  final MetaDTO? meta;

  GenericPaginatedListDTO({required this.data, this.meta});

  factory GenericPaginatedListDTO.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$GenericPaginatedListDTOFromJson<T>(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$GenericPaginatedListDTOToJson<T>(this, toJsonT);
}

extension GenericPaginatedListDTOCopyWith<T> on GenericPaginatedListDTO<T> {
  // U domain<U>(U Function(List<T>) serializer) => serializer.call(data);
  KtList<U> domain<U>(U Function(T) serializer) =>
      KtList.from(data.map((e) => serializer.call(e)).toList());

  GenericPaginatedListDTO<T> copyWith(
          {List<T> data = const [], MetaDTO? meta}) =>
      GenericPaginatedListDTO<T>(data: data, meta: meta ?? this.meta);

  GenericPaginatedListDTO<T> copyWithNull({bool meta = false}) =>
      GenericPaginatedListDTO<T>(
          data: data, meta: meta == true ? null : this.meta);
}
