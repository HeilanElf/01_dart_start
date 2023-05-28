// 引入库或类
import 'dart:math';
import 'Class.dart';

// 枚举
enum PlanetType { terrestrial, gas, ice }

// 继承
class Orbiter extends Spacecraft {
  double altitude;

  Orbiter(super.name, DateTime super.launchDate, this.altitude);
}