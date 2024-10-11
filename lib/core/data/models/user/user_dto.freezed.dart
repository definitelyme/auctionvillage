// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of user_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserDTO _$UserDTOFromJson(Map<String, dynamic> json) {
  return _UserDTO.fromJson(json);
}

/// @nodoc
mixin _$UserDTO {
  @HiveField(1)
  @JsonKey(name: '_id')
  @StringSerializer()
  String? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: '_id')
  @StringSerializer()
  set id(String? value) => throw _privateConstructorUsedError;
  @HiveField(2)
  @StringSerializer()
  String? get token => throw _privateConstructorUsedError;
  @HiveField(2)
  @StringSerializer()
  set token(String? value) => throw _privateConstructorUsedError;
  @HiveField(3)
  @StringSerializer()
  String? get firstName => throw _privateConstructorUsedError;
  @HiveField(3)
  @StringSerializer()
  set firstName(String? value) => throw _privateConstructorUsedError;
  @HiveField(4)
  @StringSerializer()
  String? get lastName => throw _privateConstructorUsedError;
  @HiveField(4)
  @StringSerializer()
  set lastName(String? value) => throw _privateConstructorUsedError;
  @HiveField(5)
  @StringSerializer()
  String? get fullName => throw _privateConstructorUsedError;
  @HiveField(5)
  @StringSerializer()
  set fullName(String? value) => throw _privateConstructorUsedError;
  @StringSerializer()
  String? get name => throw _privateConstructorUsedError;
  @StringSerializer()
  set name(String? value) => throw _privateConstructorUsedError;
  @HiveField(6)
  @StringSerializer()
  String? get email => throw _privateConstructorUsedError;
  @HiveField(6)
  @StringSerializer()
  set email(String? value) => throw _privateConstructorUsedError;
  @HiveField(7)
  @JsonKey(name: 'mobile')
  @StringSerializer()
  String? get phone => throw _privateConstructorUsedError;
  @HiveField(7)
  @JsonKey(name: 'mobile')
  @StringSerializer()
  set phone(String? value) => throw _privateConstructorUsedError; //
  @HiveField(8)
  @StringSerializer()
  String? get password => throw _privateConstructorUsedError; //
  @HiveField(8)
  @StringSerializer()
  set password(String? value) => throw _privateConstructorUsedError;
  @HiveField(9)
  @JsonKey(name: 'currentPassword')
  @StringSerializer()
  String? get oldPassword => throw _privateConstructorUsedError;
  @HiveField(9)
  @JsonKey(name: 'currentPassword')
  @StringSerializer()
  set oldPassword(String? value) => throw _privateConstructorUsedError;
  @HiveField(10)
  @JsonKey(name: 'passwordConfirmation')
  @StringSerializer()
  String? get confirmation => throw _privateConstructorUsedError;
  @HiveField(10)
  @JsonKey(name: 'passwordConfirmation')
  @StringSerializer()
  set confirmation(String? value) => throw _privateConstructorUsedError; //
  @HiveField(11)
  @JsonKey(name: 'country')
  @StringSerializer()
  String? get countryName => throw _privateConstructorUsedError; //
  @HiveField(11)
  @JsonKey(name: 'country')
  @StringSerializer()
  set countryName(String? value) => throw _privateConstructorUsedError;
  @HiveField(12)
  @StringSerializer()
  String? get platform => throw _privateConstructorUsedError;
  @HiveField(12)
  @StringSerializer()
  set platform(String? value) => throw _privateConstructorUsedError;
  @HiveField(13)
  @StringSerializer()
  String? get avatar => throw _privateConstructorUsedError;
  @HiveField(13)
  @StringSerializer()
  set avatar(String? value) => throw _privateConstructorUsedError;
  @HiveField(14)
  @BooleanSerializer()
  bool? get pinAdded => throw _privateConstructorUsedError;
  @HiveField(14)
  @BooleanSerializer()
  set pinAdded(bool? value) => throw _privateConstructorUsedError; //
  @BooleanSerializer()
  bool? get forceUpdate => throw _privateConstructorUsedError; //
  @BooleanSerializer()
  set forceUpdate(bool? value) => throw _privateConstructorUsedError;
  @HiveField(15)
  @BooleanSerializer()
  bool? get accountVerified => throw _privateConstructorUsedError;
  @HiveField(15)
  @BooleanSerializer()
  set accountVerified(bool? value) =>
      throw _privateConstructorUsedError; // @HiveField(23) @AuthProviderSerializer() AuthProvider? provider,
  @HiveField(16)
  @TimestampConverter()
  DateTime? get createdBy =>
      throw _privateConstructorUsedError; // @HiveField(23) @AuthProviderSerializer() AuthProvider? provider,
  @HiveField(16)
  @TimestampConverter()
  set createdBy(DateTime? value) => throw _privateConstructorUsedError;
  @HiveField(17)
  @TimestampConverter()
  DateTime? get updatedBy => throw _privateConstructorUsedError;
  @HiveField(17)
  @TimestampConverter()
  set updatedBy(DateTime? value) => throw _privateConstructorUsedError;
  @HiveField(18)
  @TimestampConverter()
  DateTime? get deletedBy => throw _privateConstructorUsedError;
  @HiveField(18)
  @TimestampConverter()
  set deletedBy(DateTime? value) => throw _privateConstructorUsedError;
  @HiveField(19)
  @TimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @HiveField(19)
  @TimestampConverter()
  set createdAt(DateTime? value) => throw _privateConstructorUsedError;
  @HiveField(20)
  @TimestampConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @HiveField(20)
  @TimestampConverter()
  set updatedAt(DateTime? value) => throw _privateConstructorUsedError;
  @HiveField(21)
  @TimestampConverter()
  DateTime? get deletedAt => throw _privateConstructorUsedError;
  @HiveField(21)
  @TimestampConverter()
  set deletedAt(DateTime? value) => throw _privateConstructorUsedError;
  @HiveField(22)
  @JsonKey(name: 'address')
  @StringSerializer()
  String? get billingAddress => throw _privateConstructorUsedError;
  @HiveField(22)
  @JsonKey(name: 'address')
  @StringSerializer()
  set billingAddress(String? value) => throw _privateConstructorUsedError; //
  @TimestampConverter()
  DateTime? get historyDate => throw _privateConstructorUsedError; //
  @TimestampConverter()
  set historyDate(DateTime? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount')
  @DoubleSerializer()
  double? get bidAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount')
  @DoubleSerializer()
  set bidAmount(double? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDTOCopyWith<UserDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDTOCopyWith<$Res> {
  factory $UserDTOCopyWith(UserDTO value, $Res Function(UserDTO) then) =
      _$UserDTOCopyWithImpl<$Res, UserDTO>;
  @useResult
  $Res call(
      {@HiveField(1)
      @JsonKey(name: '_id')
      @StringSerializer()
          String? id,
      @HiveField(2)
      @StringSerializer()
          String? token,
      @HiveField(3)
      @StringSerializer()
          String? firstName,
      @HiveField(4)
      @StringSerializer()
          String? lastName,
      @HiveField(5)
      @StringSerializer()
          String? fullName,
      @StringSerializer()
          String? name,
      @HiveField(6)
      @StringSerializer()
          String? email,
      @HiveField(7)
      @JsonKey(name: 'mobile')
      @StringSerializer()
          String? phone,
      @HiveField(8)
      @StringSerializer()
          String? password,
      @HiveField(9)
      @JsonKey(name: 'currentPassword')
      @StringSerializer()
          String? oldPassword,
      @HiveField(10)
      @JsonKey(name: 'passwordConfirmation')
      @StringSerializer()
          String? confirmation,
      @HiveField(11)
      @JsonKey(name: 'country')
      @StringSerializer()
          String? countryName,
      @HiveField(12)
      @StringSerializer()
          String? platform,
      @HiveField(13)
      @StringSerializer()
          String? avatar,
      @HiveField(14)
      @BooleanSerializer()
          bool? pinAdded,
      @BooleanSerializer()
          bool? forceUpdate,
      @HiveField(15)
      @BooleanSerializer()
          bool? accountVerified,
      @HiveField(16)
      @TimestampConverter()
          DateTime? createdBy,
      @HiveField(17)
      @TimestampConverter()
          DateTime? updatedBy,
      @HiveField(18)
      @TimestampConverter()
          DateTime? deletedBy,
      @HiveField(19)
      @TimestampConverter()
          DateTime? createdAt,
      @HiveField(20)
      @TimestampConverter()
          DateTime? updatedAt,
      @HiveField(21)
      @TimestampConverter()
          DateTime? deletedAt,
      @HiveField(22)
      @JsonKey(name: 'address')
      @StringSerializer()
          String? billingAddress,
      @TimestampConverter()
          DateTime? historyDate,
      @JsonKey(name: 'amount')
      @DoubleSerializer()
          double? bidAmount});
}

/// @nodoc
class _$UserDTOCopyWithImpl<$Res, $Val extends UserDTO>
    implements $UserDTOCopyWith<$Res> {
  _$UserDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? token = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? fullName = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? password = freezed,
    Object? oldPassword = freezed,
    Object? confirmation = freezed,
    Object? countryName = freezed,
    Object? platform = freezed,
    Object? avatar = freezed,
    Object? pinAdded = freezed,
    Object? forceUpdate = freezed,
    Object? accountVerified = freezed,
    Object? createdBy = freezed,
    Object? updatedBy = freezed,
    Object? deletedBy = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
    Object? billingAddress = freezed,
    Object? historyDate = freezed,
    Object? bidAmount = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      oldPassword: freezed == oldPassword
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmation: freezed == confirmation
          ? _value.confirmation
          : confirmation // ignore: cast_nullable_to_non_nullable
              as String?,
      countryName: freezed == countryName
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as String?,
      platform: freezed == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      pinAdded: freezed == pinAdded
          ? _value.pinAdded
          : pinAdded // ignore: cast_nullable_to_non_nullable
              as bool?,
      forceUpdate: freezed == forceUpdate
          ? _value.forceUpdate
          : forceUpdate // ignore: cast_nullable_to_non_nullable
              as bool?,
      accountVerified: freezed == accountVerified
          ? _value.accountVerified
          : accountVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedBy: freezed == updatedBy
          ? _value.updatedBy
          : updatedBy // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedBy: freezed == deletedBy
          ? _value.deletedBy
          : deletedBy // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      billingAddress: freezed == billingAddress
          ? _value.billingAddress
          : billingAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      historyDate: freezed == historyDate
          ? _value.historyDate
          : historyDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      bidAmount: freezed == bidAmount
          ? _value.bidAmount
          : bidAmount // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserDTOCopyWith<$Res> implements $UserDTOCopyWith<$Res> {
  factory _$$_UserDTOCopyWith(
          _$_UserDTO value, $Res Function(_$_UserDTO) then) =
      __$$_UserDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(1)
      @JsonKey(name: '_id')
      @StringSerializer()
          String? id,
      @HiveField(2)
      @StringSerializer()
          String? token,
      @HiveField(3)
      @StringSerializer()
          String? firstName,
      @HiveField(4)
      @StringSerializer()
          String? lastName,
      @HiveField(5)
      @StringSerializer()
          String? fullName,
      @StringSerializer()
          String? name,
      @HiveField(6)
      @StringSerializer()
          String? email,
      @HiveField(7)
      @JsonKey(name: 'mobile')
      @StringSerializer()
          String? phone,
      @HiveField(8)
      @StringSerializer()
          String? password,
      @HiveField(9)
      @JsonKey(name: 'currentPassword')
      @StringSerializer()
          String? oldPassword,
      @HiveField(10)
      @JsonKey(name: 'passwordConfirmation')
      @StringSerializer()
          String? confirmation,
      @HiveField(11)
      @JsonKey(name: 'country')
      @StringSerializer()
          String? countryName,
      @HiveField(12)
      @StringSerializer()
          String? platform,
      @HiveField(13)
      @StringSerializer()
          String? avatar,
      @HiveField(14)
      @BooleanSerializer()
          bool? pinAdded,
      @BooleanSerializer()
          bool? forceUpdate,
      @HiveField(15)
      @BooleanSerializer()
          bool? accountVerified,
      @HiveField(16)
      @TimestampConverter()
          DateTime? createdBy,
      @HiveField(17)
      @TimestampConverter()
          DateTime? updatedBy,
      @HiveField(18)
      @TimestampConverter()
          DateTime? deletedBy,
      @HiveField(19)
      @TimestampConverter()
          DateTime? createdAt,
      @HiveField(20)
      @TimestampConverter()
          DateTime? updatedAt,
      @HiveField(21)
      @TimestampConverter()
          DateTime? deletedAt,
      @HiveField(22)
      @JsonKey(name: 'address')
      @StringSerializer()
          String? billingAddress,
      @TimestampConverter()
          DateTime? historyDate,
      @JsonKey(name: 'amount')
      @DoubleSerializer()
          double? bidAmount});
}

