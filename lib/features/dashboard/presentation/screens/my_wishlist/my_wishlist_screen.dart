library my_wishlist_screen.dart;

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/core/presentation/index.dart';
import 'package:auctionvillage/features/auth/presentation/managers/watcher/auth_watcher_cubit.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/managers/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/widgets/index.dart';
import 'package:auctionvillage/manager/locator/locator.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/collection.dart';

/// A stateless widget to render MyWishlistScreen.
class MyWishlistScreen extends StatefulWidget with AutoRouteWrapper {
  const MyWishlistScreen({Key? key}) : super(key: key);

  @override
  State<MyWishlistScreen> createState() => _MyWishlistScreenState();

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
}

class _MyWishlistScreenState extends State<MyWishlistScreen> {
  late DealCubit _cubit;

  @override
  void initState() {
    _cubit = context.read<DealCubit>();
    super.initState();
  }

  User get currentUser => context.read<AuthWatcherCubit>().state.user!;

  void onLoadMore(DragToRefreshState refresh) async {
    if (_cubit.state.wishlist.isNotEmpty()) {
      enqueue(
        () => _cubit.myWishlist(
          currentUser,
          nextPage: true,
          endOfList: () => refresh.loadNoData(),
          callback: (_) => refresh.loadComplete(),
        ),
      );
    }
  }

  void onRefresh(DragToRefreshState refresh) async {
    if (!_cubit.state.isFetchingWishlist) {
      enqueue(
        () => _cubit.myWishlist(
          currentUser,
          callback: (_) => refresh.refreshCompleted(resetFooterState: true),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppSliverScrollView.scaffold(
      title: 'My Wishlist',
      useSafeArea: true,
      initialRefresh: true,
      isPaginated: true,
      enablePullDown: true,
      enablePullUp: true,
      onRefresh: onRefresh,
      onLoading: onLoadMore,
      slivers: [
        BlocBuilder<DealCubit, DealState>(
          buildWhen: (p, c) => p.wishlist != c.wishlist || p.isFetchingWishlist != c.isFetchingWishlist,
          builder: (c, s) => SliverToBoxAdapter(
            child: Visibility(
              visible: s.wishlist.isEmpty() && !s.isFetchingWishlist,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: App.sidePadding, vertical: 0.3.h),
                child: const EmptyListWidget(title: 'Nothing here yet..'),
              ),
            ),
          ),
        ),
        //
        BlocSelector<DealCubit, DealState, KtList<MyWish>>(
          selector: (s) => s.wishlist,
          builder: (c, wishes) => SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: App.sidePadding, vertical: App.sidePadding),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (_, i) => Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (wishes.isNotEmpty()) ...[
                      ProductCard(
                        wishes.get(i).deal!,
                        index: i,
                        onUnlist: DragToRefresh.of(c).requestRefresh,
                      ),
                      //
                      if (i < wishes.size - 1) 0.01.verticalh,
                    ],
                  ],
                ),
                childCount: wishes.size,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
