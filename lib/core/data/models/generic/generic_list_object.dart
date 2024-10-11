library generic_list_object.dart;

import 'package:auctionvillage/core/data/models/index.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'generic_list_object.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class GenericListDTO<T> {
  final List<T> data;

  @JsonKey(name: '_meta')
  final MetaDTO? meta;

  const GenericListDTO({
    required this.data,
    this.meta,
  });

  factory GenericListDTO.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$GenericListDTOFromJson<T>(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) => _$GenericListDTOToJson<T>(this, toJsonT);
}

extension GenericListDTOCopyWith<T> on GenericListDTO<T> {
  /// Maps the Data Transfer Object to a KtList<DeliveryHistory> Object.
  KtList<U> domain<U>(U Function(T) serializer) => KtList.from(data.map((e) => serializer.call(e)).toList());

  GenericListDTO<T> copyWith({
    List<T>? data,
    int? currentPage,
    int? from,
    int? lastPage,
    String? path,
    int? perPage,
    int? to,
    int? total,
    MetaDTO? meta,
  }) =>
      GenericListDTO<T>(data: data ?? this.data, meta: meta ?? this.meta);

  GenericListDTO<T> copyWithNull({
    bool currentPage = false,
    bool from = false,
    bool lastPage = false,
    bool path = false,
    bool perPage = false,
    bool to = false,
    bool total = false,
    bool meta = false,
  }) =>
      GenericListDTO<T>(data: data, meta: meta ? null : this.meta);
}
