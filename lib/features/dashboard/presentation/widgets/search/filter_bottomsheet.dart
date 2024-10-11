part of 'search_text_field.dart';

/// A stateful widget that renders _FilterBottomsheet.
class _FilterBottomsheet extends StatefulWidget {
  final DealFilter? filter;
  final _OnFilterCallback? onFilter;

  const _FilterBottomsheet({this.filter, this.onFilter});

  @override
  __FilterBottomsheetState createState() => __FilterBottomsheetState();
}

class __FilterBottomsheetState extends State<_FilterBottomsheet> {
  static final DealFilter _defaultFilter = DealFilter(amountRange: DealFilter.add(DealFilter.minPriceRange, DealFilter.maxPriceRange / 2));

  late DealCubit _cubit;
  late DealFilter _currentFilter;
  late MoneyMaskedTextController _maxPriceController;
  late MoneyMaskedTextController _minPriceController;

  @override
  void dispose() {
    _minPriceController.dispose();
    _maxPriceController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _minPriceController = MoneyMaskedTextController(
      leftSymbol: Const.defaultCurrencyIcon,
      precision: 0,
      decimalSeparator: '',
      thousandSeparator: ',',
    );

    _maxPriceController = MoneyMaskedTextController(
      leftSymbol: Const.defaultCurrencyIcon,
      precision: 0,
      decimalSeparator: '',
      thousandSeparator: ',',
    );

    _cubit = context.read<DealCubit>();
    // cubit.resetForFilter();

    enqueue(() => _cubit.fetchDealPlans());
    enqueue(() => _cubit.getCategories());

    _cubit.applyFilter(_defaultFilter.merge(widget.filter));
    _updatePriceTextFields();

    _currentFilter = _cubit.state.filter;

    super.initState();
  }

  bool get isDirty => _currentFilter != _cubit.state.filter;

  Widget _clearAll() {
    return Center(
      child: AdaptiveButton(
        text: 'RESET',
        textColor: Palette.primaryColor,
        textColorDark: Palette.onSurfaceDark,
        backgroundColor: Palette.transparent,
        disabled: App.platform.isAndroid && !isDirty,
        materialData: (d) => d.copyWith(height: 0.045.h),
        onPressed: () {
          _cubit.applyFilter(_defaultFilter, merge: false);
          _updatePriceTextFields();
        },
      ),
    );
  }

  void _updatePriceTextFields() {
    final start = _cubit.state.filter.amountRange?.first.getOrNull;
    final end = _cubit.state.filter.amountRange?.second.getOrNull;
    if (start != null) _minPriceController.updateValue(start);
    if (end != null) _maxPriceController.updateValue(end);
  }

