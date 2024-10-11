library hive_enum.dart;

import 'package:hive_flutter/hive_flutter.dart';
import 'package:auctionvillage/core/presentation/index.dart';

abstract class HiveEnumClass extends BaseEnum {
  const HiveEnumClass(this.name);

  @override
  @HiveField(1)
  final String name;
}
