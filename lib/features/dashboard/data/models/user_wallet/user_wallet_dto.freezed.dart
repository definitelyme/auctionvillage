// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of user_wallet_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserWalletDTO _$UserWalletDTOFromJson(Map<String, dynamic> json) {
  return _UserWalletDTO.fromJson(json);
}

/// @nodoc
mixin _$UserWalletDTO {
  @JsonKey(name: '_meta')
  MetaDTO? get meta =>
      throw _privateConstructorUsedError; // required _UserWalletDTOData data,
  _UserWalletDTOData? get data => throw _privateConstructorUsedError;
  _UserWalletDTOData? get wallet => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserWalletDTOCopyWith<UserWalletDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserWalletDTOCopyWith<$Res> {
  factory $UserWalletDTOCopyWith(
          UserWalletDTO value, $Res Function(UserWalletDTO) then) =
      _$UserWalletDTOCopyWithImpl<$Res, UserWalletDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: '_meta') MetaDTO? meta,
      _UserWalletDTOData? data,
      _UserWalletDTOData? wallet});

  $MetaDTOCopyWith<$Res>? get meta;
  _$UserWalletDTODataCopyWith<$Res>? get data;
  _$UserWalletDTODataCopyWith<$Res>? get wallet;
}

/// @nodoc
class _$UserWalletDTOCopyWithImpl<$Res, $Val extends UserWalletDTO>
    implements $UserWalletDTOCopyWith<$Res> {
  _$UserWalletDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = freezed,
    Object? data = freezed,
    Object? wallet = freezed,
  }) {
    return _then(_value.copyWith(
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDTO?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as _UserWalletDTOData?,
      wallet: freezed == wallet
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as _UserWalletDTOData?,
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
  _$UserWalletDTODataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return _$UserWalletDTODataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  _$UserWalletDTODataCopyWith<$Res>? get wallet {
    if (_value.wallet == null) {
      return null;
    }

    return _$UserWalletDTODataCopyWith<$Res>(_value.wallet!, (value) {
      return _then(_value.copyWith(wallet: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserWalletDTOCopyWith<$Res>
    implements $UserWalletDTOCopyWith<$Res> {
  factory _$$_UserWalletDTOCopyWith(
          _$_UserWalletDTO value, $Res Function(_$_UserWalletDTO) then) =
      __$$_UserWalletDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_meta') MetaDTO? meta,
      _UserWalletDTOData? data,
      _UserWalletDTOData? wallet});

  @override
  $MetaDTOCopyWith<$Res>? get meta;
  @override
  _$UserWalletDTODataCopyWith<$Res>? get data;
  @override
  _$UserWalletDTODataCopyWith<$Res>? get wallet;
}

/// @nodoc
class __$$_UserWalletDTOCopyWithImpl<$Res>
    extends _$UserWalletDTOCopyWithImpl<$Res, _$_UserWalletDTO>
    implements _$$_UserWalletDTOCopyWith<$Res> {
  __$$_UserWalletDTOCopyWithImpl(
      _$_UserWalletDTO _value, $Res Function(_$_UserWalletDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = freezed,
    Object? data = freezed,
    Object? wallet = freezed,
  }) {
    return _then(_$_UserWalletDTO(
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDTO?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as _UserWalletDTOData?,
      wallet: freezed == wallet
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as _UserWalletDTOData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserWalletDTO extends _UserWalletDTO {
  const _$_UserWalletDTO(
      {@JsonKey(name: '_meta') this.meta, this.data, this.wallet})
      : super._();

  factory _$_UserWalletDTO.fromJson(Map<String, dynamic> json) =>
      _$$_UserWalletDTOFromJson(json);

  @override
  @JsonKey(name: '_meta')
  final MetaDTO? meta;
// required _UserWalletDTOData data,
  @override
  final _UserWalletDTOData? data;
  @override
  final _UserWalletDTOData? wallet;

  @override
  String toString() {
    return 'UserWalletDTO(meta: $meta, data: $data, wallet: $wallet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserWalletDTO &&
            (identical(other.meta, meta) || other.meta == meta) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.wallet, wallet) || other.wallet == wallet));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, meta, data, wallet);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserWalletDTOCopyWith<_$_UserWalletDTO> get copyWith =>
      __$$_UserWalletDTOCopyWithImpl<_$_UserWalletDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserWalletDTOToJson(
      this,
    );
  }
}

abstract class _UserWalletDTO extends UserWalletDTO {
  const factory _UserWalletDTO(
      {@JsonKey(name: '_meta') final MetaDTO? meta,
      final _UserWalletDTOData? data,
      final _UserWalletDTOData? wallet}) = _$_UserWalletDTO;
  const _UserWalletDTO._() : super._();

  factory _UserWalletDTO.fromJson(Map<String, dynamic> json) =
      _$_UserWalletDTO.fromJson;

  @override
  @JsonKey(name: '_meta')
  MetaDTO? get meta;
  @override // required _UserWalletDTOData data,
  _UserWalletDTOData? get data;
  @override
  _UserWalletDTOData? get wallet;
  @override
  @JsonKey(ignore: true)
  _$$_UserWalletDTOCopyWith<_$_UserWalletDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

_UserWalletDTOData _$_UserWalletDTODataFromJson(Map<String, dynamic> json) {
  return __UserWalletDTOData.fromJson(json);
}

/// @nodoc
mixin _$_UserWalletDTOData {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  @DoubleSerializer()
  double? get balance => throw _privateConstructorUsedError;
  @DoubleSerializer()
  double? get totalBalance => throw _privateConstructorUsedError;
  @DoubleSerializer()
  double? get revenue => throw _privateConstructorUsedError;
  @DoubleSerializer()
  double? get totalRevenue => throw _privateConstructorUsedError;
  @DoubleSerializer()
  double? get expense => throw _privateConstructorUsedError;
  @DoubleSerializer()
  double? get totalExpense => throw _privateConstructorUsedError;
  @DoubleSerializer()
  double? get expendingExpense => throw _privateConstructorUsedError;
  @BooleanSerializer()
  bool? get active => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_freezed')
  @BooleanSerializer()
  bool? get isFrozen => throw _privateConstructorUsedError;
  List<_UserWalletTransactionDTO> get transactions =>
      throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UserWalletDTODataCopyWith<_UserWalletDTOData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UserWalletDTODataCopyWith<$Res> {
  factory _$UserWalletDTODataCopyWith(
          _UserWalletDTOData value, $Res Function(_UserWalletDTOData) then) =
      __$UserWalletDTODataCopyWithImpl<$Res, _UserWalletDTOData>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @DoubleSerializer() double? balance,
      @DoubleSerializer() double? totalBalance,
      @DoubleSerializer() double? revenue,
      @DoubleSerializer() double? totalRevenue,
      @DoubleSerializer() double? expense,
      @DoubleSerializer() double? totalExpense,
      @DoubleSerializer() double? expendingExpense,
      @BooleanSerializer() bool? active,
      @JsonKey(name: 'is_freezed') @BooleanSerializer() bool? isFrozen,
      List<_UserWalletTransactionDTO> transactions,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt});
}

/// @nodoc
class __$UserWalletDTODataCopyWithImpl<$Res, $Val extends _UserWalletDTOData>
    implements _$UserWalletDTODataCopyWith<$Res> {
  __$UserWalletDTODataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? balance = freezed,
    Object? totalBalance = freezed,
    Object? revenue = freezed,
    Object? totalRevenue = freezed,
    Object? expense = freezed,
    Object? totalExpense = freezed,
    Object? expendingExpense = freezed,
    Object? active = freezed,
    Object? isFrozen = freezed,
    Object? transactions = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double?,
      totalBalance: freezed == totalBalance
          ? _value.totalBalance
          : totalBalance // ignore: cast_nullable_to_non_nullable
              as double?,
      revenue: freezed == revenue
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as double?,
      totalRevenue: freezed == totalRevenue
          ? _value.totalRevenue
          : totalRevenue // ignore: cast_nullable_to_non_nullable
              as double?,
      expense: freezed == expense
          ? _value.expense
          : expense // ignore: cast_nullable_to_non_nullable
              as double?,
      totalExpense: freezed == totalExpense
          ? _value.totalExpense
          : totalExpense // ignore: cast_nullable_to_non_nullable
              as double?,
      expendingExpense: freezed == expendingExpense
          ? _value.expendingExpense
          : expendingExpense // ignore: cast_nullable_to_non_nullable
              as double?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      isFrozen: freezed == isFrozen
          ? _value.isFrozen
          : isFrozen // ignore: cast_nullable_to_non_nullable
              as bool?,
      transactions: null == transactions
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<_UserWalletTransactionDTO>,
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
abstract class _$$__UserWalletDTODataCopyWith<$Res>
    implements _$UserWalletDTODataCopyWith<$Res> {
  factory _$$__UserWalletDTODataCopyWith(_$__UserWalletDTOData value,
          $Res Function(_$__UserWalletDTOData) then) =
      __$$__UserWalletDTODataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @DoubleSerializer() double? balance,
      @DoubleSerializer() double? totalBalance,
      @DoubleSerializer() double? revenue,
      @DoubleSerializer() double? totalRevenue,
      @DoubleSerializer() double? expense,
      @DoubleSerializer() double? totalExpense,
      @DoubleSerializer() double? expendingExpense,
      @BooleanSerializer() bool? active,
      @JsonKey(name: 'is_freezed') @BooleanSerializer() bool? isFrozen,
      List<_UserWalletTransactionDTO> transactions,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt});
}

/// @nodoc
class __$$__UserWalletDTODataCopyWithImpl<$Res>
    extends __$UserWalletDTODataCopyWithImpl<$Res, _$__UserWalletDTOData>
    implements _$$__UserWalletDTODataCopyWith<$Res> {
  __$$__UserWalletDTODataCopyWithImpl(
      _$__UserWalletDTOData _value, $Res Function(_$__UserWalletDTOData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? balance = freezed,
    Object? totalBalance = freezed,
    Object? revenue = freezed,
    Object? totalRevenue = freezed,
    Object? expense = freezed,
    Object? totalExpense = freezed,
    Object? expendingExpense = freezed,
    Object? active = freezed,
    Object? isFrozen = freezed,
    Object? transactions = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$__UserWalletDTOData(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double?,
      totalBalance: freezed == totalBalance
          ? _value.totalBalance
          : totalBalance // ignore: cast_nullable_to_non_nullable
              as double?,
      revenue: freezed == revenue
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as double?,
      totalRevenue: freezed == totalRevenue
          ? _value.totalRevenue
          : totalRevenue // ignore: cast_nullable_to_non_nullable
              as double?,
      expense: freezed == expense
          ? _value.expense
          : expense // ignore: cast_nullable_to_non_nullable
              as double?,
      totalExpense: freezed == totalExpense
          ? _value.totalExpense
          : totalExpense // ignore: cast_nullable_to_non_nullable
              as double?,
      expendingExpense: freezed == expendingExpense
          ? _value.expendingExpense
          : expendingExpense // ignore: cast_nullable_to_non_nullable
              as double?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      isFrozen: freezed == isFrozen
          ? _value.isFrozen
          : isFrozen // ignore: cast_nullable_to_non_nullable
              as bool?,
      transactions: null == transactions
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<_UserWalletTransactionDTO>,
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
class _$__UserWalletDTOData extends __UserWalletDTOData {
  const _$__UserWalletDTOData(
      {@JsonKey(name: '_id') this.id,
      @DoubleSerializer() this.balance,
      @DoubleSerializer() this.totalBalance,
      @DoubleSerializer() this.revenue,
      @DoubleSerializer() this.totalRevenue,
      @DoubleSerializer() this.expense,
      @DoubleSerializer() this.totalExpense,
      @DoubleSerializer() this.expendingExpense,
      @BooleanSerializer() this.active,
      @JsonKey(name: 'is_freezed') @BooleanSerializer() this.isFrozen,
      final List<_UserWalletTransactionDTO> transactions = const [],
      @TimestampConverter() this.createdAt,
      @TimestampConverter() this.updatedAt})
      : _transactions = transactions,
        super._();

  factory _$__UserWalletDTOData.fromJson(Map<String, dynamic> json) =>
      _$$__UserWalletDTODataFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  @DoubleSerializer()
  final double? balance;
  @override
  @DoubleSerializer()
  final double? totalBalance;
  @override
  @DoubleSerializer()
  final double? revenue;
  @override
  @DoubleSerializer()
  final double? totalRevenue;
  @override
  @DoubleSerializer()
  final double? expense;
  @override
  @DoubleSerializer()
  final double? totalExpense;
  @override
  @DoubleSerializer()
  final double? expendingExpense;
  @override
  @BooleanSerializer()
  final bool? active;
  @override
  @JsonKey(name: 'is_freezed')
  @BooleanSerializer()
  final bool? isFrozen;
  final List<_UserWalletTransactionDTO> _transactions;
  @override
  @JsonKey()
  List<_UserWalletTransactionDTO> get transactions {
    if (_transactions is EqualUnmodifiableListView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  @override
  @TimestampConverter()
  final DateTime? createdAt;
  @override
  @TimestampConverter()
  final DateTime? updatedAt;

  @override
  String toString() {
    return '_UserWalletDTOData(id: $id, balance: $balance, totalBalance: $totalBalance, revenue: $revenue, totalRevenue: $totalRevenue, expense: $expense, totalExpense: $totalExpense, expendingExpense: $expendingExpense, active: $active, isFrozen: $isFrozen, transactions: $transactions, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$__UserWalletDTOData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.totalBalance, totalBalance) ||
                other.totalBalance == totalBalance) &&
            (identical(other.revenue, revenue) || other.revenue == revenue) &&
            (identical(other.totalRevenue, totalRevenue) ||
                other.totalRevenue == totalRevenue) &&
            (identical(other.expense, expense) || other.expense == expense) &&
            (identical(other.totalExpense, totalExpense) ||
                other.totalExpense == totalExpense) &&
            (identical(other.expendingExpense, expendingExpense) ||
                other.expendingExpense == expendingExpense) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.isFrozen, isFrozen) ||
                other.isFrozen == isFrozen) &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions) &&
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
      balance,
      totalBalance,
      revenue,
      totalRevenue,
      expense,
      totalExpense,
      expendingExpense,
      active,
      isFrozen,
      const DeepCollectionEquality().hash(_transactions),
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$__UserWalletDTODataCopyWith<_$__UserWalletDTOData> get copyWith =>
      __$$__UserWalletDTODataCopyWithImpl<_$__UserWalletDTOData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$__UserWalletDTODataToJson(
      this,
    );
  }
}

abstract class __UserWalletDTOData extends _UserWalletDTOData {
  const factory __UserWalletDTOData(
      {@JsonKey(name: '_id') final String? id,
      @DoubleSerializer() final double? balance,
      @DoubleSerializer() final double? totalBalance,
      @DoubleSerializer() final double? revenue,
      @DoubleSerializer() final double? totalRevenue,
      @DoubleSerializer() final double? expense,
      @DoubleSerializer() final double? totalExpense,
      @DoubleSerializer() final double? expendingExpense,
      @BooleanSerializer() final bool? active,
      @JsonKey(name: 'is_freezed') @BooleanSerializer() final bool? isFrozen,
      final List<_UserWalletTransactionDTO> transactions,
      @TimestampConverter() final DateTime? createdAt,
      @TimestampConverter() final DateTime? updatedAt}) = _$__UserWalletDTOData;
  const __UserWalletDTOData._() : super._();

  factory __UserWalletDTOData.fromJson(Map<String, dynamic> json) =
      _$__UserWalletDTOData.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  @DoubleSerializer()
  double? get balance;
  @override
  @DoubleSerializer()
  double? get totalBalance;
  @override
  @DoubleSerializer()
  double? get revenue;
  @override
  @DoubleSerializer()
  double? get totalRevenue;
  @override
  @DoubleSerializer()
  double? get expense;
  @override
  @DoubleSerializer()
  double? get totalExpense;
  @override
  @DoubleSerializer()
  double? get expendingExpense;
  @override
  @BooleanSerializer()
  bool? get active;
  @override
  @JsonKey(name: 'is_freezed')
  @BooleanSerializer()
  bool? get isFrozen;
  @override
  List<_UserWalletTransactionDTO> get transactions;
  @override
  @TimestampConverter()
  DateTime? get createdAt;
  @override
  @TimestampConverter()
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$__UserWalletDTODataCopyWith<_$__UserWalletDTOData> get copyWith =>
      throw _privateConstructorUsedError;
}

UserWalletListDTO _$UserWalletListDTOFromJson(Map<String, dynamic> json) {
  return _UserWalletListDTO.fromJson(json);
}

/// @nodoc
mixin _$UserWalletListDTO {
  @JsonKey(name: '_meta')
  MetaDTO? get meta => throw _privateConstructorUsedError;
  List<_UserWalletDTOData> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserWalletListDTOCopyWith<UserWalletListDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserWalletListDTOCopyWith<$Res> {
  factory $UserWalletListDTOCopyWith(
          UserWalletListDTO value, $Res Function(UserWalletListDTO) then) =
      _$UserWalletListDTOCopyWithImpl<$Res, UserWalletListDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: '_meta') MetaDTO? meta, List<_UserWalletDTOData> data});

  $MetaDTOCopyWith<$Res>? get meta;
}

/// @nodoc
class _$UserWalletListDTOCopyWithImpl<$Res, $Val extends UserWalletListDTO>
    implements $UserWalletListDTOCopyWith<$Res> {
  _$UserWalletListDTOCopyWithImpl(this._value, this._then);

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
              as List<_UserWalletDTOData>,
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
abstract class _$$_UserWalletListDTOCopyWith<$Res>
    implements $UserWalletListDTOCopyWith<$Res> {
  factory _$$_UserWalletListDTOCopyWith(_$_UserWalletListDTO value,
          $Res Function(_$_UserWalletListDTO) then) =
      __$$_UserWalletListDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_meta') MetaDTO? meta, List<_UserWalletDTOData> data});

  @override
  $MetaDTOCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$_UserWalletListDTOCopyWithImpl<$Res>
    extends _$UserWalletListDTOCopyWithImpl<$Res, _$_UserWalletListDTO>
    implements _$$_UserWalletListDTOCopyWith<$Res> {
  __$$_UserWalletListDTOCopyWithImpl(
      _$_UserWalletListDTO _value, $Res Function(_$_UserWalletListDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = freezed,
    Object? data = null,
  }) {
    return _then(_$_UserWalletListDTO(
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDTO?,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<_UserWalletDTOData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserWalletListDTO extends _UserWalletListDTO {
  const _$_UserWalletListDTO(
      {@JsonKey(name: '_meta') this.meta,
      final List<_UserWalletDTOData> data = const []})
      : _data = data,
        super._();

  factory _$_UserWalletListDTO.fromJson(Map<String, dynamic> json) =>
      _$$_UserWalletListDTOFromJson(json);

  @override
  @JsonKey(name: '_meta')
  final MetaDTO? meta;
  final List<_UserWalletDTOData> _data;
  @override
  @JsonKey()
  List<_UserWalletDTOData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'UserWalletListDTO(meta: $meta, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserWalletListDTO &&
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
  _$$_UserWalletListDTOCopyWith<_$_UserWalletListDTO> get copyWith =>
      __$$_UserWalletListDTOCopyWithImpl<_$_UserWalletListDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserWalletListDTOToJson(
      this,
    );
  }
}

abstract class _UserWalletListDTO extends UserWalletListDTO {
  const factory _UserWalletListDTO(
      {@JsonKey(name: '_meta') final MetaDTO? meta,
      final List<_UserWalletDTOData> data}) = _$_UserWalletListDTO;
  const _UserWalletListDTO._() : super._();

  factory _UserWalletListDTO.fromJson(Map<String, dynamic> json) =
      _$_UserWalletListDTO.fromJson;

  @override
  @JsonKey(name: '_meta')
  MetaDTO? get meta;
  @override
  List<_UserWalletDTOData> get data;
  @override
  @JsonKey(ignore: true)
  _$$_UserWalletListDTOCopyWith<_$_UserWalletListDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

_UserWalletTransactionDTO _$_UserWalletTransactionDTOFromJson(
    Map<String, dynamic> json) {
  return __UserWalletTransactionDTO.fromJson(json);
}

/// @nodoc
mixin _$_UserWalletTransactionDTO {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  @DoubleSerializer()
  double? get amount => throw _privateConstructorUsedError;
  @StringSerializer()
  String? get reference => throw _privateConstructorUsedError;
  @JsonKey(fromJson: PaymentStatus.fromJson, toJson: PaymentStatus.toJson)
  PaymentStatus get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'Transactiontype', fromJson: TransactionType.valueOf)
  TransactionType? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'paymentGateway', fromJson: PaymentMethod.valueOf)
  PaymentMethod? get paymentMethod => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UserWalletTransactionDTOCopyWith<_UserWalletTransactionDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UserWalletTransactionDTOCopyWith<$Res> {
  factory _$UserWalletTransactionDTOCopyWith(_UserWalletTransactionDTO value,
          $Res Function(_UserWalletTransactionDTO) then) =
      __$UserWalletTransactionDTOCopyWithImpl<$Res, _UserWalletTransactionDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id')
          String? id,
      @DoubleSerializer()
          double? amount,
      @StringSerializer()
          String? reference,
      @JsonKey(fromJson: PaymentStatus.fromJson, toJson: PaymentStatus.toJson)
          PaymentStatus status,
      @JsonKey(name: 'Transactiontype', fromJson: TransactionType.valueOf)
          TransactionType? type,
      @JsonKey(name: 'paymentGateway', fromJson: PaymentMethod.valueOf)
          PaymentMethod? paymentMethod,
      @TimestampConverter()
          DateTime? createdAt,
      @TimestampConverter()
          DateTime? updatedAt});
}

/// @nodoc
class __$UserWalletTransactionDTOCopyWithImpl<$Res,
        $Val extends _UserWalletTransactionDTO>
    implements _$UserWalletTransactionDTOCopyWith<$Res> {
  __$UserWalletTransactionDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? amount = freezed,
    Object? reference = freezed,
    Object? status = null,
    Object? type = freezed,
    Object? paymentMethod = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      reference: freezed == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PaymentStatus,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TransactionType?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod?,
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
abstract class _$$__UserWalletTransactionDTOCopyWith<$Res>
    implements _$UserWalletTransactionDTOCopyWith<$Res> {
  factory _$$__UserWalletTransactionDTOCopyWith(
          _$__UserWalletTransactionDTO value,
          $Res Function(_$__UserWalletTransactionDTO) then) =
      __$$__UserWalletTransactionDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id')
          String? id,
      @DoubleSerializer()
          double? amount,
      @StringSerializer()
          String? reference,
      @JsonKey(fromJson: PaymentStatus.fromJson, toJson: PaymentStatus.toJson)
          PaymentStatus status,
      @JsonKey(name: 'Transactiontype', fromJson: TransactionType.valueOf)
          TransactionType? type,
      @JsonKey(name: 'paymentGateway', fromJson: PaymentMethod.valueOf)
          PaymentMethod? paymentMethod,
      @TimestampConverter()
          DateTime? createdAt,
      @TimestampConverter()
          DateTime? updatedAt});
}

/// @nodoc
class __$$__UserWalletTransactionDTOCopyWithImpl<$Res>
    extends __$UserWalletTransactionDTOCopyWithImpl<$Res,
        _$__UserWalletTransactionDTO>
    implements _$$__UserWalletTransactionDTOCopyWith<$Res> {
  __$$__UserWalletTransactionDTOCopyWithImpl(
      _$__UserWalletTransactionDTO _value,
      $Res Function(_$__UserWalletTransactionDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? amount = freezed,
    Object? reference = freezed,
    Object? status = null,
    Object? type = freezed,
    Object? paymentMethod = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$__UserWalletTransactionDTO(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      reference: freezed == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PaymentStatus,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TransactionType?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod?,
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
class _$__UserWalletTransactionDTO extends __UserWalletTransactionDTO {
  const _$__UserWalletTransactionDTO(
      {@JsonKey(name: '_id')
          this.id,
      @DoubleSerializer()
          this.amount,
      @StringSerializer()
          this.reference,
      @JsonKey(fromJson: PaymentStatus.fromJson, toJson: PaymentStatus.toJson)
          required this.status,
      @JsonKey(name: 'Transactiontype', fromJson: TransactionType.valueOf)
          this.type,
      @JsonKey(name: 'paymentGateway', fromJson: PaymentMethod.valueOf)
          this.paymentMethod,
      @TimestampConverter()
          this.createdAt,
      @TimestampConverter()
          this.updatedAt})
      : super._();

  factory _$__UserWalletTransactionDTO.fromJson(Map<String, dynamic> json) =>
      _$$__UserWalletTransactionDTOFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  @DoubleSerializer()
  final double? amount;
  @override
  @StringSerializer()
  final String? reference;
  @override
  @JsonKey(fromJson: PaymentStatus.fromJson, toJson: PaymentStatus.toJson)
  final PaymentStatus status;
  @override
  @JsonKey(name: 'Transactiontype', fromJson: TransactionType.valueOf)
  final TransactionType? type;
  @override
  @JsonKey(name: 'paymentGateway', fromJson: PaymentMethod.valueOf)
  final PaymentMethod? paymentMethod;
  @override
  @TimestampConverter()
  final DateTime? createdAt;
  @override
  @TimestampConverter()
  final DateTime? updatedAt;

  @override
  String toString() {
    return '_UserWalletTransactionDTO(id: $id, amount: $amount, reference: $reference, status: $status, type: $type, paymentMethod: $paymentMethod, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$__UserWalletTransactionDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.reference, reference) ||
                other.reference == reference) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, amount, reference, status,
      type, paymentMethod, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$__UserWalletTransactionDTOCopyWith<_$__UserWalletTransactionDTO>
      get copyWith => __$$__UserWalletTransactionDTOCopyWithImpl<
          _$__UserWalletTransactionDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$__UserWalletTransactionDTOToJson(
      this,
    );
  }
}

abstract class __UserWalletTransactionDTO extends _UserWalletTransactionDTO {
  const factory __UserWalletTransactionDTO(
      {@JsonKey(name: '_id')
          final String? id,
      @DoubleSerializer()
          final double? amount,
      @StringSerializer()
          final String? reference,
      @JsonKey(fromJson: PaymentStatus.fromJson, toJson: PaymentStatus.toJson)
          required final PaymentStatus status,
      @JsonKey(name: 'Transactiontype', fromJson: TransactionType.valueOf)
          final TransactionType? type,
      @JsonKey(name: 'paymentGateway', fromJson: PaymentMethod.valueOf)
          final PaymentMethod? paymentMethod,
      @TimestampConverter()
          final DateTime? createdAt,
      @TimestampConverter()
          final DateTime? updatedAt}) = _$__UserWalletTransactionDTO;
  const __UserWalletTransactionDTO._() : super._();

  factory __UserWalletTransactionDTO.fromJson(Map<String, dynamic> json) =
      _$__UserWalletTransactionDTO.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  @DoubleSerializer()
  double? get amount;
  @override
  @StringSerializer()
  String? get reference;
  @override
  @JsonKey(fromJson: PaymentStatus.fromJson, toJson: PaymentStatus.toJson)
  PaymentStatus get status;
  @override
  @JsonKey(name: 'Transactiontype', fromJson: TransactionType.valueOf)
  TransactionType? get type;
  @override
  @JsonKey(name: 'paymentGateway', fromJson: PaymentMethod.valueOf)
  PaymentMethod? get paymentMethod;
  @override
  @TimestampConverter()
  DateTime? get createdAt;
  @override
  @TimestampConverter()
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$__UserWalletTransactionDTOCopyWith<_$__UserWalletTransactionDTO>
      get copyWith => throw _privateConstructorUsedError;
}
