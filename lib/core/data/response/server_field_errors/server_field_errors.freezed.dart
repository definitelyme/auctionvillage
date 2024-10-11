// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of server_field_errors.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ServerFieldErrors _$ServerFieldErrorsFromJson(Map<String, dynamic> json) {
  return _ServerFieldErrors.fromJson(json);
}

/// @nodoc
mixin _$ServerFieldErrors {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  _ErrorMessage? get messages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerFieldErrorsCopyWith<ServerFieldErrors> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerFieldErrorsCopyWith<$Res> {
  factory $ServerFieldErrorsCopyWith(
          ServerFieldErrors value, $Res Function(ServerFieldErrors) then) =
      _$ServerFieldErrorsCopyWithImpl<$Res, ServerFieldErrors>;
  @useResult
  $Res call({int? code, String? message, _ErrorMessage? messages});

  _$ErrorMessageCopyWith<$Res>? get messages;
}

/// @nodoc
class _$ServerFieldErrorsCopyWithImpl<$Res, $Val extends ServerFieldErrors>
    implements $ServerFieldErrorsCopyWith<$Res> {
  _$ServerFieldErrorsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? messages = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      messages: freezed == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as _ErrorMessage?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  _$ErrorMessageCopyWith<$Res>? get messages {
    if (_value.messages == null) {
      return null;
    }

    return _$ErrorMessageCopyWith<$Res>(_value.messages!, (value) {
      return _then(_value.copyWith(messages: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ServerFieldErrorsCopyWith<$Res>
    implements $ServerFieldErrorsCopyWith<$Res> {
  factory _$$_ServerFieldErrorsCopyWith(_$_ServerFieldErrors value,
          $Res Function(_$_ServerFieldErrors) then) =
      __$$_ServerFieldErrorsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, _ErrorMessage? messages});

  @override
  _$ErrorMessageCopyWith<$Res>? get messages;
}

/// @nodoc
class __$$_ServerFieldErrorsCopyWithImpl<$Res>
    extends _$ServerFieldErrorsCopyWithImpl<$Res, _$_ServerFieldErrors>
    implements _$$_ServerFieldErrorsCopyWith<$Res> {
  __$$_ServerFieldErrorsCopyWithImpl(
      _$_ServerFieldErrors _value, $Res Function(_$_ServerFieldErrors) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? messages = freezed,
  }) {
    return _then(_$_ServerFieldErrors(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      messages: freezed == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as _ErrorMessage?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ServerFieldErrors extends _ServerFieldErrors {
  const _$_ServerFieldErrors({this.code, this.message, this.messages})
      : super._();

  factory _$_ServerFieldErrors.fromJson(Map<String, dynamic> json) =>
      _$$_ServerFieldErrorsFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final _ErrorMessage? messages;

  @override
  String toString() {
    return 'ServerFieldErrors(code: $code, message: $message, messages: $messages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServerFieldErrors &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.messages, messages) ||
                other.messages == messages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, messages);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServerFieldErrorsCopyWith<_$_ServerFieldErrors> get copyWith =>
      __$$_ServerFieldErrorsCopyWithImpl<_$_ServerFieldErrors>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ServerFieldErrorsToJson(
      this,
    );
  }
}

abstract class _ServerFieldErrors extends ServerFieldErrors {
  const factory _ServerFieldErrors(
      {final int? code,
      final String? message,
      final _ErrorMessage? messages}) = _$_ServerFieldErrors;
  const _ServerFieldErrors._() : super._();

  factory _ServerFieldErrors.fromJson(Map<String, dynamic> json) =
      _$_ServerFieldErrors.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  _ErrorMessage? get messages;
  @override
  @JsonKey(ignore: true)
  _$$_ServerFieldErrorsCopyWith<_$_ServerFieldErrors> get copyWith =>
      throw _privateConstructorUsedError;
}

_ErrorMessage _$_ErrorMessageFromJson(Map<String, dynamic> json) {
  return __ErrorMessage.fromJson(json);
}

/// @nodoc
mixin _$_ErrorMessage {
  List<String?>? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_name')
  List<String?>? get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  List<String?>? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  List<String?>? get lastName => throw _privateConstructorUsedError;
  List<String?>? get token => throw _privateConstructorUsedError;
  List<String?>? get email => throw _privateConstructorUsedError;
  List<String?>? get gender => throw _privateConstructorUsedError;
  List<String?>? get age => throw _privateConstructorUsedError;
  List<String?>? get phone => throw _privateConstructorUsedError;
  List<String?>? get password => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_password')
  List<String?>? get oldPassword => throw _privateConstructorUsedError;
  @JsonKey(name: 'password_confirmation')
  List<String?>? get passwordConfirmation => throw _privateConstructorUsedError;
  List<String?>? get code => throw _privateConstructorUsedError;
  List<String?>? get type => throw _privateConstructorUsedError;
  List<String?>? get description => throw _privateConstructorUsedError;
  List<String?>? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'currency_id')
  List<String?>? get currencyId => throw _privateConstructorUsedError;
  List<String?>? get country => throw _privateConstructorUsedError;
  @JsonKey(name: 'bank_id')
  List<String?>? get bankId => throw _privateConstructorUsedError;
  List<String?>? get plan => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_method')
  List<String?>? get paymentMethod => throw _privateConstructorUsedError;
  @JsonKey(name: 'country_id')
  List<String?>? get countryId => throw _privateConstructorUsedError;
  List<String?>? get state => throw _privateConstructorUsedError;
  List<String?>? get basePrice => throw _privateConstructorUsedError;
  List<String?>? get reservedPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'item_name')
  List<String?>? get itemName => throw _privateConstructorUsedError;
  List<String?>? get quantity => throw _privateConstructorUsedError;
  List<String?>? get images => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  List<String?>? get supportMessage => throw _privateConstructorUsedError;
  @JsonKey(name: 'transactionPin')
  List<String?>? get transactionPin => throw _privateConstructorUsedError;
  @JsonKey(name: 'confirmTransactionPin')
  List<String?>? get confirmTransactionPin =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ErrorMessageCopyWith<_ErrorMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorMessageCopyWith<$Res> {
  factory _$ErrorMessageCopyWith(
          _ErrorMessage value, $Res Function(_ErrorMessage) then) =
      __$ErrorMessageCopyWithImpl<$Res, _ErrorMessage>;
  @useResult
  $Res call(
      {List<String?>? name,
      @JsonKey(name: 'full_name')
          List<String?>? fullName,
      @JsonKey(name: 'first_name')
          List<String?>? firstName,
      @JsonKey(name: 'last_name')
          List<String?>? lastName,
      List<String?>? token,
      List<String?>? email,
      List<String?>? gender,
      List<String?>? age,
      List<String?>? phone,
      List<String?>? password,
      @JsonKey(name: 'current_password')
          List<String?>? oldPassword,
      @JsonKey(name: 'password_confirmation')
          List<String?>? passwordConfirmation,
      List<String?>? code,
      List<String?>? type,
      List<String?>? description,
      List<String?>? amount,
      @JsonKey(name: 'currency_id')
          List<String?>? currencyId,
      List<String?>? country,
      @JsonKey(name: 'bank_id')
          List<String?>? bankId,
      List<String?>? plan,
      @JsonKey(name: 'payment_method')
          List<String?>? paymentMethod,
      @JsonKey(name: 'country_id')
          List<String?>? countryId,
      List<String?>? state,
      List<String?>? basePrice,
      List<String?>? reservedPrice,
      @JsonKey(name: 'item_name')
          List<String?>? itemName,
      List<String?>? quantity,
      List<String?>? images,
      @JsonKey(name: 'message')
          List<String?>? supportMessage,
      @JsonKey(name: 'transactionPin')
          List<String?>? transactionPin,
      @JsonKey(name: 'confirmTransactionPin')
          List<String?>? confirmTransactionPin});
}

/// @nodoc
class __$ErrorMessageCopyWithImpl<$Res, $Val extends _ErrorMessage>
    implements _$ErrorMessageCopyWith<$Res> {
  __$ErrorMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? fullName = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? token = freezed,
    Object? email = freezed,
    Object? gender = freezed,
    Object? age = freezed,
    Object? phone = freezed,
    Object? password = freezed,
    Object? oldPassword = freezed,
    Object? passwordConfirmation = freezed,
    Object? code = freezed,
    Object? type = freezed,
    Object? description = freezed,
    Object? amount = freezed,
    Object? currencyId = freezed,
    Object? country = freezed,
    Object? bankId = freezed,
    Object? plan = freezed,
    Object? paymentMethod = freezed,
    Object? countryId = freezed,
    Object? state = freezed,
    Object? basePrice = freezed,
    Object? reservedPrice = freezed,
    Object? itemName = freezed,
    Object? quantity = freezed,
    Object? images = freezed,
    Object? supportMessage = freezed,
    Object? transactionPin = freezed,
    Object? confirmTransactionPin = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      oldPassword: freezed == oldPassword
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      passwordConfirmation: freezed == passwordConfirmation
          ? _value.passwordConfirmation
          : passwordConfirmation // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      currencyId: freezed == currencyId
          ? _value.currencyId
          : currencyId // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      bankId: freezed == bankId
          ? _value.bankId
          : bankId // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      plan: freezed == plan
          ? _value.plan
          : plan // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      countryId: freezed == countryId
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      basePrice: freezed == basePrice
          ? _value.basePrice
          : basePrice // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      reservedPrice: freezed == reservedPrice
          ? _value.reservedPrice
          : reservedPrice // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      itemName: freezed == itemName
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      supportMessage: freezed == supportMessage
          ? _value.supportMessage
          : supportMessage // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      transactionPin: freezed == transactionPin
          ? _value.transactionPin
          : transactionPin // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      confirmTransactionPin: freezed == confirmTransactionPin
          ? _value.confirmTransactionPin
          : confirmTransactionPin // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$__ErrorMessageCopyWith<$Res>
    implements _$ErrorMessageCopyWith<$Res> {
  factory _$$__ErrorMessageCopyWith(
          _$__ErrorMessage value, $Res Function(_$__ErrorMessage) then) =
      __$$__ErrorMessageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String?>? name,
      @JsonKey(name: 'full_name')
          List<String?>? fullName,
      @JsonKey(name: 'first_name')
          List<String?>? firstName,
      @JsonKey(name: 'last_name')
          List<String?>? lastName,
      List<String?>? token,
      List<String?>? email,
      List<String?>? gender,
      List<String?>? age,
      List<String?>? phone,
      List<String?>? password,
      @JsonKey(name: 'current_password')
          List<String?>? oldPassword,
      @JsonKey(name: 'password_confirmation')
          List<String?>? passwordConfirmation,
      List<String?>? code,
      List<String?>? type,
      List<String?>? description,
      List<String?>? amount,
      @JsonKey(name: 'currency_id')
          List<String?>? currencyId,
      List<String?>? country,
      @JsonKey(name: 'bank_id')
          List<String?>? bankId,
      List<String?>? plan,
      @JsonKey(name: 'payment_method')
          List<String?>? paymentMethod,
      @JsonKey(name: 'country_id')
          List<String?>? countryId,
      List<String?>? state,
      List<String?>? basePrice,
      List<String?>? reservedPrice,
      @JsonKey(name: 'item_name')
          List<String?>? itemName,
      List<String?>? quantity,
      List<String?>? images,
      @JsonKey(name: 'message')
          List<String?>? supportMessage,
      @JsonKey(name: 'transactionPin')
          List<String?>? transactionPin,
      @JsonKey(name: 'confirmTransactionPin')
          List<String?>? confirmTransactionPin});
}

/// @nodoc
class __$$__ErrorMessageCopyWithImpl<$Res>
    extends __$ErrorMessageCopyWithImpl<$Res, _$__ErrorMessage>
    implements _$$__ErrorMessageCopyWith<$Res> {
  __$$__ErrorMessageCopyWithImpl(
      _$__ErrorMessage _value, $Res Function(_$__ErrorMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? fullName = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? token = freezed,
    Object? email = freezed,
    Object? gender = freezed,
    Object? age = freezed,
    Object? phone = freezed,
    Object? password = freezed,
    Object? oldPassword = freezed,
    Object? passwordConfirmation = freezed,
    Object? code = freezed,
    Object? type = freezed,
    Object? description = freezed,
    Object? amount = freezed,
    Object? currencyId = freezed,
    Object? country = freezed,
    Object? bankId = freezed,
    Object? plan = freezed,
    Object? paymentMethod = freezed,
    Object? countryId = freezed,
    Object? state = freezed,
    Object? basePrice = freezed,
    Object? reservedPrice = freezed,
    Object? itemName = freezed,
    Object? quantity = freezed,
    Object? images = freezed,
    Object? supportMessage = freezed,
    Object? transactionPin = freezed,
    Object? confirmTransactionPin = freezed,
  }) {
    return _then(_$__ErrorMessage(
      name: freezed == name
          ? _value._name
          : name // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      fullName: freezed == fullName
          ? _value._fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      firstName: freezed == firstName
          ? _value._firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      lastName: freezed == lastName
          ? _value._lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      token: freezed == token
          ? _value._token
          : token // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      email: freezed == email
          ? _value._email
          : email // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      gender: freezed == gender
          ? _value._gender
          : gender // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      age: freezed == age
          ? _value._age
          : age // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      phone: freezed == phone
          ? _value._phone
          : phone // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      password: freezed == password
          ? _value._password
          : password // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      oldPassword: freezed == oldPassword
          ? _value._oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      passwordConfirmation: freezed == passwordConfirmation
          ? _value._passwordConfirmation
          : passwordConfirmation // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      code: freezed == code
          ? _value._code
          : code // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      type: freezed == type
          ? _value._type
          : type // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      description: freezed == description
          ? _value._description
          : description // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      amount: freezed == amount
          ? _value._amount
          : amount // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      currencyId: freezed == currencyId
          ? _value._currencyId
          : currencyId // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      country: freezed == country
          ? _value._country
          : country // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      bankId: freezed == bankId
          ? _value._bankId
          : bankId // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      plan: freezed == plan
          ? _value._plan
          : plan // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      paymentMethod: freezed == paymentMethod
          ? _value._paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      countryId: freezed == countryId
          ? _value._countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      state: freezed == state
          ? _value._state
          : state // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      basePrice: freezed == basePrice
          ? _value._basePrice
          : basePrice // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      reservedPrice: freezed == reservedPrice
          ? _value._reservedPrice
          : reservedPrice // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      itemName: freezed == itemName
          ? _value._itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      quantity: freezed == quantity
          ? _value._quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      supportMessage: freezed == supportMessage
          ? _value._supportMessage
          : supportMessage // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      transactionPin: freezed == transactionPin
          ? _value._transactionPin
          : transactionPin // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      confirmTransactionPin: freezed == confirmTransactionPin
          ? _value._confirmTransactionPin
          : confirmTransactionPin // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$__ErrorMessage extends __ErrorMessage {
  const _$__ErrorMessage(
      {final List<String?>? name,
      @JsonKey(name: 'full_name')
          final List<String?>? fullName,
      @JsonKey(name: 'first_name')
          final List<String?>? firstName,
      @JsonKey(name: 'last_name')
          final List<String?>? lastName,
      final List<String?>? token,
      final List<String?>? email,
      final List<String?>? gender,
      final List<String?>? age,
      final List<String?>? phone,
      final List<String?>? password,
      @JsonKey(name: 'current_password')
          final List<String?>? oldPassword,
      @JsonKey(name: 'password_confirmation')
          final List<String?>? passwordConfirmation,
      final List<String?>? code,
      final List<String?>? type,
      final List<String?>? description,
      final List<String?>? amount,
      @JsonKey(name: 'currency_id')
          final List<String?>? currencyId,
      final List<String?>? country,
      @JsonKey(name: 'bank_id')
          final List<String?>? bankId,
      final List<String?>? plan,
      @JsonKey(name: 'payment_method')
          final List<String?>? paymentMethod,
      @JsonKey(name: 'country_id')
          final List<String?>? countryId,
      final List<String?>? state,
      final List<String?>? basePrice,
      final List<String?>? reservedPrice,
      @JsonKey(name: 'item_name')
          final List<String?>? itemName,
      final List<String?>? quantity,
      final List<String?>? images,
      @JsonKey(name: 'message')
          final List<String?>? supportMessage,
      @JsonKey(name: 'transactionPin')
          final List<String?>? transactionPin,
      @JsonKey(name: 'confirmTransactionPin')
          final List<String?>? confirmTransactionPin})
      : _name = name,
        _fullName = fullName,
        _firstName = firstName,
        _lastName = lastName,
        _token = token,
        _email = email,
        _gender = gender,
        _age = age,
        _phone = phone,
        _password = password,
        _oldPassword = oldPassword,
        _passwordConfirmation = passwordConfirmation,
        _code = code,
        _type = type,
        _description = description,
        _amount = amount,
        _currencyId = currencyId,
        _country = country,
        _bankId = bankId,
        _plan = plan,
        _paymentMethod = paymentMethod,
        _countryId = countryId,
        _state = state,
        _basePrice = basePrice,
        _reservedPrice = reservedPrice,
        _itemName = itemName,
        _quantity = quantity,
        _images = images,
        _supportMessage = supportMessage,
        _transactionPin = transactionPin,
        _confirmTransactionPin = confirmTransactionPin,
        super._();

  factory _$__ErrorMessage.fromJson(Map<String, dynamic> json) =>
      _$$__ErrorMessageFromJson(json);

  final List<String?>? _name;
  @override
  List<String?>? get name {
    final value = _name;
    if (value == null) return null;
    if (_name is EqualUnmodifiableListView) return _name;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String?>? _fullName;
  @override
  @JsonKey(name: 'full_name')
  List<String?>? get fullName {
    final value = _fullName;
    if (value == null) return null;
    if (_fullName is EqualUnmodifiableListView) return _fullName;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String?>? _firstName;
  @override
  @JsonKey(name: 'first_name')
  List<String?>? get firstName {
    final value = _firstName;
    if (value == null) return null;
    if (_firstName is EqualUnmodifiableListView) return _firstName;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String?>? _lastName;
  @override
  @JsonKey(name: 'last_name')
  List<String?>? get lastName {
    final value = _lastName;
    if (value == null) return null;
    if (_lastName is EqualUnmodifiableListView) return _lastName;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String?>? _token;
  @override
  List<String?>? get token {
    final value = _token;
    if (value == null) return null;
    if (_token is EqualUnmodifiableListView) return _token;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String?>? _email;
  @override
  List<String?>? get email {
    final value = _email;
    if (value == null) return null;
    if (_email is EqualUnmodifiableListView) return _email;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String?>? _gender;
  @override
  List<String?>? get gender {
    final value = _gender;
    if (value == null) return null;
    if (_gender is EqualUnmodifiableListView) return _gender;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String?>? _age;
  @override
  List<String?>? get age {
    final value = _age;
    if (value == null) return null;
    if (_age is EqualUnmodifiableListView) return _age;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String?>? _phone;
  @override
  List<String?>? get phone {
    final value = _phone;
    if (value == null) return null;
    if (_phone is EqualUnmodifiableListView) return _phone;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String?>? _password;
  @override
  List<String?>? get password {
    final value = _password;
    if (value == null) return null;
    if (_password is EqualUnmodifiableListView) return _password;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String?>? _oldPassword;
  @override
  @JsonKey(name: 'current_password')
  List<String?>? get oldPassword {
    final value = _oldPassword;
    if (value == null) return null;
    if (_oldPassword is EqualUnmodifiableListView) return _oldPassword;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String?>? _passwordConfirmation;
  @override
  @JsonKey(name: 'password_confirmation')
  List<String?>? get passwordConfirmation {
    final value = _passwordConfirmation;
    if (value == null) return null;
    if (_passwordConfirmation is EqualUnmodifiableListView)
      return _passwordConfirmation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String?>? _code;
  @override
  List<String?>? get code {
    final value = _code;
    if (value == null) return null;
    if (_code is EqualUnmodifiableListView) return _code;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String?>? _type;
  @override
  List<String?>? get type {
    final value = _type;
    if (value == null) return null;
    if (_type is EqualUnmodifiableListView) return _type;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String?>? _description;
  @override
  List<String?>? get description {
    final value = _description;
    if (value == null) return null;
    if (_description is EqualUnmodifiableListView) return _description;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String?>? _amount;
  @override
  List<String?>? get amount {
    final value = _amount;
    if (value == null) return null;
    if (_amount is EqualUnmodifiableListView) return _amount;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String?>? _currencyId;
  @override
  @JsonKey(name: 'currency_id')
  List<String?>? get currencyId {
    final value = _currencyId;
    if (value == null) return null;
    if (_currencyId is EqualUnmodifiableListView) return _currencyId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String?>? _country;
  @override
  List<String?>? get country {
    final value = _country;
    if (value == null) return null;
    if (_country is EqualUnmodifiableListView) return _country;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String?>? _bankId;
  @override
  @JsonKey(name: 'bank_id')
  List<String?>? get bankId {
    final value = _bankId;
    if (value == null) return null;
    if (_bankId is EqualUnmodifiableListView) return _bankId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String?>? _plan;
  @override
  List<String?>? get plan {
    final value = _plan;
    if (value == null) return null;
    if (_plan is EqualUnmodifiableListView) return _plan;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String?>? _paymentMethod;
  @override
  @JsonKey(name: 'payment_method')
  List<String?>? get paymentMethod {
    final value = _paymentMethod;
    if (value == null) return null;
    if (_paymentMethod is EqualUnmodifiableListView) return _paymentMethod;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String?>? _countryId;
  @override
  @JsonKey(name: 'country_id')
  List<String?>? get countryId {
    final value = _countryId;
    if (value == null) return null;
    if (_countryId is EqualUnmodifiableListView) return _countryId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String?>? _state;
  @override
  List<String?>? get state {
    final value = _state;
    if (value == null) return null;
    if (_state is EqualUnmodifiableListView) return _state;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String?>? _basePrice;
  @override
  List<String?>? get basePrice {
    final value = _basePrice;
    if (value == null) return null;
    if (_basePrice is EqualUnmodifiableListView) return _basePrice;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String?>? _reservedPrice;
  @override
  List<String?>? get reservedPrice {
    final value = _reservedPrice;
    if (value == null) return null;
    if (_reservedPrice is EqualUnmodifiableListView) return _reservedPrice;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String?>? _itemName;
  @override
  @JsonKey(name: 'item_name')
  List<String?>? get itemName {
    final value = _itemName;
    if (value == null) return null;
    if (_itemName is EqualUnmodifiableListView) return _itemName;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String?>? _quantity;
  @override
  List<String?>? get quantity {
    final value = _quantity;
    if (value == null) return null;
    if (_quantity is EqualUnmodifiableListView) return _quantity;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String?>? _images;
  @override
  List<String?>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String?>? _supportMessage;
  @override
  @JsonKey(name: 'message')
  List<String?>? get supportMessage {
    final value = _supportMessage;
    if (value == null) return null;
    if (_supportMessage is EqualUnmodifiableListView) return _supportMessage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String?>? _transactionPin;
  @override
  @JsonKey(name: 'transactionPin')
  List<String?>? get transactionPin {
    final value = _transactionPin;
    if (value == null) return null;
    if (_transactionPin is EqualUnmodifiableListView) return _transactionPin;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String?>? _confirmTransactionPin;
  @override
  @JsonKey(name: 'confirmTransactionPin')
  List<String?>? get confirmTransactionPin {
    final value = _confirmTransactionPin;
    if (value == null) return null;
    if (_confirmTransactionPin is EqualUnmodifiableListView)
      return _confirmTransactionPin;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return '_ErrorMessage(name: $name, fullName: $fullName, firstName: $firstName, lastName: $lastName, token: $token, email: $email, gender: $gender, age: $age, phone: $phone, password: $password, oldPassword: $oldPassword, passwordConfirmation: $passwordConfirmation, code: $code, type: $type, description: $description, amount: $amount, currencyId: $currencyId, country: $country, bankId: $bankId, plan: $plan, paymentMethod: $paymentMethod, countryId: $countryId, state: $state, basePrice: $basePrice, reservedPrice: $reservedPrice, itemName: $itemName, quantity: $quantity, images: $images, supportMessage: $supportMessage, transactionPin: $transactionPin, confirmTransactionPin: $confirmTransactionPin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$__ErrorMessage &&
            const DeepCollectionEquality().equals(other._name, _name) &&
            const DeepCollectionEquality().equals(other._fullName, _fullName) &&
            const DeepCollectionEquality()
                .equals(other._firstName, _firstName) &&
            const DeepCollectionEquality().equals(other._lastName, _lastName) &&
            const DeepCollectionEquality().equals(other._token, _token) &&
            const DeepCollectionEquality().equals(other._email, _email) &&
            const DeepCollectionEquality().equals(other._gender, _gender) &&
            const DeepCollectionEquality().equals(other._age, _age) &&
            const DeepCollectionEquality().equals(other._phone, _phone) &&
            const DeepCollectionEquality().equals(other._password, _password) &&
            const DeepCollectionEquality()
                .equals(other._oldPassword, _oldPassword) &&
            const DeepCollectionEquality()
                .equals(other._passwordConfirmation, _passwordConfirmation) &&
            const DeepCollectionEquality().equals(other._code, _code) &&
            const DeepCollectionEquality().equals(other._type, _type) &&
            const DeepCollectionEquality()
                .equals(other._description, _description) &&
            const DeepCollectionEquality().equals(other._amount, _amount) &&
            const DeepCollectionEquality()
                .equals(other._currencyId, _currencyId) &&
            const DeepCollectionEquality().equals(other._country, _country) &&
            const DeepCollectionEquality().equals(other._bankId, _bankId) &&
            const DeepCollectionEquality().equals(other._plan, _plan) &&
            const DeepCollectionEquality()
                .equals(other._paymentMethod, _paymentMethod) &&
            const DeepCollectionEquality()
                .equals(other._countryId, _countryId) &&
            const DeepCollectionEquality().equals(other._state, _state) &&
            const DeepCollectionEquality()
                .equals(other._basePrice, _basePrice) &&
            const DeepCollectionEquality()
                .equals(other._reservedPrice, _reservedPrice) &&
            const DeepCollectionEquality().equals(other._itemName, _itemName) &&
            const DeepCollectionEquality().equals(other._quantity, _quantity) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality()
                .equals(other._supportMessage, _supportMessage) &&
            const DeepCollectionEquality()
                .equals(other._transactionPin, _transactionPin) &&
            const DeepCollectionEquality()
                .equals(other._confirmTransactionPin, _confirmTransactionPin));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(_name),
        const DeepCollectionEquality().hash(_fullName),
        const DeepCollectionEquality().hash(_firstName),
        const DeepCollectionEquality().hash(_lastName),
        const DeepCollectionEquality().hash(_token),
        const DeepCollectionEquality().hash(_email),
        const DeepCollectionEquality().hash(_gender),
        const DeepCollectionEquality().hash(_age),
        const DeepCollectionEquality().hash(_phone),
        const DeepCollectionEquality().hash(_password),
        const DeepCollectionEquality().hash(_oldPassword),
        const DeepCollectionEquality().hash(_passwordConfirmation),
        const DeepCollectionEquality().hash(_code),
        const DeepCollectionEquality().hash(_type),
        const DeepCollectionEquality().hash(_description),
        const DeepCollectionEquality().hash(_amount),
        const DeepCollectionEquality().hash(_currencyId),
        const DeepCollectionEquality().hash(_country),
        const DeepCollectionEquality().hash(_bankId),
        const DeepCollectionEquality().hash(_plan),
        const DeepCollectionEquality().hash(_paymentMethod),
        const DeepCollectionEquality().hash(_countryId),
        const DeepCollectionEquality().hash(_state),
        const DeepCollectionEquality().hash(_basePrice),
        const DeepCollectionEquality().hash(_reservedPrice),
        const DeepCollectionEquality().hash(_itemName),
        const DeepCollectionEquality().hash(_quantity),
        const DeepCollectionEquality().hash(_images),
        const DeepCollectionEquality().hash(_supportMessage),
        const DeepCollectionEquality().hash(_transactionPin),
        const DeepCollectionEquality().hash(_confirmTransactionPin)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$__ErrorMessageCopyWith<_$__ErrorMessage> get copyWith =>
      __$$__ErrorMessageCopyWithImpl<_$__ErrorMessage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$__ErrorMessageToJson(
      this,
    );
  }
}

abstract class __ErrorMessage extends _ErrorMessage {
  const factory __ErrorMessage(
      {final List<String?>? name,
      @JsonKey(name: 'full_name')
          final List<String?>? fullName,
      @JsonKey(name: 'first_name')
          final List<String?>? firstName,
      @JsonKey(name: 'last_name')
          final List<String?>? lastName,
      final List<String?>? token,
      final List<String?>? email,
      final List<String?>? gender,
      final List<String?>? age,
      final List<String?>? phone,
      final List<String?>? password,
      @JsonKey(name: 'current_password')
          final List<String?>? oldPassword,
      @JsonKey(name: 'password_confirmation')
          final List<String?>? passwordConfirmation,
      final List<String?>? code,
      final List<String?>? type,
      final List<String?>? description,
      final List<String?>? amount,
      @JsonKey(name: 'currency_id')
          final List<String?>? currencyId,
      final List<String?>? country,
      @JsonKey(name: 'bank_id')
          final List<String?>? bankId,
      final List<String?>? plan,
      @JsonKey(name: 'payment_method')
          final List<String?>? paymentMethod,
      @JsonKey(name: 'country_id')
          final List<String?>? countryId,
      final List<String?>? state,
      final List<String?>? basePrice,
      final List<String?>? reservedPrice,
      @JsonKey(name: 'item_name')
          final List<String?>? itemName,
      final List<String?>? quantity,
      final List<String?>? images,
      @JsonKey(name: 'message')
          final List<String?>? supportMessage,
      @JsonKey(name: 'transactionPin')
          final List<String?>? transactionPin,
      @JsonKey(name: 'confirmTransactionPin')
          final List<String?>? confirmTransactionPin}) = _$__ErrorMessage;
  const __ErrorMessage._() : super._();

  factory __ErrorMessage.fromJson(Map<String, dynamic> json) =
      _$__ErrorMessage.fromJson;

  @override
  List<String?>? get name;
  @override
  @JsonKey(name: 'full_name')
  List<String?>? get fullName;
  @override
  @JsonKey(name: 'first_name')
  List<String?>? get firstName;
  @override
  @JsonKey(name: 'last_name')
  List<String?>? get lastName;
  @override
  List<String?>? get token;
  @override
  List<String?>? get email;
  @override
  List<String?>? get gender;
  @override
  List<String?>? get age;
  @override
  List<String?>? get phone;
  @override
  List<String?>? get password;
  @override
  @JsonKey(name: 'current_password')
  List<String?>? get oldPassword;
  @override
  @JsonKey(name: 'password_confirmation')
  List<String?>? get passwordConfirmation;
  @override
  List<String?>? get code;
  @override
  List<String?>? get type;
  @override
  List<String?>? get description;
  @override
  List<String?>? get amount;
  @override
  @JsonKey(name: 'currency_id')
  List<String?>? get currencyId;
  @override
  List<String?>? get country;
  @override
  @JsonKey(name: 'bank_id')
  List<String?>? get bankId;
  @override
  List<String?>? get plan;
  @override
  @JsonKey(name: 'payment_method')
  List<String?>? get paymentMethod;
  @override
  @JsonKey(name: 'country_id')
  List<String?>? get countryId;
  @override
  List<String?>? get state;
  @override
  List<String?>? get basePrice;
  @override
  List<String?>? get reservedPrice;
  @override
  @JsonKey(name: 'item_name')
  List<String?>? get itemName;
  @override
  List<String?>? get quantity;
  @override
  List<String?>? get images;
  @override
  @JsonKey(name: 'message')
  List<String?>? get supportMessage;
  @override
  @JsonKey(name: 'transactionPin')
  List<String?>? get transactionPin;
  @override
  @JsonKey(name: 'confirmTransactionPin')
  List<String?>? get confirmTransactionPin;
  @override
  @JsonKey(ignore: true)
  _$$__ErrorMessageCopyWith<_$__ErrorMessage> get copyWith =>
      throw _privateConstructorUsedError;
}
