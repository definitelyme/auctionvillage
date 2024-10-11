library root_cubit.dart;

import 'package:auctionvillage/core/data/index.dart';
import 'package:auctionvillage/core/domain/facades/index.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'root_cubit.freezed.dart';
part 'root_state.dart';

class RootCubit extends Cubit<RootState> {
  final FirebaseRemoteConfigFacade _remoteConfigFacade;

  RootCubit(this._remoteConfigFacade) : super(RootState.initial());

  void updateStatus(AppHttpResponse? status) {
    emit(state.copyWith(status: optionOf(status)));
    emit(state.copyWith(status: none()));
  }

  void fetchSupportedPaymentMethods() {
    final methods = _remoteConfigFacade.supportedPaymentMethods;
    emit(state.copyWith(supportedPaymentMethods: methods.toImmutableList()));
  }
}
