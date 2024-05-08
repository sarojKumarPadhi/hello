import 'package:dekhlo/utils/routes/routes_names.dart';
import 'package:dekhlo/views/lang.dart';
import 'package:dekhlo/views/login.dart';
import 'package:dekhlo/views/otp.dart';
import 'package:dekhlo/views/phone.dart';
import 'package:get/get.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(name: RouteName.loginOptional, page: () => const Login()),
    GetPage(name: RouteName.phoneScreen, page: () => const Phone()),
    GetPage(name: RouteName.otpScreen, page: () => const OTP()),
    GetPage(name: RouteName.langScreen, page: () => const Lag()),
  ];
}
