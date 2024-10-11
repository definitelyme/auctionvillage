// ignore_for_file: library_private_types_in_public_api

library full_search_page.dart;

import 'package:auctionvillage/core/presentation/index.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/managers/index.dart';
import 'package:extended_nested_scroll_view/extended_nested_scroll_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/collection.dart';
import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:sliver_tools/sliver_tools.dart';

part 'list_search_entity_builder.dart';

enum _FullSearchType { single, tabbed }

typedef _OnQueryUpdate = void Function(String);

typedef _TabViewBuilder = List<Widget> Function(String?);

typedef _SingleViewBuilder = Widget Function(BuildContext, String?);

typedef _TabNavigationCubit = TabNavigationCubit Function(TickerProvider, int);

class FullSearch<Bloc extends BaseSearchBloc<dynamic, BaseSearchState>> extends SearchDelegate<BaseEntity?> {
  final Bloc bloc;

  final InputDecorationTheme? inputDecorationTheme;

  /// This text will be shown in the [AppBar] when
  /// current query is empty.
  final String? label;

  /// Functions that gets called when the screen performs a search operation.
  final _OnQueryUpdate? onQueryUpdate;

  /// The style of the [label] text widget.
  final TextStyle? searchTextStyle;

  final _TabNavigationCubit? tabCubit;
  final _TabViewBuilder? tabView;
  final _SingleViewBuilder? singleView;
  final List<String>? tabs;
  final _FullSearchType type;
  final Iterable<Widget> trailing;

  FullSearch._({
    this.onQueryUpdate,
    this.label,
    this.searchTextStyle,
    this.inputDecorationTheme,
    this.tabCubit,
    this.tabs,
    this.tabView,
    this.singleView,
    required this.bloc,
    required this.type,
    this.trailing = const [],
  }) : super(searchFieldLabel: label, searchFieldStyle: searchTextStyle);

  factory FullSearch.single({
    _OnQueryUpdate? onQueryUpdate,
    String? label,
    TextStyle? searchTextStyle,
    InputDecorationTheme? inputDecorationTheme,
    Iterable<Widget> trailing = const [],
    required Bloc Function() bloc,
    required _SingleViewBuilder builder,
  }) =>
      FullSearch._(
        onQueryUpdate: onQueryUpdate,
        bloc: bloc(),
        label: label,
        searchTextStyle: searchTextStyle,
        inputDecorationTheme: inputDecorationTheme,
        singleView: builder,
        trailing: trailing,
        type: _FullSearchType.single,
      );

  factory FullSearch.tabbed({
    _OnQueryUpdate? onQueryUpdate,
    String? label,
    Widget? failure,
    TextStyle? searchTextStyle,
    InputDecorationTheme? inputDecorationTheme,
    Iterable<Widget> trailing = const [],
    required Bloc Function() bloc,
    required _TabNavigationCubit navigationCubit,
    required List<String> tabs,
    required _TabViewBuilder tabView,
  }) {
    assert(tabs.isNotEmpty);
    assert(tabView.call(null).isNotEmpty);
    assert(tabs.length == tabView.call(null).length);

    return FullSearch._(
      onQueryUpdate: onQueryUpdate,
      bloc: bloc(),
      label: label,
      searchTextStyle: searchTextStyle,
      inputDecorationTheme: inputDecorationTheme,
      tabCubit: navigationCubit,
      tabs: tabs,
      tabView: tabView,
      trailing: trailing,
      type: _FullSearchType.tabbed,
    );
  }

