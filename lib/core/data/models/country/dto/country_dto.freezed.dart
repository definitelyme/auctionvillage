// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of country_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CountryDTO _$CountryDTOFromJson(Map<String, dynamic> json) {
  return _CountryDTO.fromJson(json);
}

/// @nodoc
mixin _$CountryDTO {
  @HiveField(1)
  String? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  set id(String? value) => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get name => throw _privateConstructorUsedError;
  @HiveField(2)
  set name(String? value) => throw _privateConstructorUsedError;
  @HiveField(3)
  @JsonKey(name: 'code')
  String? get iso => throw _privateConstructorUsedError;
  @HiveField(3)
  @JsonKey(name: 'code')
  set iso(String? value) => throw _privateConstructorUsedError;
  @HiveField(4)
  @JsonKey(name: 'dialCode')
  String? get dialCode => throw _privateConstructorUsedError;
  @HiveField(4)
  @JsonKey(name: 'dialCode')
  set dialCode(String? value) => throw _privateConstructorUsedError;
  @HiveField(5)
  @JsonKey(name: 'flag')
  String? get flagUrl => throw _privateConstructorUsedError;
  @HiveField(5)
  @JsonKey(name: 'flag')
  set flagUrl(String? value) => throw _privateConstructorUsedError;
  @HiveField(6)
  @CurrencyTypeSerializer()
  CurrencyType? get currency => throw _privateConstructorUsedError;
  @HiveField(6)
  @CurrencyTypeSerializer()
  set currency(CurrencyType? value) => throw _privateConstructorUsedError;
  @HiveField(7)
  @JsonKey(name: 'currency_icon')
  String? get currencyIcon => throw _privateConstructorUsedError;
  @HiveField(7)
  @JsonKey(name: 'currency_icon')
  set currencyIcon(String? value) => throw _privateConstructorUsedError;
  @HiveField(8)
  String? get locale => throw _privateConstructorUsedError;
  @HiveField(8)
  set locale(String? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountryDTOCopyWith<CountryDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryDTOCopyWith<$Res> {
  factory $CountryDTOCopyWith(
          CountryDTO value, $Res Function(CountryDTO) then) =
      _$CountryDTOCopyWithImpl<$Res, CountryDTO>;
  @useResult
  $Res call(
      {@HiveField(1) String? id,
      @HiveField(2) String? name,
      @HiveField(3) @JsonKey(name: 'code') String? iso,
      @HiveField(4) @JsonKey(name: 'dialCode') String? dialCode,
      @HiveField(5) @JsonKey(name: 'flag') String? flagUrl,
      @HiveField(6) @CurrencyTypeSerializer() CurrencyType? currency,
      @HiveField(7) @JsonKey(name: 'currency_icon') String? currencyIcon,
      @HiveField(8) String? locale});
}

/// @nodoc
class _$CountryDTOCopyWithImpl<$Res, $Val extends CountryDTO>
    implements $CountryDTOCopyWith<$Res> {
  _$CountryDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? iso = freezed,
    Object? dialCode = freezed,
    Object? flagUrl = freezed,
    Object? currency = freezed,
    Object? currencyIcon = freezed,
    Object? locale = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      iso: freezed == iso
          ? _value.iso
          : iso // ignore: cast_nullable_to_non_nullable
              as String?,
      dialCode: freezed == dialCode
          ? _value.dialCode
          : dialCode // ignore: cast_nullable_to_non_nullable
              as String?,
      flagUrl: freezed == flagUrl
          ? _value.flagUrl
          : flagUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as CurrencyType?,
      currencyIcon: freezed == currencyIcon
          ? _value.currencyIcon
          : currencyIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      locale: freezed == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CountryDTOCopyWith<$Res>
    implements $CountryDTOCopyWith<$Res> {
  factory _$$_CountryDTOCopyWith(
          _$_CountryDTO value, $Res Function(_$_CountryDTO) then) =
      __$$_CountryDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(1) String? id,
      @HiveField(2) String? name,
      @HiveField(3) @JsonKey(name: 'code') String? iso,
      @HiveField(4) @JsonKey(name: 'dialCode') String? dialCode,
      @HiveField(5) @JsonKey(name: 'flag') String? flagUrl,
      @HiveField(6) @CurrencyTypeSerializer() CurrencyType? currency,
      @HiveField(7) @JsonKey(name: 'currency_icon') String? currencyIcon,
      @HiveField(8) String? locale});
}

/// @nodoc
class __$$_CountryDTOCopyWithImpl<$Res>
    extends _$CountryDTOCopyWithImpl<$Res, _$_CountryDTO>
    implements _$$_CountryDTOCopyWith<$Res> {
  __$$_CountryDTOCopyWithImpl(
      _$_CountryDTO _value, $Res Function(_$_CountryDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? iso = freezed,
    Object? dialCode = freezed,
    Object? flagUrl = freezed,
    Object? currency = freezed,
    Object? currencyIcon = freezed,
    Object? locale = freezed,
  }) {
    return _then(_$_CountryDTO(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      iso: freezed == iso
          ? _value.iso
          : iso // ignore: cast_nullable_to_non_nullable
              as String?,
      dialCode: freezed == dialCode
          ? _value.dialCode
          : dialCode // ignore: cast_nullable_to_non_nullable
              as String?,
      flagUrl: freezed == flagUrl
          ? _value.flagUrl
          : flagUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as CurrencyType?,
      currencyIcon: freezed == currencyIcon
          ? _value.currencyIcon
          : currencyIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      locale: freezed == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 6, adapterName: 'CountryDTOAdapter')
class _$_CountryDTO extends _CountryDTO with DiagnosticableTreeMixin {
  _$_CountryDTO(
      {@HiveField(1) this.id,
      @HiveField(2) this.name,
      @HiveField(3) @JsonKey(name: 'code') this.iso,
      @HiveField(4) @JsonKey(name: 'dialCode') this.dialCode,
      @HiveField(5) @JsonKey(name: 'flag') this.flagUrl,
      @HiveField(6) @CurrencyTypeSerializer() this.currency,
      @HiveField(7) @JsonKey(name: 'currency_icon') this.currencyIcon,
      @HiveField(8) this.locale})
      : super._();

  factory _$_CountryDTO.fromJson(Map<String, dynamic> json) =>
      _$$_CountryDTOFromJson(json);

  @override
  @HiveField(1)
  String? id;
  @override
  @HiveField(2)
  String? name;
  @override
  @HiveField(3)
  @JsonKey(name: 'code')
  String? iso;
  @override
  @HiveField(4)
  @JsonKey(name: 'dialCode')
  String? dialCode;
  @override
  @HiveField(5)
  @JsonKey(name: 'flag')
  String? flagUrl;
  @override
  @HiveField(6)
  @CurrencyTypeSerializer()
  CurrencyType? currency;
  @override
  @HiveField(7)
  @JsonKey(name: 'currency_icon')
  String? currencyIcon;
  @override
  @HiveField(8)
  String? locale;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CountryDTO(id: $id, name: $name, iso: $iso, dialCode: $dialCode, flagUrl: $flagUrl, currency: $currency, currencyIcon: $currencyIcon, locale: $locale)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CountryDTO'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('iso', iso))
      ..add(DiagnosticsProperty('dialCode', dialCode))
      ..add(DiagnosticsProperty('flagUrl', flagUrl))
      ..add(DiagnosticsProperty('currency', currency))
      ..add(DiagnosticsProperty('currencyIcon', currencyIcon))
      ..add(DiagnosticsProperty('locale', locale));
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CountryDTOCopyWith<_$_CountryDTO> get copyWith =>
      __$$_CountryDTOCopyWithImpl<_$_CountryDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CountryDTOToJson(
      this,
    );
  }
}

abstract class _CountryDTO extends CountryDTO {
  factory _CountryDTO(
      {@HiveField(1) String? id,
      @HiveField(2) String? name,
      @HiveField(3) @JsonKey(name: 'code') String? iso,
      @HiveField(4) @JsonKey(name: 'dialCode') String? dialCode,
      @HiveField(5) @JsonKey(name: 'flag') String? flagUrl,
      @HiveField(6) @CurrencyTypeSerializer() CurrencyType? currency,
      @HiveField(7) @JsonKey(name: 'currency_icon') String? currencyIcon,
      @HiveField(8) String? locale}) = _$_CountryDTO;
  _CountryDTO._() : super._();

  factory _CountryDTO.fromJson(Map<String, dynamic> json) =
      _$_CountryDTO.fromJson;

  @override
  @HiveField(1)
  String? get id;
  @HiveField(1)
  set id(String? value);
  @override
  @HiveField(2)
  String? get name;
  @HiveField(2)
  set name(String? value);
  @override
  @HiveField(3)
  @JsonKey(name: 'code')
  String? get iso;
  @HiveField(3)
  @JsonKey(name: 'code')
  set iso(String? value);
  @override
  @HiveField(4)
  @JsonKey(name: 'dialCode')
  String? get dialCode;
  @HiveField(4)
  @JsonKey(name: 'dialCode')
  set dialCode(String? value);
  @override
  @HiveField(5)
  @JsonKey(name: 'flag')
  String? get flagUrl;
  @HiveField(5)
  @JsonKey(name: 'flag')
  set flagUrl(String? value);
  @override
  @HiveField(6)
  @CurrencyTypeSerializer()
  CurrencyType? get currency;
  @HiveField(6)
  @CurrencyTypeSerializer()
  set currency(CurrencyType? value);
  @override
  @HiveField(7)
  @JsonKey(name: 'currency_icon')
  String? get currencyIcon;
  @HiveField(7)
  @JsonKey(name: 'currency_icon')
  set currencyIcon(String? value);
  @override
  @HiveField(8)
  String? get locale;
  @HiveField(8)
  set locale(String? value);
  @override
  @JsonKey(ignore: true)
  _$$_CountryDTOCopyWith<_$_CountryDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

CountryDTOList _$CountryDTOListFromJson(Map<String, dynamic> json) {
  return _CountryDTOList.fromJson(json);
}

/// @nodoc
mixin _$CountryDTOList {
  @JsonKey(includeIfNull: false)
  List<CountryDTO> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountryDTOListCopyWith<CountryDTOList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryDTOListCopyWith<$Res> {
  factory $CountryDTOListCopyWith(
          CountryDTOList value, $Res Function(CountryDTOList) then) =
      _$CountryDTOListCopyWithImpl<$Res, CountryDTOList>;
  @useResult
  $Res call({@JsonKey(includeIfNull: false) List<CountryDTO> data});
}

/// @nodoc
class _$CountryDTOListCopyWithImpl<$Res, $Val extends CountryDTOList>
    implements $CountryDTOListCopyWith<$Res> {
  _$CountryDTOListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CountryDTO>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CountryDTOListCopyWith<$Res>
    implements $CountryDTOListCopyWith<$Res> {
  factory _$$_CountryDTOListCopyWith(
          _$_CountryDTOList value, $Res Function(_$_CountryDTOList) then) =
      __$$_CountryDTOListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(includeIfNull: false) List<CountryDTO> data});
}

/// @nodoc
class __$$_CountryDTOListCopyWithImpl<$Res>
    extends _$CountryDTOListCopyWithImpl<$Res, _$_CountryDTOList>
    implements _$$_CountryDTOListCopyWith<$Res> {
  __$$_CountryDTOListCopyWithImpl(
      _$_CountryDTOList _value, $Res Function(_$_CountryDTOList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_CountryDTOList(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CountryDTO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CountryDTOList extends _CountryDTOList with DiagnosticableTreeMixin {
  const _$_CountryDTOList(
      {@JsonKey(includeIfNull: false) final List<CountryDTO> data = const []})
      : _data = data,
        super._();

  factory _$_CountryDTOList.fromJson(Map<String, dynamic> json) =>
      _$$_CountryDTOListFromJson(json);

  final List<CountryDTO> _data;
  @override
  @JsonKey(includeIfNull: false)
  List<CountryDTO> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CountryDTOList(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CountryDTOList'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CountryDTOList &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CountryDTOListCopyWith<_$_CountryDTOList> get copyWith =>
      __$$_CountryDTOListCopyWithImpl<_$_CountryDTOList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CountryDTOListToJson(
      this,
    );
  }
}

abstract class _CountryDTOList extends CountryDTOList {
  const factory _CountryDTOList(
          {@JsonKey(includeIfNull: false) final List<CountryDTO> data}) =
      _$_CountryDTOList;
  const _CountryDTOList._() : super._();

  factory _CountryDTOList.fromJson(Map<String, dynamic> json) =
      _$_CountryDTOList.fromJson;

  @override
  @JsonKey(includeIfNull: false)
  List<CountryDTO> get data;
  @override
  @JsonKey(ignore: true)
  _$$_CountryDTOListCopyWith<_$_CountryDTOList> get copyWith =>
      throw _privateConstructorUsedError;
}
