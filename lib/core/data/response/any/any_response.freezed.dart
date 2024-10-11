// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of any_response.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AnyResponse _$AnyResponseFromJson(Map<String, dynamic> json) {
  switch (json['status']) {
    case 'info':
      return InfoResponseType.fromJson(json);
    case 'success':
      return SuccessfulResponse.fromJson(json);

    default:
      return ErrorResponse.fromJson(json);
  }
}

/// @nodoc
mixin _$AnyResponse {
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, name: 'message')
  String? get messageTxt => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  String? get details => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  bool get pop => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(name: 'statusCode') int? code,
            bool? status,
            @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
            @JsonKey(ignore: true) String? details,
            ServerFieldErrors? errors,
            @JsonKey(ignore: true) bool pop,
            @JsonKey(ignore: true) bool show,
            @JsonKey(ignore: true) Exception? exception)
        error,
    required TResult Function(
            bool? status,
            @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
            @JsonKey(ignore: true) String? details,
            @JsonKey(ignore: true) bool pop)
        info,
    required TResult Function(
            bool? status,
            @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
            @JsonKey(ignore: true) String? details,
            @JsonKey(ignore: true) bool pop)
        success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @JsonKey(name: 'statusCode') int? code,
            bool? status,
            @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
            @JsonKey(ignore: true) String? details,
            ServerFieldErrors? errors,
            @JsonKey(ignore: true) bool pop,
            @JsonKey(ignore: true) bool show,
            @JsonKey(ignore: true) Exception? exception)?
        error,
    TResult? Function(
            bool? status,
            @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
            @JsonKey(ignore: true) String? details,
            @JsonKey(ignore: true) bool pop)?
        info,
    TResult? Function(
            bool? status,
            @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
            @JsonKey(ignore: true) String? details,
            @JsonKey(ignore: true) bool pop)?
        success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: 'statusCode') int? code,
            bool? status,
            @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
            @JsonKey(ignore: true) String? details,
            ServerFieldErrors? errors,
            @JsonKey(ignore: true) bool pop,
            @JsonKey(ignore: true) bool show,
            @JsonKey(ignore: true) Exception? exception)?
        error,
    TResult Function(
            bool? status,
            @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
            @JsonKey(ignore: true) String? details,
            @JsonKey(ignore: true) bool pop)?
        info,
    TResult Function(
            bool? status,
            @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
            @JsonKey(ignore: true) String? details,
            @JsonKey(ignore: true) bool pop)?
        success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ErrorResponse value) error,
    required TResult Function(InfoResponseType value) info,
    required TResult Function(SuccessfulResponse value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ErrorResponse value)? error,
    TResult? Function(InfoResponseType value)? info,
    TResult? Function(SuccessfulResponse value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ErrorResponse value)? error,
    TResult Function(InfoResponseType value)? info,
    TResult Function(SuccessfulResponse value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnyResponseCopyWith<AnyResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnyResponseCopyWith<$Res> {
  factory $AnyResponseCopyWith(
          AnyResponse value, $Res Function(AnyResponse) then) =
      _$AnyResponseCopyWithImpl<$Res, AnyResponse>;
  @useResult
  $Res call(
      {bool? status,
      @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
      @JsonKey(ignore: true) String? details,
      @JsonKey(ignore: true) bool pop});
}

/// @nodoc
class _$AnyResponseCopyWithImpl<$Res, $Val extends AnyResponse>
    implements $AnyResponseCopyWith<$Res> {
  _$AnyResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? messageTxt = freezed,
    Object? details = freezed,
    Object? pop = null,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      messageTxt: freezed == messageTxt
          ? _value.messageTxt
          : messageTxt // ignore: cast_nullable_to_non_nullable
              as String?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
      pop: null == pop
          ? _value.pop
          : pop // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ErrorResponseCopyWith<$Res>
    implements $AnyResponseCopyWith<$Res> {
  factory _$$ErrorResponseCopyWith(
          _$ErrorResponse value, $Res Function(_$ErrorResponse) then) =
      __$$ErrorResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'statusCode') int? code,
      bool? status,
      @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
      @JsonKey(ignore: true) String? details,
      ServerFieldErrors? errors,
      @JsonKey(ignore: true) bool pop,
      @JsonKey(ignore: true) bool show,
      @JsonKey(ignore: true) Exception? exception});

  $ServerFieldErrorsCopyWith<$Res>? get errors;
}

