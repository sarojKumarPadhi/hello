import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../controllers/dropDownController.dart';
import '../../../utils/components/coustoumTextField.dart';
import '../../../utils/components/dialog_boxs/pick_diallo.dart';
import '../../../utils/components/dialog_boxs/postRequirement.dart';
import '../../../utils/components/heading.dart';
import '../../../utils/components/textstyle.dart';
import '../../../utils/coustoumDropDown.dart';

class PostRequirements extends StatefulWidget {
  const PostRequirements({super.key});

  @override
  _PostRequirementsState createState() => _PostRequirementsState();
}

class _PostRequirementsState extends State<PostRequirements> {
  final DropdownController dropdownController = Get.put(DropdownController());
  final TextEditingController brandController = TextEditingController();
  final TextEditingController modelController = TextEditingController();
  final TextEditingController sizeController = TextEditingController();
  final TextEditingController quntityController = TextEditingController();
  final TextEditingController commentsController = TextEditingController();
  final RxString imagePath = ''.obs;

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
          "Posting requirement",
          style: TextStyles.openSans(
            fontWeight: FontWeight.w600,
            fontSize: 17.sp,
            color: const Color(0xff4A4A4A),
          ),
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
              const SmallHeading(
                headingText: 'Sub Sub Category',
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
                    Text(
                      "Brand",
                      style: TextStyles.openSans(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xff4A4A4A),
                      ),
                    ),
                    Text(
                      "(optional)",
                      style: TextStyles.openSans(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xffA9A7A7),
                      ),
                    ),
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
                    Text(
                      "Model no",
                      style: TextStyles.openSans(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xff4A4A4A),
                      ),
                    ),
                    Text(
                      "(optional)",
                      style: TextStyles.openSans(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xffA9A7A7),
                      ),
                    ),
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
                    Text(
                      "Add your image",
                      style: TextStyles.openSans(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xff4A4A4A),
                      ),
                    ),
                    Text(
                      "(optional)",
                      style: TextStyles.openSans(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xffA9A7A7),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Obx(
                () => imagePath.value != ""
                    ? Stack(
                        children: [
                          Image.file(
                            File(imagePath.value),
                            width: 100.w,
                            height: 100.h,
                            fit: BoxFit.fill,
                          ),
                          Positioned(
                            top: 5.h,
                            right: 5.h,
                            child: InkWell(
                              onTap: () {
                                imagePath.value = "";
                              },
                              child: Center(
                                  child: SvgPicture.asset(
                                "assest/cross.svg",
                                height: 20,
                              )),
                            ),
                          ),
                        ],
                      )
                    : GestureDetector(
                        onTap: () async {
                          final result = await showDialog<String>(
                            context: context,
                            builder: (BuildContext context) {
                              return const PickImageDialog();
                            },
                          );
                          if (result != null) {
                            imagePath.value = result;
                          }
                        },
                        child: Row(
                          children: [
                            const Center(
                              child: Icon(
                                Icons.add,
                                color: Color(0xffFC8019),
                              ),
                            ),
                            Text("Add IMAGE",
                                style: TextStyles.openSans(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xffFC8019)))
                          ],
                        ),
                      ),
              ),
              SizedBox(
                height: 10.h,
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
                height: 40.h,
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return const PostRequirementsDialog();
                      },
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(
                      color: Color(0xffFC8019),
                      width: 0,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    backgroundColor: const Color(0xffFC8019),
                  ),
                  child: const Text(
                    "Send",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
