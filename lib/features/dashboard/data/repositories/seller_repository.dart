library seller_repository.dart;

import 'package:auctionvillage/core/data/http_client/index.dart';
import 'package:auctionvillage/core/data/models/index.dart';
import 'package:auctionvillage/core/data/repository/base_repo.dart';
import 'package:auctionvillage/core/data/response/index.dart';
import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/features/dashboard/data/models/models.dart';
import 'package:auctionvillage/features/dashboard/data/remote/sell_remote/sell_remote.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

@injectable
class SellerRepository with BaseRepository {
  PaginationDTO? _availablePlans;

  final SellRemote remote;

  SellerRepository(this.remote);

  Future<Either<AppHttpResponse, KtList<DealPlan>>> availablePlans({int? perPage, bool nextPage = false}) async {
    final _perPage = perPage ?? 10;
    final _conn = await checkConnectivity();

    return _conn.fold(
      () async {
        final DealPlanListDTO _list;

        try {
          if (nextPage) {
            assert(_availablePlans != null);

            if (_availablePlans?.next != null)
              _list = await remote.availablePlans(page: _availablePlans!.next, perPage: perPage ?? _availablePlans?.perPage);
            else
              return left(AppHttpResponse.endOfList);
          } else {
            final _perPageValue = _availablePlans?.currentPage != null ? _availablePlans!.currentPage! * _perPage : _perPage;
            _list = await remote.availablePlans(perPage: _perPageValue);
          }

          // Save new meta data
          _availablePlans = _list.meta?.pagination;
          return right(_list.domain);
        } on AppHttpResponse catch (e) {
          return left(e);
        } on AppNetworkException catch (e) {
          return left(e.asResponse());
        }
      },
      (f) => left(f),
    );
  }

  Future<Tuple2<AppHttpResponse, Deal?>> createProduct(Product product) async {
    final _conn = await checkConnectivity();

    return _conn.fold(
      () async {
        try {
          final result = await remote.storeProduct(ProductDTOData.fromDomain(product));
          return Tuple2(AppHttpResponse.successful(result.meta?.message), result.domain);
        } on AppHttpResponse catch (e) {
          return Tuple2(e, null);
        } on AppNetworkException catch (e) {
          return Tuple2(e.asResponse(), null);
        }
      },
      (f) => Tuple2(f, null),
    );
  }

  Future<AppHttpResponse> payment({
    required Deal deal,
    required BasicTextField region,
    required PaymentResource resource,
    required PaymentMethod paymentMethod,
    required BasicTextField deliveryAddress,
    String? reference,
  }) async {
    final _conn = await checkConnectivity();

    return _conn.fold(
      () async {
        try {
          await remote.payment(
            dealId: '${deal.id.value}',
            deliveryAddress: deliveryAddress.getOrEmpty,
            paymentMethod: paymentMethod.lowercase,
            region: region.getOrEmpty,
            type: resource.lowercase,
            reference: reference,
          );

          return AppHttpResponse.successful(PaymentStatus.confirmed.message);
        } on AppHttpResponse catch (e) {
          return e;
        } on AppNetworkException catch (e) {
          return e.asResponse();
        }
      },
      (f) => f,
    );
  }
}
