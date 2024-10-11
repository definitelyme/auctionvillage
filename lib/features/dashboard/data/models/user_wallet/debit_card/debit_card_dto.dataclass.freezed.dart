// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of debit_card_dto.dataclass.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DebitCardDTO _$DebitCardDTOFromJson(Map<String, dynamic> json) {
  return _DebitCardDTO.fromJson(json);
}

/// @nodoc
mixin _$DebitCardDTO {
  @JsonKey(name: '_meta')
  MetaDTO? get meta => throw _privateConstructorUsedError;
  DebitCardDTOData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DebitCardDTOCopyWith<DebitCardDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DebitCardDTOCopyWith<$Res> {
  factory $DebitCardDTOCopyWith(
          DebitCardDTO value, $Res Function(DebitCardDTO) then) =
      _$DebitCardDTOCopyWithImpl<$Res, DebitCardDTO>;
  @useResult
  $Res call({@JsonKey(name: '_meta') MetaDTO? meta, DebitCardDTOData data});

  $MetaDTOCopyWith<$Res>? get meta;
  $DebitCardDTODataCopyWith<$Res> get data;
}

/// @nodoc
class _$DebitCardDTOCopyWithImpl<$Res, $Val extends DebitCardDTO>
    implements $DebitCardDTOCopyWith<$Res> {
  _$DebitCardDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = freezed,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDTO?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DebitCardDTOData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MetaDTOCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $MetaDTOCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DebitCardDTODataCopyWith<$Res> get data {
    return $DebitCardDTODataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DebitCardDTOCopyWith<$Res>
    implements $DebitCardDTOCopyWith<$Res> {
  factory _$$_DebitCardDTOCopyWith(
          _$_DebitCardDTO value, $Res Function(_$_DebitCardDTO) then) =
      __$$_DebitCardDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: '_meta') MetaDTO? meta, DebitCardDTOData data});

  @override
  $MetaDTOCopyWith<$Res>? get meta;
  @override
  $DebitCardDTODataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_DebitCardDTOCopyWithImpl<$Res>
    extends _$DebitCardDTOCopyWithImpl<$Res, _$_DebitCardDTO>
    implements _$$_DebitCardDTOCopyWith<$Res> {
  __$$_DebitCardDTOCopyWithImpl(
      _$_DebitCardDTO _value, $Res Function(_$_DebitCardDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = freezed,
    Object? data = null,
  }) {
    return _then(_$_DebitCardDTO(
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDTO?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DebitCardDTOData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DebitCardDTO extends _DebitCardDTO {
  const _$_DebitCardDTO({@JsonKey(name: '_meta') this.meta, required this.data})
      : super._();

  factory _$_DebitCardDTO.fromJson(Map<String, dynamic> json) =>
      _$$_DebitCardDTOFromJson(json);

  @override
  @JsonKey(name: '_meta')
  final MetaDTO? meta;
  @override
  final DebitCardDTOData data;

  @override
  String toString() {
    return 'DebitCardDTO(meta: $meta, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DebitCardDTO &&
            (identical(other.meta, meta) || other.meta == meta) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, meta, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DebitCardDTOCopyWith<_$_DebitCardDTO> get copyWith =>
      __$$_DebitCardDTOCopyWithImpl<_$_DebitCardDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DebitCardDTOToJson(
      this,
    );
  }
}

abstract class _DebitCardDTO extends DebitCardDTO {
  const factory _DebitCardDTO(
      {@JsonKey(name: '_meta') final MetaDTO? meta,
      required final DebitCardDTOData data}) = _$_DebitCardDTO;
  const _DebitCardDTO._() : super._();

  factory _DebitCardDTO.fromJson(Map<String, dynamic> json) =
      _$_DebitCardDTO.fromJson;

  @override
  @JsonKey(name: '_meta')
  MetaDTO? get meta;
  @override
  DebitCardDTOData get data;
  @override
  @JsonKey(ignore: true)
  _$$_DebitCardDTOCopyWith<_$_DebitCardDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

DebitCardDTOData _$DebitCardDTODataFromJson(Map<String, dynamic> json) {
  return _DebitCardDTOData.fromJson(json);
}

/// @nodoc
mixin _$DebitCardDTOData {
  @JsonKey(name: '_id')
  String? get uid => throw _privateConstructorUsedError;
  @BooleanSerializer()
  bool? get cardAdded => throw _privateConstructorUsedError;
  @BooleanSerializer()
  bool? get pinAdded => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  @DebitCardBrandSerializer()
  DebitCardBrand? get cardType => throw _privateConstructorUsedError;
  @JsonKey(name: 'card')
  String? get cardNumber => throw _privateConstructorUsedError;
  String? get cvv => throw _privateConstructorUsedError;
  String? get expiry => throw _privateConstructorUsedError;
  String? get maskedCard => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DebitCardDTODataCopyWith<DebitCardDTOData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DebitCardDTODataCopyWith<$Res> {
  factory $DebitCardDTODataCopyWith(
          DebitCardDTOData value, $Res Function(DebitCardDTOData) then) =
      _$DebitCardDTODataCopyWithImpl<$Res, DebitCardDTOData>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? uid,
      @BooleanSerializer() bool? cardAdded,
      @BooleanSerializer() bool? pinAdded,
      String? email,
      @DebitCardBrandSerializer() DebitCardBrand? cardType,
      @JsonKey(name: 'card') String? cardNumber,
      String? cvv,
      String? expiry,
      String? maskedCard,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt});
}

/// @nodoc
class _$DebitCardDTODataCopyWithImpl<$Res, $Val extends DebitCardDTOData>
    implements $DebitCardDTODataCopyWith<$Res> {
  _$DebitCardDTODataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = freezed,
    Object? cardAdded = freezed,
    Object? pinAdded = freezed,
    Object? email = freezed,
    Object? cardType = freezed,
    Object? cardNumber = freezed,
    Object? cvv = freezed,
    Object? expiry = freezed,
    Object? maskedCard = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      cardAdded: freezed == cardAdded
          ? _value.cardAdded
          : cardAdded // ignore: cast_nullable_to_non_nullable
              as bool?,
      pinAdded: freezed == pinAdded
          ? _value.pinAdded
          : pinAdded // ignore: cast_nullable_to_non_nullable
              as bool?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      cardType: freezed == cardType
          ? _value.cardType
          : cardType // ignore: cast_nullable_to_non_nullable
              as DebitCardBrand?,
      cardNumber: freezed == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      cvv: freezed == cvv
          ? _value.cvv
          : cvv // ignore: cast_nullable_to_non_nullable
              as String?,
      expiry: freezed == expiry
          ? _value.expiry
          : expiry // ignore: cast_nullable_to_non_nullable
              as String?,
      maskedCard: freezed == maskedCard
          ? _value.maskedCard
          : maskedCard // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DebitCardDTODataCopyWith<$Res>
    implements $DebitCardDTODataCopyWith<$Res> {
  factory _$$_DebitCardDTODataCopyWith(
          _$_DebitCardDTOData value, $Res Function(_$_DebitCardDTOData) then) =
      __$$_DebitCardDTODataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? uid,
      @BooleanSerializer() bool? cardAdded,
      @BooleanSerializer() bool? pinAdded,
      String? email,
      @DebitCardBrandSerializer() DebitCardBrand? cardType,
      @JsonKey(name: 'card') String? cardNumber,
      String? cvv,
      String? expiry,
      String? maskedCard,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt});
}

/// @nodoc
class __$$_DebitCardDTODataCopyWithImpl<$Res>
    extends _$DebitCardDTODataCopyWithImpl<$Res, _$_DebitCardDTOData>
    implements _$$_DebitCardDTODataCopyWith<$Res> {
  __$$_DebitCardDTODataCopyWithImpl(
      _$_DebitCardDTOData _value, $Res Function(_$_DebitCardDTOData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = freezed,
    Object? cardAdded = freezed,
    Object? pinAdded = freezed,
    Object? email = freezed,
    Object? cardType = freezed,
    Object? cardNumber = freezed,
    Object? cvv = freezed,
    Object? expiry = freezed,
    Object? maskedCard = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_DebitCardDTOData(
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      cardAdded: freezed == cardAdded
          ? _value.cardAdded
          : cardAdded // ignore: cast_nullable_to_non_nullable
              as bool?,
      pinAdded: freezed == pinAdded
          ? _value.pinAdded
          : pinAdded // ignore: cast_nullable_to_non_nullable
              as bool?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      cardType: freezed == cardType
          ? _value.cardType
          : cardType // ignore: cast_nullable_to_non_nullable
              as DebitCardBrand?,
      cardNumber: freezed == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      cvv: freezed == cvv
          ? _value.cvv
          : cvv // ignore: cast_nullable_to_non_nullable
              as String?,
      expiry: freezed == expiry
          ? _value.expiry
          : expiry // ignore: cast_nullable_to_non_nullable
              as String?,
      maskedCard: freezed == maskedCard
          ? _value.maskedCard
          : maskedCard // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DebitCardDTOData extends _DebitCardDTOData {
  const _$_DebitCardDTOData(
      {@JsonKey(name: '_id') this.uid,
      @BooleanSerializer() this.cardAdded,
      @BooleanSerializer() this.pinAdded,
      this.email,
      @DebitCardBrandSerializer() this.cardType,
      @JsonKey(name: 'card') this.cardNumber,
      this.cvv,
      this.expiry,
      this.maskedCard,
      @TimestampConverter() this.createdAt,
      @TimestampConverter() this.updatedAt})
      : super._();

  factory _$_DebitCardDTOData.fromJson(Map<String, dynamic> json) =>
      _$$_DebitCardDTODataFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? uid;
  @override
  @BooleanSerializer()
  final bool? cardAdded;
  @override
  @BooleanSerializer()
  final bool? pinAdded;
  @override
  final String? email;
  @override
  @DebitCardBrandSerializer()
  final DebitCardBrand? cardType;
  @override
  @JsonKey(name: 'card')
  final String? cardNumber;
  @override
  final String? cvv;
  @override
  final String? expiry;
  @override
  final String? maskedCard;
  @override
  @TimestampConverter()
  final DateTime? createdAt;
  @override
  @TimestampConverter()
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'DebitCardDTOData(uid: $uid, cardAdded: $cardAdded, pinAdded: $pinAdded, email: $email, cardType: $cardType, cardNumber: $cardNumber, cvv: $cvv, expiry: $expiry, maskedCard: $maskedCard, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DebitCardDTOData &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.cardAdded, cardAdded) ||
                other.cardAdded == cardAdded) &&
            (identical(other.pinAdded, pinAdded) ||
                other.pinAdded == pinAdded) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.cardType, cardType) ||
                other.cardType == cardType) &&
            (identical(other.cardNumber, cardNumber) ||
                other.cardNumber == cardNumber) &&
            (identical(other.cvv, cvv) || other.cvv == cvv) &&
            (identical(other.expiry, expiry) || other.expiry == expiry) &&
            (identical(other.maskedCard, maskedCard) ||
                other.maskedCard == maskedCard) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uid, cardAdded, pinAdded, email,
      cardType, cardNumber, cvv, expiry, maskedCard, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DebitCardDTODataCopyWith<_$_DebitCardDTOData> get copyWith =>
      __$$_DebitCardDTODataCopyWithImpl<_$_DebitCardDTOData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DebitCardDTODataToJson(
      this,
    );
  }
}

abstract class _DebitCardDTOData extends DebitCardDTOData {
  const factory _DebitCardDTOData(
      {@JsonKey(name: '_id') final String? uid,
      @BooleanSerializer() final bool? cardAdded,
      @BooleanSerializer() final bool? pinAdded,
      final String? email,
      @DebitCardBrandSerializer() final DebitCardBrand? cardType,
      @JsonKey(name: 'card') final String? cardNumber,
      final String? cvv,
      final String? expiry,
      final String? maskedCard,
      @TimestampConverter() final DateTime? createdAt,
      @TimestampConverter() final DateTime? updatedAt}) = _$_DebitCardDTOData;
  const _DebitCardDTOData._() : super._();

  factory _DebitCardDTOData.fromJson(Map<String, dynamic> json) =
      _$_DebitCardDTOData.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get uid;
  @override
  @BooleanSerializer()
  bool? get cardAdded;
  @override
  @BooleanSerializer()
  bool? get pinAdded;
  @override
  String? get email;
  @override
  @DebitCardBrandSerializer()
  DebitCardBrand? get cardType;
  @override
  @JsonKey(name: 'card')
  String? get cardNumber;
  @override
  String? get cvv;
  @override
  String? get expiry;
  @override
  String? get maskedCard;
  @override
  @TimestampConverter()
  DateTime? get createdAt;
  @override
  @TimestampConverter()
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_DebitCardDTODataCopyWith<_$_DebitCardDTOData> get copyWith =>
      throw _privateConstructorUsedError;
}

DebitCardListDTO _$DebitCardListDTOFromJson(Map<String, dynamic> json) {
  return _DebitCardListDTO.fromJson(json);
}

/// @nodoc
mixin _$DebitCardListDTO {
  @JsonKey(name: '_meta')
  MetaDTO? get meta => throw _privateConstructorUsedError;
  List<DebitCardDTOData> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DebitCardListDTOCopyWith<DebitCardListDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DebitCardListDTOCopyWith<$Res> {
  factory $DebitCardListDTOCopyWith(
          DebitCardListDTO value, $Res Function(DebitCardListDTO) then) =
      _$DebitCardListDTOCopyWithImpl<$Res, DebitCardListDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: '_meta') MetaDTO? meta, List<DebitCardDTOData> data});

  $MetaDTOCopyWith<$Res>? get meta;
}

/// @nodoc
class _$DebitCardListDTOCopyWithImpl<$Res, $Val extends DebitCardListDTO>
    implements $DebitCardListDTOCopyWith<$Res> {
  _$DebitCardListDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = freezed,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDTO?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DebitCardDTOData>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MetaDTOCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $MetaDTOCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DebitCardListDTOCopyWith<$Res>
    implements $DebitCardListDTOCopyWith<$Res> {
  factory _$$_DebitCardListDTOCopyWith(
          _$_DebitCardListDTO value, $Res Function(_$_DebitCardListDTO) then) =
      __$$_DebitCardListDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_meta') MetaDTO? meta, List<DebitCardDTOData> data});

  @override
  $MetaDTOCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$_DebitCardListDTOCopyWithImpl<$Res>
    extends _$DebitCardListDTOCopyWithImpl<$Res, _$_DebitCardListDTO>
    implements _$$_DebitCardListDTOCopyWith<$Res> {
  __$$_DebitCardListDTOCopyWithImpl(
      _$_DebitCardListDTO _value, $Res Function(_$_DebitCardListDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = freezed,
    Object? data = null,
  }) {
    return _then(_$_DebitCardListDTO(
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDTO?,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DebitCardDTOData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DebitCardListDTO extends _DebitCardListDTO {
  const _$_DebitCardListDTO(
      {@JsonKey(name: '_meta') this.meta,
      final List<DebitCardDTOData> data = const []})
      : _data = data,
        super._();

  factory _$_DebitCardListDTO.fromJson(Map<String, dynamic> json) =>
      _$$_DebitCardListDTOFromJson(json);

  @override
  @JsonKey(name: '_meta')
  final MetaDTO? meta;
  final List<DebitCardDTOData> _data;
  @override
  @JsonKey()
  List<DebitCardDTOData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'DebitCardListDTO(meta: $meta, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DebitCardListDTO &&
            (identical(other.meta, meta) || other.meta == meta) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, meta, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DebitCardListDTOCopyWith<_$_DebitCardListDTO> get copyWith =>
      __$$_DebitCardListDTOCopyWithImpl<_$_DebitCardListDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DebitCardListDTOToJson(
      this,
    );
  }
}

abstract class _DebitCardListDTO extends DebitCardListDTO {
  const factory _DebitCardListDTO(
      {@JsonKey(name: '_meta') final MetaDTO? meta,
      final List<DebitCardDTOData> data}) = _$_DebitCardListDTO;
  const _DebitCardListDTO._() : super._();

  factory _DebitCardListDTO.fromJson(Map<String, dynamic> json) =
      _$_DebitCardListDTO.fromJson;

  @override
  @JsonKey(name: '_meta')
  MetaDTO? get meta;
  @override
  List<DebitCardDTOData> get data;
  @override
  @JsonKey(ignore: true)
  _$$_DebitCardListDTOCopyWith<_$_DebitCardListDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
