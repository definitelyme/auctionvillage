import 'package:flutter/painting.dart';

mixin ActivityStatus {
  String get value;

  Color get color;

  Color get bgColor => color.withOpacity(0.07);
}
