// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of paginated_kt_list.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaginatedKtList<A extends BaseEntity> {
  MetaDTO? get meta => throw _privateConstructorUsedError;
  KtList<A> get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaginatedKtListCopyWith<A, PaginatedKtList<A>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedKtListCopyWith<A extends BaseEntity, $Res> {
  factory $PaginatedKtListCopyWith(
          PaginatedKtList<A> value, $Res Function(PaginatedKtList<A>) then) =
      _$PaginatedKtListCopyWithImpl<A, $Res, PaginatedKtList<A>>;
  @useResult
  $Res call({MetaDTO? meta, KtList<A> value});

  $MetaDTOCopyWith<$Res>? get meta;
}

/// @nodoc
class _$PaginatedKtListCopyWithImpl<A extends BaseEntity, $Res,
        $Val extends PaginatedKtList<A>>
    implements $PaginatedKtListCopyWith<A, $Res> {
  _$PaginatedKtListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = freezed,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDTO?,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as KtList<A>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MetaDTOCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $MetaDTOCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PaginatedKtListCopyWith<A extends BaseEntity, $Res>
    implements $PaginatedKtListCopyWith<A, $Res> {
  factory _$$_PaginatedKtListCopyWith(_$_PaginatedKtList<A> value,
          $Res Function(_$_PaginatedKtList<A>) then) =
      __$$_PaginatedKtListCopyWithImpl<A, $Res>;
  @override
  @useResult
  $Res call({MetaDTO? meta, KtList<A> value});

  @override
  $MetaDTOCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$_PaginatedKtListCopyWithImpl<A extends BaseEntity, $Res>
    extends _$PaginatedKtListCopyWithImpl<A, $Res, _$_PaginatedKtList<A>>
    implements _$$_PaginatedKtListCopyWith<A, $Res> {
  __$$_PaginatedKtListCopyWithImpl(
      _$_PaginatedKtList<A> _value, $Res Function(_$_PaginatedKtList<A>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = freezed,
    Object? value = null,
  }) {
    return _then(_$_PaginatedKtList<A>(
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDTO?,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as KtList<A>,
    ));
  }
}

/// @nodoc

class _$_PaginatedKtList<A extends BaseEntity> extends _PaginatedKtList<A> {
  const _$_PaginatedKtList({this.meta, this.value = const KtList.empty()})
      : super._();

  @override
  final MetaDTO? meta;
  @override
  @JsonKey()
  final KtList<A> value;

  @override
  String toString() {
    return 'PaginatedKtList<$A>(meta: $meta, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaginatedKtList<A> &&
            (identical(other.meta, meta) || other.meta == meta) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, meta, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaginatedKtListCopyWith<A, _$_PaginatedKtList<A>> get copyWith =>
      __$$_PaginatedKtListCopyWithImpl<A, _$_PaginatedKtList<A>>(
          this, _$identity);
}

abstract class _PaginatedKtList<A extends BaseEntity>
    extends PaginatedKtList<A> {
  const factory _PaginatedKtList({final MetaDTO? meta, final KtList<A> value}) =
      _$_PaginatedKtList<A>;
  const _PaginatedKtList._() : super._();

  @override
  MetaDTO? get meta;
  @override
  KtList<A> get value;
  @override
  @JsonKey(ignore: true)
  _$$_PaginatedKtListCopyWith<A, _$_PaginatedKtList<A>> get copyWith =>
      throw _privateConstructorUsedError;
}