/// @nodoc
class __$$_UserDTOCopyWithImpl<$Res>
    extends _$UserDTOCopyWithImpl<$Res, _$_UserDTO>
    implements _$$_UserDTOCopyWith<$Res> {
  __$$_UserDTOCopyWithImpl(_$_UserDTO _value, $Res Function(_$_UserDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? token = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? fullName = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? password = freezed,
    Object? oldPassword = freezed,
    Object? confirmation = freezed,
    Object? countryName = freezed,
    Object? platform = freezed,
    Object? avatar = freezed,
    Object? pinAdded = freezed,
    Object? forceUpdate = freezed,
    Object? accountVerified = freezed,
    Object? createdBy = freezed,
    Object? updatedBy = freezed,
    Object? deletedBy = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
    Object? billingAddress = freezed,
    Object? historyDate = freezed,
    Object? bidAmount = freezed,
  }) {
    return _then(_$_UserDTO(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      oldPassword: freezed == oldPassword
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmation: freezed == confirmation
          ? _value.confirmation
          : confirmation // ignore: cast_nullable_to_non_nullable
              as String?,
      countryName: freezed == countryName
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as String?,
      platform: freezed == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      pinAdded: freezed == pinAdded
          ? _value.pinAdded
          : pinAdded // ignore: cast_nullable_to_non_nullable
              as bool?,
      forceUpdate: freezed == forceUpdate
          ? _value.forceUpdate
          : forceUpdate // ignore: cast_nullable_to_non_nullable
              as bool?,
      accountVerified: freezed == accountVerified
          ? _value.accountVerified
          : accountVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedBy: freezed == updatedBy
          ? _value.updatedBy
          : updatedBy // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedBy: freezed == deletedBy
          ? _value.deletedBy
          : deletedBy // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      billingAddress: freezed == billingAddress
          ? _value.billingAddress
          : billingAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      historyDate: freezed == historyDate
          ? _value.historyDate
          : historyDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      bidAmount: freezed == bidAmount
          ? _value.bidAmount
          : bidAmount // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 1, adapterName: 'UserDTOAdapter')
class _$_UserDTO extends _UserDTO {
  _$_UserDTO(
      {@HiveField(1)
      @JsonKey(name: '_id')
      @StringSerializer()
          this.id,
      @HiveField(2)
      @StringSerializer()
          this.token,
      @HiveField(3)
      @StringSerializer()
          this.firstName,
      @HiveField(4)
      @StringSerializer()
          this.lastName,
      @HiveField(5)
      @StringSerializer()
          this.fullName,
      @StringSerializer()
          this.name,
      @HiveField(6)
      @StringSerializer()
          this.email,
      @HiveField(7)
      @JsonKey(name: 'mobile')
      @StringSerializer()
          this.phone,
      @HiveField(8)
      @StringSerializer()
          this.password,
      @HiveField(9)
      @JsonKey(name: 'currentPassword')
      @StringSerializer()
          this.oldPassword,
      @HiveField(10)
      @JsonKey(name: 'passwordConfirmation')
      @StringSerializer()
          this.confirmation,
      @HiveField(11)
      @JsonKey(name: 'country')
      @StringSerializer()
          this.countryName,
      @HiveField(12)
      @StringSerializer()
          this.platform,
      @HiveField(13)
      @StringSerializer()
          this.avatar,
      @HiveField(14)
      @BooleanSerializer()
          this.pinAdded,
      @BooleanSerializer()
          this.forceUpdate,
      @HiveField(15)
      @BooleanSerializer()
          this.accountVerified,
      @HiveField(16)
      @TimestampConverter()
          this.createdBy,
      @HiveField(17)
      @TimestampConverter()
          this.updatedBy,
      @HiveField(18)
      @TimestampConverter()
          this.deletedBy,
      @HiveField(19)
      @TimestampConverter()
          this.createdAt,
      @HiveField(20)
      @TimestampConverter()
          this.updatedAt,
      @HiveField(21)
      @TimestampConverter()
          this.deletedAt,
      @HiveField(22)
      @JsonKey(name: 'address')
      @StringSerializer()
          this.billingAddress,
      @TimestampConverter()
          this.historyDate,
      @JsonKey(name: 'amount')
      @DoubleSerializer()
          this.bidAmount})
      : super._();

  factory _$_UserDTO.fromJson(Map<String, dynamic> json) =>
      _$$_UserDTOFromJson(json);

  @override
  @HiveField(1)
  @JsonKey(name: '_id')
  @StringSerializer()
  String? id;
  @override
  @HiveField(2)
  @StringSerializer()
  String? token;
  @override
  @HiveField(3)
  @StringSerializer()
  String? firstName;
  @override
  @HiveField(4)
  @StringSerializer()
  String? lastName;
  @override
  @HiveField(5)
  @StringSerializer()
  String? fullName;
  @override
  @StringSerializer()
  String? name;
  @override
  @HiveField(6)
  @StringSerializer()
  String? email;
  @override
  @HiveField(7)
  @JsonKey(name: 'mobile')
  @StringSerializer()
  String? phone;
//
  @override
  @HiveField(8)
  @StringSerializer()
  String? password;
  @override
  @HiveField(9)
  @JsonKey(name: 'currentPassword')
  @StringSerializer()
  String? oldPassword;
  @override
  @HiveField(10)
  @JsonKey(name: 'passwordConfirmation')
  @StringSerializer()
  String? confirmation;
//
  @override
  @HiveField(11)
  @JsonKey(name: 'country')
  @StringSerializer()
  String? countryName;
  @override
  @HiveField(12)
  @StringSerializer()
  String? platform;
  @override
  @HiveField(13)
  @StringSerializer()
  String? avatar;
  @override
  @HiveField(14)
  @BooleanSerializer()
  bool? pinAdded;
//
  @override
  @BooleanSerializer()
  bool? forceUpdate;
  @override
  @HiveField(15)
  @BooleanSerializer()
  bool? accountVerified;
// @HiveField(23) @AuthProviderSerializer() AuthProvider? provider,
  @override
  @HiveField(16)
  @TimestampConverter()
  DateTime? createdBy;
  @override
  @HiveField(17)
  @TimestampConverter()
  DateTime? updatedBy;
  @override
  @HiveField(18)
  @TimestampConverter()
  DateTime? deletedBy;
  @override
  @HiveField(19)
  @TimestampConverter()
  DateTime? createdAt;
  @override
  @HiveField(20)
  @TimestampConverter()
  DateTime? updatedAt;
  @override
  @HiveField(21)
  @TimestampConverter()
  DateTime? deletedAt;
  @override
  @HiveField(22)
  @JsonKey(name: 'address')
  @StringSerializer()
  String? billingAddress;
//
  @override
  @TimestampConverter()
  DateTime? historyDate;
  @override
  @JsonKey(name: 'amount')
  @DoubleSerializer()
  double? bidAmount;

  @override
  String toString() {
    return 'UserDTO(id: $id, token: $token, firstName: $firstName, lastName: $lastName, fullName: $fullName, name: $name, email: $email, phone: $phone, password: $password, oldPassword: $oldPassword, confirmation: $confirmation, countryName: $countryName, platform: $platform, avatar: $avatar, pinAdded: $pinAdded, forceUpdate: $forceUpdate, accountVerified: $accountVerified, createdBy: $createdBy, updatedBy: $updatedBy, deletedBy: $deletedBy, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, billingAddress: $billingAddress, historyDate: $historyDate, bidAmount: $bidAmount)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserDTOCopyWith<_$_UserDTO> get copyWith =>
      __$$_UserDTOCopyWithImpl<_$_UserDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDTOToJson(
      this,
    );
  }
}

abstract class _UserDTO extends UserDTO {
  factory _UserDTO(
      {@HiveField(1)
      @JsonKey(name: '_id')
      @StringSerializer()
          String? id,
      @HiveField(2)
      @StringSerializer()
          String? token,
      @HiveField(3)
      @StringSerializer()
          String? firstName,
      @HiveField(4)
      @StringSerializer()
          String? lastName,
      @HiveField(5)
      @StringSerializer()
          String? fullName,
      @StringSerializer()
          String? name,
      @HiveField(6)
      @StringSerializer()
          String? email,
      @HiveField(7)
      @JsonKey(name: 'mobile')
      @StringSerializer()
          String? phone,
      @HiveField(8)
      @StringSerializer()
          String? password,
      @HiveField(9)
      @JsonKey(name: 'currentPassword')
      @StringSerializer()
          String? oldPassword,
      @HiveField(10)
      @JsonKey(name: 'passwordConfirmation')
      @StringSerializer()
          String? confirmation,
      @HiveField(11)
      @JsonKey(name: 'country')
      @StringSerializer()
          String? countryName,
      @HiveField(12)
      @StringSerializer()
          String? platform,
      @HiveField(13)
      @StringSerializer()
          String? avatar,
      @HiveField(14)
      @BooleanSerializer()
          bool? pinAdded,
      @BooleanSerializer()
          bool? forceUpdate,
      @HiveField(15)
      @BooleanSerializer()
          bool? accountVerified,
      @HiveField(16)
      @TimestampConverter()
          DateTime? createdBy,
      @HiveField(17)
      @TimestampConverter()
          DateTime? updatedBy,
      @HiveField(18)
      @TimestampConverter()
          DateTime? deletedBy,
      @HiveField(19)
      @TimestampConverter()
          DateTime? createdAt,
      @HiveField(20)
      @TimestampConverter()
          DateTime? updatedAt,
      @HiveField(21)
      @TimestampConverter()
          DateTime? deletedAt,
      @HiveField(22)
      @JsonKey(name: 'address')
      @StringSerializer()
          String? billingAddress,
      @TimestampConverter()
          DateTime? historyDate,
      @JsonKey(name: 'amount')
      @DoubleSerializer()
          double? bidAmount}) = _$_UserDTO;
  _UserDTO._() : super._();

  factory _UserDTO.fromJson(Map<String, dynamic> json) = _$_UserDTO.fromJson;

  @override
  @HiveField(1)
  @JsonKey(name: '_id')
  @StringSerializer()
  String? get id;
  @HiveField(1)
  @JsonKey(name: '_id')
  @StringSerializer()
  set id(String? value);
  @override
  @HiveField(2)
  @StringSerializer()
  String? get token;
  @HiveField(2)
  @StringSerializer()
  set token(String? value);
  @override
  @HiveField(3)
  @StringSerializer()
  String? get firstName;
  @HiveField(3)
  @StringSerializer()
  set firstName(String? value);
  @override
  @HiveField(4)
  @StringSerializer()
  String? get lastName;
  @HiveField(4)
  @StringSerializer()
  set lastName(String? value);
  @override
  @HiveField(5)
  @StringSerializer()
  String? get fullName;
  @HiveField(5)
  @StringSerializer()
  set fullName(String? value);
  @override
  @StringSerializer()
  String? get name;
  @StringSerializer()
  set name(String? value);
  @override
  @HiveField(6)
  @StringSerializer()
  String? get email;
  @HiveField(6)
  @StringSerializer()
  set email(String? value);
  @override
  @HiveField(7)
  @JsonKey(name: 'mobile')
  @StringSerializer()
  String? get phone;
  @HiveField(7)
  @JsonKey(name: 'mobile')
  @StringSerializer()
  set phone(String? value);
  @override //
  @HiveField(8)
  @StringSerializer()
  String? get password; //
  @HiveField(8)
  @StringSerializer()
  set password(String? value);
  @override
  @HiveField(9)
  @JsonKey(name: 'currentPassword')
  @StringSerializer()
  String? get oldPassword;
  @HiveField(9)
  @JsonKey(name: 'currentPassword')
  @StringSerializer()
  set oldPassword(String? value);
  @override
  @HiveField(10)
  @JsonKey(name: 'passwordConfirmation')
  @StringSerializer()
  String? get confirmation;
  @HiveField(10)
  @JsonKey(name: 'passwordConfirmation')
  @StringSerializer()
  set confirmation(String? value);
  @override //
  @HiveField(11)
  @JsonKey(name: 'country')
  @StringSerializer()
  String? get countryName; //
  @HiveField(11)
  @JsonKey(name: 'country')
  @StringSerializer()
  set countryName(String? value);
  @override
  @HiveField(12)
  @StringSerializer()
  String? get platform;
  @HiveField(12)
  @StringSerializer()
  set platform(String? value);
  @override
  @HiveField(13)
  @StringSerializer()
  String? get avatar;
  @HiveField(13)
  @StringSerializer()
  set avatar(String? value);
  @override
  @HiveField(14)
  @BooleanSerializer()
  bool? get pinAdded;
  @HiveField(14)
  @BooleanSerializer()
  set pinAdded(bool? value);
  @override //
  @BooleanSerializer()
  bool? get forceUpdate; //
  @BooleanSerializer()
  set forceUpdate(bool? value);
  @override
  @HiveField(15)
  @BooleanSerializer()
  bool? get accountVerified;
  @HiveField(15)
  @BooleanSerializer()
  set accountVerified(bool? value);
  @override // @HiveField(23) @AuthProviderSerializer() AuthProvider? provider,
  @HiveField(16)
  @TimestampConverter()
  DateTime?
      get createdBy; // @HiveField(23) @AuthProviderSerializer() AuthProvider? provider,
  @HiveField(16)
  @TimestampConverter()
  set createdBy(DateTime? value);
  @override
  @HiveField(17)
  @TimestampConverter()
  DateTime? get updatedBy;
  @HiveField(17)
  @TimestampConverter()
  set updatedBy(DateTime? value);
  @override
  @HiveField(18)
  @TimestampConverter()
  DateTime? get deletedBy;
  @HiveField(18)
  @TimestampConverter()
  set deletedBy(DateTime? value);
  @override
  @HiveField(19)
  @TimestampConverter()
  DateTime? get createdAt;
  @HiveField(19)
  @TimestampConverter()
  set createdAt(DateTime? value);
  @override
  @HiveField(20)
  @TimestampConverter()
  DateTime? get updatedAt;
  @HiveField(20)
  @TimestampConverter()
  set updatedAt(DateTime? value);
  @override
  @HiveField(21)
  @TimestampConverter()
  DateTime? get deletedAt;
  @HiveField(21)
  @TimestampConverter()
  set deletedAt(DateTime? value);
  @override
  @HiveField(22)
  @JsonKey(name: 'address')
  @StringSerializer()
  String? get billingAddress;
  @HiveField(22)
  @JsonKey(name: 'address')
  @StringSerializer()
  set billingAddress(String? value);
  @override //
  @TimestampConverter()
  DateTime? get historyDate; //
  @TimestampConverter()
  set historyDate(DateTime? value);
  @override
  @JsonKey(name: 'amount')
  @DoubleSerializer()
  double? get bidAmount;
  @JsonKey(name: 'amount')
  @DoubleSerializer()
  set bidAmount(double? value);
  @override
  @JsonKey(ignore: true)
  _$$_UserDTOCopyWith<_$_UserDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

UserListDTO _$UserListDTOFromJson(Map<String, dynamic> json) {
  return _UserListDTO.fromJson(json);
}

/// @nodoc
mixin _$UserListDTO {
  List<UserDTO> get data => throw _privateConstructorUsedError;
  List<UserDTO> get user => throw _privateConstructorUsedError;
  List<UserDTO> get users => throw _privateConstructorUsedError;
  @JsonKey(name: '_meta')
  MetaDTO? get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserListDTOCopyWith<UserListDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserListDTOCopyWith<$Res> {
  factory $UserListDTOCopyWith(
          UserListDTO value, $Res Function(UserListDTO) then) =
      _$UserListDTOCopyWithImpl<$Res, UserListDTO>;
  @useResult
  $Res call(
      {List<UserDTO> data,
      List<UserDTO> user,
      List<UserDTO> users,
      @JsonKey(name: '_meta') MetaDTO? meta});

  $MetaDTOCopyWith<$Res>? get meta;
}

/// @nodoc
class _$UserListDTOCopyWithImpl<$Res, $Val extends UserListDTO>
    implements $UserListDTOCopyWith<$Res> {
  _$UserListDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? user = null,
    Object? users = null,
    Object? meta = freezed,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<UserDTO>,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as List<UserDTO>,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserDTO>,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDTO?,
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
abstract class _$$_UserListDTOCopyWith<$Res>
    implements $UserListDTOCopyWith<$Res> {
  factory _$$_UserListDTOCopyWith(
          _$_UserListDTO value, $Res Function(_$_UserListDTO) then) =
      __$$_UserListDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<UserDTO> data,
      List<UserDTO> user,
      List<UserDTO> users,
      @JsonKey(name: '_meta') MetaDTO? meta});

  @override
  $MetaDTOCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$_UserListDTOCopyWithImpl<$Res>
    extends _$UserListDTOCopyWithImpl<$Res, _$_UserListDTO>
    implements _$$_UserListDTOCopyWith<$Res> {
  __$$_UserListDTOCopyWithImpl(
      _$_UserListDTO _value, $Res Function(_$_UserListDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? user = null,
    Object? users = null,
    Object? meta = freezed,
  }) {
    return _then(_$_UserListDTO(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<UserDTO>,
      user: null == user
          ? _value._user
          : user // ignore: cast_nullable_to_non_nullable
              as List<UserDTO>,
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserDTO>,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDTO?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserListDTO extends _UserListDTO {
  const _$_UserListDTO(
      {final List<UserDTO> data = const [],
      final List<UserDTO> user = const [],
      final List<UserDTO> users = const [],
      @JsonKey(name: '_meta') this.meta})
      : _data = data,
        _user = user,
        _users = users,
        super._();

  factory _$_UserListDTO.fromJson(Map<String, dynamic> json) =>
      _$$_UserListDTOFromJson(json);

  final List<UserDTO> _data;
  @override
  @JsonKey()
  List<UserDTO> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  final List<UserDTO> _user;
  @override
  @JsonKey()
  List<UserDTO> get user {
    if (_user is EqualUnmodifiableListView) return _user;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_user);
  }

  final List<UserDTO> _users;
  @override
  @JsonKey()
  List<UserDTO> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  @JsonKey(name: '_meta')
  final MetaDTO? meta;

  @override
  String toString() {
    return 'UserListDTO(data: $data, user: $user, users: $users, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserListDTO &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality().equals(other._user, _user) &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(_user),
      const DeepCollectionEquality().hash(_users),
      meta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserListDTOCopyWith<_$_UserListDTO> get copyWith =>
      __$$_UserListDTOCopyWithImpl<_$_UserListDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserListDTOToJson(
      this,
    );
  }
}

abstract class _UserListDTO extends UserListDTO {
  const factory _UserListDTO(
      {final List<UserDTO> data,
      final List<UserDTO> user,
      final List<UserDTO> users,
      @JsonKey(name: '_meta') final MetaDTO? meta}) = _$_UserListDTO;
  const _UserListDTO._() : super._();

  factory _UserListDTO.fromJson(Map<String, dynamic> json) =
      _$_UserListDTO.fromJson;

  @override
  List<UserDTO> get data;
  @override
  List<UserDTO> get user;
  @override
  List<UserDTO> get users;
  @override
  @JsonKey(name: '_meta')
  MetaDTO? get meta;
  @override
  @JsonKey(ignore: true)
  _$$_UserListDTOCopyWith<_$_UserListDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
