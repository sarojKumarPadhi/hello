import 'package:dekhlo/utils/components/buttons.dart';
import 'package:dekhlo/utils/components/heading.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/components/coustoumTextField.dart';
import '../../utils/components/textstyle.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: Text(
          "My profile",
          style: TextStyles.openSans(
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: const Color(0xff4A4A4A)),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10.w),
            child: const Icon(Icons.close,
                color: Color(
                  0xff4A4A4A,
                )),
          )
        ],
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back,
              color: Color(0xff4A4A4A),
            )),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 15.h,
          ),
          Align(
              alignment: Alignment.center,
              child: Image.asset("assest/profileImage.png")),
          SizedBox(
            height: 10.h,
          ),
          Align(
              alignment: Alignment.center,
              child: Text(
                "Edit profile image",
                style: TextStyles.openSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xffFC8019)),
              )),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
            child: const SmallHeading(headingText: "Name"),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: CustomTextField(
              controller: nameController,
              hintText: '',
              height: 44.h,
              width: 350.w,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
            child: const SmallHeading(headingText: "Email address"),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: CustomTextField(
              controller: emailController,
              hintText: '',
              height: 44.h,
              width: 350.w,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
            child: const SmallHeading(headingText: "Phone number"),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: CustomTextField(
              controller: phoneController,
              hintText: '',
              height: 44.h,
              width: 350.w,
            ),
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsets.only(bottom: 20.h),
            child: Buttons.longButton(
                color: const Color(0xffFC8019),
                context: context,
                onPressedCallback: () {},
                buttonText: 'Update',
                textColor: Colors.white),
          )
        ],
      ),
    );
  }
}
