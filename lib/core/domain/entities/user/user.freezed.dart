// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of user;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$User {
  UniqueId<String?> get id => throw _privateConstructorUsedError;
  DisplayName get firstName => throw _privateConstructorUsedError;
  DisplayName get lastName => throw _privateConstructorUsedError;
  DisplayName? get name => throw _privateConstructorUsedError;
  EmailAddress get email => throw _privateConstructorUsedError;
  Phone get phone => throw _privateConstructorUsedError;
  Password get oldPassword => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  Password get passwordConfirmation => throw _privateConstructorUsedError;
  UploadableMedia get photo => throw _privateConstructorUsedError;
  BasicTextField get billingAddress => throw _privateConstructorUsedError;
  Country? get country =>
      throw _privateConstructorUsedError; // @Default(false) bool isPrivate,
  bool? get forceUpdate => throw _privateConstructorUsedError;
  AuthProvider get provider =>
      throw _privateConstructorUsedError; // @Default(false) bool? active,
  bool? get accountVerified => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  DateTime? get deletedAt => throw _privateConstructorUsedError; //
  NumField<double> get bidAmount => throw _privateConstructorUsedError;
  DateTime? get historyDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {UniqueId<String?> id,
      DisplayName firstName,
      DisplayName lastName,
      DisplayName? name,
      EmailAddress email,
      Phone phone,
      Password oldPassword,
      Password password,
      Password passwordConfirmation,
      UploadableMedia photo,
      BasicTextField billingAddress,
      Country? country,
      bool? forceUpdate,
      AuthProvider provider,
      bool? accountVerified,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? deletedAt,
      NumField<double> bidAmount,
      DateTime? historyDate});

  $CountryCopyWith<$Res>? get country;
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? name = freezed,
    Object? email = null,
    Object? phone = null,
    Object? oldPassword = null,
    Object? password = null,
    Object? passwordConfirmation = null,
    Object? photo = null,
    Object? billingAddress = null,
    Object? country = freezed,
    Object? forceUpdate = freezed,
    Object? provider = null,
    Object? accountVerified = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
    Object? bidAmount = null,
    Object? historyDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as DisplayName,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as DisplayName,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as DisplayName?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as Phone,
      oldPassword: null == oldPassword
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      passwordConfirmation: null == passwordConfirmation
          ? _value.passwordConfirmation
          : passwordConfirmation // ignore: cast_nullable_to_non_nullable
              as Password,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as UploadableMedia,
      billingAddress: null == billingAddress
          ? _value.billingAddress
          : billingAddress // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country?,
      forceUpdate: freezed == forceUpdate
          ? _value.forceUpdate
          : forceUpdate // ignore: cast_nullable_to_non_nullable
              as bool?,
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as AuthProvider,
      accountVerified: freezed == accountVerified
          ? _value.accountVerified
          : accountVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      bidAmount: null == bidAmount
          ? _value.bidAmount
          : bidAmount // ignore: cast_nullable_to_non_nullable
              as NumField<double>,
      historyDate: freezed == historyDate
          ? _value.historyDate
          : historyDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CountryCopyWith<$Res>? get country {
    if (_value.country == null) {
      return null;
    }

    return $CountryCopyWith<$Res>(_value.country!, (value) {
      return _then(_value.copyWith(country: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId<String?> id,
      DisplayName firstName,
      DisplayName lastName,
      DisplayName? name,
      EmailAddress email,
      Phone phone,
      Password oldPassword,
      Password password,
      Password passwordConfirmation,
      UploadableMedia photo,
      BasicTextField billingAddress,
      Country? country,
      bool? forceUpdate,
      AuthProvider provider,
      bool? accountVerified,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? deletedAt,
      NumField<double> bidAmount,
      DateTime? historyDate});

  @override
  $CountryCopyWith<$Res>? get country;
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res, _$_User>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? name = freezed,
    Object? email = null,
    Object? phone = null,
    Object? oldPassword = null,
    Object? password = null,
    Object? passwordConfirmation = null,
    Object? photo = null,
    Object? billingAddress = null,
    Object? country = freezed,
    Object? forceUpdate = freezed,
    Object? provider = null,
    Object? accountVerified = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
    Object? bidAmount = null,
    Object? historyDate = freezed,
  }) {
    return _then(_$_User(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as DisplayName,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as DisplayName,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as DisplayName?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as Phone,
      oldPassword: null == oldPassword
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      passwordConfirmation: null == passwordConfirmation
          ? _value.passwordConfirmation
          : passwordConfirmation // ignore: cast_nullable_to_non_nullable
              as Password,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as UploadableMedia,
      billingAddress: null == billingAddress
          ? _value.billingAddress
          : billingAddress // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country?,
      forceUpdate: freezed == forceUpdate
          ? _value.forceUpdate
          : forceUpdate // ignore: cast_nullable_to_non_nullable
              as bool?,
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as AuthProvider,
      accountVerified: freezed == accountVerified
          ? _value.accountVerified
          : accountVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      bidAmount: null == bidAmount
          ? _value.bidAmount
          : bidAmount // ignore: cast_nullable_to_non_nullable
              as NumField<double>,
      historyDate: freezed == historyDate
          ? _value.historyDate
          : historyDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_User extends _User {
  const _$_User(
      {required this.id,
      required this.firstName,
      required this.lastName,
      this.name,
      required this.email,
      required this.phone,
      required this.oldPassword,
      required this.password,
      required this.passwordConfirmation,
      required this.photo,
      required this.billingAddress,
      this.country,
      this.forceUpdate,
      this.provider = AuthProvider.regular,
      this.accountVerified = false,
      this.createdAt,
      this.updatedAt,
      this.deletedAt,
      required this.bidAmount,
      this.historyDate})
      : super._();

  @override
  final UniqueId<String?> id;
  @override
  final DisplayName firstName;
  @override
  final DisplayName lastName;
  @override
  final DisplayName? name;
  @override
  final EmailAddress email;
  @override
  final Phone phone;
  @override
  final Password oldPassword;
  @override
  final Password password;
  @override
  final Password passwordConfirmation;
  @override
  final UploadableMedia photo;
  @override
  final BasicTextField billingAddress;
  @override
  final Country? country;
// @Default(false) bool isPrivate,
  @override
  final bool? forceUpdate;
  @override
  @JsonKey()
  final AuthProvider provider;
// @Default(false) bool? active,
  @override
  @JsonKey()
  final bool? accountVerified;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final DateTime? deletedAt;
//
  @override
  final NumField<double> bidAmount;
  @override
  final DateTime? historyDate;

  @override
  String toString() {
    return 'User(id: $id, firstName: $firstName, lastName: $lastName, name: $name, email: $email, phone: $phone, oldPassword: $oldPassword, password: $password, passwordConfirmation: $passwordConfirmation, photo: $photo, billingAddress: $billingAddress, country: $country, forceUpdate: $forceUpdate, provider: $provider, accountVerified: $accountVerified, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, bidAmount: $bidAmount, historyDate: $historyDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.oldPassword, oldPassword) ||
                other.oldPassword == oldPassword) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.passwordConfirmation, passwordConfirmation) ||
                other.passwordConfirmation == passwordConfirmation) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.billingAddress, billingAddress) ||
                other.billingAddress == billingAddress) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.forceUpdate, forceUpdate) ||
                other.forceUpdate == forceUpdate) &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.accountVerified, accountVerified) ||
                other.accountVerified == accountVerified) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt) &&
            (identical(other.bidAmount, bidAmount) ||
                other.bidAmount == bidAmount) &&
            (identical(other.historyDate, historyDate) ||
                other.historyDate == historyDate));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        firstName,
        lastName,
        name,
        email,
        phone,
        oldPassword,
        password,
        passwordConfirmation,
        photo,
        billingAddress,
        country,
        forceUpdate,
        provider,
        accountVerified,
        createdAt,
        updatedAt,
        deletedAt,
        bidAmount,
        historyDate
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);
}

