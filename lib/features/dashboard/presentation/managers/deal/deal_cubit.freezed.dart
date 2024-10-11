// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of deal_cubit.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DealState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isLoadingSponsored => throw _privateConstructorUsedError;
  bool get isBidding => throw _privateConstructorUsedError; //
  bool get isFetchingBuyNowDeals => throw _privateConstructorUsedError;
  bool get isFetchingLiveAuctionDeals => throw _privateConstructorUsedError;
  bool get isFetchingClearanceDeals => throw _privateConstructorUsedError;
  bool get isFetchingSponsoredDeals => throw _privateConstructorUsedError; //
  bool get isFetchingBidHistory => throw _privateConstructorUsedError;
  bool get isFetchingSellHistory => throw _privateConstructorUsedError;
  bool get isFetchingWishlist => throw _privateConstructorUsedError;
  bool get isFetchingRatings => throw _privateConstructorUsedError;
  bool get isFetchingPlans => throw _privateConstructorUsedError;
  bool get isFetchingCategories => throw _privateConstructorUsedError;
  bool get isUnlistingItem => throw _privateConstructorUsedError;
  bool get validate => throw _privateConstructorUsedError;
  DealCategory? get currentCategory => throw _privateConstructorUsedError;
  Deal? get currentDeal => throw _privateConstructorUsedError;
  SellHistory? get sellHistory => throw _privateConstructorUsedError;
  UserBidHistory? get myBidHistoryStats => throw _privateConstructorUsedError;
  Rating? get rating => throw _privateConstructorUsedError;
  DealPlan? get selectedPlan => throw _privateConstructorUsedError;
  DealBidHistory get biddingHistory =>
      throw _privateConstructorUsedError; // required Product currentProduct,
  DealFilter get filter => throw _privateConstructorUsedError;
  NumField<double> get bidAmount => throw _privateConstructorUsedError;
  KtList<DealCategory> get categories => throw _privateConstructorUsedError; //
  PaginatedKtList<Deal> get sponsoredDeals =>
      throw _privateConstructorUsedError;
  PaginatedKtList<Deal> get buyNowDeals => throw _privateConstructorUsedError;
  PaginatedKtList<Deal> get liveAuctionDeals =>
      throw _privateConstructorUsedError;
  PaginatedKtList<Deal> get clearanceDeals =>
      throw _privateConstructorUsedError; //
  PaginatedKtList<Deal> get dealsList => throw _privateConstructorUsedError;
  KtList<MyWish> get wishlist => throw _privateConstructorUsedError;
  KtList<DealPlan> get dealPlans => throw _privateConstructorUsedError;
  KtList<UserBidHistory> get myBidHistoryList =>
      throw _privateConstructorUsedError;
  KtMap<DateTime, KtList<UserBidHistory>> get myBidHistory =>
      throw _privateConstructorUsedError;
  Option<AppHttpResponse?> get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DealStateCopyWith<DealState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DealStateCopyWith<$Res> {
  factory $DealStateCopyWith(DealState value, $Res Function(DealState) then) =
      _$DealStateCopyWithImpl<$Res, DealState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isLoadingSponsored,
      bool isBidding,
      bool isFetchingBuyNowDeals,
      bool isFetchingLiveAuctionDeals,
      bool isFetchingClearanceDeals,
      bool isFetchingSponsoredDeals,
      bool isFetchingBidHistory,
      bool isFetchingSellHistory,
      bool isFetchingWishlist,
      bool isFetchingRatings,
      bool isFetchingPlans,
      bool isFetchingCategories,
      bool isUnlistingItem,
      bool validate,
      DealCategory? currentCategory,
      Deal? currentDeal,
      SellHistory? sellHistory,
      UserBidHistory? myBidHistoryStats,
      Rating? rating,
      DealPlan? selectedPlan,
      DealBidHistory biddingHistory,
      DealFilter filter,
      NumField<double> bidAmount,
      KtList<DealCategory> categories,
      PaginatedKtList<Deal> sponsoredDeals,
      PaginatedKtList<Deal> buyNowDeals,
      PaginatedKtList<Deal> liveAuctionDeals,
      PaginatedKtList<Deal> clearanceDeals,
      PaginatedKtList<Deal> dealsList,
      KtList<MyWish> wishlist,
      KtList<DealPlan> dealPlans,
      KtList<UserBidHistory> myBidHistoryList,
      KtMap<DateTime, KtList<UserBidHistory>> myBidHistory,
      Option<AppHttpResponse?> status});

  $DealCategoryCopyWith<$Res>? get currentCategory;
  $DealCopyWith<$Res>? get currentDeal;
  $SellHistoryCopyWith<$Res>? get sellHistory;
  $UserBidHistoryCopyWith<$Res>? get myBidHistoryStats;
  $RatingCopyWith<$Res>? get rating;
  $DealPlanCopyWith<$Res>? get selectedPlan;
  $DealBidHistoryCopyWith<$Res> get biddingHistory;
  $DealFilterCopyWith<$Res> get filter;
  $PaginatedKtListCopyWith<Deal, $Res> get sponsoredDeals;
  $PaginatedKtListCopyWith<Deal, $Res> get buyNowDeals;
  $PaginatedKtListCopyWith<Deal, $Res> get liveAuctionDeals;
  $PaginatedKtListCopyWith<Deal, $Res> get clearanceDeals;
  $PaginatedKtListCopyWith<Deal, $Res> get dealsList;
}

