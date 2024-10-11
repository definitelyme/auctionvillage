// GENERATED CODE - DO NOT MODIFY BY HAND

part of server_field_errors.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ServerFieldErrors _$$_ServerFieldErrorsFromJson(Map<String, dynamic> json) =>
    _$_ServerFieldErrors(
      code: json['code'] as int?,
      message: json['message'] as String?,
      messages: json['messages'] == null
          ? null
          : _ErrorMessage.fromJson(json['messages'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ServerFieldErrorsToJson(
    _$_ServerFieldErrors instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', instance.code);
  writeNotNull('message', instance.message);
  writeNotNull('messages', instance.messages?.toJson());
  return val;
}

_$__ErrorMessage _$$__ErrorMessageFromJson(Map<String, dynamic> json) =>
    _$__ErrorMessage(
      name: (json['name'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      fullName: (json['full_name'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      firstName: (json['first_name'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      lastName: (json['last_name'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      token:
          (json['token'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      email:
          (json['email'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      gender:
          (json['gender'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      age: (json['age'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      phone:
          (json['phone'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      password: (json['password'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      oldPassword: (json['current_password'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      passwordConfirmation: (json['password_confirmation'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      code: (json['code'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      type: (json['type'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      description: (json['description'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      amount:
          (json['amount'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      currencyId: (json['currency_id'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      country: (json['country'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      bankId: (json['bank_id'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      plan: (json['plan'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      paymentMethod: (json['payment_method'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      countryId: (json['country_id'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      state:
          (json['state'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      basePrice: (json['basePrice'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      reservedPrice: (json['reservedPrice'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      itemName: (json['item_name'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      quantity: (json['quantity'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      supportMessage: (json['message'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      transactionPin: (json['transactionPin'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      confirmTransactionPin: (json['confirmTransactionPin'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
    );

Map<String, dynamic> _$$__ErrorMessageToJson(_$__ErrorMessage instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('full_name', instance.fullName);
  writeNotNull('first_name', instance.firstName);
  writeNotNull('last_name', instance.lastName);
  writeNotNull('token', instance.token);
  writeNotNull('email', instance.email);
  writeNotNull('gender', instance.gender);
  writeNotNull('age', instance.age);
  writeNotNull('phone', instance.phone);
  writeNotNull('password', instance.password);
  writeNotNull('current_password', instance.oldPassword);
  writeNotNull('password_confirmation', instance.passwordConfirmation);
  writeNotNull('code', instance.code);
  writeNotNull('type', instance.type);
  writeNotNull('description', instance.description);
  writeNotNull('amount', instance.amount);
  writeNotNull('currency_id', instance.currencyId);
  writeNotNull('country', instance.country);
  writeNotNull('bank_id', instance.bankId);
  writeNotNull('plan', instance.plan);
  writeNotNull('payment_method', instance.paymentMethod);
  writeNotNull('country_id', instance.countryId);
  writeNotNull('state', instance.state);
  writeNotNull('basePrice', instance.basePrice);
  writeNotNull('reservedPrice', instance.reservedPrice);
  writeNotNull('item_name', instance.itemName);
  writeNotNull('quantity', instance.quantity);
  writeNotNull('images', instance.images);
  writeNotNull('message', instance.supportMessage);
  writeNotNull('transactionPin', instance.transactionPin);
  writeNotNull('confirmTransactionPin', instance.confirmTransactionPin);
  return val;
}
