// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of user_wallet.entity.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserWallet {
  UniqueId<String?> get id => throw _privateConstructorUsedError;
  NumField<double> get balance => throw _privateConstructorUsedError;
  NumField<double> get revenue => throw _privateConstructorUsedError;
  NumField<double> get expense => throw _privateConstructorUsedError;
  NumField<double> get expendingExpense => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  bool? get isFrozen => throw _privateConstructorUsedError;
  KtList<UserWalletTransaction> get transactions =>
      throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserWalletCopyWith<UserWallet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserWalletCopyWith<$Res> {
  factory $UserWalletCopyWith(
          UserWallet value, $Res Function(UserWallet) then) =
      _$UserWalletCopyWithImpl<$Res, UserWallet>;
  @useResult
  $Res call(
      {UniqueId<String?> id,
      NumField<double> balance,
      NumField<double> revenue,
      NumField<double> expense,
      NumField<double> expendingExpense,
      bool isActive,
      bool? isFrozen,
      KtList<UserWalletTransaction> transactions,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$UserWalletCopyWithImpl<$Res, $Val extends UserWallet>
    implements $UserWalletCopyWith<$Res> {
  _$UserWalletCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? balance = null,
    Object? revenue = null,
    Object? expense = null,
    Object? expendingExpense = null,
    Object? isActive = null,
    Object? isFrozen = freezed,
    Object? transactions = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as NumField<double>,
      revenue: null == revenue
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as NumField<double>,
      expense: null == expense
          ? _value.expense
          : expense // ignore: cast_nullable_to_non_nullable
              as NumField<double>,
      expendingExpense: null == expendingExpense
          ? _value.expendingExpense
          : expendingExpense // ignore: cast_nullable_to_non_nullable
              as NumField<double>,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      isFrozen: freezed == isFrozen
          ? _value.isFrozen
          : isFrozen // ignore: cast_nullable_to_non_nullable
              as bool?,
      transactions: null == transactions
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as KtList<UserWalletTransaction>,
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
abstract class _$$_UserWalletCopyWith<$Res>
    implements $UserWalletCopyWith<$Res> {
  factory _$$_UserWalletCopyWith(
          _$_UserWallet value, $Res Function(_$_UserWallet) then) =
      __$$_UserWalletCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId<String?> id,
      NumField<double> balance,
      NumField<double> revenue,
      NumField<double> expense,
      NumField<double> expendingExpense,
      bool isActive,
      bool? isFrozen,
      KtList<UserWalletTransaction> transactions,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$$_UserWalletCopyWithImpl<$Res>
    extends _$UserWalletCopyWithImpl<$Res, _$_UserWallet>
    implements _$$_UserWalletCopyWith<$Res> {
  __$$_UserWalletCopyWithImpl(
      _$_UserWallet _value, $Res Function(_$_UserWallet) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? balance = null,
    Object? revenue = null,
    Object? expense = null,
    Object? expendingExpense = null,
    Object? isActive = null,
    Object? isFrozen = freezed,
    Object? transactions = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_UserWallet(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as NumField<double>,
      revenue: null == revenue
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as NumField<double>,
      expense: null == expense
          ? _value.expense
          : expense // ignore: cast_nullable_to_non_nullable
              as NumField<double>,
      expendingExpense: null == expendingExpense
          ? _value.expendingExpense
          : expendingExpense // ignore: cast_nullable_to_non_nullable
              as NumField<double>,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      isFrozen: freezed == isFrozen
          ? _value.isFrozen
          : isFrozen // ignore: cast_nullable_to_non_nullable
              as bool?,
      transactions: null == transactions
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as KtList<UserWalletTransaction>,
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

class _$_UserWallet extends _UserWallet {
  const _$_UserWallet(
      {required this.id,
      required this.balance,
      required this.revenue,
      required this.expense,
      required this.expendingExpense,
      this.isActive = false,
      this.isFrozen = false,
      this.transactions = const KtList.empty(),
      this.createdAt,
      this.updatedAt})
      : super._();

  @override
  final UniqueId<String?> id;
  @override
  final NumField<double> balance;
  @override
  final NumField<double> revenue;
  @override
  final NumField<double> expense;
  @override
  final NumField<double> expendingExpense;
  @override
  @JsonKey()
  final bool isActive;
  @override
  @JsonKey()
  final bool? isFrozen;
  @override
  @JsonKey()
  final KtList<UserWalletTransaction> transactions;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'UserWallet(id: $id, balance: $balance, revenue: $revenue, expense: $expense, expendingExpense: $expendingExpense, isActive: $isActive, isFrozen: $isFrozen, transactions: $transactions, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserWallet &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.revenue, revenue) || other.revenue == revenue) &&
            (identical(other.expense, expense) || other.expense == expense) &&
            (identical(other.expendingExpense, expendingExpense) ||
                other.expendingExpense == expendingExpense) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.isFrozen, isFrozen) ||
                other.isFrozen == isFrozen) &&
            (identical(other.transactions, transactions) ||
                other.transactions == transactions) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, balance, revenue, expense,
      expendingExpense, isActive, isFrozen, transactions, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserWalletCopyWith<_$_UserWallet> get copyWith =>
      __$$_UserWalletCopyWithImpl<_$_UserWallet>(this, _$identity);
}

abstract class _UserWallet extends UserWallet {
  const factory _UserWallet(
      {required final UniqueId<String?> id,
      required final NumField<double> balance,
      required final NumField<double> revenue,
      required final NumField<double> expense,
      required final NumField<double> expendingExpense,
      final bool isActive,
      final bool? isFrozen,
      final KtList<UserWalletTransaction> transactions,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$_UserWallet;
  const _UserWallet._() : super._();

  @override
  UniqueId<String?> get id;
  @override
  NumField<double> get balance;
  @override
  NumField<double> get revenue;
  @override
  NumField<double> get expense;
  @override
  NumField<double> get expendingExpense;
  @override
  bool get isActive;
  @override
  bool? get isFrozen;
  @override
  KtList<UserWalletTransaction> get transactions;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_UserWalletCopyWith<_$_UserWallet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserWalletTransaction {
  UniqueId<String?> get id => throw _privateConstructorUsedError;
  TransactionType get type => throw _privateConstructorUsedError;
  NumField<double> get amount => throw _privateConstructorUsedError;
  PaymentStatus get status => throw _privateConstructorUsedError;
  PaymentMethod? get paymentMethod => throw _privateConstructorUsedError;
  BasicTextField get reference => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserWalletTransactionCopyWith<UserWalletTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserWalletTransactionCopyWith<$Res> {
  factory $UserWalletTransactionCopyWith(UserWalletTransaction value,
          $Res Function(UserWalletTransaction) then) =
      _$UserWalletTransactionCopyWithImpl<$Res, UserWalletTransaction>;
  @useResult
  $Res call(
      {UniqueId<String?> id,
      TransactionType type,
      NumField<double> amount,
      PaymentStatus status,
      PaymentMethod? paymentMethod,
      BasicTextField reference,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$UserWalletTransactionCopyWithImpl<$Res,
        $Val extends UserWalletTransaction>
    implements $UserWalletTransactionCopyWith<$Res> {
  _$UserWalletTransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? amount = null,
    Object? status = null,
    Object? paymentMethod = freezed,
    Object? reference = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TransactionType,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as NumField<double>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PaymentStatus,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod?,
      reference: null == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
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
abstract class _$$_UserWalletTransactionCopyWith<$Res>
    implements $UserWalletTransactionCopyWith<$Res> {
  factory _$$_UserWalletTransactionCopyWith(_$_UserWalletTransaction value,
          $Res Function(_$_UserWalletTransaction) then) =
      __$$_UserWalletTransactionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId<String?> id,
      TransactionType type,
      NumField<double> amount,
      PaymentStatus status,
      PaymentMethod? paymentMethod,
      BasicTextField reference,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$$_UserWalletTransactionCopyWithImpl<$Res>
    extends _$UserWalletTransactionCopyWithImpl<$Res, _$_UserWalletTransaction>
    implements _$$_UserWalletTransactionCopyWith<$Res> {
  __$$_UserWalletTransactionCopyWithImpl(_$_UserWalletTransaction _value,
      $Res Function(_$_UserWalletTransaction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? amount = null,
    Object? status = null,
    Object? paymentMethod = freezed,
    Object? reference = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_UserWalletTransaction(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TransactionType,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as NumField<double>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PaymentStatus,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod?,
      reference: null == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
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

class _$_UserWalletTransaction extends _UserWalletTransaction {
  const _$_UserWalletTransaction(
      {required this.id,
      required this.type,
      required this.amount,
      this.status = PaymentStatus.pending,
      this.paymentMethod,
      required this.reference,
      this.createdAt,
      this.updatedAt})
      : super._();

  @override
  final UniqueId<String?> id;
  @override
  final TransactionType type;
  @override
  final NumField<double> amount;
  @override
  @JsonKey()
  final PaymentStatus status;
  @override
  final PaymentMethod? paymentMethod;
  @override
  final BasicTextField reference;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'UserWalletTransaction(id: $id, type: $type, amount: $amount, status: $status, paymentMethod: $paymentMethod, reference: $reference, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserWalletTransaction &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.reference, reference) ||
                other.reference == reference) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, type, amount, status,
      paymentMethod, reference, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserWalletTransactionCopyWith<_$_UserWalletTransaction> get copyWith =>
      __$$_UserWalletTransactionCopyWithImpl<_$_UserWalletTransaction>(
          this, _$identity);
}

abstract class _UserWalletTransaction extends UserWalletTransaction {
  const factory _UserWalletTransaction(
      {required final UniqueId<String?> id,
      required final TransactionType type,
      required final NumField<double> amount,
      final PaymentStatus status,
      final PaymentMethod? paymentMethod,
      required final BasicTextField reference,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$_UserWalletTransaction;
  const _UserWalletTransaction._() : super._();

  @override
  UniqueId<String?> get id;
  @override
  TransactionType get type;
  @override
  NumField<double> get amount;
  @override
  PaymentStatus get status;
  @override
  PaymentMethod? get paymentMethod;
  @override
  BasicTextField get reference;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_UserWalletTransactionCopyWith<_$_UserWalletTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}
