import 'package:get/get.dart';

class DropdownController extends GetxController {
  var selectedItem = 'Select a Subcategory'.obs;
  RxBool isNewImage = false.obs;
  final subcategories = [
    // Initial value
    'Subcategory 1',
    'Subcategory 2',
    'Subcategory 3',
    // Add more subcategories as needed
  ];

  void changeSelectedItem(String newValue) {
    selectedItem.value = newValue;
  }
}
