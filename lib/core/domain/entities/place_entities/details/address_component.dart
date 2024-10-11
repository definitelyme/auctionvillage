// ignore_for_file: constant_identifier_names

library address_component.dart;

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'address_component.freezed.dart';

@Freezed(when: FreezedWhenOptions.none, map: FreezedMapOptions.none)
class AddressComponent with _$AddressComponent {
  const AddressComponent._();

  const factory AddressComponent({
    required BasicTextField longName,
    required BasicTextField shortName,
    @Default(KtList.empty()) KtList<AddressComponentType> types,
  }) = _AddressComponent;
}

enum AddressComponentType {
  administrative_area_level_1('administrative_area_level_1'),
  administrative_area_level_2('administrative_area_level_2'),
  administrative_area_level_3('administrative_area_level_3'),
  administrative_area_level_4('administrative_area_level_4'),
  administrative_area_level_5('administrative_area_level_5'),
  country('country'),
  geocode('geocode'),
  landmark('landmark'),
  locality('locality'),
  plus_code('plus_code'),
  point_of_interest('point_of_interest'),
  political('political'),
  premise('premise'),
  postal_town('postal_town'),
  postal_code('postal_code'),
  route('route'),
  street_number('street_number'),
  street_address('street_address'),
  sublocality('sublocality'),
  town_square('town_square'),
  neighborhood('neighborhood'),
  sublocality_level_1('sublocality_level_1'),
  sublocality_level_2('sublocality_level_2'),
  sublocality_level_3('sublocality_level_3'),
  sublocality_level_4('sublocality_level_4'),
  sublocality_level_5('sublocality_level_5'),
  unspecified('unspecified');

  final String name;

  const AddressComponentType(this.name);

  static Set<AddressComponentType> get items => values.toSet();

  static KtList<AddressComponentType> get list => KtList.from(values);

  static AddressComponentType valueOf(String name) {
    switch (name) {
      case 'administrative_area_level_1':
        return administrative_area_level_1;
      case 'administrative_area_level_2':
        return administrative_area_level_2;
      case 'administrative_area_level_3':
        return administrative_area_level_3;
      case 'administrative_area_level_4':
        return administrative_area_level_4;
      case 'administrative_area_level_5':
        return administrative_area_level_5;
      case 'country':
        return country;
      case 'geocode':
        return geocode;
      case 'landmark':
        return landmark;
      case 'locality':
        return locality;
      case 'plus_code':
        return plus_code;
      case 'point_of_interest':
        return point_of_interest;
      case 'political':
        return political;
      case 'premise':
        return premise;
      case 'postal_town':
        return postal_town;
      case 'postal_code':
        return postal_code;
      case 'route':
        return route;
      case 'street_number':
        return street_number;
      case 'street_address':
        return street_address;
      case 'sublocality':
        return sublocality;
      case 'town_square':
        return town_square;
      case 'neighborhood':
        return neighborhood;
      case 'sublocality_level_1':
        return sublocality_level_1;
      case 'sublocality_level_2':
        return sublocality_level_2;
      case 'sublocality_level_3':
        return sublocality_level_3;
      case 'sublocality_level_4':
        return sublocality_level_4;
      case 'sublocality_level_5':
        return sublocality_level_5;
      case 'unspecified':
      default:
        return unspecified;
    }
  }
}
