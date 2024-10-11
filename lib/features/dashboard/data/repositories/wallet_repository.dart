library wallet_repository.dart;

import 'dart:async';

import 'package:auctionvillage/core/data/index.dart';
import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/features/dashboard/data/models/models.dart';
import 'package:auctionvillage/features/dashboard/data/remote/wallet_remote/wallet_remote.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

@injectable
class WalletRepository with BaseRepository {
  final WalletRemote _remote;

  WalletRepository(this._remote);

  Future<AppHttpResponse?> fundWallet(double amount, {String? reference}) async {
    final _conn = await checkConnectivity();

    return _conn.fold(
      () async {
        try {
          await _remote.fundWallet('$amount', reference: reference);
          return null;
        } on AppHttpResponse catch (e) {
          return e;
        } on AppNetworkException catch (e) {
          return e.asResponse();
        }
      },
      (f) => f,
    );
  }

  Future<AppHttpResponse> withdraw(
    double amount, {
    required BankAccount account,
    required String? pin,
  }) async {
    final _conn = await checkConnectivity();

    return _conn.fold(
      () async {
        try {
          await _remote.withdraw(
            amount.toInt(),
            accountNumber: account.accountNumber.getOrNull,
            // accountBank: account.bank?.bankName.getOrNull,
            bankName: account.bank?.bankName.getOrNull,
            // code: account.bank?.code.getOrNull,
            withdrawalPin: pin,
          );
          return AppHttpResponse.successful("Withdrawal request received! We'll let you know once it has been processed.");
        } on AppHttpResponse catch (e) {
          return e;
        } on AppNetworkException catch (e) {
          return e.asResponse();
        }
      },
      (f) => f,
    );
  }

  Future<Either<AppHttpResponse, bool>> hasSetupTransactionPin() async {
    final _conn = await checkConnectivity();

    return _conn.fold(
      () async {
        try {
          final result = await _remote.hasAddedPin();
          return right(result.dto?.pinAdded ?? false);
        } on AppHttpResponse catch (e) {
          return left(e);
        } on AppNetworkException catch (e) {
          return left(e.asResponse());
        }
      },
      (f) => left(f),
    );
  }

  Future<AppHttpResponse> setupPin({
    required String pin,
    required String pinConfirmation,
    required String otpCode,
    required SecurityQuestion question,
  }) async {
    final _conn = await checkConnectivity();

    return _conn.fold(
      () async {
        try {
          return await _remote.setupPin(
            pin: pin,
            pinConfirmation: pinConfirmation,
            otpCode: otpCode,
            securityQuestion: question.question.getExact(),
            securityAnswer: question.answer.getExact(),
          );
        } on AppHttpResponse catch (e) {
          return e;
        } on AppNetworkException catch (e) {
          return e.asResponse();
        }
      },
      (f) => f,
    );
  }

  Future<Either<AppHttpResponse, SecurityQuestion>> getUserSecurityQuestion() async {
    final _conn = await checkConnectivity();

    return _conn.fold(
      () async {
        try {
          final result = await _remote.getUserSecurityQuestion();
          return right(result.domain);
        } on AppHttpResponse catch (e) {
          return left(e);
        } on AppNetworkException catch (e) {
          return left(e.asResponse());
        }
      },
      (f) => left(f),
    );
  }

  Future<Either<AppHttpResponse, KtList<SecurityQuestion>>> fetchSecurityQuestions() async {
    final _conn = await checkConnectivity();

    return _conn.fold(
      () async {
        try {
          final result = await _remote.fetchSecurityQuestions();
          return right(result.domain);
        } on AppHttpResponse catch (e) {
          return left(e);
        } on AppNetworkException catch (e) {
          return left(e.asResponse());
        }
      },
      (f) => left(f),
    );
  }

  Future<Either<AppHttpResponse, BankAccount?>> verifyBankAccount(String? accountNumber, Bank? bank) async {
    final _conn = await checkConnectivity();

    return _conn.fold(
      () async {
        try {
          assert(bank != null && accountNumber != null);
          final result = await _remote.resolveBankAccount(
            '$accountNumber',
            '${bank?.code.getOrNull}',
            authorization: 'Bearer ${env.flutterwaveSecretKey}',
          );
          return right(result.domain);
        } on AppHttpResponse catch (e) {
          return left(e);
        } on AppNetworkException catch (e) {
          return left(e.asResponse());
        } catch (e) {
          return left(AppHttpResponse.failure('Server Error! Please try again.'));
        }
      },
      (f) => left(f),
    );
  }

  Future<Either<AppHttpResponse, KtList<Bank>>> getBanks() async {
    final _conn = await checkConnectivity();

    return _conn.fold(
      () async {
        try {
          final result = await _remote.banks('Bearer ${env.flutterwaveSecretKey}');

          return right(result.domain);
        } on AppHttpResponse catch (e) {
          return left(e);
        } on AppNetworkException catch (e) {
          return left(e.asResponse());
        } catch (e) {
          return left(AppHttpResponse.failure('Server Error! Please try again.'));
        }
      },
      (f) => left(f),
    );
  }

  Future<Either<AppHttpResponse, UserWallet?>> getWallet() async {
    final _conn = await checkConnectivity();

    return _conn.fold(
      () async {
        try {
          final result = await _remote.userWallet();

          return right(result.domain);
        } on AppHttpResponse catch (e) {
          return left(e);
        } on AppNetworkException catch (e) {
          return left(e.asResponse());
        }
      },
      (f) => left(f),
    );
  }

  Future<Either<AppHttpResponse, UserWallet?>> walletActivities(User user) async {
    final _conn = await checkConnectivity();

    return _conn.fold(
      () async {
        try {
          final result = await _remote.walletActivities('${user.id.value}');
          return right(result.domain);
        } on AppHttpResponse catch (e) {
          return left(e);
        } on AppNetworkException catch (e) {
          return left(e.asResponse());
        }
      },
      (f) => left(f),
    );
  }

  Future<Either<AppHttpResponse, TransactionDetail?>> verifyTransaction(
    String reference, {
    required PaymentMethod method,
    required TransactionType type,
  }) async {
    final _conn = await checkConnectivity();

    return _conn.fold(
      () async {
        try {
          final result = await method.maybeWhen(
            paystack: () async => await _remote.verifyPaystackTransaction(
              'Bearer ${env.paystackSecretKey}',
              reference: reference,
            ),
            flutterwave: () async => await _remote.verifyFlwTransaction(
              'Bearer ${env.flutterwaveSecretKey}',
              reference: reference,
            ),
            orElse: () => null,
          );

          final dto = await compute(
            TransactionDetailData.fromDomain,
            result?.domain.copyWith(paymentMethod: method, transactionType: type),
          );
          await _remote.verifyTransaction(dto);

          return right(result?.domain);
        } on AppHttpResponse catch (e) {
          return left(e);
        } on AppNetworkException catch (e) {
          return left(e.asResponse());
        } catch (e) {
          return left(AppHttpResponse.failure('${method.lowercase.titleCase()} Error!'));
        }
      },
      (f) => left(f),
    );
  }
}
