library deal_repository.dart;

import 'package:auctionvillage/core/data/http_client/index.dart';
import 'package:auctionvillage/core/data/models/index.dart';
import 'package:auctionvillage/core/data/repository/base_repo.dart';
import 'package:auctionvillage/core/data/response/index.dart';
import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/features/dashboard/data/models/models.dart';
import 'package:auctionvillage/features/dashboard/data/remote/deal_remote/deal_remote.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

@injectable
class DealRepository with BaseRepository {
  // PaginationDTO? _dealsMeta;
  // PaginationDTO? _categoryDealsMeta;
  PaginationDTO? _bidsHistoryMeta;
  PaginationDTO? _myBidsHistoryStatsMeta;
  PaginationDTO? _myBidsHistoryMeta;
  PaginationDTO? _sellHistoryMeta;
  PaginationDTO? _wishlistMeta;
  PaginationDTO? _ratingsMeta;
  // PaginationDTO? _availablePlans;

  final DealRemote remote;

  DealRepository(this.remote);

  Future<Either<AppHttpResponse, PaginatedKtList<Deal>>> deals({
    DealFilter? filter,
    int? perPage,
    bool nextPage = false,
    required PaginationDTO? pagination,
  }) async {
    final _perPage = perPage ?? Const.kPerPage;
    final _conn = await checkConnectivity();

    return _conn.fold(
      () async {
        final DealListDTO _list;

        try {
          if (nextPage) {
            assert(pagination != null);

            if (pagination?.next != null)
              _list = await remote.filterDeals(
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
            _list = await remote.filterDeals(
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

  Future<Either<AppHttpResponse, PaginatedKtList<Deal>>> filterDealsByCategory(
    DealCategory? category, {
    required PaginationDTO? pagination,
    DealFilter? filter,
    int? perPage,
    bool nextPage = false,
  }) async {
    final _perPage = perPage ?? Const.kPerPage;
    final _conn = await checkConnectivity();

    return _conn.fold(
      () async {
        final CategoryListDTO _list;

        assert(category != null);

        try {
          if (nextPage) {
            assert(pagination != null);

            if (pagination?.next != null)
              _list = await remote.filterDealsByCategory(
                '${category!.id.value}',
                page: pagination!.next,
                perPage: perPage ?? pagination.perPage,
              );
            else
              return left(AppHttpResponse.endOfList);
          } else {
            final _perPageValue = pagination?.currentPage != null ? pagination!.currentPage! * _perPage : _perPage;
            _list = await remote.filterDealsByCategory('${category!.id.value}',
                isPrivate: filter?.isPrivate, sponsored: filter?.sponsored, perPage: _perPageValue);
          }

          return right(PaginatedKtList(
            value: _list.data.toImmutableList().filter((e) => e.deal != null).map((i) => i.deal!.domain),
            meta: _list.meta,
          ));
        } on AppHttpResponse catch (e) {
          return left(e);
        } on AppNetworkException catch (e) {
          return left(e.asResponse());
        }
      },
      (f) => left(f),
    );
  }

  Future<Either<AppHttpResponse, Deal>> getDeal(Deal deal) async {
    final _conn = await checkConnectivity();

    return _conn.fold(
      () async {
        try {
          final _result = await remote.getDeal('${deal.id.value}');
          return right(_result.domain);
        } on AppHttpResponse catch (e) {
          return left(e);
        } on AppNetworkException catch (e) {
          return left(e.asResponse());
        }
      },
      (f) => left(f),
    );
  }

  Future<Either<AppHttpResponse, KtList<DealCategory>>> categories() async {
    final _conn = await checkConnectivity();

    return _conn.fold(
      () async {
        try {
          final _list = await remote.categories();
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

  Future<Either<AppHttpResponse, DealCategory>> getCategory(DealCategory category) async {
    final _conn = await checkConnectivity();

    return _conn.fold(
      () async {
        try {
          final _result = await remote.getCategory('${category.id.value}');
          return right(_result.domain);
        } on AppHttpResponse catch (e) {
          return left(e);
        } on AppNetworkException catch (e) {
          return left(e.asResponse());
        }
      },
      (f) => left(f),
    );
  }

  Future<Either<AppHttpResponse, DealBidHistory>> bidHistory(Deal? deal, {int? perPage, bool nextPage = false}) async {
    final _perPage = perPage ?? Const.kPerPage;
    final _conn = await checkConnectivity();

    return _conn.fold(
      () async {
        final DealBidHistoryDTO dto;

        try {
          if (nextPage) {
            assert(_bidsHistoryMeta != null);

            if (_bidsHistoryMeta?.next != null)
              dto = await remote.bidHistory(
                '${deal?.id.value}',
                page: _bidsHistoryMeta!.next,
                perPage: perPage ?? _bidsHistoryMeta?.perPage,
              );
            else
              return left(AppHttpResponse.endOfList);
          } else {
            final _perPageValue = _bidsHistoryMeta?.currentPage != null ? _bidsHistoryMeta!.currentPage! * _perPage : _perPage;
            dto = await remote.bidHistory('${deal?.id.value}', perPage: _perPageValue);
          }

          // Save new meta data
          _bidsHistoryMeta = dto.meta?.pagination;
          return right(dto.domain);
        } on AppHttpResponse catch (e) {
          return left(e);
        } on AppNetworkException catch (e) {
          return left(e.asResponse());
        }
      },
      (f) => left(f),
    );
  }

  Future<Either<AppHttpResponse, UserBidHistory>> myBidHistoryStats(User? user, {int? perPage, bool nextPage = false}) async {
    final _perPage = perPage ?? Const.kPerPage;
    final _conn = await checkConnectivity();

    return _conn.fold(
      () async {
        final UserBidHistoryDTO dto;

        try {
          if (nextPage) {
            assert(_myBidsHistoryStatsMeta != null);

            if (_myBidsHistoryStatsMeta?.next != null)
              dto = await remote.myBidHistoryStats(
                '${user?.id.value}',
                page: _myBidsHistoryStatsMeta!.next,
                perPage: perPage ?? _myBidsHistoryStatsMeta?.perPage,
              );
            else
              return left(AppHttpResponse.endOfList);
          } else {
            final _perPageValue =
                _myBidsHistoryStatsMeta?.currentPage != null ? _myBidsHistoryStatsMeta!.currentPage! * _perPage : _perPage;
            dto = await remote.myBidHistoryStats('${user?.id.value}', perPage: _perPageValue);
          }

          // Save new meta data
          _myBidsHistoryStatsMeta = dto.meta?.pagination;
          return right(dto.domain);
        } on AppHttpResponse catch (e) {
          return left(e);
        } on AppNetworkException catch (e) {
          return left(e.asResponse());
        }
      },
      (f) => left(f),
    );
  }

  Future<Either<AppHttpResponse, KtList<UserBidHistory>>> myBidHistory(User? user, {int? perPage, bool nextPage = false}) async {
    final _perPage = perPage ?? Const.kPerPage;
    final _conn = await checkConnectivity();

    return _conn.fold(
      () async {
        final UserBidHistoryListDTO list;

        try {
          if (nextPage) {
            assert(_myBidsHistoryMeta != null);

            if (_myBidsHistoryMeta?.next != null)
              list = await remote.myBidHistory(
                '${user?.id.value}',
                page: _myBidsHistoryMeta!.next,
                perPage: perPage ?? _myBidsHistoryMeta?.perPage,
              );
            else
              return left(AppHttpResponse.endOfList);
          } else {
            final _perPageValue = _myBidsHistoryMeta?.currentPage != null ? _myBidsHistoryMeta!.currentPage! * _perPage : _perPage;
            list = await remote.myBidHistory('${user?.id.value}', perPage: _perPageValue);
          }

          // Save new meta data
          _myBidsHistoryMeta = list.meta?.pagination;
          return right(list.domain);
        } on AppHttpResponse catch (e) {
          return left(e);
        } on AppNetworkException catch (e) {
          return left(e.asResponse());
        }
      },
      (f) => left(f),
    );
  }

  Future<Either<AppHttpResponse, SellHistory>> sellHistory(User? user, {int? perPage, bool nextPage = false}) async {
    final _perPage = perPage ?? Const.kPerPage;
    final _conn = await checkConnectivity();

    return _conn.fold(
      () async {
        final SellHistoryDTO dto;

        try {
          if (nextPage) {
            assert(_sellHistoryMeta != null);

            if (_sellHistoryMeta?.next != null)
              dto = await remote.sellHistory(
                '${user?.id.value}',
                page: _sellHistoryMeta!.next,
                perPage: perPage ?? _sellHistoryMeta?.perPage,
              );
            else
              return left(AppHttpResponse.endOfList);
          } else {
            final _perPageValue = _sellHistoryMeta?.currentPage != null ? _sellHistoryMeta!.currentPage! * _perPage : _perPage;
            dto = await remote.sellHistory('${user?.id.value}', perPage: _perPageValue);
          }

          // Save new meta data
          _sellHistoryMeta = dto.meta?.pagination;
          return right(dto.domain);
        } on AppHttpResponse catch (e) {
          return left(e);
        } on AppNetworkException catch (e) {
          return left(e.asResponse());
        }
      },
      (f) => left(f),
    );
  }

  Future<Either<AppHttpResponse, KtList<MyWish>>> wishlist(User? user, {int? perPage, bool nextPage = false}) async {
    final _perPage = perPage ?? Const.kPerPage;
    final _conn = await checkConnectivity();

    return _conn.fold(
      () async {
        final WishListDTO _list;

        try {
          if (nextPage) {
            assert(_wishlistMeta != null);

            if (_wishlistMeta?.next != null)
              _list = await remote.wishlist(page: _wishlistMeta!.next, perPage: perPage ?? _wishlistMeta?.perPage);
            else
              return left(AppHttpResponse.endOfList);
          } else {
            final _perPageValue = _wishlistMeta?.currentPage != null ? _wishlistMeta!.currentPage! * _perPage : _perPage;
            _list = await remote.wishlist(perPage: _perPageValue);
          }

          // Save new meta data
          _wishlistMeta = _list.meta?.pagination;
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

  Future<Either<AppHttpResponse, Rating>> myReviews({int? perPage, bool nextPage = false}) async {
    final _perPage = perPage ?? Const.kPerPage;
    final _conn = await checkConnectivity();

    return _conn.fold(
      () async {
        final RatingDTO _dto;

        try {
          if (nextPage) {
            assert(_ratingsMeta != null);

            if (_ratingsMeta?.next != null)
              _dto = await remote.myReviews(page: _ratingsMeta!.next, perPage: perPage ?? _ratingsMeta?.perPage);
            else
              return left(AppHttpResponse.endOfList);
          } else {
            final _perPageValue = _ratingsMeta?.currentPage != null ? _ratingsMeta!.currentPage! * _perPage : _perPage;
            _dto = await remote.myReviews(perPage: _perPageValue);
          }

          // Save new meta data
          _ratingsMeta = _dto.meta?.pagination;
          return right(_dto.domain);
        } on AppHttpResponse catch (e) {
          return left(e);
        } on AppNetworkException catch (e) {
          return left(e.asResponse());
        }
      },
      (f) => left(f),
    );
  }

  Future<Either<AppHttpResponse, Rating>> getDealRating(Deal deal, {int? perPage, bool nextPage = false}) async {
    final _perPage = perPage ?? Const.kPerPage;
    final _conn = await checkConnectivity();

    return _conn.fold(
      () async {
        final RatingDTO _dto;

        try {
          if (nextPage) {
            assert(_ratingsMeta != null);

            if (_ratingsMeta?.next != null)
              _dto = await remote.dealReview('${deal.id.value}', page: _ratingsMeta!.next, perPage: perPage ?? _ratingsMeta?.perPage);
            else
              return left(AppHttpResponse.endOfList);
          } else {
            final _perPageValue = _ratingsMeta?.currentPage != null ? _ratingsMeta!.currentPage! * _perPage : _perPage;
            _dto = await remote.dealReview('${deal.id.value}', perPage: _perPageValue);
          }

          // Save new meta data
          _ratingsMeta = _dto.meta?.pagination;
          return right(_dto.domain);
        } on AppHttpResponse catch (e) {
          return left(e);
        } on AppNetworkException catch (e) {
          return left(e.asResponse());
        }
      },
      (f) => left(f),
    );
  }

  Future<Tuple2<AppHttpResponse?, Deal?>> sendBid(Deal deal, double amount) async {
    final _conn = await checkConnectivity();

    return _conn.fold(
      () async {
        try {
          final result = await remote.bid('${deal.id.value}', amount: amount);
          final domain = result.data.domain;
          final response = AppHttpResponse.successful(result.meta?.message);

          return Tuple2(response, domain);
        } on AppHttpResponse catch (e) {
          return Tuple2(e, null);
        } on AppNetworkException catch (e) {
          return Tuple2(e.asResponse(), null);
        }
      },
      (f) => Tuple2(f, null),
    );
  }

  Future<AppHttpResponse?> favorite(Deal deal) async {
    final _conn = await checkConnectivity();

    return _conn.fold(
      () async {
        try {
          await remote.favorite('${deal.id.value}');
          return null;
        } on AppHttpResponse catch (e) {
          return e;
        } on AppNetworkException catch (e) {
          return e.asResponse();
        }
      },
      (f) => f,
    );
  }

  Future<AppHttpResponse?> unfavorite(Deal deal) async {
    final _conn = await checkConnectivity();

    return _conn.fold(
      () async {
        try {
          await remote.unfavorite('${deal.id.value}');
          return null;
        } on AppHttpResponse catch (e) {
          return e;
        } on AppNetworkException catch (e) {
          return e.asResponse();
        }
      },
      (f) => f,
    );
  }

  Future<AppHttpResponse> admittanceFeeStatus(Deal deal) async {
    final _conn = await checkConnectivity();

    return _conn.fold(
      () async {
        try {
          final result = await remote.admittanceFeeStatus('${deal.id.value}');
          return AppHttpResponse.info(result.message);
        } on AppHttpResponse catch (e) {
          return e;
        } on AppNetworkException catch (e) {
          return e.asResponse();
        }
      },
      (f) => f,
    );
  }

  Future<AppHttpResponse> payAdmittanceFee(Deal deal, {String? reference}) async {
    final _conn = await checkConnectivity();

    return _conn.fold(
      () async {
        try {
          return await remote.payAdmittance('${deal.id.value}', reference: reference);
        } on AppHttpResponse catch (e) {
          return e;
        } on AppNetworkException catch (e) {
          return e.asResponse();
        }
      },
      (f) => f,
    );
  }

  Future<AppHttpResponse> upgradePlan(
    Deal deal, {
    String? reference,
    required DealPlan plan,
    required PaymentResource resource,
    required PaymentMethod paymentMethod,
  }) async {
    final _conn = await checkConnectivity();

    return _conn.fold(
      () async {
        try {
          await remote.upgradePlan(
            dealId: '${deal.id.value}',
            planId: '${plan.id.value}',
            paymentMethod: paymentMethod.lowercase,
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

  Future<AppHttpResponse> unlistItem(Deal deal) async {
    final _conn = await checkConnectivity();

    return _conn.fold(
      () async {
        try {
          return await remote.unlistItem('${deal.id.value}');
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
