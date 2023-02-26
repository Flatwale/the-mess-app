import 'package:flutter/material.dart';

class AppConfig {
  static late double screenHeight;
  static late double screenWidth;
  late MediaQueryData _mediaQueryData;

  static Color primColor = Colors.grey.shade800;
  static Color secondColor = Colors.yellow.shade700;
  static Color lightGrey = Colors.grey.shade600;

  void init(context) {
    _mediaQueryData = MediaQuery.of(context);

    screenHeight = _mediaQueryData.size.height;
    screenWidth = _mediaQueryData.size.width;
  }
}