/// @nodoc
class __$$ErrorResponseCopyWithImpl<$Res>
    extends _$AnyResponseCopyWithImpl<$Res, _$ErrorResponse>
    implements _$$ErrorResponseCopyWith<$Res> {
  __$$ErrorResponseCopyWithImpl(
      _$ErrorResponse _value, $Res Function(_$ErrorResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? status = freezed,
    Object? messageTxt = freezed,
    Object? details = freezed,
    Object? errors = freezed,
    Object? pop = null,
    Object? show = null,
    Object? exception = freezed,
  }) {
    return _then(_$ErrorResponse(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      messageTxt: freezed == messageTxt
          ? _value.messageTxt
          : messageTxt // ignore: cast_nullable_to_non_nullable
              as String?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
      errors: freezed == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as ServerFieldErrors?,
      pop: null == pop
          ? _value.pop
          : pop // ignore: cast_nullable_to_non_nullable
              as bool,
      show: null == show
          ? _value.show
          : show // ignore: cast_nullable_to_non_nullable
              as bool,
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ServerFieldErrorsCopyWith<$Res>? get errors {
    if (_value.errors == null) {
      return null;
    }

    return $ServerFieldErrorsCopyWith<$Res>(_value.errors!, (value) {
      return _then(_value.copyWith(errors: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$ErrorResponse extends ErrorResponse {
  const _$ErrorResponse(
      {@JsonKey(name: 'statusCode') this.code,
      this.status,
      @JsonKey(includeIfNull: false, name: 'message') this.messageTxt,
      @JsonKey(ignore: true) this.details,
      this.errors,
      @JsonKey(ignore: true) this.pop = false,
      @JsonKey(ignore: true) this.show = true,
      @JsonKey(ignore: true) this.exception})
      : super._();

  factory _$ErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$$ErrorResponseFromJson(json);

  @override
  @JsonKey(name: 'statusCode')
  final int? code;
  @override
  final bool? status;
  @override
  @JsonKey(includeIfNull: false, name: 'message')
  final String? messageTxt;
  @override
  @JsonKey(ignore: true)
  final String? details;
  @override
  final ServerFieldErrors? errors;
  @override
  @JsonKey(ignore: true)
  final bool pop;
  @override
  @JsonKey(ignore: true)
  final bool show;
  @override
  @JsonKey(ignore: true)
  final Exception? exception;

  @override
  String toString() {
    return 'AnyResponse.error(code: $code, status: $status, messageTxt: $messageTxt, details: $details, errors: $errors, pop: $pop, show: $show, exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorResponse &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.messageTxt, messageTxt) ||
                other.messageTxt == messageTxt) &&
            (identical(other.details, details) || other.details == details) &&
            (identical(other.errors, errors) || other.errors == errors) &&
            (identical(other.pop, pop) || other.pop == pop) &&
            (identical(other.show, show) || other.show == show) &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, status, messageTxt,
      details, errors, pop, show, exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorResponseCopyWith<_$ErrorResponse> get copyWith =>
      __$$ErrorResponseCopyWithImpl<_$ErrorResponse>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(name: 'statusCode') int? code,
            bool? status,
            @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
            @JsonKey(ignore: true) String? details,
            ServerFieldErrors? errors,
            @JsonKey(ignore: true) bool pop,
            @JsonKey(ignore: true) bool show,
            @JsonKey(ignore: true) Exception? exception)
        error,
    required TResult Function(
            bool? status,
            @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
            @JsonKey(ignore: true) String? details,
            @JsonKey(ignore: true) bool pop)
        info,
    required TResult Function(
            bool? status,
            @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
            @JsonKey(ignore: true) String? details,
            @JsonKey(ignore: true) bool pop)
        success,
  }) {
    return error(
        code, status, messageTxt, details, errors, pop, show, exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @JsonKey(name: 'statusCode') int? code,
            bool? status,
            @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
            @JsonKey(ignore: true) String? details,
            ServerFieldErrors? errors,
            @JsonKey(ignore: true) bool pop,
            @JsonKey(ignore: true) bool show,
            @JsonKey(ignore: true) Exception? exception)?
        error,
    TResult? Function(
            bool? status,
            @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
            @JsonKey(ignore: true) String? details,
            @JsonKey(ignore: true) bool pop)?
        info,
    TResult? Function(
            bool? status,
            @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
            @JsonKey(ignore: true) String? details,
            @JsonKey(ignore: true) bool pop)?
        success,
  }) {
    return error?.call(
        code, status, messageTxt, details, errors, pop, show, exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: 'statusCode') int? code,
            bool? status,
            @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
            @JsonKey(ignore: true) String? details,
            ServerFieldErrors? errors,
            @JsonKey(ignore: true) bool pop,
            @JsonKey(ignore: true) bool show,
            @JsonKey(ignore: true) Exception? exception)?
        error,
    TResult Function(
            bool? status,
            @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
            @JsonKey(ignore: true) String? details,
            @JsonKey(ignore: true) bool pop)?
        info,
    TResult Function(
            bool? status,
            @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
            @JsonKey(ignore: true) String? details,
            @JsonKey(ignore: true) bool pop)?
        success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(
          code, status, messageTxt, details, errors, pop, show, exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ErrorResponse value) error,
    required TResult Function(InfoResponseType value) info,
    required TResult Function(SuccessfulResponse value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ErrorResponse value)? error,
    TResult? Function(InfoResponseType value)? info,
    TResult? Function(SuccessfulResponse value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ErrorResponse value)? error,
    TResult Function(InfoResponseType value)? info,
    TResult Function(SuccessfulResponse value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ErrorResponseToJson(
      this,
    );
  }
}

abstract class ErrorResponse extends AnyResponse implements Failure {
  const factory ErrorResponse(
      {@JsonKey(name: 'statusCode') final int? code,
      final bool? status,
      @JsonKey(includeIfNull: false, name: 'message') final String? messageTxt,
      @JsonKey(ignore: true) final String? details,
      final ServerFieldErrors? errors,
      @JsonKey(ignore: true) final bool pop,
      @JsonKey(ignore: true) final bool show,
      @JsonKey(ignore: true) final Exception? exception}) = _$ErrorResponse;
  const ErrorResponse._() : super._();

  factory ErrorResponse.fromJson(Map<String, dynamic> json) =
      _$ErrorResponse.fromJson;

  @JsonKey(name: 'statusCode')
  int? get code;
  @override
  bool? get status;
  @override
  @JsonKey(includeIfNull: false, name: 'message')
  String? get messageTxt;
  @override
  @JsonKey(ignore: true)
  String? get details;
  ServerFieldErrors? get errors;
  @override
  @JsonKey(ignore: true)
  bool get pop;
  @JsonKey(ignore: true)
  bool get show;
  @JsonKey(ignore: true)
  Exception? get exception;
  @override
  @JsonKey(ignore: true)
  _$$ErrorResponseCopyWith<_$ErrorResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InfoResponseTypeCopyWith<$Res>
    implements $AnyResponseCopyWith<$Res> {
  factory _$$InfoResponseTypeCopyWith(
          _$InfoResponseType value, $Res Function(_$InfoResponseType) then) =
      __$$InfoResponseTypeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? status,
      @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
      @JsonKey(ignore: true) String? details,
      @JsonKey(ignore: true) bool pop});
}

/// @nodoc
class __$$InfoResponseTypeCopyWithImpl<$Res>
    extends _$AnyResponseCopyWithImpl<$Res, _$InfoResponseType>
    implements _$$InfoResponseTypeCopyWith<$Res> {
  __$$InfoResponseTypeCopyWithImpl(
      _$InfoResponseType _value, $Res Function(_$InfoResponseType) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? messageTxt = freezed,
    Object? details = freezed,
    Object? pop = null,
  }) {
    return _then(_$InfoResponseType(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      messageTxt: freezed == messageTxt
          ? _value.messageTxt
          : messageTxt // ignore: cast_nullable_to_non_nullable
              as String?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
      pop: null == pop
          ? _value.pop
          : pop // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InfoResponseType extends InfoResponseType with Info {
  const _$InfoResponseType(
      {this.status,
      @JsonKey(includeIfNull: false, name: 'message') this.messageTxt,
      @JsonKey(ignore: true) this.details,
      @JsonKey(ignore: true) this.pop = false})
      : super._();

  factory _$InfoResponseType.fromJson(Map<String, dynamic> json) =>
      _$$InfoResponseTypeFromJson(json);

  @override
  final bool? status;
  @override
  @JsonKey(includeIfNull: false, name: 'message')
  final String? messageTxt;
  @override
  @JsonKey(ignore: true)
  final String? details;
  @override
  @JsonKey(ignore: true)
  final bool pop;

  @override
  String toString() {
    return 'AnyResponse.info(status: $status, messageTxt: $messageTxt, details: $details, pop: $pop)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InfoResponseType &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.messageTxt, messageTxt) ||
                other.messageTxt == messageTxt) &&
            (identical(other.details, details) || other.details == details) &&
            (identical(other.pop, pop) || other.pop == pop));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, status, messageTxt, details, pop);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InfoResponseTypeCopyWith<_$InfoResponseType> get copyWith =>
      __$$InfoResponseTypeCopyWithImpl<_$InfoResponseType>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(name: 'statusCode') int? code,
            bool? status,
            @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
            @JsonKey(ignore: true) String? details,
            ServerFieldErrors? errors,
            @JsonKey(ignore: true) bool pop,
            @JsonKey(ignore: true) bool show,
            @JsonKey(ignore: true) Exception? exception)
        error,
    required TResult Function(
            bool? status,
            @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
            @JsonKey(ignore: true) String? details,
            @JsonKey(ignore: true) bool pop)
        info,
    required TResult Function(
            bool? status,
            @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
            @JsonKey(ignore: true) String? details,
            @JsonKey(ignore: true) bool pop)
        success,
  }) {
    return info(status, messageTxt, details, pop);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @JsonKey(name: 'statusCode') int? code,
            bool? status,
            @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
            @JsonKey(ignore: true) String? details,
            ServerFieldErrors? errors,
            @JsonKey(ignore: true) bool pop,
            @JsonKey(ignore: true) bool show,
            @JsonKey(ignore: true) Exception? exception)?
        error,
    TResult? Function(
            bool? status,
            @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
            @JsonKey(ignore: true) String? details,
            @JsonKey(ignore: true) bool pop)?
        info,
    TResult? Function(
            bool? status,
            @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
            @JsonKey(ignore: true) String? details,
            @JsonKey(ignore: true) bool pop)?
        success,
  }) {
    return info?.call(status, messageTxt, details, pop);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: 'statusCode') int? code,
            bool? status,
            @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
            @JsonKey(ignore: true) String? details,
            ServerFieldErrors? errors,
            @JsonKey(ignore: true) bool pop,
            @JsonKey(ignore: true) bool show,
            @JsonKey(ignore: true) Exception? exception)?
        error,
    TResult Function(
            bool? status,
            @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
            @JsonKey(ignore: true) String? details,
            @JsonKey(ignore: true) bool pop)?
        info,
    TResult Function(
            bool? status,
            @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
            @JsonKey(ignore: true) String? details,
            @JsonKey(ignore: true) bool pop)?
        success,
    required TResult orElse(),
  }) {
    if (info != null) {
      return info(status, messageTxt, details, pop);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ErrorResponse value) error,
    required TResult Function(InfoResponseType value) info,
    required TResult Function(SuccessfulResponse value) success,
  }) {
    return info(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ErrorResponse value)? error,
    TResult? Function(InfoResponseType value)? info,
    TResult? Function(SuccessfulResponse value)? success,
  }) {
    return info?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ErrorResponse value)? error,
    TResult Function(InfoResponseType value)? info,
    TResult Function(SuccessfulResponse value)? success,
    required TResult orElse(),
  }) {
    if (info != null) {
      return info(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$InfoResponseTypeToJson(
      this,
    );
  }
}

abstract class InfoResponseType extends AnyResponse implements Info {
  const factory InfoResponseType(
      {final bool? status,
      @JsonKey(includeIfNull: false, name: 'message') final String? messageTxt,
      @JsonKey(ignore: true) final String? details,
      @JsonKey(ignore: true) final bool pop}) = _$InfoResponseType;
  const InfoResponseType._() : super._();

  factory InfoResponseType.fromJson(Map<String, dynamic> json) =
      _$InfoResponseType.fromJson;

  @override
  bool? get status;
  @override
  @JsonKey(includeIfNull: false, name: 'message')
  String? get messageTxt;
  @override
  @JsonKey(ignore: true)
  String? get details;
  @override
  @JsonKey(ignore: true)
  bool get pop;
  @override
  @JsonKey(ignore: true)
  _$$InfoResponseTypeCopyWith<_$InfoResponseType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessfulResponseCopyWith<$Res>
    implements $AnyResponseCopyWith<$Res> {
  factory _$$SuccessfulResponseCopyWith(_$SuccessfulResponse value,
          $Res Function(_$SuccessfulResponse) then) =
      __$$SuccessfulResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? status,
      @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
      @JsonKey(ignore: true) String? details,
      @JsonKey(ignore: true) bool pop});
}