/// @nodoc
class _$DealStateCopyWithImpl<$Res, $Val extends DealState>
    implements $DealStateCopyWith<$Res> {
  _$DealStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isLoadingSponsored = null,
    Object? isBidding = null,
    Object? isFetchingBuyNowDeals = null,
    Object? isFetchingLiveAuctionDeals = null,
    Object? isFetchingClearanceDeals = null,
    Object? isFetchingSponsoredDeals = null,
    Object? isFetchingBidHistory = null,
    Object? isFetchingSellHistory = null,
    Object? isFetchingWishlist = null,
    Object? isFetchingRatings = null,
    Object? isFetchingPlans = null,
    Object? isFetchingCategories = null,
    Object? isUnlistingItem = null,
    Object? validate = null,
    Object? currentCategory = freezed,
    Object? currentDeal = freezed,
    Object? sellHistory = freezed,
    Object? myBidHistoryStats = freezed,
    Object? rating = freezed,
    Object? selectedPlan = freezed,
    Object? biddingHistory = null,
    Object? filter = null,
    Object? bidAmount = null,
    Object? categories = null,
    Object? sponsoredDeals = null,
    Object? buyNowDeals = null,
    Object? liveAuctionDeals = null,
    Object? clearanceDeals = null,
    Object? dealsList = null,
    Object? wishlist = null,
    Object? dealPlans = null,
    Object? myBidHistoryList = null,
    Object? myBidHistory = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingSponsored: null == isLoadingSponsored
          ? _value.isLoadingSponsored
          : isLoadingSponsored // ignore: cast_nullable_to_non_nullable
              as bool,
      isBidding: null == isBidding
          ? _value.isBidding
          : isBidding // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingBuyNowDeals: null == isFetchingBuyNowDeals
          ? _value.isFetchingBuyNowDeals
          : isFetchingBuyNowDeals // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingLiveAuctionDeals: null == isFetchingLiveAuctionDeals
          ? _value.isFetchingLiveAuctionDeals
          : isFetchingLiveAuctionDeals // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingClearanceDeals: null == isFetchingClearanceDeals
          ? _value.isFetchingClearanceDeals
          : isFetchingClearanceDeals // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingSponsoredDeals: null == isFetchingSponsoredDeals
          ? _value.isFetchingSponsoredDeals
          : isFetchingSponsoredDeals // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingBidHistory: null == isFetchingBidHistory
          ? _value.isFetchingBidHistory
          : isFetchingBidHistory // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingSellHistory: null == isFetchingSellHistory
          ? _value.isFetchingSellHistory
          : isFetchingSellHistory // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingWishlist: null == isFetchingWishlist
          ? _value.isFetchingWishlist
          : isFetchingWishlist // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingRatings: null == isFetchingRatings
          ? _value.isFetchingRatings
          : isFetchingRatings // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingPlans: null == isFetchingPlans
          ? _value.isFetchingPlans
          : isFetchingPlans // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingCategories: null == isFetchingCategories
          ? _value.isFetchingCategories
          : isFetchingCategories // ignore: cast_nullable_to_non_nullable
              as bool,
      isUnlistingItem: null == isUnlistingItem
          ? _value.isUnlistingItem
          : isUnlistingItem // ignore: cast_nullable_to_non_nullable
              as bool,
      validate: null == validate
          ? _value.validate
          : validate // ignore: cast_nullable_to_non_nullable
              as bool,
      currentCategory: freezed == currentCategory
          ? _value.currentCategory
          : currentCategory // ignore: cast_nullable_to_non_nullable
              as DealCategory?,
      currentDeal: freezed == currentDeal
          ? _value.currentDeal
          : currentDeal // ignore: cast_nullable_to_non_nullable
              as Deal?,
      sellHistory: freezed == sellHistory
          ? _value.sellHistory
          : sellHistory // ignore: cast_nullable_to_non_nullable
              as SellHistory?,
      myBidHistoryStats: freezed == myBidHistoryStats
          ? _value.myBidHistoryStats
          : myBidHistoryStats // ignore: cast_nullable_to_non_nullable
              as UserBidHistory?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as Rating?,
      selectedPlan: freezed == selectedPlan
          ? _value.selectedPlan
          : selectedPlan // ignore: cast_nullable_to_non_nullable
              as DealPlan?,
      biddingHistory: null == biddingHistory
          ? _value.biddingHistory
          : biddingHistory // ignore: cast_nullable_to_non_nullable
              as DealBidHistory,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as DealFilter,
      bidAmount: null == bidAmount
          ? _value.bidAmount
          : bidAmount // ignore: cast_nullable_to_non_nullable
              as NumField<double>,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as KtList<DealCategory>,
      sponsoredDeals: null == sponsoredDeals
          ? _value.sponsoredDeals
          : sponsoredDeals // ignore: cast_nullable_to_non_nullable
              as PaginatedKtList<Deal>,
      buyNowDeals: null == buyNowDeals
          ? _value.buyNowDeals
          : buyNowDeals // ignore: cast_nullable_to_non_nullable
              as PaginatedKtList<Deal>,
      liveAuctionDeals: null == liveAuctionDeals
          ? _value.liveAuctionDeals
          : liveAuctionDeals // ignore: cast_nullable_to_non_nullable
              as PaginatedKtList<Deal>,
      clearanceDeals: null == clearanceDeals
          ? _value.clearanceDeals
          : clearanceDeals // ignore: cast_nullable_to_non_nullable
              as PaginatedKtList<Deal>,
      dealsList: null == dealsList
          ? _value.dealsList
          : dealsList // ignore: cast_nullable_to_non_nullable
              as PaginatedKtList<Deal>,
      wishlist: null == wishlist
          ? _value.wishlist
          : wishlist // ignore: cast_nullable_to_non_nullable
              as KtList<MyWish>,
      dealPlans: null == dealPlans
          ? _value.dealPlans
          : dealPlans // ignore: cast_nullable_to_non_nullable
              as KtList<DealPlan>,
      myBidHistoryList: null == myBidHistoryList
          ? _value.myBidHistoryList
          : myBidHistoryList // ignore: cast_nullable_to_non_nullable
              as KtList<UserBidHistory>,
      myBidHistory: null == myBidHistory
          ? _value.myBidHistory
          : myBidHistory // ignore: cast_nullable_to_non_nullable
              as KtMap<DateTime, KtList<UserBidHistory>>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Option<AppHttpResponse?>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DealCategoryCopyWith<$Res>? get currentCategory {
    if (_value.currentCategory == null) {
      return null;
    }

    return $DealCategoryCopyWith<$Res>(_value.currentCategory!, (value) {
      return _then(_value.copyWith(currentCategory: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DealCopyWith<$Res>? get currentDeal {
    if (_value.currentDeal == null) {
      return null;
    }

    return $DealCopyWith<$Res>(_value.currentDeal!, (value) {
      return _then(_value.copyWith(currentDeal: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SellHistoryCopyWith<$Res>? get sellHistory {
    if (_value.sellHistory == null) {
      return null;
    }

    return $SellHistoryCopyWith<$Res>(_value.sellHistory!, (value) {
      return _then(_value.copyWith(sellHistory: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserBidHistoryCopyWith<$Res>? get myBidHistoryStats {
    if (_value.myBidHistoryStats == null) {
      return null;
    }

    return $UserBidHistoryCopyWith<$Res>(_value.myBidHistoryStats!, (value) {
      return _then(_value.copyWith(myBidHistoryStats: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RatingCopyWith<$Res>? get rating {
    if (_value.rating == null) {
      return null;
    }

    return $RatingCopyWith<$Res>(_value.rating!, (value) {
      return _then(_value.copyWith(rating: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DealPlanCopyWith<$Res>? get selectedPlan {
    if (_value.selectedPlan == null) {
      return null;
    }

    return $DealPlanCopyWith<$Res>(_value.selectedPlan!, (value) {
      return _then(_value.copyWith(selectedPlan: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DealBidHistoryCopyWith<$Res> get biddingHistory {
    return $DealBidHistoryCopyWith<$Res>(_value.biddingHistory, (value) {
      return _then(_value.copyWith(biddingHistory: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DealFilterCopyWith<$Res> get filter {
    return $DealFilterCopyWith<$Res>(_value.filter, (value) {
      return _then(_value.copyWith(filter: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginatedKtListCopyWith<Deal, $Res> get sponsoredDeals {
    return $PaginatedKtListCopyWith<Deal, $Res>(_value.sponsoredDeals, (value) {
      return _then(_value.copyWith(sponsoredDeals: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginatedKtListCopyWith<Deal, $Res> get buyNowDeals {
    return $PaginatedKtListCopyWith<Deal, $Res>(_value.buyNowDeals, (value) {
      return _then(_value.copyWith(buyNowDeals: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginatedKtListCopyWith<Deal, $Res> get liveAuctionDeals {
    return $PaginatedKtListCopyWith<Deal, $Res>(_value.liveAuctionDeals,
        (value) {
      return _then(_value.copyWith(liveAuctionDeals: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginatedKtListCopyWith<Deal, $Res> get clearanceDeals {
    return $PaginatedKtListCopyWith<Deal, $Res>(_value.clearanceDeals, (value) {
      return _then(_value.copyWith(clearanceDeals: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginatedKtListCopyWith<Deal, $Res> get dealsList {
    return $PaginatedKtListCopyWith<Deal, $Res>(_value.dealsList, (value) {
      return _then(_value.copyWith(dealsList: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DealStateCopyWith<$Res> implements $DealStateCopyWith<$Res> {
  factory _$$_DealStateCopyWith(
          _$_DealState value, $Res Function(_$_DealState) then) =
      __$$_DealStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isLoadingSponsored,
      bool isBidding,
      bool isFetchingBuyNowDeals,
      bool isFetchingLiveAuctionDeals,
      bool isFetchingClearanceDeals,
      bool isFetchingSponsoredDeals,
      bool isFetchingBidHistory,
      bool isFetchingSellHistory,
      bool isFetchingWishlist,
      bool isFetchingRatings,
      bool isFetchingPlans,
      bool isFetchingCategories,
      bool isUnlistingItem,
      bool validate,
      DealCategory? currentCategory,
      Deal? currentDeal,
      SellHistory? sellHistory,
      UserBidHistory? myBidHistoryStats,
      Rating? rating,
      DealPlan? selectedPlan,
      DealBidHistory biddingHistory,
      DealFilter filter,
      NumField<double> bidAmount,
      KtList<DealCategory> categories,
      PaginatedKtList<Deal> sponsoredDeals,
      PaginatedKtList<Deal> buyNowDeals,
      PaginatedKtList<Deal> liveAuctionDeals,
      PaginatedKtList<Deal> clearanceDeals,
      PaginatedKtList<Deal> dealsList,
      KtList<MyWish> wishlist,
      KtList<DealPlan> dealPlans,
      KtList<UserBidHistory> myBidHistoryList,
      KtMap<DateTime, KtList<UserBidHistory>> myBidHistory,
      Option<AppHttpResponse?> status});

  @override
  $DealCategoryCopyWith<$Res>? get currentCategory;
  @override
  $DealCopyWith<$Res>? get currentDeal;
  @override
  $SellHistoryCopyWith<$Res>? get sellHistory;
  @override
  $UserBidHistoryCopyWith<$Res>? get myBidHistoryStats;
  @override
  $RatingCopyWith<$Res>? get rating;
  @override
  $DealPlanCopyWith<$Res>? get selectedPlan;
  @override
  $DealBidHistoryCopyWith<$Res> get biddingHistory;
  @override
  $DealFilterCopyWith<$Res> get filter;
  @override
  $PaginatedKtListCopyWith<Deal, $Res> get sponsoredDeals;
  @override
  $PaginatedKtListCopyWith<Deal, $Res> get buyNowDeals;
  @override
  $PaginatedKtListCopyWith<Deal, $Res> get liveAuctionDeals;
  @override
  $PaginatedKtListCopyWith<Deal, $Res> get clearanceDeals;
  @override
  $PaginatedKtListCopyWith<Deal, $Res> get dealsList;
}

/// @nodoc
class __$$_DealStateCopyWithImpl<$Res>
    extends _$DealStateCopyWithImpl<$Res, _$_DealState>
    implements _$$_DealStateCopyWith<$Res> {
  __$$_DealStateCopyWithImpl(
      _$_DealState _value, $Res Function(_$_DealState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isLoadingSponsored = null,
    Object? isBidding = null,
    Object? isFetchingBuyNowDeals = null,
    Object? isFetchingLiveAuctionDeals = null,
    Object? isFetchingClearanceDeals = null,
    Object? isFetchingSponsoredDeals = null,
    Object? isFetchingBidHistory = null,
    Object? isFetchingSellHistory = null,
    Object? isFetchingWishlist = null,
    Object? isFetchingRatings = null,
    Object? isFetchingPlans = null,
    Object? isFetchingCategories = null,
    Object? isUnlistingItem = null,
    Object? validate = null,
    Object? currentCategory = freezed,
    Object? currentDeal = freezed,
    Object? sellHistory = freezed,
    Object? myBidHistoryStats = freezed,
    Object? rating = freezed,
    Object? selectedPlan = freezed,
    Object? biddingHistory = null,
    Object? filter = null,
    Object? bidAmount = null,
    Object? categories = null,
    Object? sponsoredDeals = null,
    Object? buyNowDeals = null,
    Object? liveAuctionDeals = null,
    Object? clearanceDeals = null,
    Object? dealsList = null,
    Object? wishlist = null,
    Object? dealPlans = null,
    Object? myBidHistoryList = null,
    Object? myBidHistory = null,
    Object? status = null,
  }) {
    return _then(_$_DealState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingSponsored: null == isLoadingSponsored
          ? _value.isLoadingSponsored
          : isLoadingSponsored // ignore: cast_nullable_to_non_nullable
              as bool,
      isBidding: null == isBidding
          ? _value.isBidding
          : isBidding // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingBuyNowDeals: null == isFetchingBuyNowDeals
          ? _value.isFetchingBuyNowDeals
          : isFetchingBuyNowDeals // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingLiveAuctionDeals: null == isFetchingLiveAuctionDeals
          ? _value.isFetchingLiveAuctionDeals
          : isFetchingLiveAuctionDeals // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingClearanceDeals: null == isFetchingClearanceDeals
          ? _value.isFetchingClearanceDeals
          : isFetchingClearanceDeals // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingSponsoredDeals: null == isFetchingSponsoredDeals
          ? _value.isFetchingSponsoredDeals
          : isFetchingSponsoredDeals // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingBidHistory: null == isFetchingBidHistory
          ? _value.isFetchingBidHistory
          : isFetchingBidHistory // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingSellHistory: null == isFetchingSellHistory
          ? _value.isFetchingSellHistory
          : isFetchingSellHistory // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingWishlist: null == isFetchingWishlist
          ? _value.isFetchingWishlist
          : isFetchingWishlist // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingRatings: null == isFetchingRatings
          ? _value.isFetchingRatings
          : isFetchingRatings // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingPlans: null == isFetchingPlans
          ? _value.isFetchingPlans
          : isFetchingPlans // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingCategories: null == isFetchingCategories
          ? _value.isFetchingCategories
          : isFetchingCategories // ignore: cast_nullable_to_non_nullable
              as bool,
      isUnlistingItem: null == isUnlistingItem
          ? _value.isUnlistingItem
          : isUnlistingItem // ignore: cast_nullable_to_non_nullable
              as bool,
      validate: null == validate
          ? _value.validate
          : validate // ignore: cast_nullable_to_non_nullable
              as bool,
      currentCategory: freezed == currentCategory
          ? _value.currentCategory
          : currentCategory // ignore: cast_nullable_to_non_nullable
              as DealCategory?,
      currentDeal: freezed == currentDeal
          ? _value.currentDeal
          : currentDeal // ignore: cast_nullable_to_non_nullable
              as Deal?,
      sellHistory: freezed == sellHistory
          ? _value.sellHistory
          : sellHistory // ignore: cast_nullable_to_non_nullable
              as SellHistory?,
      myBidHistoryStats: freezed == myBidHistoryStats
          ? _value.myBidHistoryStats
          : myBidHistoryStats // ignore: cast_nullable_to_non_nullable
              as UserBidHistory?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as Rating?,
      selectedPlan: freezed == selectedPlan
          ? _value.selectedPlan
          : selectedPlan // ignore: cast_nullable_to_non_nullable
              as DealPlan?,
      biddingHistory: null == biddingHistory
          ? _value.biddingHistory
          : biddingHistory // ignore: cast_nullable_to_non_nullable
              as DealBidHistory,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as DealFilter,
      bidAmount: null == bidAmount
          ? _value.bidAmount
          : bidAmount // ignore: cast_nullable_to_non_nullable
              as NumField<double>,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as KtList<DealCategory>,
      sponsoredDeals: null == sponsoredDeals
          ? _value.sponsoredDeals
          : sponsoredDeals // ignore: cast_nullable_to_non_nullable
              as PaginatedKtList<Deal>,
      buyNowDeals: null == buyNowDeals
          ? _value.buyNowDeals
          : buyNowDeals // ignore: cast_nullable_to_non_nullable
              as PaginatedKtList<Deal>,
      liveAuctionDeals: null == liveAuctionDeals
          ? _value.liveAuctionDeals
          : liveAuctionDeals // ignore: cast_nullable_to_non_nullable
              as PaginatedKtList<Deal>,
      clearanceDeals: null == clearanceDeals
          ? _value.clearanceDeals
          : clearanceDeals // ignore: cast_nullable_to_non_nullable
              as PaginatedKtList<Deal>,
      dealsList: null == dealsList
          ? _value.dealsList
          : dealsList // ignore: cast_nullable_to_non_nullable
              as PaginatedKtList<Deal>,
      wishlist: null == wishlist
          ? _value.wishlist
          : wishlist // ignore: cast_nullable_to_non_nullable
              as KtList<MyWish>,
      dealPlans: null == dealPlans
          ? _value.dealPlans
          : dealPlans // ignore: cast_nullable_to_non_nullable
              as KtList<DealPlan>,
      myBidHistoryList: null == myBidHistoryList
          ? _value.myBidHistoryList
          : myBidHistoryList // ignore: cast_nullable_to_non_nullable
              as KtList<UserBidHistory>,
      myBidHistory: null == myBidHistory
          ? _value.myBidHistory
          : myBidHistory // ignore: cast_nullable_to_non_nullable
              as KtMap<DateTime, KtList<UserBidHistory>>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Option<AppHttpResponse?>,
    ));
  }
}

/// @nodoc

class _$_DealState implements _DealState {
  const _$_DealState(
      {this.isLoading = false,
      this.isLoadingSponsored = false,
      this.isBidding = false,
      this.isFetchingBuyNowDeals = false,
      this.isFetchingLiveAuctionDeals = false,
      this.isFetchingClearanceDeals = false,
      this.isFetchingSponsoredDeals = false,
      this.isFetchingBidHistory = false,
      this.isFetchingSellHistory = false,
      this.isFetchingWishlist = false,
      this.isFetchingRatings = false,
      this.isFetchingPlans = false,
      this.isFetchingCategories = false,
      this.isUnlistingItem = false,
      this.validate = false,
      this.currentCategory,
      this.currentDeal,
      this.sellHistory,
      this.myBidHistoryStats,
      this.rating,
      this.selectedPlan,
      required this.biddingHistory,
      this.filter = DealFilter.empty,
      required this.bidAmount,
      this.categories = const KtList.empty(),
      this.sponsoredDeals = const PaginatedKtList(),
      this.buyNowDeals = const PaginatedKtList(),
      this.liveAuctionDeals = const PaginatedKtList(),
      this.clearanceDeals = const PaginatedKtList(),
      this.dealsList = const PaginatedKtList(),
      this.wishlist = const KtList.empty(),
      this.dealPlans = const KtList.empty(),
      this.myBidHistoryList = const KtList.empty(),
      this.myBidHistory = const KtMap.empty(),
      this.status = const None()});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isLoadingSponsored;
  @override
  @JsonKey()
  final bool isBidding;
//
  @override
  @JsonKey()
  final bool isFetchingBuyNowDeals;
  @override
  @JsonKey()
  final bool isFetchingLiveAuctionDeals;
  @override
  @JsonKey()
  final bool isFetchingClearanceDeals;
  @override
  @JsonKey()
  final bool isFetchingSponsoredDeals;
//
  @override
  @JsonKey()
  final bool isFetchingBidHistory;
  @override
  @JsonKey()
  final bool isFetchingSellHistory;
  @override
  @JsonKey()
  final bool isFetchingWishlist;
  @override
  @JsonKey()
  final bool isFetchingRatings;
  @override
  @JsonKey()
  final bool isFetchingPlans;
  @override
  @JsonKey()
  final bool isFetchingCategories;
  @override
  @JsonKey()
  final bool isUnlistingItem;
  @override
  @JsonKey()
  final bool validate;
  @override
  final DealCategory? currentCategory;
  @override
  final Deal? currentDeal;
  @override
  final SellHistory? sellHistory;
  @override
  final UserBidHistory? myBidHistoryStats;
  @override
  final Rating? rating;
  @override
  final DealPlan? selectedPlan;
  @override
  final DealBidHistory biddingHistory;
// required Product currentProduct,
  @override
  @JsonKey()
  final DealFilter filter;
  @override
  final NumField<double> bidAmount;
  @override
  @JsonKey()
  final KtList<DealCategory> categories;
//
  @override
  @JsonKey()
  final PaginatedKtList<Deal> sponsoredDeals;
  @override
  @JsonKey()
  final PaginatedKtList<Deal> buyNowDeals;
  @override
  @JsonKey()
  final PaginatedKtList<Deal> liveAuctionDeals;
  @override
  @JsonKey()
  final PaginatedKtList<Deal> clearanceDeals;
//
  @override
  @JsonKey()
  final PaginatedKtList<Deal> dealsList;
  @override
  @JsonKey()
  final KtList<MyWish> wishlist;
  @override
  @JsonKey()
  final KtList<DealPlan> dealPlans;
  @override
  @JsonKey()
  final KtList<UserBidHistory> myBidHistoryList;
  @override
  @JsonKey()
  final KtMap<DateTime, KtList<UserBidHistory>> myBidHistory;
  @override
  @JsonKey()
  final Option<AppHttpResponse?> status;

  @override
  String toString() {
    return 'DealState(isLoading: $isLoading, isLoadingSponsored: $isLoadingSponsored, isBidding: $isBidding, isFetchingBuyNowDeals: $isFetchingBuyNowDeals, isFetchingLiveAuctionDeals: $isFetchingLiveAuctionDeals, isFetchingClearanceDeals: $isFetchingClearanceDeals, isFetchingSponsoredDeals: $isFetchingSponsoredDeals, isFetchingBidHistory: $isFetchingBidHistory, isFetchingSellHistory: $isFetchingSellHistory, isFetchingWishlist: $isFetchingWishlist, isFetchingRatings: $isFetchingRatings, isFetchingPlans: $isFetchingPlans, isFetchingCategories: $isFetchingCategories, isUnlistingItem: $isUnlistingItem, validate: $validate, currentCategory: $currentCategory, currentDeal: $currentDeal, sellHistory: $sellHistory, myBidHistoryStats: $myBidHistoryStats, rating: $rating, selectedPlan: $selectedPlan, biddingHistory: $biddingHistory, filter: $filter, bidAmount: $bidAmount, categories: $categories, sponsoredDeals: $sponsoredDeals, buyNowDeals: $buyNowDeals, liveAuctionDeals: $liveAuctionDeals, clearanceDeals: $clearanceDeals, dealsList: $dealsList, wishlist: $wishlist, dealPlans: $dealPlans, myBidHistoryList: $myBidHistoryList, myBidHistory: $myBidHistory, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DealState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isLoadingSponsored, isLoadingSponsored) ||
                other.isLoadingSponsored == isLoadingSponsored) &&
            (identical(other.isBidding, isBidding) ||
                other.isBidding == isBidding) &&
            (identical(other.isFetchingBuyNowDeals, isFetchingBuyNowDeals) ||
                other.isFetchingBuyNowDeals == isFetchingBuyNowDeals) &&
            (identical(other.isFetchingLiveAuctionDeals, isFetchingLiveAuctionDeals) ||
                other.isFetchingLiveAuctionDeals ==
                    isFetchingLiveAuctionDeals) &&
            (identical(other.isFetchingClearanceDeals, isFetchingClearanceDeals) ||
                other.isFetchingClearanceDeals == isFetchingClearanceDeals) &&
            (identical(other.isFetchingSponsoredDeals, isFetchingSponsoredDeals) ||
                other.isFetchingSponsoredDeals == isFetchingSponsoredDeals) &&
            (identical(other.isFetchingBidHistory, isFetchingBidHistory) ||
                other.isFetchingBidHistory == isFetchingBidHistory) &&
            (identical(other.isFetchingSellHistory, isFetchingSellHistory) ||
                other.isFetchingSellHistory == isFetchingSellHistory) &&
            (identical(other.isFetchingWishlist, isFetchingWishlist) ||
                other.isFetchingWishlist == isFetchingWishlist) &&
            (identical(other.isFetchingRatings, isFetchingRatings) ||
                other.isFetchingRatings == isFetchingRatings) &&
            (identical(other.isFetchingPlans, isFetchingPlans) ||
                other.isFetchingPlans == isFetchingPlans) &&
            (identical(other.isFetchingCategories, isFetchingCategories) ||
                other.isFetchingCategories == isFetchingCategories) &&
            (identical(other.isUnlistingItem, isUnlistingItem) ||
                other.isUnlistingItem == isUnlistingItem) &&
            (identical(other.validate, validate) ||
                other.validate == validate) &&
            (identical(other.currentCategory, currentCategory) ||
                other.currentCategory == currentCategory) &&
            (identical(other.currentDeal, currentDeal) ||
                other.currentDeal == currentDeal) &&
            (identical(other.sellHistory, sellHistory) ||
                other.sellHistory == sellHistory) &&
            (identical(other.myBidHistoryStats, myBidHistoryStats) ||
                other.myBidHistoryStats == myBidHistoryStats) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.selectedPlan, selectedPlan) ||
                other.selectedPlan == selectedPlan) &&
            (identical(other.biddingHistory, biddingHistory) ||
                other.biddingHistory == biddingHistory) &&
            (identical(other.filter, filter) || other.filter == filter) &&
            (identical(other.bidAmount, bidAmount) ||
                other.bidAmount == bidAmount) &&
            (identical(other.categories, categories) ||
                other.categories == categories) &&
            (identical(other.sponsoredDeals, sponsoredDeals) ||
                other.sponsoredDeals == sponsoredDeals) &&
            (identical(other.buyNowDeals, buyNowDeals) ||
                other.buyNowDeals == buyNowDeals) &&
            (identical(other.liveAuctionDeals, liveAuctionDeals) || other.liveAuctionDeals == liveAuctionDeals) &&
            (identical(other.clearanceDeals, clearanceDeals) || other.clearanceDeals == clearanceDeals) &&
            (identical(other.dealsList, dealsList) || other.dealsList == dealsList) &&
            (identical(other.wishlist, wishlist) || other.wishlist == wishlist) &&
            (identical(other.dealPlans, dealPlans) || other.dealPlans == dealPlans) &&
            (identical(other.myBidHistoryList, myBidHistoryList) || other.myBidHistoryList == myBidHistoryList) &&
            (identical(other.myBidHistory, myBidHistory) || other.myBidHistory == myBidHistory) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        isLoading,
        isLoadingSponsored,
        isBidding,
        isFetchingBuyNowDeals,
        isFetchingLiveAuctionDeals,
        isFetchingClearanceDeals,
        isFetchingSponsoredDeals,
        isFetchingBidHistory,
        isFetchingSellHistory,
        isFetchingWishlist,
        isFetchingRatings,
        isFetchingPlans,
        isFetchingCategories,
        isUnlistingItem,
        validate,
        currentCategory,
        currentDeal,
        sellHistory,
        myBidHistoryStats,
        rating,
        selectedPlan,
        biddingHistory,
        filter,
        bidAmount,
        categories,
        sponsoredDeals,
        buyNowDeals,
        liveAuctionDeals,
        clearanceDeals,
        dealsList,
        wishlist,
        dealPlans,
        myBidHistoryList,
        myBidHistory,
        status
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DealStateCopyWith<_$_DealState> get copyWith =>
      __$$_DealStateCopyWithImpl<_$_DealState>(this, _$identity);
}

abstract class _DealState implements DealState {
  const factory _DealState(
      {final bool isLoading,
      final bool isLoadingSponsored,
      final bool isBidding,
      final bool isFetchingBuyNowDeals,
      final bool isFetchingLiveAuctionDeals,
      final bool isFetchingClearanceDeals,
      final bool isFetchingSponsoredDeals,
      final bool isFetchingBidHistory,
      final bool isFetchingSellHistory,
      final bool isFetchingWishlist,
      final bool isFetchingRatings,
      final bool isFetchingPlans,
      final bool isFetchingCategories,
      final bool isUnlistingItem,
      final bool validate,
      final DealCategory? currentCategory,
      final Deal? currentDeal,
      final SellHistory? sellHistory,
      final UserBidHistory? myBidHistoryStats,
      final Rating? rating,
      final DealPlan? selectedPlan,
      required final DealBidHistory biddingHistory,
      final DealFilter filter,
      required final NumField<double> bidAmount,
      final KtList<DealCategory> categories,
      final PaginatedKtList<Deal> sponsoredDeals,
      final PaginatedKtList<Deal> buyNowDeals,
      final PaginatedKtList<Deal> liveAuctionDeals,
      final PaginatedKtList<Deal> clearanceDeals,
      final PaginatedKtList<Deal> dealsList,
      final KtList<MyWish> wishlist,
      final KtList<DealPlan> dealPlans,
      final KtList<UserBidHistory> myBidHistoryList,
      final KtMap<DateTime, KtList<UserBidHistory>> myBidHistory,
      final Option<AppHttpResponse?> status}) = _$_DealState;

  @override
  bool get isLoading;
  @override
  bool get isLoadingSponsored;
  @override
  bool get isBidding;
  @override //
  bool get isFetchingBuyNowDeals;
  @override
  bool get isFetchingLiveAuctionDeals;
  @override
  bool get isFetchingClearanceDeals;
  @override
  bool get isFetchingSponsoredDeals;
  @override //
  bool get isFetchingBidHistory;
  @override
  bool get isFetchingSellHistory;
  @override
  bool get isFetchingWishlist;
  @override
  bool get isFetchingRatings;
  @override
  bool get isFetchingPlans;
  @override
  bool get isFetchingCategories;
  @override
  bool get isUnlistingItem;
  @override
  bool get validate;
  @override
  DealCategory? get currentCategory;
  @override
  Deal? get currentDeal;
  @override
  SellHistory? get sellHistory;
  @override
  UserBidHistory? get myBidHistoryStats;
  @override
  Rating? get rating;
  @override
  DealPlan? get selectedPlan;
  @override
  DealBidHistory get biddingHistory;
  @override // required Product currentProduct,
  DealFilter get filter;
  @override
  NumField<double> get bidAmount;
  @override
  KtList<DealCategory> get categories;
  @override //
  PaginatedKtList<Deal> get sponsoredDeals;
  @override
  PaginatedKtList<Deal> get buyNowDeals;
  @override
  PaginatedKtList<Deal> get liveAuctionDeals;
  @override
  PaginatedKtList<Deal> get clearanceDeals;
  @override //
  PaginatedKtList<Deal> get dealsList;
  @override
  KtList<MyWish> get wishlist;
  @override
  KtList<DealPlan> get dealPlans;
  @override
  KtList<UserBidHistory> get myBidHistoryList;
  @override
  KtMap<DateTime, KtList<UserBidHistory>> get myBidHistory;
  @override
  Option<AppHttpResponse?> get status;
  @override
  @JsonKey(ignore: true)
  _$$_DealStateCopyWith<_$_DealState> get copyWith =>
      throw _privateConstructorUsedError;
}
