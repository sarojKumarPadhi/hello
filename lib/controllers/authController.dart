import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

class AuthController extends GetxController {
  RxBool isLogin = false.obs;
  RxBool isPhoneNumberEmpty = true.obs;
  RxBool isOtpEmpty = true.obs;

  RxString errorMessagePhoneNumber = ''.obs;
  TextEditingController phoneAuthController = TextEditingController();
  TextEditingController otpController = TextEditingController();
}
