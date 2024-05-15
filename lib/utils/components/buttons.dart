import 'package:dekhlo/utils/components/textstyle.dart';
import 'package:dekhlo/utils/size/global_size/global_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Buttons {
  static Padding longButton(
      {required Color color,
      required BuildContext context,
      required VoidCallback onPressedCallback,
      required String buttonText,
      required Color textColor}) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: GlobalSizes.getDeviceWidth(context) * 0.05,
          vertical: GlobalSizes.getDeviceHeight(context) * 0.01),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: onPressedCallback,
          style: ElevatedButton.styleFrom(
            side: const BorderSide(
              color: Color(0xffFC8019),
              width: 0,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            backgroundColor: color,
            padding: EdgeInsets.all(GlobalSizes.getDeviceWidth(context) * 0.04),
          ),
          child: Text(
            buttonText,
            style: TextStyle(
              fontSize: 18.0,
              color: textColor, // Text color
            ),
          ),
        ),
      ),
    );
  }

  static Padding shortButton(
      {required Color color,
      required BuildContext context,
      required VoidCallback onPressedCallback,
      required String buttonText,
      required Color textColor}) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: GlobalSizes.getDeviceWidth(context) * 0.016,
        vertical: GlobalSizes.getDeviceHeight(context) * 0.009,
      ),
      child: SizedBox(
        width:
            GlobalSizes.getDeviceWidth(context) * 0.3, // Adjust width as needed
        height: GlobalSizes.getDeviceHeight(context) *
            0.05, // Adjust height as needed
        child: ElevatedButton(
          onPressed: onPressedCallback,
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            backgroundColor: color,
            padding: EdgeInsets.fromLTRB(
                GlobalSizes.getDeviceWidth(context) * -0.1,
                GlobalSizes.getDeviceHeight(context) * 0.001,
                GlobalSizes.getDeviceWidth(context) * -0.1,
                GlobalSizes.getDeviceHeight(context) * 0.001),
          ),
          child: Text(
            buttonText,
            style: TextStyle(
              fontSize: 16.0, // Adjust font size as needed
              color: textColor, // Text color
            ),
          ),
        ),
      ),
    );
  }

  static GestureDetector veryShortButton(
      {required Color color,
      required BuildContext context,
      required VoidCallback onPressedCallback,
      required String buttonText,
      required Color textColor}) {
    return GestureDetector(
      onTap: onPressedCallback,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.127,
        height: MediaQuery.of(context).size.height * 0.04,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 12, // Adjust font size as needed
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }

  static Padding smallCallButton() {
    return Padding(
        padding: EdgeInsets.only(right: 7.w),
        child: SizedBox(
          height: 24.h,
          width: 38.w,
          child: TextButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          4.0.r), // Adjust radius as needed
                    ),
                  ),
                  side: MaterialStateProperty.all(
                      BorderSide(color: Color(0xffFC8019))),
                  foregroundColor: MaterialStatePropertyAll(Color(0xffFC8019))),
              onPressed: () {},
              child: Text(
                "call",
                style: TextStyles.openSans(
                    fontWeight: FontWeight.w600, fontSize: 11.5.sp),
              )),
        ));
  }

  static Padding smallDealDoneButton() {
    return Padding(
        padding: EdgeInsets.only(right: 7.w),
        child: SizedBox(
          height: 34.h,
          width: 55.w,
          child: TextButton(
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Color(0xffFC8019)),
                  foregroundColor:
                      MaterialStatePropertyAll(Color(0xffFFFFFFF))),
              onPressed: () {},
              child: Center(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(6.h, 0.h, 0.h, 0.h),
                  child: Text(
                    "Deal Done",
                    style: TextStyles.openSans(
                        fontWeight: FontWeight.w600, fontSize: 11.sp),
                  ),
                ),
              )),
        ));
  }

  static coustoumTextButton({required VoidCallback onPressedCallback}) {
    return TextButton(
        onPressed: () {},
        child: Text(
          "Clear",
          style: TextStyles.openSans(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Color(0xff4A4A4A)),
        ));
  }
}