  @override
  ThemeData appBarTheme(BuildContext context) {
    return Theme.of(context).copyWith(
      textTheme: TextTheme(
        bodyText1: TextStyle(color: Palette.onSurface),
        bodyText2: TextStyle(color: Palette.onSurface),
        subtitle1: TextStyle(color: Palette.onSurface),
      ),
      appBarTheme: Theme.of(context).appBarTheme.copyWith(
            elevation: 0,
            backgroundColor: App.resolveColor(Palette.neutralF9, dark: Palette.cardColorDark),
          ),
      canvasColor: Palette.surface,
      scaffoldBackgroundColor: Palette.surface,
      inputDecorationTheme: inputDecorationTheme ??
          Theme.of(context).inputDecorationTheme.copyWith(
                hintStyle: TextStyle(color: Palette.onSurface, fontSize: 20),
                labelStyle: TextStyle(color: Palette.onSurface, fontSize: 20),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Palette.errorRed, width: 1),
                  borderRadius: Utils.inputBorderRadius.br,
                ),
                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Palette.disabledInputBorderColor, width: 1),
                  borderRadius: Utils.inputBorderRadius.br,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Palette.primary, width: 1),
                  borderRadius: Utils.inputBorderRadius.br,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Palette.onSurface, width: 1),
                  borderRadius: Utils.inputBorderRadius.br,
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Palette.errorRed, width: 1),
                  borderRadius: Utils.inputBorderRadius.br,
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Palette.onSurface, width: 1),
                  borderRadius: Utils.inputBorderRadius.br,
                ),
              ),
    );
  }

  @override
  List<Widget>? buildActions(BuildContext context) {
    // Builds a 'clear' button at the end of the [AppBar]
    return [
      // if (query.isNotEmpty && !App.platform.isIOS)
      AnimatedVisibility(
        visible: query.isNotEmpty,
        child: AppIconButton(
          borderRadius: 100.br,
          elevation: 0,
          height: 40,
          width: 40,
          cupertinoPadding: EdgeInsets.zero,
          useMaterialDefaultPadding: false,
          backgroundColor: Palette.transparent,
          cupertinoBackgroundColor: Palette.transparent,
          onPressed: () {
            query = '';
            bloc.add(const SearchEvent.clear());
          },
          child: Icon(Icons.clear, color: Palette.iconColor),
        ),
      ),
      //
      ...trailing,
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    // Creates a default back button as the leading widget.
    // It's aware of targeted platform.
    // Used to close the view.
    return Utils.platform_(
      material: AdaptiveToolbar.materialToolbarAction(
        // alignment: Alignment.centerLeft,
        onPressed: () => close(context, null),
      ),
      cupertino: AdaptiveToolbar.cupertinoToolbarAction(
        onPressed: () => close(context, null),
        child: AdaptiveText(
          'Close',
          textColor: Palette.primary,
          textColorDark: Palette.onSurface100,
          isDefault: true,
        ),
      ),
    );
  }

  @override
  Widget buildResults(BuildContext context) => build(context);

  @override
  Widget buildSuggestions(BuildContext context) => build(context);

  Widget build(BuildContext context) {
    // Deletes possible blank spaces & converts the string to lower case
    final cleanQuery = query.toLowerCase().trim();

    // Calls the 'onQueryUpdated' functions at the start of the operation
    onQueryUpdate?.call(cleanQuery);

    return type.when(
      single: () => _SingleLayout<Bloc>(
        query: cleanQuery,
        searchBloc: bloc,
        builder: singleView!,
      ),
      tabbed: () => _TabbedLayout<Bloc>(
        tabs: tabs!,
        tabView: tabView!,
        tabCubit: tabCubit!,
        query: cleanQuery,
        searchBloc: bloc,
      ),
    );
  }
}

class _SingleLayout<Bloc extends BaseSearchBloc<dynamic, BaseSearchState>> extends StatefulWidget {
  final String query;
  final Bloc searchBloc;
  final _SingleViewBuilder builder;

  const _SingleLayout({
    Key? key,
    required this.query,
    required this.searchBloc,
    required this.builder,
  }) : super(key: key);

  @override
  __SingleLayoutState<Bloc> createState() => __SingleLayoutState();
}

