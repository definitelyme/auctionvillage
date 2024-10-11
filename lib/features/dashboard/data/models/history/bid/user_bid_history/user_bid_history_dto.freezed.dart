// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of user_bid_history_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserBidHistoryDTO _$UserBidHistoryDTOFromJson(Map<String, dynamic> json) {
  return _UserBidHistoryDTO.fromJson(json);
}

/// @nodoc
mixin _$UserBidHistoryDTO {
  @JsonKey(name: '_meta')
  MetaDTO? get meta => throw _privateConstructorUsedError;
  _UserBidHistoryDTOData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserBidHistoryDTOCopyWith<UserBidHistoryDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserBidHistoryDTOCopyWith<$Res> {
  factory $UserBidHistoryDTOCopyWith(
          UserBidHistoryDTO value, $Res Function(UserBidHistoryDTO) then) =
      _$UserBidHistoryDTOCopyWithImpl<$Res, UserBidHistoryDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: '_meta') MetaDTO? meta, _UserBidHistoryDTOData data});

  $MetaDTOCopyWith<$Res>? get meta;
  _$UserBidHistoryDTODataCopyWith<$Res> get data;
}

/// @nodoc
class _$UserBidHistoryDTOCopyWithImpl<$Res, $Val extends UserBidHistoryDTO>
    implements $UserBidHistoryDTOCopyWith<$Res> {
  _$UserBidHistoryDTOCopyWithImpl(this._value, this._then);

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
              as _UserBidHistoryDTOData,
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
  _$UserBidHistoryDTODataCopyWith<$Res> get data {
    return _$UserBidHistoryDTODataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserBidHistoryDTOCopyWith<$Res>
    implements $UserBidHistoryDTOCopyWith<$Res> {
  factory _$$_UserBidHistoryDTOCopyWith(_$_UserBidHistoryDTO value,
          $Res Function(_$_UserBidHistoryDTO) then) =
      __$$_UserBidHistoryDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_meta') MetaDTO? meta, _UserBidHistoryDTOData data});

  @override
  $MetaDTOCopyWith<$Res>? get meta;
  @override
  _$UserBidHistoryDTODataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_UserBidHistoryDTOCopyWithImpl<$Res>
    extends _$UserBidHistoryDTOCopyWithImpl<$Res, _$_UserBidHistoryDTO>
    implements _$$_UserBidHistoryDTOCopyWith<$Res> {
  __$$_UserBidHistoryDTOCopyWithImpl(
      _$_UserBidHistoryDTO _value, $Res Function(_$_UserBidHistoryDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = freezed,
    Object? data = null,
  }) {
    return _then(_$_UserBidHistoryDTO(
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDTO?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as _UserBidHistoryDTOData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserBidHistoryDTO extends _UserBidHistoryDTO {
  const _$_UserBidHistoryDTO(
      {@JsonKey(name: '_meta') this.meta, required this.data})
      : super._();

  factory _$_UserBidHistoryDTO.fromJson(Map<String, dynamic> json) =>
      _$$_UserBidHistoryDTOFromJson(json);

  @override
  @JsonKey(name: '_meta')
  final MetaDTO? meta;
  @override
  final _UserBidHistoryDTOData data;

  @override
  String toString() {
    return 'UserBidHistoryDTO(meta: $meta, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserBidHistoryDTO &&
            (identical(other.meta, meta) || other.meta == meta) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, meta, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserBidHistoryDTOCopyWith<_$_UserBidHistoryDTO> get copyWith =>
      __$$_UserBidHistoryDTOCopyWithImpl<_$_UserBidHistoryDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserBidHistoryDTOToJson(
      this,
    );
  }
}

abstract class _UserBidHistoryDTO extends UserBidHistoryDTO {
  const factory _UserBidHistoryDTO(
      {@JsonKey(name: '_meta') final MetaDTO? meta,
      required final _UserBidHistoryDTOData data}) = _$_UserBidHistoryDTO;
  const _UserBidHistoryDTO._() : super._();

  factory _UserBidHistoryDTO.fromJson(Map<String, dynamic> json) =
      _$_UserBidHistoryDTO.fromJson;

  @override
  @JsonKey(name: '_meta')
  MetaDTO? get meta;
  @override
  _UserBidHistoryDTOData get data;
  @override
  @JsonKey(ignore: true)
  _$$_UserBidHistoryDTOCopyWith<_$_UserBidHistoryDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

_UserBidHistoryDTOData _$_UserBidHistoryDTODataFromJson(
    Map<String, dynamic> json) {
  return __UserBidHistoryDTOData.fromJson(json);
}

/// @nodoc
mixin _$_UserBidHistoryDTOData {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  @IntegerSerializer()
  double? get totalAuctionsParticipated => throw _privateConstructorUsedError;
  @IntegerSerializer()
  double? get totalWinningBid => throw _privateConstructorUsedError;
  @IntegerSerializer()
  double? get totalAmountSpent => throw _privateConstructorUsedError;
  List<DealDTOData> get dealHistory => throw _privateConstructorUsedError;
  @IntegerSerializer()
  double? get amount => throw _privateConstructorUsedError;
  DealDTOData? get deal => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UserBidHistoryDTODataCopyWith<_UserBidHistoryDTOData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UserBidHistoryDTODataCopyWith<$Res> {
  factory _$UserBidHistoryDTODataCopyWith(_UserBidHistoryDTOData value,
          $Res Function(_UserBidHistoryDTOData) then) =
      __$UserBidHistoryDTODataCopyWithImpl<$Res, _UserBidHistoryDTOData>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @IntegerSerializer() double? totalAuctionsParticipated,
      @IntegerSerializer() double? totalWinningBid,
      @IntegerSerializer() double? totalAmountSpent,
      List<DealDTOData> dealHistory,
      @IntegerSerializer() double? amount,
      DealDTOData? deal,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt});

  $DealDTODataCopyWith<$Res>? get deal;
}

/// @nodoc
class __$UserBidHistoryDTODataCopyWithImpl<$Res,
        $Val extends _UserBidHistoryDTOData>
    implements _$UserBidHistoryDTODataCopyWith<$Res> {
  __$UserBidHistoryDTODataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? totalAuctionsParticipated = freezed,
    Object? totalWinningBid = freezed,
    Object? totalAmountSpent = freezed,
    Object? dealHistory = null,
    Object? amount = freezed,
    Object? deal = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      totalAuctionsParticipated: freezed == totalAuctionsParticipated
          ? _value.totalAuctionsParticipated
          : totalAuctionsParticipated // ignore: cast_nullable_to_non_nullable
              as double?,
      totalWinningBid: freezed == totalWinningBid
          ? _value.totalWinningBid
          : totalWinningBid // ignore: cast_nullable_to_non_nullable
              as double?,
      totalAmountSpent: freezed == totalAmountSpent
          ? _value.totalAmountSpent
          : totalAmountSpent // ignore: cast_nullable_to_non_nullable
              as double?,
      dealHistory: null == dealHistory
          ? _value.dealHistory
          : dealHistory // ignore: cast_nullable_to_non_nullable
              as List<DealDTOData>,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      deal: freezed == deal
          ? _value.deal
          : deal // ignore: cast_nullable_to_non_nullable
              as DealDTOData?,
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

  @override
  @pragma('vm:prefer-inline')
  $DealDTODataCopyWith<$Res>? get deal {
    if (_value.deal == null) {
      return null;
    }

    return $DealDTODataCopyWith<$Res>(_value.deal!, (value) {
      return _then(_value.copyWith(deal: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$__UserBidHistoryDTODataCopyWith<$Res>
    implements _$UserBidHistoryDTODataCopyWith<$Res> {
  factory _$$__UserBidHistoryDTODataCopyWith(_$__UserBidHistoryDTOData value,
          $Res Function(_$__UserBidHistoryDTOData) then) =
      __$$__UserBidHistoryDTODataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @IntegerSerializer() double? totalAuctionsParticipated,
      @IntegerSerializer() double? totalWinningBid,
      @IntegerSerializer() double? totalAmountSpent,
      List<DealDTOData> dealHistory,
      @IntegerSerializer() double? amount,
      DealDTOData? deal,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt});

  @override
  $DealDTODataCopyWith<$Res>? get deal;
}

/// @nodoc
class __$$__UserBidHistoryDTODataCopyWithImpl<$Res>
    extends __$UserBidHistoryDTODataCopyWithImpl<$Res,
        _$__UserBidHistoryDTOData>
    implements _$$__UserBidHistoryDTODataCopyWith<$Res> {
  __$$__UserBidHistoryDTODataCopyWithImpl(_$__UserBidHistoryDTOData _value,
      $Res Function(_$__UserBidHistoryDTOData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? totalAuctionsParticipated = freezed,
    Object? totalWinningBid = freezed,
    Object? totalAmountSpent = freezed,
    Object? dealHistory = null,
    Object? amount = freezed,
    Object? deal = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$__UserBidHistoryDTOData(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      totalAuctionsParticipated: freezed == totalAuctionsParticipated
          ? _value.totalAuctionsParticipated
          : totalAuctionsParticipated // ignore: cast_nullable_to_non_nullable
              as double?,
      totalWinningBid: freezed == totalWinningBid
          ? _value.totalWinningBid
          : totalWinningBid // ignore: cast_nullable_to_non_nullable
              as double?,
      totalAmountSpent: freezed == totalAmountSpent
          ? _value.totalAmountSpent
          : totalAmountSpent // ignore: cast_nullable_to_non_nullable
              as double?,
      dealHistory: null == dealHistory
          ? _value._dealHistory
          : dealHistory // ignore: cast_nullable_to_non_nullable
              as List<DealDTOData>,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      deal: freezed == deal
          ? _value.deal
          : deal // ignore: cast_nullable_to_non_nullable
              as DealDTOData?,
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
class _$__UserBidHistoryDTOData extends __UserBidHistoryDTOData {
  const _$__UserBidHistoryDTOData(
      {@JsonKey(name: '_id') this.id,
      @IntegerSerializer() this.totalAuctionsParticipated,
      @IntegerSerializer() this.totalWinningBid,
      @IntegerSerializer() this.totalAmountSpent,
      final List<DealDTOData> dealHistory = const [],
      @IntegerSerializer() this.amount,
      this.deal,
      @TimestampConverter() this.createdAt,
      @TimestampConverter() this.updatedAt})
      : _dealHistory = dealHistory,
        super._();

  factory _$__UserBidHistoryDTOData.fromJson(Map<String, dynamic> json) =>
      _$$__UserBidHistoryDTODataFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  @IntegerSerializer()
  final double? totalAuctionsParticipated;
  @override
  @IntegerSerializer()
  final double? totalWinningBid;
  @override
  @IntegerSerializer()
  final double? totalAmountSpent;
  final List<DealDTOData> _dealHistory;
  @override
  @JsonKey()
  List<DealDTOData> get dealHistory {
    if (_dealHistory is EqualUnmodifiableListView) return _dealHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dealHistory);
  }

  @override
  @IntegerSerializer()
  final double? amount;
  @override
  final DealDTOData? deal;
  @override
  @TimestampConverter()
  final DateTime? createdAt;
  @override
  @TimestampConverter()
  final DateTime? updatedAt;

  @override
  String toString() {
    return '_UserBidHistoryDTOData(id: $id, totalAuctionsParticipated: $totalAuctionsParticipated, totalWinningBid: $totalWinningBid, totalAmountSpent: $totalAmountSpent, dealHistory: $dealHistory, amount: $amount, deal: $deal, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$__UserBidHistoryDTOData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.totalAuctionsParticipated,
                    totalAuctionsParticipated) ||
                other.totalAuctionsParticipated == totalAuctionsParticipated) &&
            (identical(other.totalWinningBid, totalWinningBid) ||
                other.totalWinningBid == totalWinningBid) &&
            (identical(other.totalAmountSpent, totalAmountSpent) ||
                other.totalAmountSpent == totalAmountSpent) &&
            const DeepCollectionEquality()
                .equals(other._dealHistory, _dealHistory) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.deal, deal) || other.deal == deal) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      totalAuctionsParticipated,
      totalWinningBid,
      totalAmountSpent,
      const DeepCollectionEquality().hash(_dealHistory),
      amount,
      deal,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$__UserBidHistoryDTODataCopyWith<_$__UserBidHistoryDTOData> get copyWith =>
      __$$__UserBidHistoryDTODataCopyWithImpl<_$__UserBidHistoryDTOData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$__UserBidHistoryDTODataToJson(
      this,
    );
  }
}

abstract class __UserBidHistoryDTOData extends _UserBidHistoryDTOData {
  const factory __UserBidHistoryDTOData(
          {@JsonKey(name: '_id') final String? id,
          @IntegerSerializer() final double? totalAuctionsParticipated,
          @IntegerSerializer() final double? totalWinningBid,
          @IntegerSerializer() final double? totalAmountSpent,
          final List<DealDTOData> dealHistory,
          @IntegerSerializer() final double? amount,
          final DealDTOData? deal,
          @TimestampConverter() final DateTime? createdAt,
          @TimestampConverter() final DateTime? updatedAt}) =
      _$__UserBidHistoryDTOData;
  const __UserBidHistoryDTOData._() : super._();

  factory __UserBidHistoryDTOData.fromJson(Map<String, dynamic> json) =
      _$__UserBidHistoryDTOData.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  @IntegerSerializer()
  double? get totalAuctionsParticipated;
  @override
  @IntegerSerializer()
  double? get totalWinningBid;
  @override
  @IntegerSerializer()
  double? get totalAmountSpent;
  @override
  List<DealDTOData> get dealHistory;
  @override
  @IntegerSerializer()
  double? get amount;
  @override
  DealDTOData? get deal;
  @override
  @TimestampConverter()
  DateTime? get createdAt;
  @override
  @TimestampConverter()
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$__UserBidHistoryDTODataCopyWith<_$__UserBidHistoryDTOData> get copyWith =>
      throw _privateConstructorUsedError;
}

UserBidHistoryListDTO _$UserBidHistoryListDTOFromJson(
    Map<String, dynamic> json) {
  return _UserBidHistoryListDTO.fromJson(json);
}

/// @nodoc
mixin _$UserBidHistoryListDTO {
  @JsonKey(name: '_meta')
  MetaDTO? get meta => throw _privateConstructorUsedError;
  List<_UserBidHistoryDTOData> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserBidHistoryListDTOCopyWith<UserBidHistoryListDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserBidHistoryListDTOCopyWith<$Res> {
  factory $UserBidHistoryListDTOCopyWith(UserBidHistoryListDTO value,
          $Res Function(UserBidHistoryListDTO) then) =
      _$UserBidHistoryListDTOCopyWithImpl<$Res, UserBidHistoryListDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: '_meta') MetaDTO? meta,
      List<_UserBidHistoryDTOData> data});

  $MetaDTOCopyWith<$Res>? get meta;
}

/// @nodoc
class _$UserBidHistoryListDTOCopyWithImpl<$Res,
        $Val extends UserBidHistoryListDTO>
    implements $UserBidHistoryListDTOCopyWith<$Res> {
  _$UserBidHistoryListDTOCopyWithImpl(this._value, this._then);

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
              as List<_UserBidHistoryDTOData>,
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
abstract class _$$_UserBidHistoryListDTOCopyWith<$Res>
    implements $UserBidHistoryListDTOCopyWith<$Res> {
  factory _$$_UserBidHistoryListDTOCopyWith(_$_UserBidHistoryListDTO value,
          $Res Function(_$_UserBidHistoryListDTO) then) =
      __$$_UserBidHistoryListDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_meta') MetaDTO? meta,
      List<_UserBidHistoryDTOData> data});

  @override
  $MetaDTOCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$_UserBidHistoryListDTOCopyWithImpl<$Res>
    extends _$UserBidHistoryListDTOCopyWithImpl<$Res, _$_UserBidHistoryListDTO>
    implements _$$_UserBidHistoryListDTOCopyWith<$Res> {
  __$$_UserBidHistoryListDTOCopyWithImpl(_$_UserBidHistoryListDTO _value,
      $Res Function(_$_UserBidHistoryListDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = freezed,
    Object? data = null,
  }) {
    return _then(_$_UserBidHistoryListDTO(
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDTO?,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<_UserBidHistoryDTOData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserBidHistoryListDTO extends _UserBidHistoryListDTO {
  const _$_UserBidHistoryListDTO(
      {@JsonKey(name: '_meta') this.meta,
      final List<_UserBidHistoryDTOData> data = const []})
      : _data = data,
        super._();

  factory _$_UserBidHistoryListDTO.fromJson(Map<String, dynamic> json) =>
      _$$_UserBidHistoryListDTOFromJson(json);

  @override
  @JsonKey(name: '_meta')
  final MetaDTO? meta;
  final List<_UserBidHistoryDTOData> _data;
  @override
  @JsonKey()
  List<_UserBidHistoryDTOData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'UserBidHistoryListDTO(meta: $meta, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserBidHistoryListDTO &&
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
  _$$_UserBidHistoryListDTOCopyWith<_$_UserBidHistoryListDTO> get copyWith =>
      __$$_UserBidHistoryListDTOCopyWithImpl<_$_UserBidHistoryListDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserBidHistoryListDTOToJson(
      this,
    );
  }
}

abstract class _UserBidHistoryListDTO extends UserBidHistoryListDTO {
  const factory _UserBidHistoryListDTO(
      {@JsonKey(name: '_meta') final MetaDTO? meta,
      final List<_UserBidHistoryDTOData> data}) = _$_UserBidHistoryListDTO;
  const _UserBidHistoryListDTO._() : super._();

  factory _UserBidHistoryListDTO.fromJson(Map<String, dynamic> json) =
      _$_UserBidHistoryListDTO.fromJson;

  @override
  @JsonKey(name: '_meta')
  MetaDTO? get meta;
  @override
  List<_UserBidHistoryDTOData> get data;
  @override
  @JsonKey(ignore: true)
  _$$_UserBidHistoryListDTOCopyWith<_$_UserBidHistoryListDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
