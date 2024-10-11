library deal_cubit.dart;

import 'package:auctionvillage/core/data/models/index.dart';
import 'package:auctionvillage/core/data/response/index.dart';
import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/core/presentation/index.dart';
import 'package:auctionvillage/features/dashboard/data/repositories/deal_repository.dart';
import 'package:auctionvillage/features/dashboard/data/repositories/seller_repository.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

part 'deal_cubit.freezed.dart';
part 'deal_state.dart';

@injectable
class DealCubit extends BaseCubit<DealState> {
  final DealRepository _repository;
  final SellerRepository _sellerRepository;

  DealCubit(this._repository, this._sellerRepository) : super(DealState.initial());

  void toggleLoading([bool? isLoading, Option<AppHttpResponse?>? status]) =>
      emit(state.copyWith(isLoading: isLoading ?? !state.isLoading, status: status ?? state.status));

  void stopLoadingOnTimeout() {
    Future.delayed(
      Duration(milliseconds: env.receiveTimeout),
      () => emit(state.copyWith(
        isLoading: false,
        isFetchingLiveAuctionDeals: false,
        isFetchingBuyNowDeals: false,
        isFetchingClearanceDeals: false,
        isFetchingSponsoredDeals: false,
        isFetchingBidHistory: false,
        isFetchingSellHistory: false,
        isFetchingRatings: false,
        isFetchingWishlist: false,
        isFetchingPlans: false,
        isFetchingCategories: false,
        isBidding: false,
        isLoadingSponsored: false,
      )),
    );
  }

  Future<void> fetchDeals({
    int? perPage,
    bool nextPage = false,
    required DealType dealType,
    BidStatus bidStatus = BidStatus.live,
    BiddingType? biddingType,
    DealStatus dealStatus = DealStatus.approved,
    EndOfListCallback? endOfList,
    AwaitCallback? callback,
  }) async {
    if (state.status.getOrNull == AppHttpResponse.endOfList && nextPage) return endOfList?.call();

    emit(state.copyWith(status: none()));

    emit(dealType.when(
      auction: () => state.copyWith(isFetchingLiveAuctionDeals: true),
      buyNow: () => state.copyWith(isFetchingBuyNowDeals: true),
      clearance: () => state.copyWith(isFetchingClearanceDeals: true),
    ));

    stopLoadingOnTimeout();

    final response = await _repository.deals(
      perPage: perPage,
      nextPage: nextPage,
      pagination: dealType.when(
        auction: () => state.liveAuctionDeals.meta?.pagination,
        buyNow: () => state.buyNowDeals.meta?.pagination,
        clearance: () => state.clearanceDeals.meta?.pagination,
      ),
      filter: DealFilter(
        dealType: dealType,
        bidStatus: bidStatus,
        bidType: biddingType,
        dealStatus: dealStatus,
      ),
    );

    emit(response.fold(
      (e) => state.copyWith(status: some(e), isLoading: false),
      (o) => dealType.when(
        auction: () => state.copyWith(liveAuctionDeals: state.liveAuctionDeals.plusIfAbsent(o.value, meta: o.meta)),
        buyNow: () => state.copyWith(buyNowDeals: state.buyNowDeals.plusIfAbsent(o.value, meta: o.meta)),
        clearance: () => state.copyWith(clearanceDeals: state.clearanceDeals.plusIfAbsent(o.value, meta: o.meta)),
      ),
    ));

    emit(dealType.when(
      auction: () {
        callback?.call(response.isRight());
        return state.copyWith(isFetchingLiveAuctionDeals: false);
      },
      buyNow: () {
        callback?.call(response.isRight());
        return state.copyWith(isFetchingBuyNowDeals: false);
      },
      clearance: () {
        callback?.call(response.isRight());
        return state.copyWith(isFetchingClearanceDeals: false);
      },
    ));
  }

  Future<void> sponsoredDeals({
    int? perPage,
    bool nextPage = false,
    EndOfListCallback? endOfList,
    AwaitCallback? callback,
  }) async {
    if (state.status.getOrNull == AppHttpResponse.endOfList && nextPage) return endOfList?.call();

    emit(state.copyWith(status: none(), isLoadingSponsored: true));

    if (state.dealPlans.isEmpty()) await fetchDealPlans();

    stopLoadingOnTimeout();

    final response = await _repository.deals(
      pagination: state.sponsoredDeals.meta?.pagination,
      filter: DealFilter(plan: state.dealPlans.enterprisePlan, bidStatus: BidStatus.live),
      perPage: perPage,
      nextPage: nextPage,
    );

    emit(response.fold(
      (e) => state.copyWith(status: some(e)),
      (value) {
        final filtered = value.filter((it) => it.product != null && it.product!.photos.isNotEmpty());
        return state.copyWith(sponsoredDeals: state.sponsoredDeals.plusIfAbsent(filtered.value, meta: filtered.meta));
      },
    ));

    emit(state.copyWith(isLoadingSponsored: false));

    callback?.call(true);
  }

