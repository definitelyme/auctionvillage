library place_type.dart;

import 'dart:async';

PlaceType deserializePlaceType(String? json) => PlaceType.valueOf('$json');
FutureOr<String?> serializePlaceType(PlaceType? object) => object?.name;

enum PlaceType {
  airport('airport'),
  school('school'),
  bus_station('bus_station'),
  book_store('book_store'),
  cafe('cafe'),
  doctor('doctor'),
  fire_station('fire_station'),
  gas_station('gas_station'),
  hospital('hospital'),
  university('university'),
  atm('atm'),
  train_station('train_station'),
  cemetery('cemetery'),
  church('church'),
  bar('bar'),
  supermarket('supermarket'),
  secondary_school('secondary_school'),
  dentist('dentist'),
  restaurant('restaurant'),
  primary_school('primary_school'),
  stadium('stadium'),
  spa('spa'),
  convenience_store('convenience_store'),
  taxi_stand('taxi_stand'),
  transit_station('transit_station'),
  post_office('post_office'),
  pharmacy('pharmacy'),
  parking('parking'),
  park('park'),
  physiotherapist('physiotherapist'),
  drugstore('drugstore'),
  electronics_store('electronics_store'),
  electrician('electrician'),
  hardware_store('hardware_store'),
  museum('museum'),
  mosque('mosque'),
  veterinary_care('veterinary_care'),
  local_government_office('local_government_office'),
  library('library'),
  zoo('zoo'),
  maternity('maternity');

  final String name;

  const PlaceType(this.name);

  static Set<PlaceType> get items => values.toSet();

  static List<PlaceType> get list => values.toList(growable: false);

  static PlaceType valueOf(String name) {
    switch (name) {
      case 'airport':
        return airport;
      case 'school':
        return school;
      case 'bus_station':
        return bus_station;
      case 'book_store':
        return book_store;
      case 'cafe':
        return cafe;
      case 'doctor':
        return doctor;
      case 'fire_station':
        return fire_station;
      case 'gas_station':
        return gas_station;
      case 'hospital':
        return hospital;
      case 'university':
        return university;
      case 'atm':
        return atm;
      case 'train_station':
        return train_station;
      case 'cemetery':
        return cemetery;
      case 'church':
        return church;
      case 'bar':
        return bar;
      case 'supermarket':
        return supermarket;
      case 'secondary_school':
        return secondary_school;
      case 'dentist':
        return dentist;
      case 'restaurant':
        return restaurant;
      case 'primary_school':
        return primary_school;
      case 'stadium':
        return stadium;
      case 'spa':
        return spa;
      case 'convenience_store':
        return convenience_store;
      case 'taxi_stand':
        return taxi_stand;
      case 'transit_station':
        return transit_station;
      case 'post_office':
        return post_office;
      case 'pharmacy':
        return pharmacy;
      case 'parking':
        return parking;
      case 'park':
        return park;
      case 'physiotherapist':
        return physiotherapist;
      case 'drugstore':
        return drugstore;
      case 'electronics_store':
        return electronics_store;
      case 'electrician':
        return electrician;
      case 'hardware_store':
        return hardware_store;
      case 'museum':
        return museum;
      case 'mosque':
        return mosque;
      case 'veterinary_care':
        return veterinary_care;
      case 'local_government_office':
        return local_government_office;
      case 'library':
        return library;
      case 'zoo':
        return zoo;
      case 'maternity':
        return maternity;
      default:
        throw Exception('Unknown PlaceType: $name');
    }
  }
}