  @override
  Widget build(BuildContext context) {
    return RadioTheme(
      data: RadioTheme.of(context).copyWith(
        fillColor: MaterialStateProperty.all(App.resolveColor(Palette.primaryColor, dark: Colors.white)),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      child: BlocSelector<DealCubit, DealState, DealFilter>(
        selector: (s) => s.filter,
        builder: (c, filter) => AdaptiveBottomSheet.column(
          safeAreaBottom: true,
          gapBeforeBar: App.platform.material(0.017),
          showBar: false,
          showCloseButton: false,
          topBarCrossAxisAlignment: CrossAxisAlignment.start,
          padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
          topRadius: Utils.platform_(cupertino: const Radius.circular(0)),
          topBar: (bar) => PlatformBuilder.builder(
            cupertino: (_) => Utils.nothing,
            material: (_) => Stack(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    BottomsheetTop.close(context),
                    AdaptiveText('Filter', fontSize: 18.sp, fontWeight: FontWeight.w600),
                  ],
                ),
                Center(child: bar),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Padding(
                    padding: EdgeInsets.only(right: App.sidePadding / 2),
                    child: BlocSelector<DealCubit, DealState, bool>(
                      selector: (s) => s.isFetchingPlans || s.isFetchingCategories,
                      builder: (c, isLoading) => BottomsheetTop.action(_clearAll(), isLoading: isLoading),
                    ),
                  ),
                ),
              ],
            ),
          ),
          children: [
            0.01.verticalh,
            //
            AdaptiveText(
              'Sort By',
              height: 1.5,
              fontSize: 17.sp,
              fontWeight: FontWeight.w600,
            ),
            //
            0.008.verticalh,
            //
            Column(
              mainAxisSize: MainAxisSize.min,
              children: SortDealBy.values
                  .map(
                    (e) => Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Radio(
                          toggleable: true,
                          value: e,
                          groupValue: filter.sortBy,
                          onChanged: (it) => _cubit.applyFilter(DealFilter(sortBy: it)),
                        ),
                        GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          onTap: () => _cubit.applyFilter(DealFilter(sortBy: e)),
                          child: AdaptiveText(
                            e.filterName,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  )
                  .toList(),
            ),
            //
            0.02.verticalh,
            //
            AdaptiveText(
              'Product Type',
              height: 1.5,
              fontSize: 17.sp,
              fontWeight: FontWeight.w600,
            ),
            //
            0.008.verticalh,
            //
            Column(
              mainAxisSize: MainAxisSize.min,
              children: DealType.values
                  .map((e) => Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Radio(
                            toggleable: true,
                            value: e,
                            groupValue: filter.dealType,
                            onChanged: (it) => _cubit.applyFilter(DealFilter(dealType: it)),
                          ),
                          GestureDetector(
                            behavior: HitTestBehavior.opaque,
                            onTap: () => _cubit.applyFilter(DealFilter(dealType: e)),
                            child: AdaptiveText(
                              e.productTypeName,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ))
                  .toList(),
            ),
            //
            0.02.verticalh,
            //
            AdaptiveText(
              'Category',
              height: 1.5,
              fontSize: 17.sp,
              fontWeight: FontWeight.w600,
            ),
            //
            0.013.verticalh,
            //
            BlocBuilder<DealCubit, DealState>(
              builder: (c, s) => AdaptiveDropdown<DealCategory?>(
                hint: s.isLoading && s.categories.isEmpty() ? 'Retrieving Categories...' : '-- Select Category --',
                disabledHint: 'Loading...',
                disabled: s.isLoading && s.categories.isEmpty(),
                items: s.categories.asList(),
                groupValue: filter.category,
                text: (it) => it?.name.getOrNull,
                onChanged: (value) => _cubit.applyFilter(DealFilter(category: value)),
              ),
            ),
            //
            0.02.verticalh,
            //
            AdaptiveText(
              'Price Range (${Const.defaultCurrencyIcon})',
              height: 1.5,
              fontSize: 17.sp,
              fontWeight: FontWeight.w600,
            ),
            //
            0.008.verticalh,
            //
            SizedBox(
              height: 20.0,
              child: SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  trackHeight: 3,
                  activeTrackColor: Colors.grey,
                  // inactiveTrackColor: Colors.green,
                  trackShape: _CustomTrackShape(),
                  thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 7.0),
                ),
                child: AdaptiveRangeSlider(
                  // platform: PlatformType.ios,
                  divisions: DealFilter.maxPriceRange ~/ 100,
                  minValue: filter.amountRange?.first.getOrNull ?? DealFilter.minPriceRange,
                  maxValue: filter.amountRange?.second.getOrNull ?? DealFilter.maxPriceRange,
                  labels: (() {
                    final start = filter.amountRange?.first.getOrNull;
                    final end = filter.amountRange?.second.getOrNull;
                    if (start == null || end == null) return null;
                    return RangeLabels('$start'.asCurrency(), '$end'.asCurrency());
                  })(),
                  min: DealFilter.minPriceRange,
                  max: DealFilter.maxPriceRange,
                  activeColor: Utils.platform_(material: Palette.accentYellow2, cupertino: Palette.primary),
                  inactiveColor: Palette.fromHex('#DEDEDE'),
                  semanticFormatterCallback: (it) => '$it'.asCurrency(),
                  onMinChanged: (it) => _cubit.applyFilter(
                    _cubit.state.filter.updateMinPrice(it, onValueChanged: (e) => _minPriceController.updateValue(e)),
                  ),
                  onMaxChanged: (it) => _cubit.applyFilter(
                    _cubit.state.filter.updateMaxPrice(it, onValueChanged: (e) => _maxPriceController.updateValue(e)),
                  ),
                  onChanged: (it) {
                    _cubit.applyFilter(DealFilter(amountRange: DealFilter.add(it.start, it.end)));
                    _minPriceController.updateValue(it.start);
                    _maxPriceController.updateValue(it.end);
                  },
                ),
              ),
            ),
            //
            0.01.verticalh,
            //
            _PriceRangeTextField(filter, minPriceController: _minPriceController, maxPriceController: _maxPriceController),
            //
            0.02.verticalh,
            //
            AdaptiveText(
              'Reviews',
              height: 1.5,
              fontSize: 17.sp,
              fontWeight: FontWeight.w600,
            ),
            //
            0.008.verticalh,
            //
            Column(
              children: List.generate(
                5,
                (row) => Row(
                  children: [
                    Radio(
                      toggleable: true,
                      value: row.toDouble(),
                      groupValue: filter.rating,
                      onChanged: (it) => _cubit.applyFilter(DealFilter(rating: it)),
                    ),
                    //
                    GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () => _cubit.applyFilter(DealFilter(rating: row.toDouble())),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: List.generate(
                          5,
                          (col) => Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Icon(
                              Utils.platform_(material: Icons.star, cupertino: CupertinoIcons.star_fill),
                              color: row >= col ? Palette.primaryColor : Colors.grey,
                              size: Utils.platform_(material: 24, cupertino: 22),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //
            0.04.verticalh,
            //
            BlocSelector<DealCubit, DealState, bool>(
              selector: (s) => s.isLoading,
              builder: (_, isLoading) => AdaptiveButton(
                text: 'Apply Filters',
                expand: true,
                disabled: isLoading || !isDirty,
                loadingData: (d) => d.copyWith(isLoading: isLoading),
                onPressed: () {
                  if (widget.onFilter != null) {
                    widget.onFilter!(filter);
                  } else {
                    navigator.pop().then((_) {
                      if (App.currentRoute == DealsListRoute.name) {
                        navigator.popAndPush(DealsListRoute(title: 'Filter Results', filter: filter, type: filter.dealType));
                      } else {
                        navigator.navigate(DealsListRoute(title: 'Filter Results', filter: filter, type: filter.dealType));
                      }
                    });
                  }
                },
              ),
            ),
            //
            0.02.verticalh,
          ],
        ).also((it) => Utils.platform_(
              material: it,
              cupertino: AdaptiveScaffold(
                adaptiveToolbar: AdaptiveToolbar(
                  backgroundColor: Colors.transparent,
                  height: 6,
                  title: 'Filter',
                  noCupertinoBorder: true,
                  showCupertinoCustomLeading: true,
                  cupertinoImplyLeading: false,
                  cupertinoLeadingStyle: const TextStyle(fontSize: 18),
                  actions: [_clearAll()],
                ),
                body: it,
              ),
            )!),
      ),
    );
  }
}

class _CustomTrackShape extends RoundedRectSliderTrackShape {
  @override
  Rect getPreferredRect({
    required RenderBox parentBox,
    Offset offset = Offset.zero,
    required SliderThemeData sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final trackHeight = sliderTheme.trackHeight!;
    final trackLeft = offset.dx;
    final trackTop = offset.dy + (parentBox.size.height - trackHeight) / 2;
    final trackWidth = parentBox.size.width;
    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }
}

/// A stateless widget that renders _PriceRangeTextField.
class _PriceRangeTextField extends StatelessWidget {
  final DealFilter filter;
  final MoneyMaskedTextController maxPriceController;
  final MoneyMaskedTextController minPriceController;

  const _PriceRangeTextField(this.filter, {required this.minPriceController, required this.maxPriceController});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    if (width < 350)
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [_FromPrice(filter, minPriceController), 0.015.verticalh, _ToPrice(filter, maxPriceController)],
      );

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(child: _FromPrice(filter, minPriceController)),
        0.08.horizontalw,
        Flexible(child: _ToPrice(filter, maxPriceController)),
      ],
    );
  }
}