  void applyFilter(DealFilter? filter, {bool merge = true}) =>
      emit(state.copyWith(filter: merge ? state.filter.merge(filter) : (filter ?? state.filter)));

  void resetForFilter() => emit(DealState.initial().copyWith(dealPlans: state.dealPlans, categories: state.categories));

  void resetDealDetailScreen([Deal? deal]) => emit(state.copyWith(
        biddingHistory: DealBidHistory.blank(),
        currentDeal: deal,
        isFetchingBidHistory: false,
        isLoading: false,
      ));

  void clearDealsList() => emit(state.copyWith(status: none(), dealsList: const PaginatedKtList()));

  Future<void> fetchDealPlans() async {
    if (state.dealPlans.isEmpty()) {
      emit(state.copyWith(status: none(), isFetchingPlans: true));

      stopLoadingOnTimeout();

      final response = await _sellerRepository.availablePlans();

      emit(response.fold(
        (e) => state.copyWith(status: some(e), isFetchingPlans: false),
        (plans) => state.copyWith(dealPlans: state.dealPlans.plusIfAbsent(plans), isFetchingPlans: false),
      ));
    }
  }

  Future<void> filterDeals({
    required DealFilter? filter,
    DealCategory? category,
    int? perPage,
    bool nextPage = false,
    EndOfListCallback? endOfList,
    AwaitCallback? callback,
  }) async {
    if (state.status.getOrNull == AppHttpResponse.endOfList && nextPage) return endOfList?.call();

    toggleLoading(true, none());

    final Either<AppHttpResponse, PaginatedKtList<Deal>> response;

    stopLoadingOnTimeout();

    if (category == null) {
      response = await _repository.deals(
        filter: filter,
        perPage: perPage,
        nextPage: nextPage,
        pagination: state.dealsList.meta?.pagination,
      );
    } else {
      response = await _repository.filterDealsByCategory(
        category,
        filter: filter,
        perPage: perPage,
        nextPage: nextPage,
        pagination: state.dealsList.meta?.pagination,
      );
    }

    emit(response.fold(
      (e) => state.copyWith(status: some(e), isLoading: false),
      (o) => state.copyWith(
        dealsList: state.dealsList.plusIfAbsent(o.value, meta: o.meta),
        isLoading: false,
      ),
    ));

    callback?.call(true);
  }

  void increaseBid() {
    if (state.currentDeal == null) return;

    emit(state.copyWith(bidAmount: state.bidAmount + state.currentDeal!.increament));
  }

  void decreaseBid() {
    final deal = state.currentDeal;

    if (deal != null) {
      // Subtract the factor from the current bid price
      var bidAmount = state.bidAmount - deal.increament;

      if (bidAmount.getExact() < deal.lastPriceOffered.getExact()) {
        // If the bid is greater than the last price offered, decrement by 1
        bidAmount = deal.lastPriceOffered;
      }

      emit(state.copyWith(bidAmount: bidAmount));
    }
  }

  Future<void> showDeal(Deal deal) async {
    emit(state.copyWith(currentDeal: deal, isLoading: true, status: none(), bidAmount: deal.lastPriceOffered));

    stopLoadingOnTimeout();

    final response = await _repository.getDeal(deal);

    emit(response.fold(
      (e) => state.copyWith(status: some(e), isLoading: false),
      (deal) => state.copyWith(currentDeal: deal, isLoading: false, bidAmount: deal.lastPriceOffered),
    ));
  }

  Future<void> getCategories() async {
    if (state.categories.isEmpty()) {
      emit(state.copyWith(status: none(), isFetchingCategories: true));

      stopLoadingOnTimeout();

      final response = await _repository.categories();

      emit(response.fold(
        (e) => state.copyWith(status: some(e), isFetchingCategories: false),
        (categories) => state.copyWith(categories: state.categories.plusIfAbsent(categories), isFetchingCategories: false),
      ));
    }
  }

  Future<void> showCategory(DealCategory category) async {
    emit(state.copyWith(isLoading: true, status: none(), currentCategory: category));

    stopLoadingOnTimeout();

    final response = await _repository.getCategory(category);

    emit(response.fold(
      (e) => state.copyWith(status: some(e), isLoading: false),
      (value) => state.copyWith(currentCategory: value, isLoading: false),
    ));
  }

