library search_screen.dart;

import 'package:auctionvillage/core/presentation/managers/managers.dart';
import 'package:auctionvillage/features/dashboard/presentation/managers/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/widgets/index.dart';
import 'package:auctionvillage/manager/locator/locator.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A stateful widget that renders SearchScreen.
class SearchScreen extends StatefulWidget with AutoRouteWrapper {
  static const index = 1;

  const SearchScreen({super.key});

  @override
  SearchScreenState createState() => SearchScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return InheritOrCreateBlocProvider(
      orElse: () => getIt<SearchBloc>(),
      child: InheritOrCreateBlocProvider(
        orElse: () => getIt<DealCubit>(),
        child: MultiBlocListener(
          listeners: [
            BlocListener<SearchBloc, SearchState>(
              listenWhen: (p, c) =>
                  p.status.getOrNull != c.status.getOrNull ||
                  (c.status.getOrNull != null && (c.status.getOrNull!.response.maybeMap(orElse: () => false))),
              listener: (c, s) => s.status.fold(
                () {},
                (it) => it?.response.map(
                  info: (i) => PopupDialog.info(message: i.message, show: i.message.isNotEmpty).render(),
                  error: (f) => PopupDialog.error(message: f.message, show: f.show && f.message.isNotEmpty).render(),
                  success: (s) => PopupDialog.success(message: s.message, show: s.message.isNotEmpty).render(),
                ),
              ),
            ),
            //
            BlocListener<DealCubit, DealState>(
              listenWhen: (p, c) =>
                  p.status.getOrElse(() => null) != c.status.getOrElse(() => null) ||
                  (c.status.getOrElse(() => null) != null && (c.status.getOrElse(() => null)!.response.maybeMap(orElse: () => false))),
              listener: (c, s) => s.status.fold(
                () {},
                (it) => it?.response.map(
                  info: (i) => PopupDialog.info(message: i.message, show: i.message.isNotEmpty).render(),
                  error: (f) => PopupDialog.error(message: f.message, show: f.show && f.message.isNotEmpty).render(),
                  success: (s) => PopupDialog.success(message: s.message, show: s.message.isNotEmpty).render(),
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

class SearchScreenState extends State<SearchScreen> with AutomaticKeepAliveClientMixin<SearchScreen> {
  late FocusNode _focusNode;

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _focusNode = FocusNode();

    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(milliseconds: 300), () {
        if (mounted) _focusNode.requestFocus();
      });
    });
  }

  @override
  bool get wantKeepAlive => true;

  SliverChildDelegate _builderDelegate({
    bool shimmerVisible = false,
    required SliverChildBuilderDelegate list,
    required SliverChildBuilderDelegate shimmer,
  }) {
    return shimmerVisible ? shimmer : list;
  }

  void onLoadMore(DragToRefreshState refresh) {
    final _searchBloc = context.read<SearchBloc>();
    if (!_searchBloc.state.isSearching && _searchBloc.state.deals.isNotEmpty() && _searchBloc.state.searchQuery != null) {
      enqueue(
        () => _searchBloc.add(
          SearchEvent.search(
            _searchBloc.state.searchQuery!,
            nextPage: true,
            filter: context.read<DealCubit>().state.filter,
            callback: (_) => refresh.loadComplete(),
          ),
        ),
      );
    } else if (_searchBloc.state.status.getOrNull?.isEndOfList == true) {
      refresh.loadNoData();
    } else {
      refresh.loadComplete();
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return AdaptiveScaffold(
      body: AdaptiveScaffoldBody(
        body: NestedScrollView(
          headerSliverBuilder: (c, isScrolled) => [
            SliverAppBar(
              title: const AdaptiveText('Search', maxLines: 1, maxFontSize: 20, fontWeight: FontWeight.w700),
              collapsedHeight: kToolbarHeight,
              toolbarHeight: kToolbarHeight,
              excludeHeaderSemantics: true,
              scrolledUnderElevation: Utils.platform_(cupertino: 1.5, material: 3),
              automaticallyImplyLeading: false,
              pinned: true,
              stretch: true,
              centerTitle: false,
              backgroundColor: Palette.background,
            ),
          ],
          body: WidgetFocus(
            mode: WidgetFocusMode.focus,
            focusNode: _focusNode,
            child: DragToRefresh(
              enablePullUp: true,
              initialRefresh: false,
              enablePullDown: false,
              onLoading: onLoadMore,
              child: CustomScrollView(
                primary: true,
                physics: Utils.physics,
                slivers: [
                  SliverPadding(
                    padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
                    sliver: SliverList(
                      delegate: SliverChildListDelegate.fixed([
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: .02.h),
                          child: SearchTextField(
                            key: const ValueKey('search-screen-text-field'),
                            focusNode: _focusNode,
                            onChanged: (query) {},
                          ),
                        ),
                      ]),
                    ),
                  ),
                  //
                  SliverToBoxAdapter(
                    child: BlocBuilder<SearchBloc, SearchState>(
                      builder: (c, s) {
                        final isVisible = s.searchQuery?.isEmpty == false && !s.isSearching;
                        return Visibility(
                          visible: isVisible && s.deals.isEmpty(),
                          child: SizedBox(
                            height: 0.5.h,
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    AppAssets.featherSearch(const Size(120, 120)),
                                    //
                                    0.02.verticalh,
                                    //
                                    AdaptiveText(
                                      'No results found',
                                      fontSize: 24.sp,
                                      fontWeight: FontWeight.w600,
                                      textAlign: TextAlign.center,
                                      letterSpacing: Utils.labelLetterSpacing,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  //
                  SliverPadding(
                    padding: EdgeInsets.symmetric(horizontal: App.sidePadding).copyWith(bottom: 0.01.h),
                    sliver: SliverToBoxAdapter(
                      child: BlocBuilder<SearchBloc, SearchState>(
                        builder: (c, s) => AnimatedVisibility(
                          visible: s.isSearching && s.deals.isNotEmpty(),
                          child: LinearProgressIndicator(
                            minHeight: 3,
                            backgroundColor: Palette.elevationOverlay16,
                            valueColor: AlwaysStoppedAnimation<Color>(Palette.primary),
                          ),
                        ),
                      ),
                    ),
                  ),
                  //
                  // GridView.builder(gridDelegate: gridDelegate, itemBuilder: itemBuilder),
                  SliverPadding(
                    padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
                    sliver: BlocBuilder<SearchBloc, SearchState>(
                      builder: (c, s) => SliverGrid(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 8,
                          mainAxisSpacing: 8,
                          mainAxisExtent: s.isSearching && s.deals.isEmpty() ? 0.42.h : AuctionCardBuilder.height.h,
                        ),
                        delegate: _builderDelegate(
                          shimmerVisible: s.isSearching && s.deals.isEmpty(),
                          shimmer: SliverChildBuilderDelegate(
                            (_, i) => LiveAuctionCardShimmer(key: ValueKey('search-deals-shimmer-$i')),
                            childCount: 6,
                          ),
                          list: SliverChildBuilderDelegate(
                            (_, i) => s.deals.get(i).type.maybeWhen(
                                  buyNow: () => BuyNowCardBuilder(
                                    index: i,
                                    s.deals.get(i),
                                    key: ValueKey(s.deals.get(i).id),
                                  ),
                                  orElse: () => AuctionCardBuilder(
                                    index: i,
                                    s.deals.get(i),
                                    key: ValueKey(s.deals.get(i).id),
                                  ),
                                ),
                            childCount: s.deals.list.size,
                            findChildIndexCallback: (key) {
                              final valueKey = key as ValueKey;
                              final id = valueKey.value;
                              return s.deals.list.indexOfFirstOrNull((e) => e.id == id);
                            },
                            semanticIndexCallback: (widget, localIndex) {
                              if (localIndex.isNegative) return null;
                              return localIndex;
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
