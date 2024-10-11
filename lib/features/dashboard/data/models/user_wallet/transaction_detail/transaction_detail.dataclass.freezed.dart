// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of transaction_detail.dataclass.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransactionDetailData _$TransactionDetailDataFromJson(
    Map<String, dynamic> json) {
  return _TransactionDetailData.fromJson(json);
}

/// @nodoc
mixin _$TransactionDetailData {
  @StringSerializer()
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'transaction_id')
  @StringSerializer()
  String? get transactionId => throw _privateConstructorUsedError;
  @StringSerializer()
  String? get reference => throw _privateConstructorUsedError;
  @JsonKey(name: 'tx_ref')
  @StringSerializer()
  String? get txRef => throw _privateConstructorUsedError;
  @JsonKey(name: 'flw_ref')
  @StringSerializer()
  String? get flwRef => throw _privateConstructorUsedError;
  @DoubleSerializer()
  double? get amount => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'status',
      fromJson: PaymentStatus.fromJson,
      toJson: PaymentStatus.toJson)
  PaymentStatus get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_channel', toJson: PaymentMethod.toValue)
  PaymentMethod? get method => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'transaction_type',
      fromJson: TransactionType.valueOf,
      toJson: TransactionType.toValue)
  TransactionType? get type => throw _privateConstructorUsedError;
  UserDTO? get customer => throw _privateConstructorUsedError;
  @JsonKey(name: 'paid_at')
  @TimestampConverter()
  DateTime? get paidAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  @TimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionDetailDataCopyWith<TransactionDetailData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionDetailDataCopyWith<$Res> {
  factory $TransactionDetailDataCopyWith(TransactionDetailData value,
          $Res Function(TransactionDetailData) then) =
      _$TransactionDetailDataCopyWithImpl<$Res, TransactionDetailData>;
  @useResult
  $Res call(
      {@StringSerializer()
          String? id,
      @JsonKey(name: 'transaction_id')
      @StringSerializer()
          String? transactionId,
      @StringSerializer()
          String? reference,
      @JsonKey(name: 'tx_ref')
      @StringSerializer()
          String? txRef,
      @JsonKey(name: 'flw_ref')
      @StringSerializer()
          String? flwRef,
      @DoubleSerializer()
          double? amount,
      @JsonKey(name: 'status', fromJson: PaymentStatus.fromJson, toJson: PaymentStatus.toJson)
          PaymentStatus status,
      @JsonKey(name: 'payment_channel', toJson: PaymentMethod.toValue)
          PaymentMethod? method,
      @JsonKey(name: 'transaction_type', fromJson: TransactionType.valueOf, toJson: TransactionType.toValue)
          TransactionType? type,
      UserDTO? customer,
      @JsonKey(name: 'paid_at')
      @TimestampConverter()
          DateTime? paidAt,
      @JsonKey(name: 'created_at')
      @TimestampConverter()
          DateTime? createdAt});

  $UserDTOCopyWith<$Res>? get customer;
}

