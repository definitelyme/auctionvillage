part of deal_cubit.dart;

@immutable
@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
class DealState extends BaseState with _$DealState {
  const factory DealState({
    @Default(false) bool isLoading,
    @Default(false) bool isLoadingSponsored,
    @Default(false) bool isBidding,
    //
    @Default(false) bool isFetchingBuyNowDeals,
    @Default(false) bool isFetchingLiveAuctionDeals,
    @Default(false) bool isFetchingClearanceDeals,
    @Default(false) bool isFetchingSponsoredDeals,
    //
    @Default(false) bool isFetchingBidHistory,
    @Default(false) bool isFetchingSellHistory,
    @Default(false) bool isFetchingWishlist,
    @Default(false) bool isFetchingRatings,
    @Default(false) bool isFetchingPlans,
    @Default(false) bool isFetchingCategories,
    @Default(false) bool isUnlistingItem,
    @Default(false) bool validate,
    DealCategory? currentCategory,
    Deal? currentDeal,
    SellHistory? sellHistory,
    UserBidHistory? myBidHistoryStats,
    Rating? rating,
    DealPlan? selectedPlan,
    required DealBidHistory biddingHistory,
    // required Product currentProduct,
    @Default(DealFilter.empty) DealFilter filter,
    required NumField<double> bidAmount,
    @Default(KtList.empty()) KtList<DealCategory> categories,
    //
    @Default(PaginatedKtList()) PaginatedKtList<Deal> sponsoredDeals,
    @Default(PaginatedKtList()) PaginatedKtList<Deal> buyNowDeals,
    @Default(PaginatedKtList()) PaginatedKtList<Deal> liveAuctionDeals,
    @Default(PaginatedKtList()) PaginatedKtList<Deal> clearanceDeals,
    //
    @Default(PaginatedKtList()) PaginatedKtList<Deal> dealsList,
    @Default(KtList.empty()) KtList<MyWish> wishlist,
    @Default(KtList.empty()) KtList<DealPlan> dealPlans,
    @Default(KtList.empty()) KtList<UserBidHistory> myBidHistoryList,
    @Default(KtMap.empty()) KtMap<DateTime, KtList<UserBidHistory>> myBidHistory,
    @Default(None()) Option<AppHttpResponse?> status,
  }) = _DealState;

  factory DealState.initial() => DealState(
        currentCategory: DealCategory.blank(),
        biddingHistory: DealBidHistory.blank(),
        bidAmount: NumField(0),
      );
}
