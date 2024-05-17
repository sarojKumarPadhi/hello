import 'package:dekhlo/utils/components/buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../controllers/dropDownController.dart';
import '../../utils/components/coustoumTextField.dart';
import '../../utils/components/heading.dart';
import '../../utils/components/textstyle.dart';
import '../../utils/coustoumDropDown.dart';

class PostRequirements extends StatelessWidget {
  const PostRequirements({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DropdownController dropdownController = Get.put(DropdownController());
    TextEditingController brandController = TextEditingController();
    TextEditingController modelController = TextEditingController();
    TextEditingController sizeController = TextEditingController();
    TextEditingController quntityController = TextEditingController();
    TextEditingController commentsController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              color: Color(0xff4A4A4A),
            )),
        title: Text(
          "Posting requirement",
          style: TextStyles.openSans(
              fontWeight: FontWeight.w600,
              fontSize: 17.sp,
              color: const Color(0xff4A4A4A)),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 10.h,
              ),
              const SmallHeading(
                headingText: 'Category',
              ),
              SizedBox(
                height: 5.h,
              ),
              CustomDropdownFormField(
                items: dropdownController.subcategories,
                onChanged: (value) {},
                onSaved: (value) {},
              ),
              SizedBox(
                height: 5.h,
              ),
              const SmallHeading(
                headingText: 'Sub Category',
              ),
              SizedBox(
                height: 5.h,
              ),
              CustomDropdownFormField(
                items: dropdownController.subcategories,
                onChanged: (value) {},
                onSaved: (value) {},
              ),
              SizedBox(
                height: 5.h,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Text("Brand",
                        style: TextStyles.openSans(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xff4A4A4A))),
                    Text("(optional)",
                        style: TextStyles.openSans(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xffA9A7A7))),
                  ],
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              CustomTextField(
                controller: brandController,
                hintText: '',
                height: 55.h,
                width: 350.w,
              ),
              SizedBox(
                height: 5.h,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Text("Model no",
                        style: TextStyles.openSans(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xff4A4A4A))),
                    Text("(optional)",
                        style: TextStyles.openSans(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xffA9A7A7))),
                  ],
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              CustomTextField(
                controller: modelController,
                hintText: '',
                height: 55.h,
                width: 350.w,
              ),
              SizedBox(
                height: 5.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SmallHeading(
                        headingText: 'Size',
                      ),
                      CustomTextField(
                        controller: sizeController,
                        hintText: '',
                        height: 55.h,
                        width: 100.w,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SmallHeading(
                        headingText: 'Qty',
                      ),
                      CustomTextField(
                        hintText: '',
                        height: 55.h,
                        width: 100.w,
                        controller: quntityController,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SmallHeading(
                        headingText: 'Units',
                      ),
                      SizedBox(
                        height: 55.h,
                        width: 100.w,
                        child: CustomDropdownFormField(
                          items: dropdownController.subcategories,
                          onChanged: (value) {},
                          onSaved: (value) {},
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              const SmallHeading(
                  headingText: "Enter your requirement in details"),
              SizedBox(
                height: 5.h,
              ),
              CustomTextField(
                controller: commentsController,
                hintText: '',
                height: 100.h,
                width: double.infinity,
              ),
              SizedBox(
                height: 10.h,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Text("Add your image",
                        style: TextStyles.openSans(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xff4A4A4A))),
                    Text("(optional)",
                        style: TextStyles.openSans(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xffA9A7A7))),
                  ],
                ),
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.add,
                        color: Color(0xffFC8019),
                      )),
                  Text(
                    "Add IMAGE",
                    style: TextStyles.openSans(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: Color(0xffFC8019)),
                  )
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              const SmallHeading(headingText: "Select your target City"),
              SizedBox(
                height: 5.h,
              ),
              CustomDropdownFormField(
                items: dropdownController.subcategories,
                onChanged: (value) {},
                onSaved: (value) {},
              ),
              SizedBox(
                height: 5.h,
              ),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(
                      color: Color(0xffFC8019),
                      width: 0,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    backgroundColor: Color(0xffFC8019),
                    // padding: EdgeInsets.all(GlobalSizes.getDeviceWidth(context) * 0.04),
                  ),
                  child: const Text(
                    "Send",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white, // Text color
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
