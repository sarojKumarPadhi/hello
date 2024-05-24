import 'package:dekhlo/utils/components/coustoumTextField.dart';
import 'package:dekhlo/utils/components/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SetUpProduct extends StatelessWidget {
  SetUpProduct({super.key});
  final TextEditingController nameEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        shadowColor: Colors.black,
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
          "Setup your store",
          style: TextStyles.openSans(
            fontWeight: FontWeight.w600,
            fontSize: 17.sp,
            color: const Color(0xff4A4A4A),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20.h,
          ),
          Center(
            child: Container(
              height: 100.h,
              width: 150.w,
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xffC4C4C4), // Border color
                  width: 2.0.w, // Border width
                ),
                borderRadius: BorderRadius.circular(10.0.r), // Border radius
              ),
              child: Padding(
                padding:
                    EdgeInsets.all(MediaQuery.of(context).size.height * 0.01),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),
                    SvgPicture.asset(
                      "assest/camera_orange.svg",
                      height: 30.h,
                      width: 50.w, // Corrected spelling of "assets"
                      // Adjust height as needed
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      "Add your store images",
                      style: TextStyles.openSans(
                          fontWeight: FontWeight.w400,
                          fontSize: 10.sp,
                          color: const Color(0xffFC8019)),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.w),
            child: Column(
              children: [
                Text(
                  "Store Name",
                  style: TextStyles.openSans(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff313333)),
                ),
                CustomTextField(
                    controller: nameEditingController,
                    hintText: "Enter your shop name",
                    height: 50.h,
                    width: 200.w)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