class __SingleLayoutState<Bloc extends BaseSearchBloc<dynamic, BaseSearchState>> extends State<_SingleLayout<Bloc>>
    with AutomaticKeepAliveClientMixin<_SingleLayout<Bloc>>, SingleTickerProviderStateMixin<_SingleLayout<Bloc>> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return BlocProvider.value(
      value: widget.searchBloc,
      child: Builder(
        builder: (c) => Stack(
          children: [
            widget.builder(context, widget.query),
            //
            Positioned(
              top: 0,
              right: 0.04.w,
              child: SizedBox(
                height: 0.05.h,
                child: Center(
                  child: AnimatedVisibility(
                    visible: c.watch<Bloc>().state.isSearching,
                    child: const Padding(
                      padding: EdgeInsets.all(1.5),
                      child: CircularProgressBar.adaptive(
                        height: 27,
                        width: 27,
                        strokeWidth: 2,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// A stateful widget to render FullSearch.
class _TabbedLayout<Bloc extends BaseSearchBloc<dynamic, BaseSearchState>> extends StatefulWidget {
  final _TabViewBuilder tabView;
  final _TabNavigationCubit tabCubit;
  final String query;
  final Bloc searchBloc;
  final List<String> tabs;

  const _TabbedLayout({
    Key? key,
    required this.tabs,
    required this.tabView,
    required this.query,
    required this.searchBloc,
    required this.tabCubit,
  }) : super(key: key);

  @override
  __TabbedLayoutState<Bloc> createState() => __TabbedLayoutState();
}

class __TabbedLayoutState<Bloc extends BaseSearchBloc<dynamic, BaseSearchState>> extends State<_TabbedLayout<Bloc>>
    with AutomaticKeepAliveClientMixin<_TabbedLayout<Bloc>>, SingleTickerProviderStateMixin<_TabbedLayout<Bloc>> {
  late TabNavigationCubit _tabCubit;

  @override
  void initState() {
    _tabCubit = widget.tabCubit(this, widget.tabs.length);
    super.initState();
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: _tabCubit),
        BlocProvider.value(value: widget.searchBloc),
      ],
      child: Builder(
        builder: (c) => ExtendedNestedScrollView(
          physics: const ClampingScrollPhysics(),
          floatHeaderSlivers: true,
          onlyOneScrollInBody: true,
          pinnedHeaderSliverHeightBuilder: () => 0,
          headerSliverBuilder: (_, __) => <Widget>[],
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BlocBuilder<TabNavigationCubit, TabNavigationState>(
                builder: (_, __) => Material(
                  type: MaterialType.transparency,
                  child: TabBar(
                    controller: _tabCubit.state.tabController,
                    labelColor: Palette.onSurface,
                    unselectedLabelColor: App.resolveColor(Palette.neutralLabel2, dark: Palette.neutralLabelDark),
                    isScrollable: true,
                    indicatorColor: Palette.primary,
                    indicatorSize: TabBarIndicatorSize.tab,
                    automaticIndicatorColorAdjustment: true,
                    indicatorPadding: kTabLabelPadding.merge(const EdgeInsets.symmetric(vertical: 5)),
                    onTap: _tabCubit.changedTabIndex,
                    tabs: widget.tabs
                        .toImmutableList()
                        .mapIndexed((i, item) => Tab(
                              height: 0.05.h,
                              child: AdaptiveText(
                                item,
                                maxLines: 1,
                                fontSize: 17.sp,
                                textColor: _tabCubit.state.selectedTab == i
                                    ? Palette.onSurface100
                                    : App.resolveColor(Palette.neutralLabel2, dark: Palette.neutralLabelDark),
                                fontWeight: _tabCubit.state.selectedTab == i ? FontWeight.w600 : FontWeight.normal,
                                letterSpacing: Utils.letterSpacing,
                                isDefault: true,
                              ),
                            ))
                        .asList(),
                  ),
                ),
              ),
              //
              Expanded(
                child: TabBarView(
                  physics: Utils.physics,
                  controller: _tabCubit.state.tabController,
                  children: widget.tabView(c.read<Bloc>().state.searchQuery ?? widget.query),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

extension on _FullSearchType {
  T when<T>({
    required T Function() single,
    required T Function() tabbed,
  }) {
    switch (this) {
      case _FullSearchType.single:
        return single.call();
      case _FullSearchType.tabbed:
        return tabbed.call();
    }
  }
}
