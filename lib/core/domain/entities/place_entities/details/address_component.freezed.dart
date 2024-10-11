// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of address_component.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddressComponent {
  BasicTextField get longName => throw _privateConstructorUsedError;
  BasicTextField get shortName => throw _privateConstructorUsedError;
  KtList<AddressComponentType> get types => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddressComponentCopyWith<AddressComponent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressComponentCopyWith<$Res> {
  factory $AddressComponentCopyWith(
          AddressComponent value, $Res Function(AddressComponent) then) =
      _$AddressComponentCopyWithImpl<$Res, AddressComponent>;
  @useResult
  $Res call(
      {BasicTextField longName,
      BasicTextField shortName,
      KtList<AddressComponentType> types});
}

/// @nodoc
class _$AddressComponentCopyWithImpl<$Res, $Val extends AddressComponent>
    implements $AddressComponentCopyWith<$Res> {
  _$AddressComponentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? longName = null,
    Object? shortName = null,
    Object? types = null,
  }) {
    return _then(_value.copyWith(
      longName: null == longName
          ? _value.longName
          : longName // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      shortName: null == shortName
          ? _value.shortName
          : shortName // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as KtList<AddressComponentType>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddressComponentCopyWith<$Res>
    implements $AddressComponentCopyWith<$Res> {
  factory _$$_AddressComponentCopyWith(
          _$_AddressComponent value, $Res Function(_$_AddressComponent) then) =
      __$$_AddressComponentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BasicTextField longName,
      BasicTextField shortName,
      KtList<AddressComponentType> types});
}

/// @nodoc
class __$$_AddressComponentCopyWithImpl<$Res>
    extends _$AddressComponentCopyWithImpl<$Res, _$_AddressComponent>
    implements _$$_AddressComponentCopyWith<$Res> {
  __$$_AddressComponentCopyWithImpl(
      _$_AddressComponent _value, $Res Function(_$_AddressComponent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? longName = null,
    Object? shortName = null,
    Object? types = null,
  }) {
    return _then(_$_AddressComponent(
      longName: null == longName
          ? _value.longName
          : longName // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      shortName: null == shortName
          ? _value.shortName
          : shortName // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as KtList<AddressComponentType>,
    ));
  }
}

/// @nodoc

class _$_AddressComponent extends _AddressComponent {
  const _$_AddressComponent(
      {required this.longName,
      required this.shortName,
      this.types = const KtList.empty()})
      : super._();

  @override
  final BasicTextField longName;
  @override
  final BasicTextField shortName;
  @override
  @JsonKey()
  final KtList<AddressComponentType> types;

  @override
  String toString() {
    return 'AddressComponent(longName: $longName, shortName: $shortName, types: $types)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddressComponent &&
            (identical(other.longName, longName) ||
                other.longName == longName) &&
            (identical(other.shortName, shortName) ||
                other.shortName == shortName) &&
            (identical(other.types, types) || other.types == types));
  }

  @override
  int get hashCode => Object.hash(runtimeType, longName, shortName, types);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddressComponentCopyWith<_$_AddressComponent> get copyWith =>
      __$$_AddressComponentCopyWithImpl<_$_AddressComponent>(this, _$identity);
}

abstract class _AddressComponent extends AddressComponent {
  const factory _AddressComponent(
      {required final BasicTextField longName,
      required final BasicTextField shortName,
      final KtList<AddressComponentType> types}) = _$_AddressComponent;
  const _AddressComponent._() : super._();

  @override
  BasicTextField get longName;
  @override
  BasicTextField get shortName;
  @override
  KtList<AddressComponentType> get types;
  @override
  @JsonKey(ignore: true)
  _$$_AddressComponentCopyWith<_$_AddressComponent> get copyWith =>
      throw _privateConstructorUsedError;
}
