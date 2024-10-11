library search.remote.dart;

import 'package:auctionvillage/core/data/index.dart';
import 'package:auctionvillage/features/dashboard/data/models/models.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'search.remote.g.dart';

// const String _defaultPopulation =
//     '[{"path": "vendor"}, {"path" : "user" , "select" : "firstName lastName"}, {"path": "product", "populate" : ["category", "user"], "select": "-category -deal -user -vendor"}]';

const String _defaultPopulation = '['
    ' {"path": "owner", "select": "_id firstName lastName fullName email mobile type"},'
    ' {"path": "user", "select": "_id firstName lastName"},'
    ' {"path": "product", "populate" : ["category", "user"], "select": "-category -deal -user -owner"},'
    ' {"path": "plan", "select": "_id name amount country"},'
    ' {"path": "lastBidder", "select": "_id firstName lastName"},'
    ' {"path": "highestBidder", "select": "_id firstName lastName"}'
    ']';

@lazySingleton
@RestApi(parser: Parser.FlutterCompute)
abstract class SearchRemote {
  @factoryMethod
  factory SearchRemote(AppHttpClient dio) = _SearchRemote;

  @GET(EndPoints.SEARCH_FOR_VENDOR)
  Future<UserListDTO> users({
    // @Query('model') String model = 'user',
    @Query('search') required String param,
    @Query('page') int? page,
    @Query('per_page') int? perPage,
  });

  @GET(EndPoints.SEARCH_FOR_DEALS)
  Future<DealListDTO> deals({
    // @Query('model') String model = 'deal',
    @Query('search') required String param,
    @Query('page') int? page,
    @Query('per_page') int? perPage,
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
  });
}
