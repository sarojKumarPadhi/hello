import 'package:get/get.dart';

class DialogBoxController extends GetxController {
  var selectedValue = 0.obs;

  void setSelectedValue(int value) {
    selectedValue.value = value;
  }
}
