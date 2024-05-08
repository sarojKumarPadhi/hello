import 'package:flutter/material.dart';

class GlobalSizes {
  static double getDeviceHeight(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return height;
  }

  static double getDeviceWidth(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return width;
  }
}
