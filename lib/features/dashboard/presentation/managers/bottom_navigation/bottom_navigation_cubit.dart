library bottom_navigation_cubit.dart;

import 'package:auctionvillage/core/data/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/pages/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auto_route/auto_route.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'bottom_navigation_cubit.freezed.dart';
part 'bottom_navigation_state.dart';

@singleton
class BottomNavigationCubit extends Cubit<BottomNavigationState> {
  static const String _kTabPersistKey = 'persisted-bottom-tab';
  static const _default = BottomNavigationState.homeIndex;

  BottomNavigationCubit() : super(BottomNavigationState.initial()) {
    HiveClient.subscribe((status) {
      status.when(loaded: () => _initAutoTabRouter());
    });
  }

  @override
  Future<void> close() {
    state.tabRouter?.removeListener(_setCurrentIndex);
    return super.close();
  }

  void _initAutoTabRouter() {
    final _index = HiveClient.settingsBox?.get(_kTabPersistKey, defaultValue: _default) as int?;
    emit(state.copyWith(currentIndex: _index ?? _default, previousIndex: _index ?? _default));
  }

  void reset() {
    emit(state.copyWith(currentIndex: _default, previousIndex: _default));
    state.tabRouter?.setActiveIndex(_default);
  }

  void attachListener(TabsRouter router) {
    if (!state.hasActiveListener) {
      emit(state.copyWith(tabRouter: router, hasActiveListener: true));
      state.tabRouter?.addListener(_setCurrentIndex);
    }
  }

  void _setCurrentIndex() {
    final index = state.tabRouter?.activeIndex ?? _default;
    final prevIndex = state.tabRouter?.previousIndex ?? state.currentIndex;
    emit(state.copyWith(previousIndex: prevIndex, currentIndex: index));

    HiveClient.settingsBox?.put(_kTabPersistKey, index);
  }
}
