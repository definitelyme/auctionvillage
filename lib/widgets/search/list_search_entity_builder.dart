part of full_search_page.dart;

class ListSearchEntityBuilder<R extends BlocBase<S>, S, E extends BaseEntity, K extends PaginatedKtList<E>> extends StatefulWidget {
  /// Widget built when there's no item in [items] that
  /// matches current query.
  final Widget Function(BuildContext, S, String?)? failureBuilder;

  // Function to invoke when the list is scrolled to the bottom
  final void Function(DragToRefreshState)? onLoadMore;

  final String Function(int)? titleCountBuilder;

  final bool Function(K)? showCountBuilder;

  final bool Function(S)? showNoResult;

  final bool Function(S)? isLoading;

  final Widget Function(bool)? loadingIndicatorBuilder;

  /// Builder for the list item
  final Widget Function(BuildContext, E, int) builder;

  // Spacing bwtween items in List
  final double? itemsVerticalSpacing;

  final String? name;

  final EdgeInsets? padding;

  /// used by BLoC selector
  final K Function(S) selector;

  final int tabIndex;

  const ListSearchEntityBuilder({
    Key? key,
    this.name,
    required this.tabIndex,
    required this.builder,
    required this.selector,
    this.titleCountBuilder,
    this.failureBuilder,
    this.itemsVerticalSpacing,
    this.padding,
    this.onLoadMore,
    this.showCountBuilder,
    this.showNoResult,
    this.isLoading,
    this.loadingIndicatorBuilder,
  }) : super(key: key);

  @override
  _ListSearchEntityBuilderState<R, S, E, K> createState() => _ListSearchEntityBuilderState();

  String get _id => UniqueId<String>.v4().value;
}

class _ListSearchEntityBuilderState<R extends BlocBase<S>, S, E extends BaseEntity, K extends PaginatedKtList<E>>
    extends State<ListSearchEntityBuilder<R, S, E, K>> {
  double get _itemsVerticalSpacing => widget.itemsVerticalSpacing ?? 0.015.h;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: WidgetFocus(
        unfocus: false,
        child: DragToRefresh(
          initialRefresh: false,
          enablePullDown: false,
          enablePullUp: true,
          onLoading: widget.onLoadMore,
          child: CustomScrollView(
            primary: false,
            key: PageStorageKey('${widget.name ?? widget._id}-${widget.tabIndex}'),
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            slivers: [
              BlocSelector<R, S, bool>(
                selector: widget.isLoading ?? ((_) => false),
                builder: (c, isLoading) => SliverLayoutBuilder(
                  builder: (c, _) {
                    if (isLoading)
                      return SliverToBoxAdapter(
                        child: widget.loadingIndicatorBuilder?.call(isLoading) ??
                            SizedBox(
                              height: 0.4.h,
                              child: const Center(
                                child: CircularProgressBar.adaptive(
                                  radius: 13,
                                  strokeWidth: 2.5,
                                  height: 30,
                                  width: 30,
                                  colorDark: Colors.white,
                                ),
                              ),
                            ),
                      );

                    return MultiSliver(
                      children: [
                        SliverToBoxAdapter(
                          child: BlocBuilder<R, S>(
                            builder: (c, s) {
                              final entities = widget.selector(s);
                              final isVisible = widget.showNoResult?.call(s) ?? false;

                              if (isVisible && entities.isEmpty())
                                return (widget.failureBuilder?.call(context, s, widget.name) ??
                                    SizedBox(
                                      height: 0.5.h,
                                      child: Padding(
                                        padding: widget.padding ?? EdgeInsets.zero,
                                        child: Center(
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              AppAssets.featherSearch(const Size(120, 120)),
                                              //
                                              0.02.verticalh,
                                              //
                                              AdaptiveText.rich(
                                                TextSpan(children: [
                                                  const TextSpan(text: 'No results found'),
                                                  if (widget.name != null) ...[
                                                    const TextSpan(text: ' in '),
                                                    TextSpan(text: '${widget.name}', style: TextStyle(color: Palette.primary)),
                                                  ],
                                                ]),
                                                fontSize: 24.sp,
                                                fontWeight: FontWeight.w600,
                                                textAlign: TextAlign.center,
                                                letterSpacing: Utils.labelLetterSpacing,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ));
                              return Utils.nothing;
                            },
                          ),
                        ),
                        //
                        BlocSelector<R, S, K>(
                          selector: widget.selector,
                          builder: (c, entities) => SliverVisibility(
                            visible: (widget.showCountBuilder?.call(entities) ?? true) && entities.isNotEmpty(),
                            sliver: SliverPadding(
                              padding: EdgeInsets.symmetric(vertical: 0.01.h).merge(widget.padding),
                              sliver: SliverToBoxAdapter(
                                child: AdaptiveText(
                                  widget.titleCountBuilder?.call(entities.size) ??
                                      '${entities.size} ${'Result'.pluralize(entities.size)} Found',
                                  maxLines: 1,
                                  softWrap: false,
                                  wrapWords: false,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                  textAlign: TextAlign.left,
                                  letterSpacing: Utils.letterSpacing,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                          ),
                        ),
                        //
                        SliverPadding(
                          padding: widget.padding ?? EdgeInsets.zero,
                          sliver: BlocSelector<R, S, PaginatedKtList<E>>(
                            selector: widget.selector,
                            builder: (c, entities) => SliverList(
                              delegate: SliverChildBuilderDelegate(
                                (_, i) => Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    widget.builder(context, entities.get(i), i),
                                    _itemsVerticalSpacing.vertical,
                                  ],
                                ),
                                childCount: entities.size,
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              //
            ],
          ),
        ),
      ),
    );
  }
}
