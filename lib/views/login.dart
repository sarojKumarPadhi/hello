import 'package:dekhlo/utils/Strings/strings.dart';
import 'package:dekhlo/utils/components/buttons.dart';
import 'package:dekhlo/utils/routes/routes_names.dart';
import 'package:dekhlo/utils/size/global_size/global_size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: GlobalSizes.getDeviceWidth(context),
              height: GlobalSizes.getDeviceHeight(context) * .35,
              decoration: const BoxDecoration(
                color: Color(0xffFFF5EC),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0),
                ),
              ),
              child: Center(
                child: Image.asset("assest/logo.png"), // Corrected asset path
              ),
            ),
            SizedBox(
              height: GlobalSizes.getDeviceWidth(context) * 0.04,
            ),
            LongButton.longButton(
                color: const Color(0xffFC8019),
                buttonText: AppStrings.logInButtonString,
                textColor: const Color(0xffFFFFFF),
                context: context,
                onPressedCallback: () {
                  Get.toNamed(RouteName.phoneScreen);
                }),
            LongButton.longButton(
                color: const Color(0xffFFFFFF),
                buttonText: AppStrings.signUpButtonText,
                textColor: const Color(0xffFC8019),
                context: context,
                onPressedCallback: () {
                  Get.toNamed(RouteName.phoneScreen);
                }),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Text(AppStrings.arreingText1),
                  ),
                  const TermsAndPolicyText()
                ],
              ),
            )
            // Terms of Services & Privacy Policy
          ],
        ),
      ),
    );
  }
}

class TermsAndPolicyText extends StatelessWidget {
  const TermsAndPolicyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: AppStrings.terms,
                style: const TextStyle(
                  color: Color(0xffFC8019),
                ),
              ),
              const TextSpan(
                  text: ' & ', style: TextStyle(color: Colors.black)),
              TextSpan(
                text: AppStrings.privacyPoilcy,
                style: const TextStyle(color: Color(0xffFC8019)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
