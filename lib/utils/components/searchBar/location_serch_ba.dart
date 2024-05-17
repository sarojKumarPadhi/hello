import 'package:dekhlo/controllers/sortDialogBoxController.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../routes/routes_names.dart';
import '../textstyle.dart';

Material locationSerchBar({required bool isShortPage, required double width}) {
  DialogBoxController dialogBoxController = Get.put(DialogBoxController());
  return Material(
    elevation: 3,
    child: Container(
      height: 40.h,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: const Icon(Icons.search, color: Colors.grey),
          ),
          Expanded(
            child: TextField(
              controller: dialogBoxController.locacationController,
              onChanged: (val) {
                isShortPage ? Get.toNamed(RouteName.changeLocation) : () {};
              },
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Search by area, landmark, street address... ',
                hintStyle: TextStyles.openSans(
                    fontWeight: FontWeight.w600,
                    fontSize: 12.sp,
                    color: Color(0xffC4C4C4)),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
