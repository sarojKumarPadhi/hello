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
                buttonText: 'Login',
                textColor: const Color(0xffFFFFFF),
                context: context,
                onPressedCallback: () {
                  Get.toNamed(RouteName.phoneScreen);
                }),
            LongButton.longButton(
                color: const Color(0xffFFFFFF),
                buttonText: 'Signup',
                textColor: const Color(0xffFC8019),
                context: context,
                onPressedCallback: () {
                  Get.toNamed(RouteName.phoneScreen);
                }),
            const Spacer(),
            const Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Text("By Continue, you are agreeing to the"),
                  ),
                  TermsAndPolicyText()
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
          text: const TextSpan(
            children: [
              TextSpan(
                text: 'Terms of Services',
                style: TextStyle(
                  color: Color(0xffFC8019),
                ),
              ),
              TextSpan(text: ' & ', style: TextStyle(color: Colors.black)),
              TextSpan(
                text: 'Privacy Policy',
                style: TextStyle(color: Color(0xffFC8019)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
