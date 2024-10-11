// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of transaction_detail.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TransactionDetail {
  UniqueId<String?> get id => throw _privateConstructorUsedError;
  UniqueId<String?> get txRef => throw _privateConstructorUsedError;
  UniqueId<String?> get flwRef => throw _privateConstructorUsedError;
  UniqueId<String?> get reference => throw _privateConstructorUsedError;
  NumField<double> get amount => throw _privateConstructorUsedError;
  BasicTextField get message => throw _privateConstructorUsedError;
  PaymentStatus get paymentStatus => throw _privateConstructorUsedError;
  bool get status => throw _privateConstructorUsedError;
  PaymentMethod? get paymentMethod => throw _privateConstructorUsedError;
  TransactionType? get transactionType => throw _privateConstructorUsedError;
  User? get customer => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransactionDetailCopyWith<TransactionDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionDetailCopyWith<$Res> {
  factory $TransactionDetailCopyWith(
          TransactionDetail value, $Res Function(TransactionDetail) then) =
      _$TransactionDetailCopyWithImpl<$Res, TransactionDetail>;
  @useResult
  $Res call(
      {UniqueId<String?> id,
      UniqueId<String?> txRef,
      UniqueId<String?> flwRef,
      UniqueId<String?> reference,
      NumField<double> amount,
      BasicTextField message,
      PaymentStatus paymentStatus,
      bool status,
      PaymentMethod? paymentMethod,
      TransactionType? transactionType,
      User? customer,
      DateTime? createdAt,
      DateTime? updatedAt});

  $UserCopyWith<$Res>? get customer;
}

/// @nodoc
class _$TransactionDetailCopyWithImpl<$Res, $Val extends TransactionDetail>
    implements $TransactionDetailCopyWith<$Res> {
  _$TransactionDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? txRef = null,
    Object? flwRef = null,
    Object? reference = null,
    Object? amount = null,
    Object? message = null,
    Object? paymentStatus = null,
    Object? status = null,
    Object? paymentMethod = freezed,
    Object? transactionType = freezed,
    Object? customer = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      txRef: null == txRef
          ? _value.txRef
          : txRef // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      flwRef: null == flwRef
          ? _value.flwRef
          : flwRef // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      reference: null == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as NumField<double>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as PaymentStatus,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod?,
      transactionType: freezed == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as TransactionType?,
      customer: freezed == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as User?,
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
  $UserCopyWith<$Res>? get customer {
    if (_value.customer == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.customer!, (value) {
      return _then(_value.copyWith(customer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TransactionDetailCopyWith<$Res>
    implements $TransactionDetailCopyWith<$Res> {
  factory _$$_TransactionDetailCopyWith(_$_TransactionDetail value,
          $Res Function(_$_TransactionDetail) then) =
      __$$_TransactionDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId<String?> id,
      UniqueId<String?> txRef,
      UniqueId<String?> flwRef,
      UniqueId<String?> reference,
      NumField<double> amount,
      BasicTextField message,
      PaymentStatus paymentStatus,
      bool status,
      PaymentMethod? paymentMethod,
      TransactionType? transactionType,
      User? customer,
      DateTime? createdAt,
      DateTime? updatedAt});

  @override
  $UserCopyWith<$Res>? get customer;
}

/// @nodoc
class __$$_TransactionDetailCopyWithImpl<$Res>
    extends _$TransactionDetailCopyWithImpl<$Res, _$_TransactionDetail>
    implements _$$_TransactionDetailCopyWith<$Res> {
  __$$_TransactionDetailCopyWithImpl(
      _$_TransactionDetail _value, $Res Function(_$_TransactionDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? txRef = null,
    Object? flwRef = null,
    Object? reference = null,
    Object? amount = null,
    Object? message = null,
    Object? paymentStatus = null,
    Object? status = null,
    Object? paymentMethod = freezed,
    Object? transactionType = freezed,
    Object? customer = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_TransactionDetail(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      txRef: null == txRef
          ? _value.txRef
          : txRef // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      flwRef: null == flwRef
          ? _value.flwRef
          : flwRef // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      reference: null == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as NumField<double>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as PaymentStatus,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod?,
      transactionType: freezed == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as TransactionType?,
      customer: freezed == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as User?,
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

class _$_TransactionDetail extends _TransactionDetail {
  const _$_TransactionDetail(
      {required this.id,
      required this.txRef,
      required this.flwRef,
      required this.reference,
      required this.amount,
      required this.message,
      this.paymentStatus = PaymentStatus.pending,
      this.status = false,
      this.paymentMethod,
      this.transactionType,
      this.customer,
      this.createdAt,
      this.updatedAt})
      : super._();

  @override
  final UniqueId<String?> id;
  @override
  final UniqueId<String?> txRef;
  @override
  final UniqueId<String?> flwRef;
  @override
  final UniqueId<String?> reference;
  @override
  final NumField<double> amount;
  @override
  final BasicTextField message;
  @override
  @JsonKey()
  final PaymentStatus paymentStatus;
  @override
  @JsonKey()
  final bool status;
  @override
  final PaymentMethod? paymentMethod;
  @override
  final TransactionType? transactionType;
  @override
  final User? customer;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'TransactionDetail(id: $id, txRef: $txRef, flwRef: $flwRef, reference: $reference, amount: $amount, message: $message, paymentStatus: $paymentStatus, status: $status, paymentMethod: $paymentMethod, transactionType: $transactionType, customer: $customer, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransactionDetail &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.txRef, txRef) || other.txRef == txRef) &&
            (identical(other.flwRef, flwRef) || other.flwRef == flwRef) &&
            (identical(other.reference, reference) ||
                other.reference == reference) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.transactionType, transactionType) ||
                other.transactionType == transactionType) &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      txRef,
      flwRef,
      reference,
      amount,
      message,
      paymentStatus,
      status,
      paymentMethod,
      transactionType,
      customer,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransactionDetailCopyWith<_$_TransactionDetail> get copyWith =>
      __$$_TransactionDetailCopyWithImpl<_$_TransactionDetail>(
          this, _$identity);
}

abstract class _TransactionDetail extends TransactionDetail {
  const factory _TransactionDetail(
      {required final UniqueId<String?> id,
      required final UniqueId<String?> txRef,
      required final UniqueId<String?> flwRef,
      required final UniqueId<String?> reference,
      required final NumField<double> amount,
      required final BasicTextField message,
      final PaymentStatus paymentStatus,
      final bool status,
      final PaymentMethod? paymentMethod,
      final TransactionType? transactionType,
      final User? customer,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$_TransactionDetail;
  const _TransactionDetail._() : super._();

  @override
  UniqueId<String?> get id;
  @override
  UniqueId<String?> get txRef;
  @override
  UniqueId<String?> get flwRef;
  @override
  UniqueId<String?> get reference;
  @override
  NumField<double> get amount;
  @override
  BasicTextField get message;
  @override
  PaymentStatus get paymentStatus;
  @override
  bool get status;
  @override
  PaymentMethod? get paymentMethod;
  @override
  TransactionType? get transactionType;
  @override
  User? get customer;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionDetailCopyWith<_$_TransactionDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