class _FromPrice extends StatefulWidget {
  final MoneyMaskedTextController _controller;

  final DealFilter filter;

  const _FromPrice(this.filter, this._controller);

  @override
  State<_FromPrice> createState() => _FromPriceState();
}

class _FromPriceState extends State<_FromPrice> {
  @override
  void initState() {
    if (widget.filter.amountRange?.first.isValid == true) widget._controller.updateValue(widget.filter.amountRange!.first.getOrNull!);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AdaptiveText('From', fontSize: 15.sp, fontWeight: FontWeight.w300, height: 1.7),
        ReactiveTextFormField<DealCubit, DealState>(
          keyboardType: TextInputType.number,
          controller: (s) => widget._controller,
          field: (s) => s.filter.amountRange?.first,
          disabled: (s) => s.isLoading,
          validate: (s) => s.validate,
          response: (s) => s.status,
          autoDisposeController: false,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
            FilteringTextInputFormatter.singleLineFormatter,
          ],
          onChanged: (cubit, _) => cubit.applyFilter(cubit.state.filter.updateMinPrice(widget._controller.numberValue)),
        ),
      ],
    );
  }
}

class _ToPrice extends StatefulWidget {
  final MoneyMaskedTextController _controller;

  final DealFilter filter;

  const _ToPrice(this.filter, this._controller);

  @override
  State<_ToPrice> createState() => _ToPriceState();
}

class _ToPriceState extends State<_ToPrice> {
  @override
  void initState() {
    if (widget.filter.amountRange?.second.isValid == true) widget._controller.updateValue(widget.filter.amountRange?.second.getOrNull ?? 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AdaptiveText('To', fontSize: 15.sp, fontWeight: FontWeight.w300, height: 1.7),
        ReactiveTextFormField<DealCubit, DealState>(
          keyboardType: TextInputType.number,
          controller: (s) => widget._controller,
          field: (s) => s.filter.amountRange?.second,
          disabled: (s) => s.isLoading,
          validate: (s) => s.validate,
          response: (s) => s.status,
          autoDisposeController: false,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
            FilteringTextInputFormatter.singleLineFormatter,
          ],
          onChanged: (cubit, _) => cubit.applyFilter(cubit.state.filter.updateMaxPrice(widget._controller.numberValue)),
        ),
      ],
    );
  }
}
