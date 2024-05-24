import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../utils/components/textstyle.dart';

class TermsAndCondition extends StatelessWidget {
  const TermsAndCondition({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Color(0xff4A4A4A),
          ),
        ),
        title: Text(
          "FAQ",
          style: TextStyles.openSans(
            fontWeight: FontWeight.w600,
            fontSize: 17.sp,
            color: const Color(0xff4A4A4A),
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              children: [
                RichText(
                  text: TextSpan(
                    text: "HelloDukaan ",
                    style: TextStyle(
                      fontSize: 25.sp,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xff4A4A4A),
                    ),
                    children: [
                      TextSpan(
                        text: "Terms & \nConditions",
                        style: TextStyle(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff4A4A4A),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  '''Welcome to Hello Dukaan

  These terms and conditions outline the rules and regulations for the use of Company  Name's Website, located at Website.com.

  By accessing this website we assume you   accept these terms and conditions. Do not continue to use Website Name if you do not agree to take all of the terms and conditions stated on this page.

  The following terminology applies to these Terms and Conditions, Privacy Statement and Disclaimer Notice and all Agreements: “Client”, “You” and “Your” refers to you, the person log on this website and compliant to the Company's terms and conditions. “The Company”, “Ourselves”, f the Company's stated services, in accordance with and subject to, prevailing law of Netherlands. Any use of the above terminology or other words in the singular, plural, capitalization and/or he/she or they, are taken as interchangeable and therefore as referring to same.''',
                  style: TextStyles.openSans(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 40.h,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
