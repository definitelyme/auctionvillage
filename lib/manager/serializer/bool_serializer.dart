import 'package:auctionvillage/utils/utils.dart';
import 'package:json_annotation/json_annotation.dart';

class BooleanSerializer implements JsonConverter<bool?, dynamic> {
  const BooleanSerializer();

  bool _fromJson(dynamic value) {
    if (value == null)
      return false;
    else if (value is int)
      return (int.tryParse('$value') == 0 ? false : true);
    else if (value is String) {
      final _value = value.toLowerCase();
      return _value.contains('true') || _value == '1' || _value.contains('yes') || _value.contains('success');
    }

    return value as bool;
  }

  @override
  bool fromJson(dynamic value) => _fromJson(value);

  @override
  dynamic toJson(bool? instance) => instance;

  static String? toJsonString(bool? instance) => (instance != null && instance ? 'yes' : 'no').titleCase();
}