abstract class _User extends User {
  const factory _User(
      {required final UniqueId<String?> id,
      required final DisplayName firstName,
      required final DisplayName lastName,
      final DisplayName? name,
      required final EmailAddress email,
      required final Phone phone,
      required final Password oldPassword,
      required final Password password,
      required final Password passwordConfirmation,
      required final UploadableMedia photo,
      required final BasicTextField billingAddress,
      final Country? country,
      final bool? forceUpdate,
      final AuthProvider provider,
      final bool? accountVerified,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final DateTime? deletedAt,
      required final NumField<double> bidAmount,
      final DateTime? historyDate}) = _$_User;
  const _User._() : super._();

  @override
  UniqueId<String?> get id;
  @override
  DisplayName get firstName;
  @override
  DisplayName get lastName;
  @override
  DisplayName? get name;
  @override
  EmailAddress get email;
  @override
  Phone get phone;
  @override
  Password get oldPassword;
  @override
  Password get password;
  @override
  Password get passwordConfirmation;
  @override
  UploadableMedia get photo;
  @override
  BasicTextField get billingAddress;
  @override
  Country? get country;
  @override // @Default(false) bool isPrivate,
  bool? get forceUpdate;
  @override
  AuthProvider get provider;
  @override // @Default(false) bool? active,
  bool? get accountVerified;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  DateTime? get deletedAt;
  @override //
  NumField<double> get bidAmount;
  @override
  DateTime? get historyDate;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SecurityQuestion {
  UniqueId<String?> get id => throw _privateConstructorUsedError;
  UniqueId<String?> get userId => throw _privateConstructorUsedError;
  BasicTextField get question => throw _privateConstructorUsedError;
  BasicTextField get answer => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SecurityQuestionCopyWith<SecurityQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SecurityQuestionCopyWith<$Res> {
  factory $SecurityQuestionCopyWith(
          SecurityQuestion value, $Res Function(SecurityQuestion) then) =
      _$SecurityQuestionCopyWithImpl<$Res, SecurityQuestion>;
  @useResult
  $Res call(
      {UniqueId<String?> id,
      UniqueId<String?> userId,
      BasicTextField question,
      BasicTextField answer,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$SecurityQuestionCopyWithImpl<$Res, $Val extends SecurityQuestion>
    implements $SecurityQuestionCopyWith<$Res> {
  _$SecurityQuestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? question = null,
    Object? answer = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_SecurityQuestionCopyWith<$Res>
    implements $SecurityQuestionCopyWith<$Res> {
  factory _$$_SecurityQuestionCopyWith(
          _$_SecurityQuestion value, $Res Function(_$_SecurityQuestion) then) =
      __$$_SecurityQuestionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId<String?> id,
      UniqueId<String?> userId,
      BasicTextField question,
      BasicTextField answer,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$$_SecurityQuestionCopyWithImpl<$Res>
    extends _$SecurityQuestionCopyWithImpl<$Res, _$_SecurityQuestion>
    implements _$$_SecurityQuestionCopyWith<$Res> {
  __$$_SecurityQuestionCopyWithImpl(
      _$_SecurityQuestion _value, $Res Function(_$_SecurityQuestion) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? question = null,
    Object? answer = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_SecurityQuestion(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
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

class _$_SecurityQuestion extends _SecurityQuestion {
  const _$_SecurityQuestion(
      {required this.id,
      required this.userId,
      required this.question,
      required this.answer,
      this.createdAt,
      this.updatedAt})
      : super._();

  @override
  final UniqueId<String?> id;
  @override
  final UniqueId<String?> userId;
  @override
  final BasicTextField question;
  @override
  final BasicTextField answer;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'SecurityQuestion(id: $id, userId: $userId, question: $question, answer: $answer, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SecurityQuestion &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.answer, answer) || other.answer == answer) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, userId, question, answer, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SecurityQuestionCopyWith<_$_SecurityQuestion> get copyWith =>
      __$$_SecurityQuestionCopyWithImpl<_$_SecurityQuestion>(this, _$identity);
}

abstract class _SecurityQuestion extends SecurityQuestion {
  const factory _SecurityQuestion(
      {required final UniqueId<String?> id,
      required final UniqueId<String?> userId,
      required final BasicTextField question,
      required final BasicTextField answer,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$_SecurityQuestion;
  const _SecurityQuestion._() : super._();

  @override
  UniqueId<String?> get id;
  @override
  UniqueId<String?> get userId;
  @override
  BasicTextField get question;
  @override
  BasicTextField get answer;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_SecurityQuestionCopyWith<_$_SecurityQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}
