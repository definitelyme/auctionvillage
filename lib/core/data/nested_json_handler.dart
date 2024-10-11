import 'package:auctionvillage/utils/utils.dart';

const _key = 'data';

T nested<T>(Map<String, dynamic> json, T Function(Map<String, dynamic> json) fromJsonT, {String? key = _key}) =>
    fromJsonT(json.containsKey(key) ? (json[key] == null ? {} : (json[key] as Map).mapToStringDynamic) : json);
