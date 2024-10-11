library generic_object.dart;

import 'package:auctionvillage/core/data/models/index.dart';
import 'package:json_annotation/json_annotation.dart';

part 'generic_object.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class GenericObjectDTO<T extends Object?> {
  final T? data;
  final MetaDTO? meta;

  GenericObjectDTO({required this.data, this.meta});

  factory GenericObjectDTO.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$GenericObjectDTOFromJson<T>(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) => _$GenericObjectDTOToJson<T>(this, toJsonT);

  U domain<U>(U Function(T?) serializer) => serializer.call(data);

  GenericObjectDTO<T> copyWith({T? data, MetaDTO? meta}) => GenericObjectDTO<T>(data: data ?? this.data, meta: meta ?? this.meta);

  GenericObjectDTO<T> copyWithNull({bool meta = false}) => GenericObjectDTO<T>(
        data: data,
        meta: meta == true ? null : this.meta,
      );
}
