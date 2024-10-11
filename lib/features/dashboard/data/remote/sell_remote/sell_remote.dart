library sell_remote.dart;

import 'package:auctionvillage/core/data/index.dart';
import 'package:auctionvillage/features/dashboard/data/models/models.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'sell_remote.g.dart';

const String _defaultPopulation = '['
    '{"path": "user", "select": "_id firstName lastName"},'
    '{"path": "product", "populate" : ["category", "user"], "select": "-category -deal -user -vendor"},'
    '{"path": "lastBidder", "select": "_id firstName lastName"},'
    '{"path": "highestBidder", "select": "_id firstName lastName"},'
    '{"path": "plan", "select": "_id name amount country"},'
    '{"path": "vendor", "select": "_id firstName lastName"},'
    '{"path": "owner", "select": "_id firstName lastName"}'
    ']';

@lazySingleton
@RestApi(parser: Parser.FlutterCompute)
abstract class SellRemote {
  @factoryMethod
  factory SellRemote(AppHttpClient dio) = _SellRemote;

  @POST(EndPoints.CREATE_PRODUCT)
  Future<DealDTO> storeProduct(
    @Body() ProductDTOData dto, {
    @Query('population') String population = _defaultPopulation,
  });

  @GET(EndPoints.GET_AVAILABLE_PLANS)
  Future<DealPlanListDTO> availablePlans({
    @Query('page') int? page,
    @Query('per_page') int? perPage,
  });

  @GET(EndPoints.FIND_OR_SUGGEST_TAGS)
  Future<List<String>> findTags(@Query('query') String query);

  @GET(EndPoints.FIND_OR_SUGGEST_REGIONS)
  Future<List<String>> findRegions(@Query('query') String query);

  @POST(EndPoints.PAY_FOR_DEAL)
  Future<AppHttpResponse> payment({
    @Field('address') required String deliveryAddress,
    @Field('dealId') required String dealId,
    @Field('payment_method') required String paymentMethod,
    @Field('region') required String region,
    @Field('resources') required String type,
    @Field('reference') String? reference,
  });
}
