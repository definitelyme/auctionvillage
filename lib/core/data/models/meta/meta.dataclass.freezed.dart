// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of meta.dataclass.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MetaDTO _$MetaDTOFromJson(Map<String, dynamic> json) {
  return _MetaDTO.fromJson(json);
}

/// @nodoc
mixin _$MetaDTO {
  int? get statusCode => throw _privateConstructorUsedError;
  bool? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  PaginationDTO? get pagination => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaDTOCopyWith<MetaDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaDTOCopyWith<$Res> {
  factory $MetaDTOCopyWith(MetaDTO value, $Res Function(MetaDTO) then) =
      _$MetaDTOCopyWithImpl<$Res, MetaDTO>;
  @useResult
  $Res call(
      {int? statusCode,
      bool? status,
      String? message,
      PaginationDTO? pagination});

  $PaginationDTOCopyWith<$Res>? get pagination;
}

/// @nodoc
class _$MetaDTOCopyWithImpl<$Res, $Val extends MetaDTO>
    implements $MetaDTOCopyWith<$Res> {
  _$MetaDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = freezed,
    Object? status = freezed,
    Object? message = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_value.copyWith(
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as PaginationDTO?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginationDTOCopyWith<$Res>? get pagination {
    if (_value.pagination == null) {
      return null;
    }

    return $PaginationDTOCopyWith<$Res>(_value.pagination!, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MetaDTOCopyWith<$Res> implements $MetaDTOCopyWith<$Res> {
  factory _$$_MetaDTOCopyWith(
          _$_MetaDTO value, $Res Function(_$_MetaDTO) then) =
      __$$_MetaDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? statusCode,
      bool? status,
      String? message,
      PaginationDTO? pagination});

  @override
  $PaginationDTOCopyWith<$Res>? get pagination;
}

/// @nodoc
class __$$_MetaDTOCopyWithImpl<$Res>
    extends _$MetaDTOCopyWithImpl<$Res, _$_MetaDTO>
    implements _$$_MetaDTOCopyWith<$Res> {
  __$$_MetaDTOCopyWithImpl(_$_MetaDTO _value, $Res Function(_$_MetaDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = freezed,
    Object? status = freezed,
    Object? message = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_$_MetaDTO(
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as PaginationDTO?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MetaDTO extends _MetaDTO {
  const _$_MetaDTO(
      {this.statusCode, this.status, this.message, this.pagination})
      : super._();

  factory _$_MetaDTO.fromJson(Map<String, dynamic> json) =>
      _$$_MetaDTOFromJson(json);

  @override
  final int? statusCode;
  @override
  final bool? status;
  @override
  final String? message;
  @override
  final PaginationDTO? pagination;

  @override
  String toString() {
    return 'MetaDTO(statusCode: $statusCode, status: $status, message: $message, pagination: $pagination)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MetaDTO &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, statusCode, status, message, pagination);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MetaDTOCopyWith<_$_MetaDTO> get copyWith =>
      __$$_MetaDTOCopyWithImpl<_$_MetaDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MetaDTOToJson(
      this,
    );
  }
}

abstract class _MetaDTO extends MetaDTO {
  const factory _MetaDTO(
      {final int? statusCode,
      final bool? status,
      final String? message,
      final PaginationDTO? pagination}) = _$_MetaDTO;
  const _MetaDTO._() : super._();

  factory _MetaDTO.fromJson(Map<String, dynamic> json) = _$_MetaDTO.fromJson;

  @override
  int? get statusCode;
  @override
  bool? get status;
  @override
  String? get message;
  @override
  PaginationDTO? get pagination;
  @override
  @JsonKey(ignore: true)
  _$$_MetaDTOCopyWith<_$_MetaDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
