import 'package:dekhlo/utils/components/buttons.dart';
import 'package:dekhlo/utils/components/textstyle.dart';
import 'package:dekhlo/utils/routes/routes_names.dart';
import 'package:dekhlo/utils/size/global_size/global_size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../utils/components/Coustum_RichText.dart';

class Phone extends StatelessWidget {
  const Phone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Center(
                  child: Text(
                "Welcome back!",
                style: TextStyles.openSans(),
              )),
            ),
            SizedBox(height: GlobalSizes.getDeviceHeight(context) * 0.01),
            Text(
              "Enter your mobile number, We will",
              style: TextStyles.openSans(
                  fontSize: 12, fontWeight: FontWeight.w400),
            ),
            Text("send you OTP",
                style: TextStyles.openSans(
                    fontSize: 12, fontWeight: FontWeight.w400)),
            SizedBox(
              height: GlobalSizes.getDeviceHeight(context) * .05,
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                // controller: authController.phoneAuthController,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.grey), // Border color when focused
                  ),
                  label: Text(
                    "Mobile Number",
                    style: TextStyle(color: Colors.grey),
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(
              height: GlobalSizes.getDeviceHeight(context) * 0.04,
            ),
            LongButton.longButton(
                color: const Color(0xffFC8019),
                buttonText: 'Next',
                textColor: Colors.white,
                context: context,
                onPressedCallback: () {
                  Get.toNamed(RouteName.otpScreen);
                }),
            const Spacer(),
            Padding(
              padding: EdgeInsets.only(
                  bottom: GlobalSizes.getDeviceHeight(context) * 0.04),
              child: const CoustumRichText(
                text1: 'Don’t have an account? ',
                text2: 'Signup',
              ),
            )
          ],
        ),
      ),
    );
  }
}