  void sendBid() async {
    emit(state.copyWith(isBidding: true, status: none()));

    final deal = state.currentDeal;

    if (deal == null) return;

    stopLoadingOnTimeout();

    final response = await _repository.sendBid(deal, state.bidAmount.getExact());

    response.value1?.response.mapOrNull(
      success: (_) {
        final deal = response.value2;

        if (deal != null) {
          final newBidAmount = deal.basePrice;
          final newLastPriceOffered = deal.lastPriceOffered;

          emit(state.copyWith(
            // bidAmount: newBidAmount,
            currentDeal: state.currentDeal?.merge(deal).bid(amount: newBidAmount, lastPrice: newLastPriceOffered),
            dealsList: state.dealsList.map(
              (it) => it.id.value == state.currentDeal?.id.value ? it.bid(amount: newBidAmount, lastPrice: newLastPriceOffered) : it,
            ),
            buyNowDeals: state.buyNowDeals.map(
              (it) => it.id.value == state.currentDeal?.id.value ? it.bid(amount: newBidAmount, lastPrice: newLastPriceOffered) : it,
            ),
            liveAuctionDeals: state.liveAuctionDeals.map(
              (it) => it.id.value == state.currentDeal?.id.value ? it.bid(amount: newBidAmount, lastPrice: newLastPriceOffered) : it,
            ),
            clearanceDeals: state.clearanceDeals.map(
              (it) => it.id.value == state.currentDeal?.id.value ? it.bid(amount: newBidAmount, lastPrice: newLastPriceOffered) : it,
            ),
            sponsoredDeals: state.sponsoredDeals.map(
              (it) => it.id.value == state.currentDeal?.id.value ? it.bid(amount: newBidAmount, lastPrice: newLastPriceOffered) : it,
            ),
          ));
        }
      },
    );

    emit(state.copyWith(isBidding: false, status: optionOf(response.value1)));
  }

  void bidHistory(
    Deal? deal, {
    int? perPage,
    bool nextPage = false,
    EndOfListCallback? endOfList,
    AwaitCallback? callback,
  }) async {
    emit(state.copyWith(isFetchingBidHistory: true, status: none()));

    stopLoadingOnTimeout();

    final response = await _repository.bidHistory(deal, perPage: perPage, nextPage: nextPage);

    emit(response.fold(
      (e) => state.copyWith(status: some(e), isFetchingBidHistory: false),
      (history) {
        final value = state.biddingHistory.merge(history);
        return state.copyWith(biddingHistory: value, isFetchingBidHistory: false);
      },
    ));

    callback?.call(true);
  }

  Future<void> myBidHistory(
    User? user, {
    int? perPage,
    bool nextPage = false,
    EndOfListCallback? endOfList,
    AwaitCallback? callback,
  }) async {
    if (state.status.getOrNull == AppHttpResponse.endOfList && nextPage) return endOfList?.call();

    emit(state.copyWith(isFetchingBidHistory: true, status: none()));

    stopLoadingOnTimeout();

    if (!nextPage) {
      final stats = await _repository.myBidHistoryStats(user, perPage: perPage, nextPage: nextPage);

      emit(stats.fold(
        (e) => state.copyWith(status: optionOf(e)),
        (history) {
          final value = state.myBidHistoryStats != null ? state.myBidHistoryStats?.merge(history, nextPage: nextPage) : history;
          return state.copyWith(myBidHistoryStats: value);
        },
      ));
    }

    final history = await _repository.myBidHistory(user, perPage: perPage, nextPage: nextPage);

    emit(history.fold(
      (e) => state.copyWith(status: optionOf(e), isFetchingBidHistory: false),
      (list) {
        final newList = (!nextPage ? list : state.myBidHistoryList.plusIfAbsent(list)).filter((it) => it.isValid);
        final sorted = newList.sortedWith((a, b) => b.createdAt!.compareTo(a.createdAt!)).groupBy(
              (it) => DateTime(
                it.createdAt!.year,
                it.createdAt!.month,
                it.createdAt!.day,
              ),
            );

        return state.copyWith(myBidHistory: sorted, myBidHistoryList: newList, isFetchingBidHistory: false);
      },
    ));

    callback?.call(true);
  }

  Future<void> sellHistory(
    User? user, {
    int? perPage,
    bool nextPage = false,
    EndOfListCallback? endOfList,
    AwaitCallback? callback,
  }) async {
    if (state.status.getOrNull == AppHttpResponse.endOfList && nextPage) return endOfList?.call();

    emit(state.copyWith(isFetchingSellHistory: true, status: none()));

    stopLoadingOnTimeout();

    final response = await _repository.sellHistory(user, perPage: perPage, nextPage: nextPage);

    emit(response.fold(
      (e) => state.copyWith(status: some(e), isFetchingSellHistory: false),
      (history) {
        final value = state.sellHistory != null ? state.sellHistory?.merge(history, nextPage: nextPage) : history;
        return state.copyWith(sellHistory: value, isFetchingSellHistory: false);
      },
    ));

    callback?.call(true);
  }