/// @nodoc
class _$TransactionDetailDataCopyWithImpl<$Res,
        $Val extends TransactionDetailData>
    implements $TransactionDetailDataCopyWith<$Res> {
  _$TransactionDetailDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? transactionId = freezed,
    Object? reference = freezed,
    Object? txRef = freezed,
    Object? flwRef = freezed,
    Object? amount = freezed,
    Object? status = null,
    Object? method = freezed,
    Object? type = freezed,
    Object? customer = freezed,
    Object? paidAt = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionId: freezed == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String?,
      reference: freezed == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String?,
      txRef: freezed == txRef
          ? _value.txRef
          : txRef // ignore: cast_nullable_to_non_nullable
              as String?,
      flwRef: freezed == flwRef
          ? _value.flwRef
          : flwRef // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PaymentStatus,
      method: freezed == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as PaymentMethod?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TransactionType?,
      customer: freezed == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as UserDTO?,
      paidAt: freezed == paidAt
          ? _value.paidAt
          : paidAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDTOCopyWith<$Res>? get customer {
    if (_value.customer == null) {
      return null;
    }

    return $UserDTOCopyWith<$Res>(_value.customer!, (value) {
      return _then(_value.copyWith(customer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TransactionDetailDataCopyWith<$Res>
    implements $TransactionDetailDataCopyWith<$Res> {
  factory _$$_TransactionDetailDataCopyWith(_$_TransactionDetailData value,
          $Res Function(_$_TransactionDetailData) then) =
      __$$_TransactionDetailDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@StringSerializer()
          String? id,
      @JsonKey(name: 'transaction_id')
      @StringSerializer()
          String? transactionId,
      @StringSerializer()
          String? reference,
      @JsonKey(name: 'tx_ref')
      @StringSerializer()
          String? txRef,
      @JsonKey(name: 'flw_ref')
      @StringSerializer()
          String? flwRef,
      @DoubleSerializer()
          double? amount,
      @JsonKey(name: 'status', fromJson: PaymentStatus.fromJson, toJson: PaymentStatus.toJson)
          PaymentStatus status,
      @JsonKey(name: 'payment_channel', toJson: PaymentMethod.toValue)
          PaymentMethod? method,
      @JsonKey(name: 'transaction_type', fromJson: TransactionType.valueOf, toJson: TransactionType.toValue)
          TransactionType? type,
      UserDTO? customer,
      @JsonKey(name: 'paid_at')
      @TimestampConverter()
          DateTime? paidAt,
      @JsonKey(name: 'created_at')
      @TimestampConverter()
          DateTime? createdAt});

  @override
  $UserDTOCopyWith<$Res>? get customer;
}

/// @nodoc
class __$$_TransactionDetailDataCopyWithImpl<$Res>
    extends _$TransactionDetailDataCopyWithImpl<$Res, _$_TransactionDetailData>
    implements _$$_TransactionDetailDataCopyWith<$Res> {
  __$$_TransactionDetailDataCopyWithImpl(_$_TransactionDetailData _value,
      $Res Function(_$_TransactionDetailData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? transactionId = freezed,
    Object? reference = freezed,
    Object? txRef = freezed,
    Object? flwRef = freezed,
    Object? amount = freezed,
    Object? status = null,
    Object? method = freezed,
    Object? type = freezed,
    Object? customer = freezed,
    Object? paidAt = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$_TransactionDetailData(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionId: freezed == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String?,
      reference: freezed == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String?,
      txRef: freezed == txRef
          ? _value.txRef
          : txRef // ignore: cast_nullable_to_non_nullable
              as String?,
      flwRef: freezed == flwRef
          ? _value.flwRef
          : flwRef // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PaymentStatus,
      method: freezed == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as PaymentMethod?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TransactionType?,
      customer: freezed == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as UserDTO?,
      paidAt: freezed == paidAt
          ? _value.paidAt
          : paidAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransactionDetailData extends _TransactionDetailData {
  const _$_TransactionDetailData(
      {@StringSerializer()
          this.id,
      @JsonKey(name: 'transaction_id')
      @StringSerializer()
          this.transactionId,
      @StringSerializer()
          this.reference,
      @JsonKey(name: 'tx_ref')
      @StringSerializer()
          this.txRef,
      @JsonKey(name: 'flw_ref')
      @StringSerializer()
          this.flwRef,
      @DoubleSerializer()
          this.amount,
      @JsonKey(name: 'status', fromJson: PaymentStatus.fromJson, toJson: PaymentStatus.toJson)
          required this.status,
      @JsonKey(name: 'payment_channel', toJson: PaymentMethod.toValue)
          required this.method,
      @JsonKey(name: 'transaction_type', fromJson: TransactionType.valueOf, toJson: TransactionType.toValue)
          this.type,
      this.customer,
      @JsonKey(name: 'paid_at')
      @TimestampConverter()
          this.paidAt,
      @JsonKey(name: 'created_at')
      @TimestampConverter()
          this.createdAt})
      : super._();

  factory _$_TransactionDetailData.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionDetailDataFromJson(json);

  @override
  @StringSerializer()
  final String? id;
  @override
  @JsonKey(name: 'transaction_id')
  @StringSerializer()
  final String? transactionId;
  @override
  @StringSerializer()
  final String? reference;
  @override
  @JsonKey(name: 'tx_ref')
  @StringSerializer()
  final String? txRef;
  @override
  @JsonKey(name: 'flw_ref')
  @StringSerializer()
  final String? flwRef;
  @override
  @DoubleSerializer()
  final double? amount;
  @override
  @JsonKey(
      name: 'status',
      fromJson: PaymentStatus.fromJson,
      toJson: PaymentStatus.toJson)
  final PaymentStatus status;
  @override
  @JsonKey(name: 'payment_channel', toJson: PaymentMethod.toValue)
  final PaymentMethod? method;
  @override
  @JsonKey(
      name: 'transaction_type',
      fromJson: TransactionType.valueOf,
      toJson: TransactionType.toValue)
  final TransactionType? type;
  @override
  final UserDTO? customer;
  @override
  @JsonKey(name: 'paid_at')
  @TimestampConverter()
  final DateTime? paidAt;
  @override
  @JsonKey(name: 'created_at')
  @TimestampConverter()
  final DateTime? createdAt;

  @override
  String toString() {
    return 'TransactionDetailData(id: $id, transactionId: $transactionId, reference: $reference, txRef: $txRef, flwRef: $flwRef, amount: $amount, status: $status, method: $method, type: $type, customer: $customer, paidAt: $paidAt, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransactionDetailData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            (identical(other.reference, reference) ||
                other.reference == reference) &&
            (identical(other.txRef, txRef) || other.txRef == txRef) &&
            (identical(other.flwRef, flwRef) || other.flwRef == flwRef) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            (identical(other.paidAt, paidAt) || other.paidAt == paidAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, transactionId, reference,
      txRef, flwRef, amount, status, method, type, customer, paidAt, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransactionDetailDataCopyWith<_$_TransactionDetailData> get copyWith =>
      __$$_TransactionDetailDataCopyWithImpl<_$_TransactionDetailData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionDetailDataToJson(
      this,
    );
  }
}

abstract class _TransactionDetailData extends TransactionDetailData {
  const factory _TransactionDetailData(
      {@StringSerializer()
          final String? id,
      @JsonKey(name: 'transaction_id')
      @StringSerializer()
          final String? transactionId,
      @StringSerializer()
          final String? reference,
      @JsonKey(name: 'tx_ref')
      @StringSerializer()
          final String? txRef,
      @JsonKey(name: 'flw_ref')
      @StringSerializer()
          final String? flwRef,
      @DoubleSerializer()
          final double? amount,
      @JsonKey(name: 'status', fromJson: PaymentStatus.fromJson, toJson: PaymentStatus.toJson)
          required final PaymentStatus status,
      @JsonKey(name: 'payment_channel', toJson: PaymentMethod.toValue)
          required final PaymentMethod? method,
      @JsonKey(name: 'transaction_type', fromJson: TransactionType.valueOf, toJson: TransactionType.toValue)
          final TransactionType? type,
      final UserDTO? customer,
      @JsonKey(name: 'paid_at')
      @TimestampConverter()
          final DateTime? paidAt,
      @JsonKey(name: 'created_at')
      @TimestampConverter()
          final DateTime? createdAt}) = _$_TransactionDetailData;
  const _TransactionDetailData._() : super._();

  factory _TransactionDetailData.fromJson(Map<String, dynamic> json) =
      _$_TransactionDetailData.fromJson;

  @override
  @StringSerializer()
  String? get id;
  @override
  @JsonKey(name: 'transaction_id')
  @StringSerializer()
  String? get transactionId;
  @override
  @StringSerializer()
  String? get reference;
  @override
  @JsonKey(name: 'tx_ref')
  @StringSerializer()
  String? get txRef;
  @override
  @JsonKey(name: 'flw_ref')
  @StringSerializer()
  String? get flwRef;
  @override
  @DoubleSerializer()
  double? get amount;
  @override
  @JsonKey(
      name: 'status',
      fromJson: PaymentStatus.fromJson,
      toJson: PaymentStatus.toJson)
  PaymentStatus get status;
  @override
  @JsonKey(name: 'payment_channel', toJson: PaymentMethod.toValue)
  PaymentMethod? get method;
  @override
  @JsonKey(
      name: 'transaction_type',
      fromJson: TransactionType.valueOf,
      toJson: TransactionType.toValue)
  TransactionType? get type;
  @override
  UserDTO? get customer;
  @override
  @JsonKey(name: 'paid_at')
  @TimestampConverter()
  DateTime? get paidAt;
  @override
  @JsonKey(name: 'created_at')
  @TimestampConverter()
  DateTime? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionDetailDataCopyWith<_$_TransactionDetailData> get copyWith =>
      throw _privateConstructorUsedError;
}

TransactionDetailDTO _$TransactionDetailDTOFromJson(Map<String, dynamic> json) {
  return _TransactionDetailDTO.fromJson(json);
}

/// @nodoc
mixin _$TransactionDetailDTO {
  dynamic get status => throw _privateConstructorUsedError;
  @StringSerializer()
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  TransactionDetailData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionDetailDTOCopyWith<TransactionDetailDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionDetailDTOCopyWith<$Res> {
  factory $TransactionDetailDTOCopyWith(TransactionDetailDTO value,
          $Res Function(TransactionDetailDTO) then) =
      _$TransactionDetailDTOCopyWithImpl<$Res, TransactionDetailDTO>;
  @useResult
  $Res call(
      {dynamic status,
      @StringSerializer() String? message,
      @JsonKey(name: 'data') TransactionDetailData? data});

  $TransactionDetailDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$TransactionDetailDTOCopyWithImpl<$Res,
        $Val extends TransactionDetailDTO>
    implements $TransactionDetailDTOCopyWith<$Res> {
  _$TransactionDetailDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as dynamic,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TransactionDetailData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TransactionDetailDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $TransactionDetailDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TransactionDetailDTOCopyWith<$Res>
    implements $TransactionDetailDTOCopyWith<$Res> {
  factory _$$_TransactionDetailDTOCopyWith(_$_TransactionDetailDTO value,
          $Res Function(_$_TransactionDetailDTO) then) =
      __$$_TransactionDetailDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic status,
      @StringSerializer() String? message,
      @JsonKey(name: 'data') TransactionDetailData? data});

  @override
  $TransactionDetailDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_TransactionDetailDTOCopyWithImpl<$Res>
    extends _$TransactionDetailDTOCopyWithImpl<$Res, _$_TransactionDetailDTO>
    implements _$$_TransactionDetailDTOCopyWith<$Res> {
  __$$_TransactionDetailDTOCopyWithImpl(_$_TransactionDetailDTO _value,
      $Res Function(_$_TransactionDetailDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_TransactionDetailDTO(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as dynamic,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TransactionDetailData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransactionDetailDTO extends _TransactionDetailDTO {
  const _$_TransactionDetailDTO(
      {this.status,
      @StringSerializer() this.message,
      @JsonKey(name: 'data') this.data})
      : super._();

  factory _$_TransactionDetailDTO.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionDetailDTOFromJson(json);

  @override
  final dynamic status;
  @override
  @StringSerializer()
  final String? message;
  @override
  @JsonKey(name: 'data')
  final TransactionDetailData? data;

  @override
  String toString() {
    return 'TransactionDetailDTO(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransactionDetailDTO &&
            const DeepCollectionEquality().equals(other.status, status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(status), message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransactionDetailDTOCopyWith<_$_TransactionDetailDTO> get copyWith =>
      __$$_TransactionDetailDTOCopyWithImpl<_$_TransactionDetailDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionDetailDTOToJson(
      this,
    );
  }
}

abstract class _TransactionDetailDTO extends TransactionDetailDTO {
  const factory _TransactionDetailDTO(
          {final dynamic status,
          @StringSerializer() final String? message,
          @JsonKey(name: 'data') final TransactionDetailData? data}) =
      _$_TransactionDetailDTO;
  const _TransactionDetailDTO._() : super._();

  factory _TransactionDetailDTO.fromJson(Map<String, dynamic> json) =
      _$_TransactionDetailDTO.fromJson;

  @override
  dynamic get status;
  @override
  @StringSerializer()
  String? get message;
  @override
  @JsonKey(name: 'data')
  TransactionDetailData? get data;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionDetailDTOCopyWith<_$_TransactionDetailDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
