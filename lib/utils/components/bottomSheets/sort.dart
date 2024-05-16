import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../controllers/sortDialogBoxController.dart';
import '../buttons.dart';
import '../textstyle.dart';

sortDialogBox({required context}) {
  final DialogBoxController dialogBoxController =
      Get.put(DialogBoxController());
  return Get.bottomSheet(
    Container(
        height: 240.h,
        width: 290.w,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10.r),
              topRight: Radius.circular(10.r),
            )),
        child: Obx(() {
          return Column(
            children: [
              SizedBox(
                height: 16.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Sort by Distance/Price",
                    style: TextStyles.openSans(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xff4A4A4A)),
                  )
                ],
              ),
              SizedBox(
                height: 8.h,
              ),
              const Divider(
                color: Colors.grey,
              ),
              ListTile(
                title: Text(
                  'Low to High',
                  style: TextStyles.openSans(
                      color: const Color(0xff4A4A4A),
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                ),
                leading: Radio(
                  fillColor: const MaterialStatePropertyAll(Color(0xffFC8019)),
                  value: 1,
                  groupValue: dialogBoxController.selectedValue.value,
                  onChanged: (value) {
                    dialogBoxController.setSelectedValue(value!);
                  },
                ),
              ),
              ListTile(
                title: Text(
                  'High to Low',
                  style: TextStyles.openSans(
                      color: const Color(0xff4A4A4A),
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                ),
                leading: Radio(
                  fillColor: const MaterialStatePropertyAll(Color(0xffFC8019)),
                  value: 2,
                  groupValue: dialogBoxController.selectedValue.value,
                  onChanged: (value) {
                    dialogBoxController.setSelectedValue(value!);
                  },
                ),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Buttons.coustoumTextButton(onPressedCallback: () {}),
                  Buttons.shortButton(
                      onPressedCallback: () {
                        Get.back();
                      },
                      context: context,
                      buttonText: 'Apply',
                      textColor: Colors.white,
                      color: const Color(0xffFC8019)),
                ],
              )
            ],
          );
        })),
    isDismissible: true,
  );
}
