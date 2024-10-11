library activity_list_screen.dart;

import 'package:auctionvillage/features/dashboard/presentation/managers/index.dart';
import 'package:auctionvillage/manager/locator/locator.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A stateless widget that renders `ActivityListScreen`.
class ActivityListScreen extends StatelessWidget with AutoRouteWrapper {
  final void Function(DealCubit, DragToRefreshState) onRefresh;
  final void Function(DealCubit, DragToRefreshState) onLoadMore;

  const ActivityListScreen({
    super.key,
    required this.onRefresh,
    required this.onLoadMore,
  });

  @override
  Widget wrappedRoute(BuildContext context) {
    return InheritOrCreateBlocProvider(
      orElse: () => getIt<DealCubit>(),
      child: BlocListener<DealCubit, DealState>(
        listenWhen: (p, c) =>
            p.status.getOrElse(() => null) != c.status.getOrElse(() => null) ||
            (c.status.getOrElse(() => null) != null && (c.status.getOrElse(() => null)!.response.maybeMap(orElse: () => false))),
        listener: (c, s) => s.status.fold(
          () {},
          (it) => it?.response.map(
            info: (i) => PopupDialog.info(message: i.message, show: i.message.isNotEmpty).render(c),
            error: (f) => PopupDialog.error(message: f.message, show: f.show && f.message.isNotEmpty).render(c),
            success: (s) => PopupDialog.success(message: s.message, show: s.message.isNotEmpty).render(c),
          ),
        ),
        child: this,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      body: AdaptiveScaffoldBody(
        body: DragToRefresh(
          initialRefresh: true,
          enablePullUp: true,
          onRefresh: (it) => onRefresh(context.read<DealCubit>(), it),
          onLoading: (it) => onLoadMore(context.read<DealCubit>(), it),
          footerHeight: (d) => d + 30,
          child: CustomScrollView(
            primary: false,
            physics: Utils.physics,
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            slivers: [
              // SliverPadding(
              //   padding: EdgeInsets.symmetric(horizontal: App.sidePadding).copyWith(top: App.sidePadding),
              //   sliver: BlocSelector<DealCubit, DealState>(
              //     builder: (c, s) => SliverList(
              //       delegate: SliverChildBuilderDelegate(
              //         (_, i) => ActivityListTile(deal),
              //         childCount: s.dealsList.list.size,
              //         findChildIndexCallback: (key) {
              //           final valueKey = key as ValueKey;
              //           final id = valueKey.value;
              //           return s.dealsList.list.indexOfFirstOrNull((e) => e.id == id);
              //         },
              //         semanticIndexCallback: (widget, localIndex) {
              //           if (localIndex.isNegative) return null;
              //           return localIndex;
              //         },
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
