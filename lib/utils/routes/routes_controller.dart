import 'package:dekhlo/utils/routes/routes_names.dart';
import 'package:dekhlo/views/home_screen_buyer.dart/home_screenBuyer.dart';
import 'package:dekhlo/views/lang.dart';
import 'package:dekhlo/views/locationPages/change_location.dart';
import 'package:dekhlo/views/login.dart';
import 'package:dekhlo/views/profileScreen/buyerProfile.dart';
import 'package:dekhlo/views/singUpPages/Signup_otp.dart';
import 'package:dekhlo/views/singUpPages/Singup_phone.dart';
import 'package:get/get.dart';

import '../../views/loginPages/login_otp.dart';
import '../../views/loginPages/login_phone.dart';
import '../../views/postRequements/postRequements.dart';
import '../../views/profileScreen/editProfile.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(name: RouteName.loginOptional, page: () => const Login()),
    GetPage(name: RouteName.signPhoneScreen, page: () => const Phone()),
    GetPage(name: RouteName.signOtpScreen, page: () => const OTP()),
    GetPage(name: RouteName.langScreen, page: () => const Lag()),
    GetPage(name: RouteName.logInphoneScreen, page: () => const LogInPhone()),
    GetPage(name: RouteName.logInotpScreen, page: () => const LogINOTP()),
    GetPage(name: RouteName.homeBuyerScreen, page: () => const HomeBuyer()),
    GetPage(name: RouteName.changeLocation, page: () => ChangeLocation()),
    GetPage(
        name: RouteName.postRequirements, page: () => const PostRequirements()),
    GetPage(name: RouteName.buyerProfile, page: () => const BuyerProfile()),
    GetPage(name: RouteName.editProfile, page: () => const EditProfile())
  ];
}