/// @nodoc
class __$$SuccessfulResponseCopyWithImpl<$Res>
    extends _$AnyResponseCopyWithImpl<$Res, _$SuccessfulResponse>
    implements _$$SuccessfulResponseCopyWith<$Res> {
  __$$SuccessfulResponseCopyWithImpl(
      _$SuccessfulResponse _value, $Res Function(_$SuccessfulResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? messageTxt = freezed,
    Object? details = freezed,
    Object? pop = null,
  }) {
    return _then(_$SuccessfulResponse(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      messageTxt: freezed == messageTxt
          ? _value.messageTxt
          : messageTxt // ignore: cast_nullable_to_non_nullable
              as String?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
      pop: null == pop
          ? _value.pop
          : pop // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SuccessfulResponse extends SuccessfulResponse with Success {
  const _$SuccessfulResponse(
      {this.status,
      @JsonKey(includeIfNull: false, name: 'message') this.messageTxt,
      @JsonKey(ignore: true) this.details,
      @JsonKey(ignore: true) this.pop = false})
      : super._();

  factory _$SuccessfulResponse.fromJson(Map<String, dynamic> json) =>
      _$$SuccessfulResponseFromJson(json);

  @override
  final bool? status;
  @override
  @JsonKey(includeIfNull: false, name: 'message')
  final String? messageTxt;
  @override
  @JsonKey(ignore: true)
  final String? details;
  @override
  @JsonKey(ignore: true)
  final bool pop;

  @override
  String toString() {
    return 'AnyResponse.success(status: $status, messageTxt: $messageTxt, details: $details, pop: $pop)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessfulResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.messageTxt, messageTxt) ||
                other.messageTxt == messageTxt) &&
            (identical(other.details, details) || other.details == details) &&
            (identical(other.pop, pop) || other.pop == pop));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, status, messageTxt, details, pop);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessfulResponseCopyWith<_$SuccessfulResponse> get copyWith =>
      __$$SuccessfulResponseCopyWithImpl<_$SuccessfulResponse>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(name: 'statusCode') int? code,
            bool? status,
            @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
            @JsonKey(ignore: true) String? details,
            ServerFieldErrors? errors,
            @JsonKey(ignore: true) bool pop,
            @JsonKey(ignore: true) bool show,
            @JsonKey(ignore: true) Exception? exception)
        error,
    required TResult Function(
            bool? status,
            @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
            @JsonKey(ignore: true) String? details,
            @JsonKey(ignore: true) bool pop)
        info,
    required TResult Function(
            bool? status,
            @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
            @JsonKey(ignore: true) String? details,
            @JsonKey(ignore: true) bool pop)
        success,
  }) {
    return success(status, messageTxt, details, pop);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @JsonKey(name: 'statusCode') int? code,
            bool? status,
            @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
            @JsonKey(ignore: true) String? details,
            ServerFieldErrors? errors,
            @JsonKey(ignore: true) bool pop,
            @JsonKey(ignore: true) bool show,
            @JsonKey(ignore: true) Exception? exception)?
        error,
    TResult? Function(
            bool? status,
            @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
            @JsonKey(ignore: true) String? details,
            @JsonKey(ignore: true) bool pop)?
        info,
    TResult? Function(
            bool? status,
            @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
            @JsonKey(ignore: true) String? details,
            @JsonKey(ignore: true) bool pop)?
        success,
  }) {
    return success?.call(status, messageTxt, details, pop);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: 'statusCode') int? code,
            bool? status,
            @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
            @JsonKey(ignore: true) String? details,
            ServerFieldErrors? errors,
            @JsonKey(ignore: true) bool pop,
            @JsonKey(ignore: true) bool show,
            @JsonKey(ignore: true) Exception? exception)?
        error,
    TResult Function(
            bool? status,
            @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
            @JsonKey(ignore: true) String? details,
            @JsonKey(ignore: true) bool pop)?
        info,
    TResult Function(
            bool? status,
            @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
            @JsonKey(ignore: true) String? details,
            @JsonKey(ignore: true) bool pop)?
        success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(status, messageTxt, details, pop);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ErrorResponse value) error,
    required TResult Function(InfoResponseType value) info,
    required TResult Function(SuccessfulResponse value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ErrorResponse value)? error,
    TResult? Function(InfoResponseType value)? info,
    TResult? Function(SuccessfulResponse value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ErrorResponse value)? error,
    TResult Function(InfoResponseType value)? info,
    TResult Function(SuccessfulResponse value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SuccessfulResponseToJson(
      this,
    );
  }
}

abstract class SuccessfulResponse extends AnyResponse implements Success {
  const factory SuccessfulResponse(
      {final bool? status,
      @JsonKey(includeIfNull: false, name: 'message') final String? messageTxt,
      @JsonKey(ignore: true) final String? details,
      @JsonKey(ignore: true) final bool pop}) = _$SuccessfulResponse;
  const SuccessfulResponse._() : super._();

  factory SuccessfulResponse.fromJson(Map<String, dynamic> json) =
      _$SuccessfulResponse.fromJson;

  @override
  bool? get status;
  @override
  @JsonKey(includeIfNull: false, name: 'message')
  String? get messageTxt;
  @override
  @JsonKey(ignore: true)
  String? get details;
  @override
  @JsonKey(ignore: true)
  bool get pop;
  @override
  @JsonKey(ignore: true)
  _$$SuccessfulResponseCopyWith<_$SuccessfulResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
