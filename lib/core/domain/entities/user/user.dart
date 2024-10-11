library user;

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/core/domain/response/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
class User extends BaseEntity with _$User {
  const User._();

  const factory User({
    required UniqueId<String?> id,
    required DisplayName firstName,
    required DisplayName lastName,
    DisplayName? name,
    required EmailAddress email,
    required Phone phone,
    required Password oldPassword,
    required Password password,
    required Password passwordConfirmation,
    required UploadableMedia photo,
    required BasicTextField billingAddress,
    Country? country,
    // @Default(false) bool isPrivate,
    bool? forceUpdate,
    @Default(AuthProvider.regular) AuthProvider provider,
    // @Default(false) bool? active,
    @Default(false) bool? accountVerified,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
    //
    required NumField<double> bidAmount,
    DateTime? historyDate,
  }) = _User;

  DisplayName get fullName {
    return name?.getOrNull != null
        ? name!
        : lastName.getOrNull?.let((it) => DisplayName('${firstName.getOrEmpty} $it')) ?? DisplayName(firstName.getOrEmpty);
  }

  bool get isEmptyObj => this == User.blank();

  bool get passwordMatches => passwordConfirmation.equals(password);

  factory User.blank({
    String? uid,
    String? fullName,
    String? firstName,
    String? lastName,
    String? email,
    String? phone,
    String? photo,
    String? oldPassword,
    String? password,
    String? passwordConfirmation,
    String? countryName,
    String? billingAddress,
    bool? accountVerified,
    // bool? active,
    // bool? isPrivate,
    bool? forceUpdate,
    AuthProvider? provider,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
    //
    double? bidAmount,
    DateTime? historyDate,
  }) =>
      User(
        id: UniqueId.fromExternal(uid),
        name: DisplayName(fullName),
        firstName: DisplayName(firstName),
        lastName: DisplayName(lastName),
        email: EmailAddress(email),
        phone: Phone(phone),
        oldPassword: Password(oldPassword),
        password: Password(password),
        passwordConfirmation: Password(passwordConfirmation),
        photo: UploadableMedia(MediaField.network(photo), id: uid),
        billingAddress: BasicTextField(billingAddress),
        country: Country.fromName(countryName),
        accountVerified: accountVerified,
        // active: active,
        // isPrivate: isPrivate ?? false,
        provider: provider ?? AuthProvider.regular,
        forceUpdate: forceUpdate,
        createdAt: createdAt,
        updatedAt: updatedAt,
        deletedAt: deletedAt,
        //
        bidAmount: NumField(bidAmount ?? 0),
        historyDate: historyDate,
      );

  Option<FieldObjectException<dynamic>> get signup => firstName.mapped
      .andThen(lastName.mapped)
      .andThen(email.mapped)
      .andThen(password.mapped)
      .andThen(phone.mapped)
      .fold((f) => some(f), (_) => none());

  Option<FieldObjectException<dynamic>> get login => email.mapped.andThen(password.mapped).fold((f) => some(f), (_) => none());

  Option<FieldObjectException<dynamic>> get reset =>
      phone.mapped.andThen(password.mapped).andThen(passwordConfirmation.mapped).fold((f) => some(f), (_) => none());

  Option<FieldObjectException<dynamic>> get passwordUpdate =>
      oldPassword.mapped.andThen(password.mapped).andThen(passwordConfirmation.mapped).fold((f) => some(f), (_) => none());

  Option<FieldObjectException<dynamic>> get profile =>
      firstName.mapped.andThen(lastName.mapped).andThen(email.mapped).andThen(phone.mapped).fold((f) => some(f), (_) => none());

  Option<FieldObjectException<dynamic>> get socials =>
      firstName.mapped.andThen(lastName.mapped).andThen(phone.mapped).fold((f) => some(f), (_) => none());

  static Tuple2<String?, String?> split(String? displayName) {
    final firstName = displayName?.split(' ').firstOrNull();
    final lastName = displayName?.split(' ').getOrNull(1);
    return Tuple2(firstName, lastName);
  }

  String get initials {
    final _fullName = name?.getOrEmpty;
    final _split = split(_fullName);
    final _firstName = _split.value1 ?? firstName.getOrNull;
    final _lastName = _split.value2 ?? lastName.getOrNull;

    final _firstInitial = _firstName != null && _firstName.isNotEmpty ? _firstName.substring(0, 1) : '';
    final _lastInitial = _lastName != null && _lastName.isNotEmpty ? _lastName.substring(0, 1) : '';
    return '$_firstInitial$_lastInitial';
  }
}

@Freezed(when: FreezedWhenOptions.none, map: FreezedMapOptions.none)
class SecurityQuestion extends BaseEntity with _$SecurityQuestion {
  static const placeholder = 'Other';
  const SecurityQuestion._();

  const factory SecurityQuestion({
    required UniqueId<String?> id,
    required UniqueId<String?> userId,
    required BasicTextField question,
    required BasicTextField answer,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _SecurityQuestion;

  factory SecurityQuestion.blank({
    String? id,
    String? userId,
    String? question,
    String? answer,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) =>
      SecurityQuestion(
        id: UniqueId.fromExternal(id ?? question?.toLowerCase().replaceAll(' ', '_')),
        userId: UniqueId.fromExternal(userId),
        question: BasicTextField(question),
        answer: BasicTextField(answer),
        createdAt: createdAt,
        updatedAt: updatedAt,
      );

  static SecurityQuestion custom([String? text]) => SecurityQuestion(
        id: UniqueId.fromExternal('other-custom-security-question'),
        userId: UniqueId.fromExternal(null),
        question: BasicTextField(text ?? placeholder),
        answer: BasicTextField(null),
      );

  bool get isOther => this.id == SecurityQuestion.custom().id;

  bool get isValidQuestion => isOther ? (question.isIdenticalTo(placeholder) ? false : question.isValid) : question.isValid;

  bool get isValidAnswer => answer.isValid;
}
