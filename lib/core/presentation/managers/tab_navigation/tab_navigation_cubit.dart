library tab_navigation_cubit.dart;

import 'package:auctionvillage/utils/utils.dart' as util;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'tab_navigation_cubit.freezed.dart';
part 'tab_navigation_state.dart';

@injectable
class TabNavigationCubit extends Cubit<TabNavigationState> {
  bool attachDefaultListener = true;

  TabNavigationCubit() : super(TabNavigationState.initial());

  TabNavigationCubit initTabbar(TickerProvider ticker, {int initialIndex = 0, required int length}) {
    if (state.tabController == null) {
      final _controller = TabController(length: length, vsync: ticker, initialIndex: initialIndex);

      emit(state.copyWith(tabController: _controller));

      addTabListener(_tabbarListener);
    }

    return this;
  }

  void animateTo(int index, {Duration? duration, Curve curve = Curves.easeInOutCubic}) {
    WidgetsBinding.instance.endOfFrame.then((_) => state.tabController?.animateTo(index));
  }

  Color setTabTextColor(int currentTabIndex, {Color? selected, Color? unselected}) {
    return state.tabController == null
        ? util.App.resolveColor(util.Palette.onSurfaceLight, dark: Colors.white)!
        : state.selectedTab == currentTabIndex
            ? selected ?? Colors.white
            : unselected ?? util.App.resolveColor(util.Palette.onSurfaceLight, dark: Colors.white)!;
  }

  Color setTabBgColor(int currentTabIndex, {Color? selected, Color? unselected}) {
    return state.tabController == null
        ? util.App.resolveColor(util.Palette.cardColorLight, dark: util.Palette.cardColorDark)!
        : state.selectedTab == currentTabIndex
            ? selected ?? util.App.resolveColor(util.Palette.primary)!
            : unselected ?? util.App.resolveColor(util.Palette.cardColorLight, dark: util.Palette.cardColorDark)!;
  }

  void _tabbarListener() {
    if (state.tabController != null) changedTabIndex(state.tabController!.index);
  }

  void addTabListener(VoidCallback listener, [bool reattachDefault = false]) {
    if (state.tabController != null) {
      state.tabController!.addListener(listener);

      if (reattachDefault) {
        removeTabListener(_tabbarListener);
        addTabListener(_tabbarListener);
      }
    }
  }

  void removeTabListener(VoidCallback listener) {
    if (state.tabController != null) state.tabController!.removeListener(listener);
  }

  void changedTabIndex(int index, {void Function(int)? callback}) {
    emit(state.copyWith(selectedTab: index));
    callback?.call(index);
  }

  @override
  Future<void> close() {
    state.tabController?.removeListener(_tabbarListener);
    state.tabController?.dispose();
    return super.close();
  }
}
