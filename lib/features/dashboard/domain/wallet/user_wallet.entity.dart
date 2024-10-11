library user_wallet.entity.dart;

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'user_wallet.entity.freezed.dart';

enum TransactionType {
  cr('credit'),
  dr('debit');

  final String name;

  const TransactionType(this.name);

  @override
  String toString() => name;

  String get lowercase => name.toLowerCase();

  String get capitalized => name[0].toUpperCase() + name.substring(1);

  String get uppercase => name.toUpperCase();

  String get toJson {
    switch (this) {
      case TransactionType.cr:
        return 'cr'.toUpperCase();
      case TransactionType.dr:
        return 'dr'.toUpperCase();
    }
  }

  static TransactionType valueOf(String? name) {
    switch (name?.toLowerCase()) {
      case 'credit':
      case 'CREDIT':
        return TransactionType.cr;
      case 'debit':
      case 'DEBIT':
      default:
        return TransactionType.dr;
    }
  }

  static String? toValue(TransactionType? type) => type?.toJson;

  T when<T>({required T credit, required T debit}) {
    switch (this) {
      case TransactionType.cr:
        return credit;
      case TransactionType.dr:
        return debit;
    }
  }
}

@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
class UserWallet extends BaseEntity with _$UserWallet {
  const UserWallet._();

  const factory UserWallet({
    required UniqueId<String?> id,
    required NumField<double> balance,
    required NumField<double> revenue,
    required NumField<double> expense,
    required NumField<double> expendingExpense,
    @Default(false) bool isActive,
    @Default(false) bool? isFrozen,
    @Default(KtList.empty()) KtList<UserWalletTransaction> transactions,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _UserWallet;

  KtMap<DateTime, KtList<UserWalletTransaction>> get transactionsByDate => transactions
      .sortedWith((a, b) => b.createdAt!.compareTo(a.createdAt!))
      .groupBy((it) => DateTime(it.createdAt!.year, it.createdAt!.month, it.createdAt!.day));

  factory UserWallet.blank({
    String? id,
    double? balance,
    double? revenue,
    double? expense,
    double? expendingExpense,
    bool? isActive,
    bool? isFrozen,
    List<UserWalletTransaction> transactions = const [],
    DateTime? createdAt,
    DateTime? updatedAt,
  }) =>
      UserWallet(
        id: UniqueId.fromExternal(id),
        balance: NumField(balance ?? 0),
        revenue: NumField(revenue ?? 0),
        expense: NumField(expense ?? 0),
        expendingExpense: NumField(expendingExpense ?? 0),
        isActive: isActive ?? false,
        isFrozen: isFrozen ?? false,
        transactions: KtList.from(transactions),
        createdAt: createdAt,
        updatedAt: updatedAt,
      );
}

@Freezed(when: FreezedWhenOptions.none, map: FreezedMapOptions.none)
class UserWalletTransaction with _$UserWalletTransaction {
  const UserWalletTransaction._();

  const factory UserWalletTransaction({
    required UniqueId<String?> id,
    required TransactionType type,
    required NumField<double> amount,
    @Default(PaymentStatus.pending) PaymentStatus status,
    PaymentMethod? paymentMethod,
    required BasicTextField reference,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _UserWalletTransaction;

  factory UserWalletTransaction.blank({
    String? id,
    TransactionType? type,
    double? amount,
    PaymentStatus status = PaymentStatus.pending,
    String? reference,
    PaymentMethod? paymentMethod,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) =>
      UserWalletTransaction(
        id: UniqueId.fromExternal(id),
        type: type ?? TransactionType.dr,
        amount: NumField(amount ?? 0),
        status: status,
        reference: BasicTextField(reference),
        paymentMethod: paymentMethod,
        createdAt: createdAt,
        updatedAt: updatedAt,
      );
}
