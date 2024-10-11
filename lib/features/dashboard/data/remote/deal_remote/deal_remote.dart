library deal_remote.dart;

import 'package:auctionvillage/core/data/index.dart';
import 'package:auctionvillage/features/dashboard/data/models/models.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'deal_remote.g.dart';

const String _defaultPopulation = '['
    ' {"path": "owner", "select": "_id firstName lastName fullName email mobile type"},'
    ' {"path": "user", "select": "_id firstName lastName"},'
    ' {"path": "product", "populate" : ["category", "user"], "select": "-category -deal -user -owner"},'
    ' {"path": "plan", "select": "_id name amount country"},'
    ' {"path": "lastBidder", "select": "_id firstName lastName"},'
    ' {"path": "highestBidder", "select": "_id firstName lastName"}'
    ']';

const String _singleDealPopulation = '['
    ' {"path": "owner", "select": "_id firstName lastName fullName email mobile type"},'
    ' {"path": "user", "select": "_id firstName lastName"},'
    ' {"path": "product", "populate" : ["category", "user", "owner"], "select": "-deal"},'
    ' {"path": "plan", "select": "_id name amount country"},'
    ' {"path": "lastBidder", "select": "_id firstName lastName"},'
    ' {"path": "highestBidder", "select": "_id firstName lastName"}'
    ']';

const String _wishlistPopulation = '['
    ' {"path": "user", "select": "_id firstName lastName"},'
    ' {"path": "plan", "select": "_id name amount country"},'
    ' {'
    '  "path": "deal",'
    '  "select": "-category -deal -user -owner -highestBidder -lastBidder -plan",'
    '  "populate": {"path": "product", "select": "-category -deal -user -owner"}'
    ' }'
    ']';

const String _myBidHistoryPopulation = '['
    ' {'
    '  "path": "deal",'
    '  "populate": ['
    '   {"path": "product", "select": "-category -deal -user -owner"},'
    '   {"path": "lastBidder", "select": "_id firstName lastName"},'
    '   {"path": "highestBidder", "select": "_id firstName lastName"},'
    '   {"path": "owner", "select": "_id firstName lastName"},'
    '   {"path": "plan", "select": "_id name amount country"},'
    '   {"path": "user", "select": "_id firstName lastName"}'
    '  ]'
    ' }'
    ']';

const String _historyPopulation = '[{"path": "user"}, {"path": "deal", "populate": ["owner", "highestBidder", "lastBidder", "plan"]}]';

const String _ratingPopulation = '["user", {"path": "user", "select": "_id firstName lastName"}]';

const String _categoryExcludes =
    '["deal.category", "deal.user", "deal.owner", "deal.highestBidder", "deal.lastBidder", "deal.plan", "deal.product.category"]';

@lazySingleton
@RestApi(parser: Parser.FlutterCompute)
abstract class DealRemote {
  @factoryMethod
  factory DealRemote(AppHttpClient dio) = _DealRemote;

  @GET(EndPoints.FIND_DEALS)
  Future<DealListDTO> filterDeals({
    @Query('population') String population = _defaultPopulation,
    @Query('bidStatus') String? bidStatus,
    @Query('status') String? dealStatus,
    @Query('type') String? dealType,
    @Query('plan') String? planId,
    @Query('category') String? categoryId,
    @Query('sort') String? sortBy,
    @Query('bidType') String? bidType,
    @Query('isPrivate') bool? isPrivate,
    @Query('sponsored') bool? sponsored,
    @Query('minPrice') double? minPrice,
    @Query('maxPrice') double? maxPrice,
    @Query('rating') double? rating,
    @Query('page') int? page,
    @Query('per_page') int? perPage,
  });

  @GET(EndPoints.GET_SINGLE_DEAL)
  Future<DealDTO> getDeal(
    @Path() String id, {
    @Query('population') String population = _singleDealPopulation,
  });

  @GET(EndPoints.FIND_CATEGORIES)
  Future<CategoryListDTO> categories();

  @GET(EndPoints.GET_SINGLE_CATEGORY)
  Future<CategoryDTO> getCategory(@Path() String id);

  @GET(EndPoints.FILTER_BY_CATEGORY)
  Future<CategoryListDTO> filterDealsByCategory(
    @Path() String id, {
    @Query('exclude') String exclude = _categoryExcludes,
    @Query('isPrivate') bool? isPrivate,
    @Query('isMobile') bool isMobile = true,
    @Query('sponsored') bool? sponsored,
    @Query('page') int? page,
    @Query('per_page') int? perPage,
  });

  @PUT(EndPoints.PLACE_A_BID)
  Future<DealDTO> bid(
    @Path() String id, {
    @Query('population') String population = _singleDealPopulation,
    @Field() required double amount,
  });

  @GET(EndPoints.BID_HISTORY)
  Future<DealBidHistoryDTO> bidHistory(
    @Query('deal') String dealId, {
    @Query('byDeal') bool byDeal = true,
    @Query('population') String population = _historyPopulation,
    @Query('page') int? page,
    @Query('per_page') int? perPage,
  });

  @GET(EndPoints.MY_BID_HISTORY_STATS)
  Future<UserBidHistoryDTO> myBidHistoryStats(
    @Path('id') String userId, {
    @Query('population') String population = _defaultPopulation,
    @Query('page') int? page,
    @Query('per_page') int? perPage,
  });

  @GET(EndPoints.MY_BID_HISTORY)
  Future<UserBidHistoryListDTO> myBidHistory(
    @Field('user') String userId, {
    @Query('population') String population = _myBidHistoryPopulation,
    @Query('page') int? page,
    @Query('per_page') int? perPage,
  });

  @GET(EndPoints.SELL_HISTORY)
  Future<SellHistoryDTO> sellHistory(
    @Path() String id, {
    @Query('population') String population = _defaultPopulation,
    @Query('page') int? page,
    @Query('per_page') int? perPage,
  });

  @POST(EndPoints.WISHLIST)
  Future<AppHttpResponse> favorite(@Field('deal') String dealId);

  @DELETE(EndPoints.WISHLIST)
  Future<AppHttpResponse> unfavorite(@Field('deal') String dealId);

  @GET(EndPoints.WISHLIST)
  Future<WishListDTO> wishlist({
    @Query('population') String population = _wishlistPopulation,
    @Query('page') int? page,
    @Query('per_page') int? perPage,
  });

  @GET(EndPoints.MY_REVIEWS)
  Future<RatingDTO> myReviews({
    @Query('population') String population = _ratingPopulation,
    @Query('page') int? page,
    @Query('per_page') int? perPage,
  });

  @GET(EndPoints.GET_DEAL_REVIEW)
  Future<RatingDTO> dealReview(
    @Path() String id, {
    @Query('population') String population = _ratingPopulation,
    @Query('page') int? page,
    @Query('per_page') int? perPage,
  });

  @POST(EndPoints.PAY_FOR_DEAL)
  Future<AppHttpResponse> upgradePlan({
    @Field('dealId') required String dealId,
    @Field('planId') required String planId,
    @Field('payment_method') required String paymentMethod,
    @Field('resources') required String type,
    @Field('reference') String? reference,
  });

  @POST(EndPoints.PAY_ADMITTANCE_FEE)
  Future<AppHttpResponse> payAdmittance(@Field('deal') String dealId, {@Field('reference') String? reference});

  @GET(EndPoints.ADMITTANCE_FEE_STATUS)
  Future<AppHttpResponse> admittanceFeeStatus(@Path('id') String dealId);

  @DELETE(EndPoints.UNLIST_ITEM)
  Future<AppHttpResponse> unlistItem(@Path('id') String dealId);
}
