// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of debit_card.entity.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DebitCard {
  UniqueId<String?> get id => throw _privateConstructorUsedError;
  bool get cardAdded => throw _privateConstructorUsedError;
  bool get pinAdded => throw _privateConstructorUsedError;
  EmailAddress get email => throw _privateConstructorUsedError;
  DebitCardBrand get brand => throw _privateConstructorUsedError;
  DebitCardName get cardName => throw _privateConstructorUsedError;
  DebitCardNumber get cardNumber => throw _privateConstructorUsedError;
  DebitCardExpiryDate get cardExpiryDate => throw _privateConstructorUsedError;
  DebitCardCVV get cardCVV => throw _privateConstructorUsedError;
  BasicTextField get masked => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DebitCardCopyWith<DebitCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DebitCardCopyWith<$Res> {
  factory $DebitCardCopyWith(DebitCard value, $Res Function(DebitCard) then) =
      _$DebitCardCopyWithImpl<$Res, DebitCard>;
  @useResult
  $Res call(
      {UniqueId<String?> id,
      bool cardAdded,
      bool pinAdded,
      EmailAddress email,
      DebitCardBrand brand,
      DebitCardName cardName,
      DebitCardNumber cardNumber,
      DebitCardExpiryDate cardExpiryDate,
      DebitCardCVV cardCVV,
      BasicTextField masked,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$DebitCardCopyWithImpl<$Res, $Val extends DebitCard>
    implements $DebitCardCopyWith<$Res> {
  _$DebitCardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cardAdded = null,
    Object? pinAdded = null,
    Object? email = null,
    Object? brand = null,
    Object? cardName = null,
    Object? cardNumber = null,
    Object? cardExpiryDate = null,
    Object? cardCVV = null,
    Object? masked = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      cardAdded: null == cardAdded
          ? _value.cardAdded
          : cardAdded // ignore: cast_nullable_to_non_nullable
              as bool,
      pinAdded: null == pinAdded
          ? _value.pinAdded
          : pinAdded // ignore: cast_nullable_to_non_nullable
              as bool,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as DebitCardBrand,
      cardName: null == cardName
          ? _value.cardName
          : cardName // ignore: cast_nullable_to_non_nullable
              as DebitCardName,
      cardNumber: null == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as DebitCardNumber,
      cardExpiryDate: null == cardExpiryDate
          ? _value.cardExpiryDate
          : cardExpiryDate // ignore: cast_nullable_to_non_nullable
              as DebitCardExpiryDate,
      cardCVV: null == cardCVV
          ? _value.cardCVV
          : cardCVV // ignore: cast_nullable_to_non_nullable
              as DebitCardCVV,
      masked: null == masked
          ? _value.masked
          : masked // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DebitCardCopyWith<$Res> implements $DebitCardCopyWith<$Res> {
  factory _$$_DebitCardCopyWith(
          _$_DebitCard value, $Res Function(_$_DebitCard) then) =
      __$$_DebitCardCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId<String?> id,
      bool cardAdded,
      bool pinAdded,
      EmailAddress email,
      DebitCardBrand brand,
      DebitCardName cardName,
      DebitCardNumber cardNumber,
      DebitCardExpiryDate cardExpiryDate,
      DebitCardCVV cardCVV,
      BasicTextField masked,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$$_DebitCardCopyWithImpl<$Res>
    extends _$DebitCardCopyWithImpl<$Res, _$_DebitCard>
    implements _$$_DebitCardCopyWith<$Res> {
  __$$_DebitCardCopyWithImpl(
      _$_DebitCard _value, $Res Function(_$_DebitCard) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cardAdded = null,
    Object? pinAdded = null,
    Object? email = null,
    Object? brand = null,
    Object? cardName = null,
    Object? cardNumber = null,
    Object? cardExpiryDate = null,
    Object? cardCVV = null,
    Object? masked = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_DebitCard(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      cardAdded: null == cardAdded
          ? _value.cardAdded
          : cardAdded // ignore: cast_nullable_to_non_nullable
              as bool,
      pinAdded: null == pinAdded
          ? _value.pinAdded
          : pinAdded // ignore: cast_nullable_to_non_nullable
              as bool,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as DebitCardBrand,
      cardName: null == cardName
          ? _value.cardName
          : cardName // ignore: cast_nullable_to_non_nullable
              as DebitCardName,
      cardNumber: null == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as DebitCardNumber,
      cardExpiryDate: null == cardExpiryDate
          ? _value.cardExpiryDate
          : cardExpiryDate // ignore: cast_nullable_to_non_nullable
              as DebitCardExpiryDate,
      cardCVV: null == cardCVV
          ? _value.cardCVV
          : cardCVV // ignore: cast_nullable_to_non_nullable
              as DebitCardCVV,
      masked: null == masked
          ? _value.masked
          : masked // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_DebitCard extends _DebitCard {
  const _$_DebitCard(
      {required this.id,
      this.cardAdded = false,
      this.pinAdded = false,
      required this.email,
      this.brand = DebitCardBrand.none,
      required this.cardName,
      required this.cardNumber,
      required this.cardExpiryDate,
      required this.cardCVV,
      required this.masked,
      this.createdAt,
      this.updatedAt})
      : super._();

  @override
  final UniqueId<String?> id;
  @override
  @JsonKey()
  final bool cardAdded;
  @override
  @JsonKey()
  final bool pinAdded;
  @override
  final EmailAddress email;
  @override
  @JsonKey()
  final DebitCardBrand brand;
  @override
  final DebitCardName cardName;
  @override
  final DebitCardNumber cardNumber;
  @override
  final DebitCardExpiryDate cardExpiryDate;
  @override
  final DebitCardCVV cardCVV;
  @override
  final BasicTextField masked;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'DebitCard(id: $id, cardAdded: $cardAdded, pinAdded: $pinAdded, email: $email, brand: $brand, cardName: $cardName, cardNumber: $cardNumber, cardExpiryDate: $cardExpiryDate, cardCVV: $cardCVV, masked: $masked, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DebitCard &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.cardAdded, cardAdded) ||
                other.cardAdded == cardAdded) &&
            (identical(other.pinAdded, pinAdded) ||
                other.pinAdded == pinAdded) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.cardName, cardName) ||
                other.cardName == cardName) &&
            (identical(other.cardNumber, cardNumber) ||
                other.cardNumber == cardNumber) &&
            (identical(other.cardExpiryDate, cardExpiryDate) ||
                other.cardExpiryDate == cardExpiryDate) &&
            (identical(other.cardCVV, cardCVV) || other.cardCVV == cardCVV) &&
            (identical(other.masked, masked) || other.masked == masked) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      cardAdded,
      pinAdded,
      email,
      brand,
      cardName,
      cardNumber,
      cardExpiryDate,
      cardCVV,
      masked,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DebitCardCopyWith<_$_DebitCard> get copyWith =>
      __$$_DebitCardCopyWithImpl<_$_DebitCard>(this, _$identity);
}

abstract class _DebitCard extends DebitCard {
  const factory _DebitCard(
      {required final UniqueId<String?> id,
      final bool cardAdded,
      final bool pinAdded,
      required final EmailAddress email,
      final DebitCardBrand brand,
      required final DebitCardName cardName,
      required final DebitCardNumber cardNumber,
      required final DebitCardExpiryDate cardExpiryDate,
      required final DebitCardCVV cardCVV,
      required final BasicTextField masked,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$_DebitCard;
  const _DebitCard._() : super._();

  @override
  UniqueId<String?> get id;
  @override
  bool get cardAdded;
  @override
  bool get pinAdded;
  @override
  EmailAddress get email;
  @override
  DebitCardBrand get brand;
  @override
  DebitCardName get cardName;
  @override
  DebitCardNumber get cardNumber;
  @override
  DebitCardExpiryDate get cardExpiryDate;
  @override
  DebitCardCVV get cardCVV;
  @override
  BasicTextField get masked;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_DebitCardCopyWith<_$_DebitCard> get copyWith =>
      throw _privateConstructorUsedError;
}
