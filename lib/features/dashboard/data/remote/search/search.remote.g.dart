// GENERATED CODE - DO NOT MODIFY BY HAND

part of search.remote.dart;

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _SearchRemote implements SearchRemote {
  _SearchRemote(
    this._dio, {
    this.baseUrl,
  });

  final AppHttpClient _dio;

  String? baseUrl;

  @override
  Future<UserListDTO> users({
    required param,
    page,
    perPage,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'search': param,
      r'page': page,
      r'per_page': perPage,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<UserListDTO>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/users',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = await compute(deserializeUserListDTO, _result.data!);
    return value;
  }

  @override
  Future<DealListDTO> deals({
    required param,
    page,
    perPage,
    population = _defaultPopulation,
    bidStatus,
    dealStatus,
    dealType,
    planId,
    categoryId,
    sortBy,
    bidType,
    isPrivate,
    sponsored,
    minPrice,
    maxPrice,
    rating,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'search': param,
      r'page': page,
      r'per_page': perPage,
      r'population': population,
      r'bidStatus': bidStatus,
      r'status': dealStatus,
      r'type': dealType,
      r'plan': planId,
      r'category': categoryId,
      r'sort': sortBy,
      r'bidType': bidType,
      r'isPrivate': isPrivate,
      r'sponsored': sponsored,
      r'minPrice': minPrice,
      r'maxPrice': maxPrice,
      r'rating': rating,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<DealListDTO>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/deals',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = await compute(deserializeDealListDTO, _result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
