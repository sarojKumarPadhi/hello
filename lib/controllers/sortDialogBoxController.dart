import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogBoxController extends GetxController {
  var selectedValue = 0.obs;
  TextEditingController locacationController = TextEditingController();

  void setSelectedValue(int value) {
    selectedValue.value = value;
  }

  RxInt selectedTab = 0.obs;
}
