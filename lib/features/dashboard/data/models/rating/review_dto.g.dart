// GENERATED CODE - DO NOT MODIFY BY HAND

part of review_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReviewDTO _$$_ReviewDTOFromJson(Map<String, dynamic> json) => _$_ReviewDTO(
      id: json['id'] as String?,
      review: json['review'] as String?,
      delivery: const DoubleSerializer().fromJson(json['delivery']),
      quality: const DoubleSerializer().fromJson(json['quality']),
      responsiveness: const DoubleSerializer().fromJson(json['responsiveness']),
      reliability: const DoubleSerializer().fromJson(json['reliability']),
      rating: const DoubleSerializer().fromJson(json['rating']),
      user: json['user'] == null
          ? null
          : UserDTO.fromJson(json['user'] as Map<String, dynamic>),
      createdAt:
          const TimestampConverter().fromJson(json['createdAt'] as String?),
      updatedAt:
          const TimestampConverter().fromJson(json['updatedAt'] as String?),
    );

Map<String, dynamic> _$$_ReviewDTOToJson(_$_ReviewDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('review', instance.review);
  writeNotNull('delivery', const DoubleSerializer().toJson(instance.delivery));
  writeNotNull('quality', const DoubleSerializer().toJson(instance.quality));
  writeNotNull('responsiveness',
      const DoubleSerializer().toJson(instance.responsiveness));
  writeNotNull(
      'reliability', const DoubleSerializer().toJson(instance.reliability));
  writeNotNull('rating', const DoubleSerializer().toJson(instance.rating));
  writeNotNull('user', instance.user?.toJson());
  writeNotNull(
      'createdAt', const TimestampConverter().toJson(instance.createdAt));
  writeNotNull(
      'updatedAt', const TimestampConverter().toJson(instance.updatedAt));
  return val;
}