  void toggleFavorite([Deal? _deal]) async {
    final deal = _deal ?? state.currentDeal;

    emit(state.copyWith(
      dealsList: state.dealsList.map((a) => deal?.id == a.id ? a.toggleFavorite() : a),
      buyNowDeals: state.buyNowDeals.map((a) => deal?.id == a.id ? a.toggleFavorite() : a),
      liveAuctionDeals: state.liveAuctionDeals.map((a) => deal?.id == a.id ? a.toggleFavorite() : a),
      clearanceDeals: state.clearanceDeals.map((a) => deal?.id == a.id ? a.toggleFavorite() : a),
      sponsoredDeals: state.sponsoredDeals.map((a) => deal?.id == a.id ? a.toggleFavorite() : a),
      currentDeal: deal?.id == state.currentDeal?.id ? state.currentDeal?.toggleFavorite() : state.currentDeal,
    ));

    AppHttpResponse? response;

    if (deal != null) {
      if (deal.hasWish)
        response = await _repository.unfavorite(deal);
      else
        response = await _repository.favorite(deal);
    }

    response?.response.mapOrNull(error: (_) => emit(state.copyWith(status: optionOf(response))));
  }

  Future<void> myWishlist(
    User? user, {
    int? perPage,
    bool nextPage = false,
    EndOfListCallback? endOfList,
    AwaitCallback? callback,
  }) async {
    if (state.status.getOrNull == AppHttpResponse.endOfList && nextPage) return endOfList?.call();

    emit(state.copyWith(isFetchingWishlist: true, status: none()));

    stopLoadingOnTimeout();

    final response = await _repository.wishlist(user, perPage: perPage, nextPage: nextPage);

    emit(response.fold(
      (e) => state.copyWith(status: some(e), isFetchingWishlist: false),
      (list) => state.copyWith(wishlist: !nextPage ? list : state.wishlist.plusIfAbsent(list), isFetchingWishlist: false),
    ));

    callback?.call(true);
  }

  Future<void> myRatings({
    int? perPage,
    bool nextPage = false,
    EndOfListCallback? endOfList,
    AwaitCallback? callback,
  }) async {
    if (state.status.getOrNull == AppHttpResponse.endOfList && nextPage) return endOfList?.call();

    emit(state.copyWith(isFetchingWishlist: true, status: none()));

    stopLoadingOnTimeout();

    final response = await _repository.myReviews(perPage: perPage, nextPage: nextPage);

    emit(response.fold(
      (e) => state.copyWith(status: some(e), isFetchingRatings: false),
      (rating) {
        final value = state.rating != null ? state.rating?.merge(rating, nextPage: nextPage) : rating;
        return state.copyWith(rating: value, isFetchingRatings: false);
      },
    ));

    callback?.call(true);
  }

  Future<void> getDealRating(
    Deal deal, {
    int? perPage,
    bool nextPage = false,
    EndOfListCallback? endOfList,
    AwaitCallback? callback,
  }) async {
    if (state.status.getOrNull == AppHttpResponse.endOfList && nextPage) return endOfList?.call();

    toggleLoading(true, none());

    stopLoadingOnTimeout();

    final response = await _repository.getDealRating(deal, perPage: perPage, nextPage: nextPage);

    emit(response.fold(
      (e) => state.copyWith(status: some(e), isLoading: false),
      (rating) {
        final value = state.rating != null ? state.rating?.merge(rating, nextPage: nextPage) : rating;
        return state.copyWith(rating: value, isLoading: false);
      },
    ));

    callback?.call(true);
  }

  void checkAdmittanceFeeStatus(Deal deal, {AwaitCallback? callback}) async {
    if (deal.isPrivate) {
      toggleLoading(true, none());

      final response = await _repository.admittanceFeeStatus(deal);

      callback?.call(!response.isSuccess);

      toggleLoading(false, optionOf(response));
    }
  }

  Future<void> unlistItem(Deal deal) async {
    emit(state.copyWith(isUnlistingItem: true, status: none()));

    final response = await _repository.unlistItem(deal);

    emit(state.copyWith(
      isUnlistingItem: false,
      status: some(response),
      buyNowDeals: state.buyNowDeals.minusElementIfPresent(deal),
      liveAuctionDeals: state.liveAuctionDeals.minusElementIfPresent(deal),
      clearanceDeals: state.clearanceDeals.minusElementIfPresent(deal),
      sponsoredDeals: state.sponsoredDeals.minusElementIfPresent(deal),
      dealsList: state.dealsList.minusElementIfPresent(deal),
    ));
  }
}
