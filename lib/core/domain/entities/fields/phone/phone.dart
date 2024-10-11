library phone.dart;

import 'package:dartz/dartz.dart';
import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/core/domain/response/field_object/field_object_exception.dart';
import 'package:auctionvillage/core/domain/validator/validator.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:kt_dart/kt.dart' hide StandardKt;

class Phone extends StringFieldObject {
  static const Phone kDefault = Phone._(Right(''), country: Country.kDefault);

  static KtList<Country> get _countries => Country.countries;

  static Country? get _defaultCountry => Country.defaultCountry;

  @override
  final Either<FieldObjectException<String>, String?> value;
  final Country? country;

  factory Phone(String? phone, {Country? country, FieldValidation mode = FieldValidation.basic}) {
    return Phone._(
      Validator.phoneNumberValidator(phone, mode: mode),
      country: country ?? _defaultCountry,
    );
  }

  bool get isEmpty => value.fold((_) => true, (r) => r!.isEmpty);

  Phone? get formatted => value.fold(
        (f) => null,
        (val) {
          if (country?.dialCode.getOrNull != null) {
            if (val!.contains(country!.dialCode.getOrEmpty)) {
              return Phone(val.trim().removeAllBlankSpace().removeNewLines(), country: country);
            } else {
              final value = '${country!.dialCode.getOrEmpty}$val';
              return Phone((value.startsWith('+') ? value : '+$value').trim().removeAllBlankSpace().removeNewLines(), country: country);
            }
          } else {
            return Phone('$val'.trim().removeAllBlankSpace().removeNewLines(), country: country);
          }
        },
      );

  Phone? get noDialCode => value.fold(
        (f) => null,
        (val) {
          if (country?.dialCode != null) {
            return Phone(val?.replaceAll(country!.dialCode.getOrEmpty, '').replaceAll('+', ''), country: country);
          }
          return Phone(val);
        },
      );

  static Future<Phone?> parseString(String? phone, {Country? country, bool format = false}) async {
    var _country = format ? (country ?? _defaultCountry) : country;

    try {
      if (phone != null && phone.length > 2) {
        final phoneNumberData = await PhoneNumber.getRegionInfoFromPhoneNumber(phone, _country?.iso.getOrEmpty ?? '');

        _country = _countries.firstOrNull((e) => e.iso.getOrEmpty.toLowerCase() == phoneNumberData.isoCode?.toLowerCase()) ?? _country;

        final parsed = await PhoneNumber.getParsableNumber(phoneNumberData);

        if (!format && parsed.isEmpty) {
          return Phone(phoneNumberData.phoneNumber, country: _country);
        } else if (!format && parsed.isNotEmpty) {
          return Phone(parsed, country: _country);
        } else if (format && parsed.isNotEmpty) {
          return Phone(parsed, country: _country);
        } else {
          return Phone(phone, country: _country);
        }
      } else {
        return Phone(phone, country: _country);
      }
    } catch (e, tr) {
      await Utils.report(e, tr, reason: 'Phone.parseString($phone, country: ${country?.iso.getOrNull}, format: $format)');
      return Phone(phone, country: _country);
    }
  }

  const Phone._(this.value, {this.country});

  dynamic get _getOrError => formatted?.value.fold((f) => 'Phone(${f.message})', id);

  Phone countryChanged(Country? country, {String? newPhone}) =>
      value.fold((l) => Phone(newPhone, country: country), (it) => Phone(it, country: country));

  @override
  Phone copyWith(String? newValue, {Country? country, FieldValidation mode = FieldValidation.basic}) =>
      value.fold((l) => Phone(newValue, country: country, mode: mode), (it) => Phone(it, country: country, mode: mode));

  @override
  bool operator ==(other) {
    return identical(other, this) ||
        (other.runtimeType == runtimeType &&
            other is Phone &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality().equals(other.country, country));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(value), const DeepCollectionEquality().hash(country));

  @override
  String toString() => '$_getOrError';
}
