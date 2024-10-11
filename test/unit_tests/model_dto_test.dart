import 'dart:convert';

import 'package:auctionvillage/features/dashboard/data/models/deal/deal_dto.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logger/logger.dart';

import '../fixtures/fixture_reader.dart';

void main() {
  test(
    'test that [DealDTOData] model can parse server json',
    () async {
      var result = jsonDecode(fixture('auction/single_deal.json'));

      final _res = DealDTOData.fromJson(result as Map<String, dynamic>);

      Logger().w(_res.domain);
    },
  );
}
