library search_repository.dart;

import 'package:auctionvillage/core/data/http_client/index.dart';
import 'package:auctionvillage/core/data/models/index.dart';
import 'package:auctionvillage/core/data/repository/base_repo.dart';
import 'package:auctionvillage/core/data/response/index.dart';
import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/features/dashboard/data/models/models.dart';
import 'package:auctionvillage/features/dashboard/data/remote/search/search.remote.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class SearchRepository with BaseRepository {
  final SearchRemote remote;

  const SearchRepository(this.remote);

  Future<Either<AppHttpResponse, PaginatedKtList<Deal>>> searchDeals(
    String param, {
    required PaginationDTO? pagination,
    DealFilter? filter,
    int? perPage,
    bool nextPage = false,
  }) async {
    final _perPage = perPage ?? Const.kPerPage;
    final _conn = await checkConnectivity();

    return _conn.fold(
      () async {
        final DealListDTO? _list;

        try {
          if (nextPage) {
            assert(pagination != null);

            if (pagination?.next != null)
              _list = await remote.deals(
                param: param,
                bidStatus: filter?.bidStatus?.name.toUpperCase(),
                dealStatus: DealStatus.toJson(filter?.dealStatus),
                dealType: filter?.dealType?.name.toUpperCase(),
                bidType: filter?.bidType?.name.toUpperCase(),
                isPrivate: filter?.isPrivate,
                sponsored: filter?.sponsored,
                planId: filter?.plan?.id.value,
                categoryId: filter?.category?.id.value,
                sortBy: filter?.sortBy?.toString(),
                minPrice: filter?.amountRange?.first.getOrNull,
                maxPrice: filter?.amountRange?.second.getOrNull,
                rating: filter?.rating,
                page: pagination!.next,
                perPage: perPage ?? pagination.perPage,
              );
            else
              return left(AppHttpResponse.endOfList);
          } else {
            final _perPageValue = pagination?.currentPage != null ? pagination!.currentPage! * _perPage : _perPage;
            _list = await remote.deals(
              param: param,
              bidStatus: filter?.bidStatus?.name.toUpperCase(),
              dealStatus: DealStatus.toJson(filter?.dealStatus),
              dealType: filter?.dealType?.name.toUpperCase(),
              bidType: filter?.bidType?.name.toUpperCase(),
              isPrivate: filter?.isPrivate,
              sponsored: filter?.sponsored,
              planId: filter?.plan?.id.value,
              categoryId: filter?.category?.id.value,
              sortBy: filter?.sortBy?.toString(),
              minPrice: filter?.amountRange?.first.getOrNull,
              maxPrice: filter?.amountRange?.second.getOrNull,
              rating: filter?.rating,
              perPage: _perPageValue,
            );
          }

          return right(PaginatedKtList(value: _list.domain, meta: _list.meta));
        } on AppHttpResponse catch (e) {
          return left(e);
        } on AppNetworkException catch (e) {
          return left(e.asResponse());
        }
      },
      (f) => left(f),
    );
  }

  Future<Either<AppHttpResponse, PaginatedKtList<User>>> searchUsers(
    String param, {
    required PaginationDTO? pagination,
    int? perPage,
    bool nextPage = false,
  }) async {
    final _perPage = perPage ?? Const.kPerPage;
    final _conn = await checkConnectivity();

    return _conn.fold(
      () async {
        final UserListDTO? _list;

        try {
          if (nextPage) {
            assert(pagination != null);

            if (pagination?.next != null)
              _list = await remote.users(param: param, page: pagination!.next, perPage: perPage ?? pagination.perPage);
            else
              return left(AppHttpResponse.endOfList);
          } else {
            final _perPageValue = pagination?.currentPage != null ? pagination!.currentPage! * _perPage : _perPage;
            _list = await remote.users(param: param, perPage: _perPageValue);
          }

          return right(PaginatedKtList(value: _list.domain, meta: _list.meta));
        } on AppHttpResponse catch (e) {
          return left(e);
        } on AppNetworkException catch (e) {
          return left(e.asResponse());
        }
      },
      (f) => left(f),
    );
  }
}
