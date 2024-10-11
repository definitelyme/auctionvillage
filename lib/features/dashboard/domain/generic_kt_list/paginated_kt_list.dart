library paginated_kt_list.dart;

import 'package:auctionvillage/core/data/models/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/utils/utils.dart';

part 'paginated_kt_list.freezed.dart';

enum SortDate {
  asc,
  desc,
  none;

  bool get isNone => this == SortDate.none;

  T when<T>({
    required T Function() asc,
    required T Function() desc,
    required T Function() none,
  }) {
    switch (this) {
      case SortDate.asc:
        return asc();
      case SortDate.desc:
        return desc();
      case SortDate.none:
        return none();
    }
  }
}

@Freezed(when: FreezedWhenOptions.none, map: FreezedMapOptions.none)
class PaginatedKtList<A extends BaseEntity> with _$PaginatedKtList<A> {
  // const factory PaginatedKtList.empty() = PaginatedKtList<A>;

  const factory PaginatedKtList({
    MetaDTO? meta,
    @Default(KtList.empty()) KtList<A> value,
  }) = _PaginatedKtList<A>;

  static PaginatedKtList<A> from<A extends BaseEntity>(Iterable<A> value, {MetaDTO? meta}) {
    return PaginatedKtList<A>(
      meta: meta,
      value: value.toImmutableList(),
    );
  }

  const PaginatedKtList._();

  int get size => list.size;

  bool isEmpty() => list.isEmpty();

  bool isNotEmpty() => list.isNotEmpty();

  bool isFirstIndex(int index) => list.isFirstIndex(index);

  bool isLastIndex(int index) => list.isLastIndex(index);

  A get(int index) => list.get(index);

  // KtList<A> get list => value.filter((it) => it.isNotDeleted);
  KtList<A> get list => value;

  PaginatedKtList<A> filter(bool Function(A) predicate) => copyWith(value: value.filter(predicate));

  List<A> toList() => list.asList();

  PaginatedKtList<A> sortByDate([SortDate? by]) => (by ?? SortDate.asc).when(
        asc: () => copyWith(value: value.sortedWith((a, b) => b.createdAt!.compareTo(a.createdAt!))),
        desc: () => copyWith(value: value.sortedWith((a, b) => a.createdAt!.compareTo(b.createdAt!))),
        none: () => this,
      );

  A? firstOrNull([bool Function(A)? predicate]) => value.firstOrNull(predicate);

  A? first(bool Function(A) predicate) => value.first(predicate);

  A? lastOrNull([bool Function(A)? predicate]) => value.lastOrNull(predicate);

  A? last(bool Function(A) predicate) => value.last(predicate);

  PaginatedKtList<A> sortedWith(int Function(A, A) comparator, {SortDate? date}) {
    if (date != null) {
      return sortByDate(date).sortedWith(comparator, date: null);
    } else {
      return copyWith(value: value.sortedWith(comparator));
    }
  }

  PaginatedKtList<A> map(A Function(A) transform) => copyWith(value: value.map(transform));

  PaginatedKtList<A> mapIndexed(A Function(int, A) transform) => copyWith(value: value.mapIndexed(transform));

  PaginatedKtList<A> minusElementIfPresent(A other) => copyWith(value: value.minusElementIfPresent(other));

  PaginatedKtList<A> plusElementIfAbsent(A other, {KtPlus position = KtPlus.end, MetaDTO? meta, SortDate? by}) =>
      copyWith(value: value.plusElementIfAbsent(other, position), meta: meta).sortByDate(by);

  PaginatedKtList<A> plusIfAbsent(KtList<A> incoming, {KtPlus position = KtPlus.end, MetaDTO? meta, SortDate? by}) =>
      copyWith(value: value.plusIfAbsent(incoming, position), meta: meta).sortByDate(by);
}

PaginatedKtList<A> emptyPaginatedList<A extends BaseEntity>([MetaDTO? meta]) => PaginatedKtList(value: const KtList.empty(), meta: meta);

extension PaginatedXList<A extends BaseEntity> on Iterable<A> {
  PaginatedKtList<A> toKtList() => PaginatedKtList(value: toImmutableList());
}
