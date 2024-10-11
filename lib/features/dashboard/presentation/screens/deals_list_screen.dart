library deals_list_screen.dart;

import 'package:auctionvillage/core/presentation/index.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/managers/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/widgets/index.dart';
import 'package:auctionvillage/manager/locator/locator.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A stateless widget to render DealsListScreen.
class DealsListScreen extends StatefulWidget with AutoRouteWrapper {
  final DealCategory? category;
  final DealFilter? filter;
  final String title;
  final DealType? type;

  const DealsListScreen(
    this.title, {
    Key? key,
    required this.filter,
    this.category,
    this.type,
  }) : super(key: key);

  @override
  State<DealsListScreen> createState() => _DealsListScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return InheritOrCreateBlocProvider(
      orElse: () => getIt<DealCubit>(),
      child: InheritOrCreateBlocProvider(
        orElse: () => getIt<SearchBloc>(),
        child: MultiBlocListener(
          listeners: [
            BlocListener<DealCubit, DealState>(
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
            ),
            //
            BlocListener<SearchBloc, SearchState>(
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
            ),
          ],
          child: this,
        ),
      ),
    );
  }
}

class _DealsListScreenState extends State<DealsListScreen> with AutomaticKeepAliveClientMixin<DealsListScreen>, DealListScreenKeyMixin {
  late DealCubit _cubit;
  late FocusNode _focusNode;

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _focusNode = FocusNode();
    _cubit = context.read<DealCubit>();
    _cubit.clearDealsList();
    _cubit.toggleLoading(true);
    settings.runAllTours(context, keys);
    super.initState();
  }

  @override
  bool get wantKeepAlive => true;

  DealFilter get filter => widget.filter?.copyWith(dealType: widget.type) ?? DealFilter(dealType: widget.type);

  void onLoadMore(DragToRefreshState refresh) async {
    enqueue(
      () => _cubit.filterDeals(
        nextPage: true,
        category: widget.category,
        filter: filter,
        callback: (_) => refresh.loadComplete(),
      ),
    );
  }

  void onRefresh(DragToRefreshState refresh) async {
    enqueue(
      () => _cubit.filterDeals(
        category: widget.category,
        filter: filter,
        callback: (_) => refresh.refreshCompleted(resetFooterState: true),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return AdaptiveScaffold(
      adaptiveToolbar: AdaptiveToolbar(title: widget.title),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          0.01.verticalh,
          //
          Padding(
            padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
            child: SearchTextField(
              key: const ValueKey('search-screen-text-field'),
              focusNode: _focusNode,
              filter: filter,
              filterKey: filterKey,
              searchKey: searchKey,
              filterShowcaseTitle: 'Filter',
              filterShowcaseDescription: 'Choose from a variety of filters\nto narrow down your search results.',
              searchShowcaseTitle: 'Search',
              searchShowcaseDescription: 'Search for deals by keyword\nor by category.',
            ),
          ),
          //
          0.01.verticalh,
          //
          Expanded(
            child: DragToRefresh(
              initialRefresh: true,
              enablePullUp: true,
              onRefresh: (r) => onRefresh(r),
              onLoading: (r) => onLoadMore(r),
              footerHeight: (d) => d + 30,
              child: CustomScrollView(
                primary: false,
                physics: Utils.physics,
                keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                slivers: [
                  SliverPadding(
                    padding: EdgeInsets.symmetric(horizontal: App.sidePadding).copyWith(top: App.sidePadding),
                    sliver: BlocBuilder<DealCubit, DealState>(
                      builder: (c, s) => SliverGrid(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 8,
                          mainAxisSpacing: 8,
                          mainAxisExtent: s.isLoading && s.dealsList.isEmpty()
                              ? widget.type?.maybeWhen(buyNow: () => 0.4.h, orElse: () => 0.42.h) ?? 0.42.h
                              : AuctionCardBuilder.height.h,
                        ),
                        delegate: SliverChildBuilderDelegate(
                          (_, i) => (widget.type ?? s.dealsList.get(i).type).maybeWhen(
                            buyNow: () => BuyNowCardBuilder(
                              index: i,
                              s.dealsList.get(i),
                              key: ValueKey(s.dealsList.get(i).id),
                              onUnlist: DragToRefresh.of(c).requestRefresh,
                            ),
                            orElse: () => AuctionCardBuilder(
                              index: i,
                              s.dealsList.get(i),
                              key: ValueKey(s.dealsList.get(i).id),
                              onUnlist: DragToRefresh.of(c).requestRefresh,
                            ),
                          ),
                          childCount: s.dealsList.list.size,
                          findChildIndexCallback: (key) {
                            final valueKey = key as ValueKey;
                            final id = valueKey.value;
                            return s.dealsList.list.indexOfFirstOrNull((e) => e.id == id);
                          },
                          semanticIndexCallback: (widget, localIndex) {
                            if (localIndex.isNegative) return null;
                            return localIndex;
                          },
                        ),
                      ),
                    ),
                  ),
                  // ).sliverSafeBottom,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
