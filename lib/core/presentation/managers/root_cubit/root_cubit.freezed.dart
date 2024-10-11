// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of root_cubit.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RootState {
  KtList<PaymentMethod> get supportedPaymentMethods =>
      throw _privateConstructorUsedError;
  Option<AppHttpResponse?> get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RootStateCopyWith<RootState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RootStateCopyWith<$Res> {
  factory $RootStateCopyWith(RootState value, $Res Function(RootState) then) =
      _$RootStateCopyWithImpl<$Res, RootState>;
  @useResult
  $Res call(
      {KtList<PaymentMethod> supportedPaymentMethods,
      Option<AppHttpResponse?> status});
}

/// @nodoc
class _$RootStateCopyWithImpl<$Res, $Val extends RootState>
    implements $RootStateCopyWith<$Res> {
  _$RootStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? supportedPaymentMethods = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      supportedPaymentMethods: null == supportedPaymentMethods
          ? _value.supportedPaymentMethods
          : supportedPaymentMethods // ignore: cast_nullable_to_non_nullable
              as KtList<PaymentMethod>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Option<AppHttpResponse?>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RootStateCopyWith<$Res> implements $RootStateCopyWith<$Res> {
  factory _$$_RootStateCopyWith(
          _$_RootState value, $Res Function(_$_RootState) then) =
      __$$_RootStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {KtList<PaymentMethod> supportedPaymentMethods,
      Option<AppHttpResponse?> status});
}

/// @nodoc
class __$$_RootStateCopyWithImpl<$Res>
    extends _$RootStateCopyWithImpl<$Res, _$_RootState>
    implements _$$_RootStateCopyWith<$Res> {
  __$$_RootStateCopyWithImpl(
      _$_RootState _value, $Res Function(_$_RootState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? supportedPaymentMethods = null,
    Object? status = null,
  }) {
    return _then(_$_RootState(
      supportedPaymentMethods: null == supportedPaymentMethods
          ? _value.supportedPaymentMethods
          : supportedPaymentMethods // ignore: cast_nullable_to_non_nullable
              as KtList<PaymentMethod>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Option<AppHttpResponse?>,
    ));
  }
}

/// @nodoc

class _$_RootState extends _RootState {
  const _$_RootState(
      {this.supportedPaymentMethods = const KtList.empty(),
      this.status = const None()})
      : super._();

  @override
  @JsonKey()
  final KtList<PaymentMethod> supportedPaymentMethods;
  @override
  @JsonKey()
  final Option<AppHttpResponse?> status;

  @override
  String toString() {
    return 'RootState(supportedPaymentMethods: $supportedPaymentMethods, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RootState &&
            (identical(
                    other.supportedPaymentMethods, supportedPaymentMethods) ||
                other.supportedPaymentMethods == supportedPaymentMethods) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, supportedPaymentMethods, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RootStateCopyWith<_$_RootState> get copyWith =>
      __$$_RootStateCopyWithImpl<_$_RootState>(this, _$identity);
}

abstract class _RootState extends RootState {
  const factory _RootState(
      {final KtList<PaymentMethod> supportedPaymentMethods,
      final Option<AppHttpResponse?> status}) = _$_RootState;
  const _RootState._() : super._();

  @override
  KtList<PaymentMethod> get supportedPaymentMethods;
  @override
  Option<AppHttpResponse?> get status;
  @override
  @JsonKey(ignore: true)
  _$$_RootStateCopyWith<_$_RootState> get copyWith =>
      throw _privateConstructorUsedError;
}
