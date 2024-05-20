import 'package:dekhlo/utils/routes/routes_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../controllers/sortDialogBoxController.dart';
import '../buttons.dart';
import '../searchBar/location_serch_ba.dart';
import '../textstyle.dart';

sortDialogBox({required context}) {
  final DialogBoxController dialogBoxController =
      Get.put(DialogBoxController());

  return Get.bottomSheet(
    DefaultTabController(
      length: 2, // Number of tabs
      child: Container(
        height: 240.h,
        width: 290.w,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.r),
            topRight: Radius.circular(10.r),
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 16.h,
            ),
            TabBar(
              indicatorColor: Colors.white,
              onTap: (index) {
                dialogBoxController.setSelectedValue(index);
              },
              tabs: [
                Obx(
                  () => Tab(
                    child: Container(
                      child: Text(
                        'Sort by Price',
                        style: TextStyle(
                          color: dialogBoxController.selectedTab.value == 0
                              ? Colors.black
                              : Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
                Obx(
                  () => Tab(
                    child: Text(
                      'Distance',
                      style: TextStyle(
                        color: dialogBoxController.selectedTab.value == 1
                            ? Colors.black
                            : Colors.grey,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  // Sort by Price Tab
                  _buildSortByPriceTab(context, dialogBoxController),
                  // Sort by Distance Tab
                  _buildSortByDistanceTab(context),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
    isDismissible: true,
  );
}

Widget _buildSortByPriceTab(
    BuildContext context, DialogBoxController dialogBoxController) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 16.w),
    child: Column(
      children: [
        SizedBox(
          height: 2.h,
        ),
        const Divider(
          color: Colors.grey,
        ),
        Obx(() => ListTile(
              title: Text(
                'Low to High',
                style: TextStyles.openSans(
                    color: const Color(0xff4A4A4A),
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
              leading: Radio(
                fillColor: MaterialStateProperty.all(const Color(0xffFC8019)),
                value: 1,
                groupValue: dialogBoxController.selectedValue.value,
                onChanged: (value) {
                  dialogBoxController.setSelectedValue(value!);
                },
              ),
            )),
        Obx(() => ListTile(
              title: Text(
                'High to Low',
                style: TextStyles.openSans(
                    color: const Color(0xff4A4A4A),
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
              leading: Radio(
                fillColor: MaterialStateProperty.all(const Color(0xffFC8019)),
                value: 2,
                groupValue: dialogBoxController.selectedValue.value,
                onChanged: (value) {
                  dialogBoxController.setSelectedValue(value!);
                },
              ),
            )),
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
    ),
  );
}

Widget _buildSortByDistanceTab(context) {
  return Column(
    children: [
      const Divider(
        color: Colors.grey,
      ),
      Padding(
        padding: EdgeInsets.only(left: 14.w),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Your Location",
            style:
                TextStyles.openSans(fontWeight: FontWeight.w600, fontSize: 15),
          ),
        ),
      ),
      SizedBox(
        height: 5.h,
      ),
      locationSerchBar(isShortPage: true, width: 310.h),
      SizedBox(
        height: 5.h,
      ),
      Padding(
        padding: EdgeInsets.only(left: 14.w),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Use my current location",
            style: TextStyles.openSans(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: const Color(0xffFC8019)),
          ),
        ),
      ),
      const Spacer(),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Buttons.coustoumTextButton(onPressedCallback: () {
            Get.back();
          }),
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
}
