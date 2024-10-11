part of product_bloc.dart;

@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
class ProductState with _$ProductState, BaseSearchState {
  static List<Country> countries = Country.countries.asList();
  static FocusNode itemNameFocus = FocusNode();
  static FocusNode stateFocus = FocusNode();
  static FocusNode tagsFocus = FocusNode();
  static FocusNode regionsFocus = FocusNode();
  static FocusNode townFocus = FocusNode();
  static FocusNode descriptionFocus = FocusNode();
  static FocusNode brandFocus = FocusNode();
  static FocusNode brandModelFocus = FocusNode();
  static FocusNode trasmissionFocus = FocusNode();
  static FocusNode shippingDescFocus = FocusNode();
  static FocusNode auctionBasePriceFocus = FocusNode();
  static FocusNode buyBasePriceFocus = FocusNode();
  static FocusNode weightFocus = FocusNode();
  static FocusNode widthFocus = FocusNode();
  static FocusNode heightFocus = FocusNode();
  static FocusNode lengthFocus = FocusNode();
  static FocusNode yrOfPurchaseFocus = FocusNode();
  static FocusNode yrOfManufactureFocus = FocusNode();
  static FocusNode termsInfoFocus = FocusNode();
  static FocusNode addressFocus = FocusNode();
  static FocusNode reservedPriceFocus = FocusNode();
  static const int kInitialPage = 0;
  static List<String> periods = [
    'Today',
    '1-2 days',
    '3-5 days',
    ...List.generate(2, (i) => '${i + 1} Week'.pluralize(i + 1)),
  ];
  static List<String> warrantyPeriod = [
    ...List.generate(3, (i) => '${i + 1} Week'.pluralize(i + 1)),
    ...List.generate(50, (i) => '${i + 1} Month'.pluralize(i + 1)),
  ];

  static List<String> years = List.generate(
    (localTime.year + 1) - 1900,
    (i) => '${i + 1900}',
  );

  const factory ProductState({
    @Default(false) bool isLoading,
    @Default(false) bool validate,
    // @Default(false) bool hasErrors,
    @Default(false) bool isFetchingCategories,
    @Default(false) bool isSavingState,
    @Default(false) bool isCreatingProduct,
    @Default(false) bool productCreated,
    @visibleForTesting @protected @Default(false) bool controllerHasClients,
    //
    @Default(false) bool isSearching,
    String? searchQuery,
    @Default(SearchModel.deal) SearchModel model,
    //
    required MoneyMaskedTextController basePriceController,
    required MoneyMaskedTextController reservedPriceController,
    required TextEditingController itemNameTextController,
    required TextEditingController stateTextController,
    required TextEditingController townTextController,
    required TextEditingController descriptionTextController,
    required TextEditingController brandTextController,
    required TextEditingController brandModelTextController,
    required TextEditingController transmissionTextController,
    required TextEditingController shippingDescTextController,
    required TextEditingController addressTextController,
    required TextEditingController weightTextController,
    required TextEditingController widthTextController,
    required TextEditingController heightTextController,
    required TextEditingController lengthTextController,
    required TextEditingController termsInfoTextController,
    required TextEditingController startDateTextController,
    required TextEditingController endDateTextController,
    required TagsEditingController tagsEditingController,
    required TagsEditingController regionsEditingController,
    //
    Deal? createdDeal,
    required DealPlan selectedPlan,
    required Product product,
    PageController? controller,
    @Default(ProductState.kInitialPage) int currentIndex,
    @Default(KtList.empty()) KtList<DealCategory> categories,
    @Default(KtList.empty()) KtList<DealPlan> dealPlans,
    @Default(None()) Option<AppHttpResponse?> status,
  }) = _ProductState;

  factory ProductState.initial() => ProductState(
        product: Product.sell(),
        selectedPlan: DealPlan.blank(),
        categories: const KtList.empty(),
        itemNameTextController: TextEditingController(),
        stateTextController: TextEditingController(),
        townTextController: TextEditingController(),
        descriptionTextController: TextEditingController(),
        brandTextController: TextEditingController(),
        brandModelTextController: TextEditingController(),
        transmissionTextController: TextEditingController(),
        shippingDescTextController: TextEditingController(),
        addressTextController: TextEditingController(),
        weightTextController: TextEditingController(),
        widthTextController: TextEditingController(),
        heightTextController: TextEditingController(),
        lengthTextController: TextEditingController(),
        termsInfoTextController: TextEditingController(),
        startDateTextController: TextEditingController(),
        endDateTextController: TextEditingController(),
        tagsEditingController: TagsEditingController(),
        regionsEditingController: TagsEditingController(),
        basePriceController: MoneyMaskedTextController(
          initialValue: 0,
          precision: 0,
          decimalSeparator: '',
          thousandSeparator: ',',
        ),
        reservedPriceController: MoneyMaskedTextController(
          initialValue: 0,
          precision: 0,
          decimalSeparator: '',
          thousandSeparator: ',',
        ),
      );
}

class PricingPageTab {
  const PricingPageTab(this.asset, this.title);

  final DealType title;
  final String asset;

  static KtList<PricingPageTab> tabs = KtList.from(const [
    PricingPageTab(AssetsSvgsDashboard.icHammerSVG, DealType.auction),
    PricingPageTab(AssetsSvgsDashboard.icShoppingBagSVG, DealType.buyNow),
  ]);
}
