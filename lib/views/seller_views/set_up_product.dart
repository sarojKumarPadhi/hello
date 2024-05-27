import 'package:dekhlo/controllers/productSetupController.dart';
import 'package:dekhlo/utils/components/coustoumTextField.dart';
import 'package:dekhlo/utils/components/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:multi_dropdown/multiselect_dropdown.dart';

import '../../controllers/dropDownController.dart';
import '../../utils/components/dialog_boxs/pick_diallo.dart';
import '../../utils/coustoumDropDown.dart';
import '../../utils/size/global_size/global_size.dart';

class SetUpProduct extends StatelessWidget {
  SetUpProduct({super.key});
  final DropdownController dropdownController = Get.put(DropdownController());
  final MultiSelectController categorySelectController =
      MultiSelectController();
  final MultiSelectController languageSelectController =
      MultiSelectController();
  final ProductSetUpController productSetUpController =
      Get.put(ProductSetUpController());

  RxString imagePath = ''.obs;

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
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.h,
              ),
              InkWell(
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
                child: Center(
                  child: Container(
                    height: 100.h,
                    width: 150.w,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xffC4C4C4), // Border color
                        width: 1.0.w, // Border width
                      ),
                      borderRadius:
                          BorderRadius.circular(10.0.r), // Border radius
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(
                          MediaQuery.of(context).size.height * 0.01),
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
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    heading(title: 'Store Name'),
                    SizedBox(
                      height: 5.h,
                    ),
                    CustomTextField(
                        controller:
                            productSetUpController.nameEditingController,
                        hintText: "Enter your shop name",
                        height: 48.h,
                        width: 330.w),
                    SizedBox(
                      height: 10.h,
                    ),
                    heading(title: 'Contact Number'),
                    SizedBox(
                      height: 5.h,
                    ),
                    CustomTextField(
                        controller:
                            productSetUpController.nameEditingController,
                        hintText: "Enter your contact number",
                        height: 48.h,
                        width: 330.w),
                    SizedBox(
                      height: 10.h,
                    ),
                    heading(title: 'Store category'),
                    SizedBox(
                      height: 5.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20.w),
                      child: MultiSelectDropDown(
                        borderColor: Colors.grey,
                        borderWidth: 1,
                        borderRadius: 4.r,
                        selectedOptionTextColor: const Color(0xffFC8019),
                        clearIcon: const Icon(Icons.close_outlined),
                        controller: categorySelectController,
                        onOptionSelected: (options) {
                          debugPrint(options.toString());
                        },
                        // options: const [],
                        options: const <ValueItem>[
                          ValueItem(label: 'Clothes', value: '1'),
                          ValueItem(label: 'Shoes', value: '2'),
                          ValueItem(label: 'Cosmatics', value: '3'),
                        ],
                        maxItems: 3,
                        disabledOptions: const [
                          ValueItem(label: 'Clothes', value: '1'),
                        ],
                        selectionType: SelectionType.multi,
                        chipConfig: const ChipConfig(
                            deleteIcon: Icon(Icons.close_outlined),
                            wrapType: WrapType.wrap,
                            backgroundColor: Color(0xffFC8019)),
                        dropdownHeight: 150.h,
                        optionTextStyle: TextStyle(fontSize: 16.sp),
                        selectedOptionIcon: const Icon(Icons.check_circle),
                      ),
                    ),

                    SizedBox(
                      height: 10.h,
                    ),
                    heading(title: 'Sub categories'),
                    SizedBox(
                      height: 5.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 18.w),
                      child: CustomDropdownFormField(
                        items: dropdownController.subcategories,
                        onChanged: (value) {},
                        onSaved: (value) {},
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    heading(title: 'Brands'),
                    SizedBox(
                      height: 5.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 18.w),
                      child: CustomDropdownFormField(
                        items: dropdownController.subcategories,
                        onChanged: (value) {},
                        onSaved: (value) {},
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    heading(title: "About your store"),
                    SizedBox(
                      height: 5.h,
                    ),
                    Container(
                      height: 100.h,
                      width: 330.w,
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(width: 1, color: Colors.grey),
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: TextField(
                          controller:
                              productSetUpController.discriptionController,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(bottom: 60.h),
                            hintText:
                                "e.g This store has all the types of books.",
                            border: InputBorder.none,
                            hintStyle: const TextStyle(color: Colors.grey),
                          ),
                          style: const TextStyle(fontSize: 16.0),
                        ),
                      ),
                    ),

                    // social links
                    SizedBox(
                      height: 20.h,
                    ),
                    heading(title: "Link your social media accounts"),
                    SizedBox(
                      height: 5.h,
                    ),
                    socialLinkBox(
                      controller:
                          productSetUpController.youTubeEditingController,
                      imagePath: 'assest/you_tube.png',
                    ),

                    SizedBox(
                      height: 10.h,
                    ),
                    socialLinkBox(
                      controller:
                          productSetUpController.youTubeEditingController,
                      imagePath: 'assest/instagram.png',
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    heading(title: "Languages you know"),
                    SizedBox(
                      height: 10.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20.w),
                      child: MultiSelectDropDown(
                        borderColor: Colors.grey,
                        borderWidth: 1,
                        borderRadius: 4.r,
                        selectedOptionTextColor:
                            const Color(0xffFC8019).withOpacity(0.1),
                        clearIcon: const Icon(Icons.close_outlined),
                        controller: languageSelectController,
                        onOptionSelected: (options) {
                          debugPrint(options.toString());
                        },
                        options: const <ValueItem>[
                          ValueItem(label: 'Hindi', value: '1'),
                          ValueItem(label: 'English', value: '2'),
                          ValueItem(label: 'Telugu', value: '3'),
                          ValueItem(label: 'Marathi', value: '4')
                        ],
                        maxItems: 3,
                        selectionType: SelectionType.multi,
                        chipConfig: const ChipConfig(
                            wrapType: WrapType.wrap,
                            backgroundColor: Color(0xffFC8019)),
                        dropdownHeight: 200.h,
                        optionTextStyle: TextStyle(fontSize: 16.sp),
                        selectedOptionIcon: const Icon(Icons.check_circle),
                      ),
                    ),

                    SizedBox(
                      height: 10.h,
                    ),
                    heading(title: "Timings"),
                    SizedBox(
                      height: 10.h,
                    ),
                    SizedBox(
                        height: 50.h,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: productSetUpController.dayList.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.symmetric(horizontal: 2.w),
                                child: SizedBox(
                                    height: 10.h,
                                    width: 50.w,
                                    child: Obx(
                                      () => InkWell(
                                        onTap: () {
                                          productSetUpController
                                              .toggleSelection(index);
                                        },
                                        child: CircleAvatar(
                                          backgroundColor:
                                              productSetUpController
                                                      .selectedIndices
                                                      .contains(index)
                                                  ? const Color(0xffFC8019)
                                                  : Colors.transparent,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                color: productSetUpController
                                                        .selectedIndices
                                                        .contains(index)
                                                    ? Colors.transparent
                                                    : const Color(0xffE0E0E0),
                                                width: 2.0,
                                              ),
                                            ),
                                            alignment: Alignment.center,
                                            child: Text(
                                              productSetUpController
                                                  .dayList[index],
                                              style: TextStyle(
                                                color: productSetUpController
                                                        .selectedIndices
                                                        .contains(index)
                                                    ? Colors.white
                                                    : Colors.black,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )),
                              );
                            })),
                    SizedBox(
                      height: 10.h,
                    ),

                    timeEditingBox(
                        controller:
                            productSetUpController.openTimeEditingController,
                        context: context,
                        hintText: 'Open Timing'),
                    SizedBox(
                      height: 10.h,
                    ),
                    timeEditingBox(
                        controller:
                            productSetUpController.closeEditingController,
                        context: context,
                        hintText: 'Close Timing'),

                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            heading(title: 'Building No.'),
                            CustomTextField(
                              hintText: '',
                              height: 55.h,
                              width: 100.w,
                              controller:
                                  productSetUpController.buildingController,
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 20.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              heading(title: 'Pincode'),
                              CustomTextField(
                                hintText: '',
                                height: 55.h,
                                width: 100.w,
                                controller:
                                    productSetUpController.pinCodeController,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    SizedBox(
                      height: 10.h,
                    ),
                    heading(title: 'Area/Colony Name'),
                    SizedBox(
                      height: 5.h,
                    ),
                    CustomTextField(
                        controller: productSetUpController.colonyController,
                        hintText: "",
                        height: 48.h,
                        width: 330.w),

                    SizedBox(
                      height: 10.h,
                    ),
                    heading(title: 'Landmark'),
                    SizedBox(
                      height: 5.h,
                    ),
                    CustomTextField(
                        controller: productSetUpController.landMarkController,
                        hintText: "",
                        height: 48.h,
                        width: 330.w),

                    SizedBox(
                      height: 10.h,
                    ),

                    heading(title: 'Your Store Location'),
                    SizedBox(
                      height: 10.h,
                    ),
                    CustomTextField(
                        controller: productSetUpController.locationController,
                        hintText: "e.g Delhi",
                        height: 48.h,
                        width: 330.w),
                    SizedBox(
                      height: 10.h,
                    ),

                    Text(
                      "Use my current location",
                      style: TextStyles.openSansUnderLine(
                          color: const Color(0xffFC8019),
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),

                    Padding(
                      padding: EdgeInsets.only(right: 20.w),
                      child: SizedBox(
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
                            backgroundColor: const Color(0xffFC8019),
                            padding: EdgeInsets.all(
                                GlobalSizes.getDeviceWidth(context) * 0.04),
                          ),
                          child: const Text(
                            "Next",
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.white, // Text color
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 30.h,
                    ),
                    Center(
                      child: Text.rich(
                        TextSpan(
                          text: 'Already have an account? ', // Default text
                          style: TextStyles.openSans(
                              fontSize: 16.sp,
                              fontWeight:
                                  FontWeight.w500), // Default text style
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Login', // Text to be styled differently
                              style: TextStyles.openSans(
                                  color: const Color(0xffFC8019),
                                  fontSize: 16.sp,
                                  fontWeight:
                                      FontWeight.w600), // Different text style
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container timeEditingBox({
    required TextEditingController controller,
    required BuildContext context,
    required String hintText,
  }) {
    return Container(
      height: 48.h,
      width: 330.w,
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        border: Border.all(width: 1, color: Colors.grey),
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
            suffixIcon: InkWell(
              onTap: () async {
                TimeOfDay? selectedTime = await showTimePicker(
                  helpText: '',
                  initialEntryMode: TimePickerEntryMode.input,
                  context: context,
                  initialTime: TimeOfDay.now(),
                  builder: (BuildContext context, Widget? child) {
                    return MediaQuery(
                      data: MediaQuery.of(context).copyWith(
                        alwaysUse24HourFormat: false,
                      ),
                      child: Theme(
                        data: Theme.of(context).copyWith(
                          textTheme: Theme.of(context).textTheme.copyWith(
                                bodySmall: const TextStyle(
                                  fontSize: 22,
                                  color: Colors.black,
                                ),
                              ),
                        ),
                        child: child!,
                      ),
                    );
                  },
                );

                if (selectedTime != null) {
                  // Set the selected time to the controller
                  String formattedTime =
                      '${selectedTime.hour.toString().padLeft(2, '0')}:${selectedTime.minute.toString().padLeft(2, '0')}';
                  controller.text = formattedTime;
                }
              },
              child: SizedBox(
                height: 10.h,
                width: 10.h,
                child: Image.asset(
                  "assest/calendar_icon.png",
                ),
              ),
            ),
            hintText: hintText,
            border: InputBorder.none,
            hintStyle: const TextStyle(color: Colors.grey),
          ),
          style: const TextStyle(fontSize: 16.0),
        ),
      ),
    );
  }

  Container socialLinkBox({
    required TextEditingController controller,
    required String imagePath,
  }) {
    return Container(
      height: 50.h,
      width: 330.w,
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        border: Border.all(width: 1, color: Colors.grey),
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
            prefixIcon: SizedBox(
              height: 10.h,
              width: 10.h,
              child: Image.asset(
                imagePath,
              ),
            ),
            hintText: "paste the link",
            border: InputBorder.none,
            hintStyle: const TextStyle(color: Colors.grey),
          ),
          style: const TextStyle(fontSize: 16.0),
        ),
      ),
    );
  }

  Text heading({required String title}) {
    return Text(
      title,
      style: TextStyles.openSans(
          fontSize: 14.sp,
          fontWeight: FontWeight.w600,
          color: const Color(0xff313333)),
    );
  }
}
