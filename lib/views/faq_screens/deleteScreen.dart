import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../utils/components/deleteReasonController.dart';
import '../../utils/components/textstyle.dart';

class DeleteScreen extends StatelessWidget {
  const DeleteScreen({super.key});

  // Method to generate RadioListTile widgets
  Widget buildRadioListTile({
    required String title,
    required String value,
    required DeleteReasonController controller,
  }) {
    return RadioListTile(
      dense: true,
      fillColor: const MaterialStatePropertyAll(Color(0xffFC8019)),
      title: Text(
        title,
        style: TextStyles.openSans(
          fontWeight: FontWeight.w600,
          fontSize: 16.sp,
          color: const Color(0xff4A4A4A),
        ),
      ),
      value: value,
      groupValue: controller.seletedOption.value,
      onChanged: (option) {
        controller.changeSelectedOption(option: option!);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    DeleteReasonController deleteReasonController =
        Get.put(DeleteReasonController());
    return Scaffold(
      appBar: AppBar(
          // App bar configuration...
          ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            // Widgets before the RadioListTiles...
            SizedBox(height: 30.h),
            Text(
              "Why are you deleting your account ?",
              style: TextStyles.openSans(
                fontWeight: FontWeight.w600,
                fontSize: 18.sp,
                color: const Color(0xff828282),
              ),
            ),
            SizedBox(height: 10.h),
            Material(
              // Material widget configuration...
              child: SizedBox(
                height: 240.h,
                width: 328.w,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // RichText widget...
                      SizedBox(height: 10.h),
                      Obx(() {
                        return Column(
                          children: [
                            // Use the method to generate RadioListTile widgets
                            buildRadioListTile(
                              title: "Too many bugs",
                              value: 'Too many bugs',
                              controller: deleteReasonController,
                            ),
                            buildRadioListTile(
                              title: "App is difficult to use",
                              value: 'App is difficult to use',
                              controller: deleteReasonController,
                            ),
                            buildRadioListTile(
                              title: "Using other app for my store",
                              value: 'Using other app for my store',
                              controller: deleteReasonController,
                            ),
                            buildRadioListTile(
                              title: "Concerned about my privacy",
                              value: 'Concerned about my privacy',
                              controller: deleteReasonController,
                            ),
                            buildRadioListTile(
                              title: "Something else",
                              value: 'Something else',
                              controller: deleteReasonController,
                            ),
                          ],
                        );
                      }),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "Deleting account will do the following",
              style: TextStyles.openSans(
                  fontWeight: FontWeight.w600,
                  fontSize: 18.sp,
                  color: const Color(0xff4A4A4A)),
            ),
            SizedBox(
              height: 10.h,
            ),
            Material(
                elevation: 1,
                child: SizedBox(
                  height: 133.h,
                  width: 328.w,
                  child: Column(
                    children: [
                      guiedlines(title: 'Log out on the all devices'),
                      guiedlines(title: 'Log out on the all devices'),
                      guiedlines(title: 'Log out on the all devices'),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }

  Row guiedlines({required String title}) {
    return Row(
      children: [
        SvgPicture.asset("assest/small_dot.svg"),
        SizedBox(
          width: 10.w,
        ),
        Text(
          title,
          style: TextStyles.openSans(
              fontWeight: FontWeight.w600,
              fontSize: 14.sp,
              color: const Color(0xff4A4A4A)),
        )
      ],
    );
  }
}
