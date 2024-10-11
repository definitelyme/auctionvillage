// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of bank_dto.dataclass.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BankDTO _$BankDTOFromJson(Map<String, dynamic> json) {
  return _BankDTO.fromJson(json);
}

/// @nodoc
mixin _$BankDTO {
  String? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<BankDTOData> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BankDTOCopyWith<BankDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankDTOCopyWith<$Res> {
  factory $BankDTOCopyWith(BankDTO value, $Res Function(BankDTO) then) =
      _$BankDTOCopyWithImpl<$Res, BankDTO>;
  @useResult
  $Res call({String? status, String? message, List<BankDTOData> data});
}

/// @nodoc
class _$BankDTOCopyWithImpl<$Res, $Val extends BankDTO>
    implements $BankDTOCopyWith<$Res> {
  _$BankDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BankDTOData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BankDTOCopyWith<$Res> implements $BankDTOCopyWith<$Res> {
  factory _$$_BankDTOCopyWith(
          _$_BankDTO value, $Res Function(_$_BankDTO) then) =
      __$$_BankDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? status, String? message, List<BankDTOData> data});
}

/// @nodoc
class __$$_BankDTOCopyWithImpl<$Res>
    extends _$BankDTOCopyWithImpl<$Res, _$_BankDTO>
    implements _$$_BankDTOCopyWith<$Res> {
  __$$_BankDTOCopyWithImpl(_$_BankDTO _value, $Res Function(_$_BankDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(_$_BankDTO(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BankDTOData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BankDTO extends _BankDTO {
  const _$_BankDTO(
      {this.status, this.message, final List<BankDTOData> data = const []})
      : _data = data,
        super._();

  factory _$_BankDTO.fromJson(Map<String, dynamic> json) =>
      _$$_BankDTOFromJson(json);

  @override
  final String? status;
  @override
  final String? message;
  final List<BankDTOData> _data;
  @override
  @JsonKey()
  List<BankDTOData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'BankDTO(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BankDTO &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, message, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BankDTOCopyWith<_$_BankDTO> get copyWith =>
      __$$_BankDTOCopyWithImpl<_$_BankDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BankDTOToJson(
      this,
    );
  }
}

abstract class _BankDTO extends BankDTO {
  const factory _BankDTO(
      {final String? status,
      final String? message,
      final List<BankDTOData> data}) = _$_BankDTO;
  const _BankDTO._() : super._();

  factory _BankDTO.fromJson(Map<String, dynamic> json) = _$_BankDTO.fromJson;

  @override
  String? get status;
  @override
  String? get message;
  @override
  List<BankDTOData> get data;
  @override
  @JsonKey(ignore: true)
  _$$_BankDTOCopyWith<_$_BankDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

BankDTOData _$BankDTODataFromJson(Map<String, dynamic> json) {
  return _BankDTOData.fromJson(json);
}

/// @nodoc
mixin _$BankDTOData {
  @StringSerializer()
  String? get id => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get bank => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BankDTODataCopyWith<BankDTOData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankDTODataCopyWith<$Res> {
  factory $BankDTODataCopyWith(
          BankDTOData value, $Res Function(BankDTOData) then) =
      _$BankDTODataCopyWithImpl<$Res, BankDTOData>;
  @useResult
  $Res call(
      {@StringSerializer() String? id,
      String? code,
      @JsonKey(name: 'name') String? bank});
}

/// @nodoc
class _$BankDTODataCopyWithImpl<$Res, $Val extends BankDTOData>
    implements $BankDTODataCopyWith<$Res> {
  _$BankDTODataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? bank = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      bank: freezed == bank
          ? _value.bank
          : bank // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BankDTODataCopyWith<$Res>
    implements $BankDTODataCopyWith<$Res> {
  factory _$$_BankDTODataCopyWith(
          _$_BankDTOData value, $Res Function(_$_BankDTOData) then) =
      __$$_BankDTODataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@StringSerializer() String? id,
      String? code,
      @JsonKey(name: 'name') String? bank});
}

/// @nodoc
class __$$_BankDTODataCopyWithImpl<$Res>
    extends _$BankDTODataCopyWithImpl<$Res, _$_BankDTOData>
    implements _$$_BankDTODataCopyWith<$Res> {
  __$$_BankDTODataCopyWithImpl(
      _$_BankDTOData _value, $Res Function(_$_BankDTOData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? bank = freezed,
  }) {
    return _then(_$_BankDTOData(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      bank: freezed == bank
          ? _value.bank
          : bank // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BankDTOData extends _BankDTOData {
  const _$_BankDTOData(
      {@StringSerializer() this.id,
      this.code,
      @JsonKey(name: 'name') this.bank})
      : super._();

  factory _$_BankDTOData.fromJson(Map<String, dynamic> json) =>
      _$$_BankDTODataFromJson(json);

  @override
  @StringSerializer()
  final String? id;
  @override
  final String? code;
  @override
  @JsonKey(name: 'name')
  final String? bank;

  @override
  String toString() {
    return 'BankDTOData(id: $id, code: $code, bank: $bank)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BankDTOData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.bank, bank) || other.bank == bank));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, code, bank);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BankDTODataCopyWith<_$_BankDTOData> get copyWith =>
      __$$_BankDTODataCopyWithImpl<_$_BankDTOData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BankDTODataToJson(
      this,
    );
  }
}

abstract class _BankDTOData extends BankDTOData {
  const factory _BankDTOData(
      {@StringSerializer() final String? id,
      final String? code,
      @JsonKey(name: 'name') final String? bank}) = _$_BankDTOData;
  const _BankDTOData._() : super._();

  factory _BankDTOData.fromJson(Map<String, dynamic> json) =
      _$_BankDTOData.fromJson;

  @override
  @StringSerializer()
  String? get id;
  @override
  String? get code;
  @override
  @JsonKey(name: 'name')
  String? get bank;
  @override
  @JsonKey(ignore: true)
  _$$_BankDTODataCopyWith<_$_BankDTOData> get copyWith =>
      throw _privateConstructorUsedError;
}
