// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of search_bloc.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchEvent {}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res, SearchEvent>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res, $Val extends SearchEvent>
    implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$___SearchEventCopyWith<$Res> {
  factory _$$___SearchEventCopyWith(
          _$___SearchEvent value, $Res Function(_$___SearchEvent) then) =
      __$$___SearchEventCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String query,
      int? perPage,
      DealFilter? filter,
      bool nextPage,
      AwaitCallback? callback});

  $DealFilterCopyWith<$Res>? get filter;
}

/// @nodoc
class __$$___SearchEventCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$___SearchEvent>
    implements _$$___SearchEventCopyWith<$Res> {
  __$$___SearchEventCopyWithImpl(
      _$___SearchEvent _value, $Res Function(_$___SearchEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? perPage = freezed,
    Object? filter = freezed,
    Object? nextPage = null,
    Object? callback = freezed,
  }) {
    return _then(_$___SearchEvent(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      filter: freezed == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as DealFilter?,
      nextPage: null == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as bool,
      callback: freezed == callback
          ? _value.callback
          : callback // ignore: cast_nullable_to_non_nullable
              as AwaitCallback?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DealFilterCopyWith<$Res>? get filter {
    if (_value.filter == null) {
      return null;
    }

    return $DealFilterCopyWith<$Res>(_value.filter!, (value) {
      return _then(_value.copyWith(filter: value));
    });
  }
}

/// @nodoc

class _$___SearchEvent implements ___SearchEvent {
  const _$___SearchEvent(this.query,
      {this.perPage, this.filter, this.nextPage = false, this.callback});

  @override
  final String query;
  @override
  final int? perPage;
  @override
  final DealFilter? filter;
  @override
  @JsonKey()
  final bool nextPage;
  @override
  final AwaitCallback? callback;

  @override
  String toString() {
    return 'SearchEvent.search(query: $query, perPage: $perPage, filter: $filter, nextPage: $nextPage, callback: $callback)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$___SearchEvent &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.filter, filter) || other.filter == filter) &&
            (identical(other.nextPage, nextPage) ||
                other.nextPage == nextPage) &&
            (identical(other.callback, callback) ||
                other.callback == callback));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, query, perPage, filter, nextPage, callback);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$___SearchEventCopyWith<_$___SearchEvent> get copyWith =>
      __$$___SearchEventCopyWithImpl<_$___SearchEvent>(this, _$identity);
}

abstract class ___SearchEvent implements SearchEvent {
  const factory ___SearchEvent(final String query,
      {final int? perPage,
      final DealFilter? filter,
      final bool nextPage,
      final AwaitCallback? callback}) = _$___SearchEvent;

  String get query;
  int? get perPage;
  DealFilter? get filter;
  bool get nextPage;
  AwaitCallback? get callback;
  @JsonKey(ignore: true)
  _$$___SearchEventCopyWith<_$___SearchEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ClearHistoryEventCopyWith<$Res> {
  factory _$$_ClearHistoryEventCopyWith(_$_ClearHistoryEvent value,
          $Res Function(_$_ClearHistoryEvent) then) =
      __$$_ClearHistoryEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClearHistoryEventCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$_ClearHistoryEvent>
    implements _$$_ClearHistoryEventCopyWith<$Res> {
  __$$_ClearHistoryEventCopyWithImpl(
      _$_ClearHistoryEvent _value, $Res Function(_$_ClearHistoryEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ClearHistoryEvent implements _ClearHistoryEvent {
  const _$_ClearHistoryEvent();

  @override
  String toString() {
    return 'SearchEvent.clear()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ClearHistoryEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _ClearHistoryEvent implements SearchEvent {
  const factory _ClearHistoryEvent() = _$_ClearHistoryEvent;
}

/// @nodoc
mixin _$SearchState {
  bool get isSearching => throw _privateConstructorUsedError;
  String? get searchQuery => throw _privateConstructorUsedError;
  PaginatedKtList<Deal> get deals => throw _privateConstructorUsedError;
  Option<AppHttpResponse?> get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
  @useResult
  $Res call(
      {bool isSearching,
      String? searchQuery,
      PaginatedKtList<Deal> deals,
      Option<AppHttpResponse?> status});

  $PaginatedKtListCopyWith<Deal, $Res> get deals;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSearching = null,
    Object? searchQuery = freezed,
    Object? deals = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      isSearching: null == isSearching
          ? _value.isSearching
          : isSearching // ignore: cast_nullable_to_non_nullable
              as bool,
      searchQuery: freezed == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String?,
      deals: null == deals
          ? _value.deals
          : deals // ignore: cast_nullable_to_non_nullable
              as PaginatedKtList<Deal>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Option<AppHttpResponse?>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginatedKtListCopyWith<Deal, $Res> get deals {
    return $PaginatedKtListCopyWith<Deal, $Res>(_value.deals, (value) {
      return _then(_value.copyWith(deals: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SearchStateCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$_SearchStateCopyWith(
          _$_SearchState value, $Res Function(_$_SearchState) then) =
      __$$_SearchStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isSearching,
      String? searchQuery,
      PaginatedKtList<Deal> deals,
      Option<AppHttpResponse?> status});

  @override
  $PaginatedKtListCopyWith<Deal, $Res> get deals;
}

/// @nodoc
class __$$_SearchStateCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$_SearchState>
    implements _$$_SearchStateCopyWith<$Res> {
  __$$_SearchStateCopyWithImpl(
      _$_SearchState _value, $Res Function(_$_SearchState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSearching = null,
    Object? searchQuery = freezed,
    Object? deals = null,
    Object? status = null,
  }) {
    return _then(_$_SearchState(
      isSearching: null == isSearching
          ? _value.isSearching
          : isSearching // ignore: cast_nullable_to_non_nullable
              as bool,
      searchQuery: freezed == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String?,
      deals: null == deals
          ? _value.deals
          : deals // ignore: cast_nullable_to_non_nullable
              as PaginatedKtList<Deal>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Option<AppHttpResponse?>,
    ));
  }
}

/// @nodoc

class _$_SearchState extends _SearchState {
  const _$_SearchState(
      {this.isSearching = false,
      this.searchQuery,
      this.deals = const PaginatedKtList(),
      this.status = const None()})
      : super._();

  @override
  @JsonKey()
  final bool isSearching;
  @override
  final String? searchQuery;
  @override
  @JsonKey()
  final PaginatedKtList<Deal> deals;
  @override
  @JsonKey()
  final Option<AppHttpResponse?> status;

  @override
  String toString() {
    return 'SearchState(isSearching: $isSearching, searchQuery: $searchQuery, deals: $deals, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchState &&
            (identical(other.isSearching, isSearching) ||
                other.isSearching == isSearching) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery) &&
            (identical(other.deals, deals) || other.deals == deals) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isSearching, searchQuery, deals, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchStateCopyWith<_$_SearchState> get copyWith =>
      __$$_SearchStateCopyWithImpl<_$_SearchState>(this, _$identity);
}

abstract class _SearchState extends SearchState {
  const factory _SearchState(
      {final bool isSearching,
      final String? searchQuery,
      final PaginatedKtList<Deal> deals,
      final Option<AppHttpResponse?> status}) = _$_SearchState;
  const _SearchState._() : super._();

  @override
  bool get isSearching;
  @override
  String? get searchQuery;
  @override
  PaginatedKtList<Deal> get deals;
  @override
  Option<AppHttpResponse?> get status;
  @override
  @JsonKey(ignore: true)
  _$$_SearchStateCopyWith<_$_SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}
