// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of country.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Country {
  UniqueId<String?>? get id => throw _privateConstructorUsedError;
  BasicTextField get name => throw _privateConstructorUsedError;
  BasicTextField get iso => throw _privateConstructorUsedError;
  BasicTextField get dialCode => throw _privateConstructorUsedError;
  BasicTextField get flag => throw _privateConstructorUsedError;
  BasicTextField get currencyIcon => throw _privateConstructorUsedError;
  String? get locale => throw _privateConstructorUsedError;
  CurrencyType? get type => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CountryCopyWith<Country> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryCopyWith<$Res> {
  factory $CountryCopyWith(Country value, $Res Function(Country) then) =
      _$CountryCopyWithImpl<$Res, Country>;
  @useResult
  $Res call(
      {UniqueId<String?>? id,
      BasicTextField name,
      BasicTextField iso,
      BasicTextField dialCode,
      BasicTextField flag,
      BasicTextField currencyIcon,
      String? locale,
      CurrencyType? type});
}

/// @nodoc
class _$CountryCopyWithImpl<$Res, $Val extends Country>
    implements $CountryCopyWith<$Res> {
  _$CountryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? iso = null,
    Object? dialCode = null,
    Object? flag = null,
    Object? currencyIcon = null,
    Object? locale = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      iso: null == iso
          ? _value.iso
          : iso // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      dialCode: null == dialCode
          ? _value.dialCode
          : dialCode // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      flag: null == flag
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      currencyIcon: null == currencyIcon
          ? _value.currencyIcon
          : currencyIcon // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      locale: freezed == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CurrencyType?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CountryCopyWith<$Res> implements $CountryCopyWith<$Res> {
  factory _$$_CountryCopyWith(
          _$_Country value, $Res Function(_$_Country) then) =
      __$$_CountryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId<String?>? id,
      BasicTextField name,
      BasicTextField iso,
      BasicTextField dialCode,
      BasicTextField flag,
      BasicTextField currencyIcon,
      String? locale,
      CurrencyType? type});
}

/// @nodoc
class __$$_CountryCopyWithImpl<$Res>
    extends _$CountryCopyWithImpl<$Res, _$_Country>
    implements _$$_CountryCopyWith<$Res> {
  __$$_CountryCopyWithImpl(_$_Country _value, $Res Function(_$_Country) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? iso = null,
    Object? dialCode = null,
    Object? flag = null,
    Object? currencyIcon = null,
    Object? locale = freezed,
    Object? type = freezed,
  }) {
    return _then(_$_Country(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      iso: null == iso
          ? _value.iso
          : iso // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      dialCode: null == dialCode
          ? _value.dialCode
          : dialCode // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      flag: null == flag
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      currencyIcon: null == currencyIcon
          ? _value.currencyIcon
          : currencyIcon // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      locale: freezed == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CurrencyType?,
    ));
  }
}

/// @nodoc

class _$_Country extends _Country {
  const _$_Country(
      {this.id,
      required this.name,
      required this.iso,
      required this.dialCode,
      required this.flag,
      required this.currencyIcon,
      this.locale = 'en',
      this.type})
      : super._();

  @override
  final UniqueId<String?>? id;
  @override
  final BasicTextField name;
  @override
  final BasicTextField iso;
  @override
  final BasicTextField dialCode;
  @override
  final BasicTextField flag;
  @override
  final BasicTextField currencyIcon;
  @override
  @JsonKey()
  final String? locale;
  @override
  final CurrencyType? type;

  @override
  String toString() {
    return 'Country(id: $id, name: $name, iso: $iso, dialCode: $dialCode, flag: $flag, currencyIcon: $currencyIcon, locale: $locale, type: $type)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CountryCopyWith<_$_Country> get copyWith =>
      __$$_CountryCopyWithImpl<_$_Country>(this, _$identity);
}

abstract class _Country extends Country {
  const factory _Country(
      {final UniqueId<String?>? id,
      required final BasicTextField name,
      required final BasicTextField iso,
      required final BasicTextField dialCode,
      required final BasicTextField flag,
      required final BasicTextField currencyIcon,
      final String? locale,
      final CurrencyType? type}) = _$_Country;
  const _Country._() : super._();

  @override
  UniqueId<String?>? get id;
  @override
  BasicTextField get name;
  @override
  BasicTextField get iso;
  @override
  BasicTextField get dialCode;
  @override
  BasicTextField get flag;
  @override
  BasicTextField get currencyIcon;
  @override
  String? get locale;
  @override
  CurrencyType? get type;
  @override
  @JsonKey(ignore: true)
  _$$_CountryCopyWith<_$_Country> get copyWith =>
      throw _privateConstructorUsedError;
}
