library util_remote.dart;

import 'package:auctionvillage/core/data/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'util_remote.g.dart';

@lazySingleton
@RestApi(parser: Parser.FlutterCompute)
abstract class UtilRemote {
  @factoryMethod
  factory UtilRemote(AppHttpClient dio) = _UtilRemote;

  @POST(EndPoints.CONTACT_SUPPORT)
  Future<AppHttpResponse> contactSupport({
    @Field('full_name') String? name,
    @Field('email') String? email,
    @Field('type') required String type,
    @Field('message') required String message,
    @Field('images') List<String?> images = const [],
  });

  @GET(EndPoints.SEND_OTP)
  Future<AppHttpResponse> sendOTP(@Query('type') String type);
}
