import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../controllers/expandController.dart';
import '../textstyle.dart';

class InprocessTile extends StatelessWidget {
  const InprocessTile({super.key});

  @override
  Widget build(BuildContext context) {
    final ExpandController expandController = Get.put(ExpandController());
    String text =
        "Hi, I want a keyboard which is wireless. Looking for Need 5 of them. Please get back as soon as possible if it available in your store";
    return SizedBox(child: Obx(() {
      return Container(
          width: double.infinity, // Adjust the width as needed
          height: expandController.isExpanded.value
              ? 365.h
              : 200.h, // Adjust the height as needed
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(
                4.r), // Adjust the border radius for a squared shape
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 17.w),
                child: Text(
                  "Requirement ID #16526545",
                  style: TextStyles.openSans(
                      fontSize: 14.sp, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 18.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Electronics ",
                          style: TextStyles.openSans(
                              fontSize: 12.sp, fontWeight: FontWeight.w400),
                        ),
                        Text(" | ",
                            style: TextStyles.openSans(
                                fontSize: 12.sp, fontWeight: FontWeight.w400)),
                        Text(
                          "Table lamp",
                          style: TextStyles.openSans(
                              fontSize: 12.sp, fontWeight: FontWeight.w400),
                        ),
                        Text(" | ",
                            style: TextStyles.openSans(
                                fontSize: 12.sp, fontWeight: FontWeight.w400)),
                        Text("Phillips",
                            style: TextStyles.openSans(
                                fontSize: 12.sp, fontWeight: FontWeight.w400))
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 12.h),
                      child: Text(
                        "05 Feb ‘24",
                        style: TextStyles.openSans(
                            fontSize: 12.sp, fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              Row(
                children: [
                  SizedBox(
                      width: 79.h,
                      height: 60.h,
                      child: Image.asset("assest/sellitems.png")),
                  Column(
                    children: [
                      Text(
                        "#12638",
                        style: TextStyles.openSans(
                            fontWeight: FontWeight.w600, fontSize: 12.sp),
                      ),
                      Text(
                        "Model No",
                        style: TextStyles.openSans(
                            fontWeight: FontWeight.w400, fontSize: 12.sp),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.h),
                    child: Image.asset("assest/bigLine.png"),
                  ),
                  Column(
                    children: [
                      Text(
                        "02",
                        style: TextStyles.openSans(
                            fontWeight: FontWeight.w600, fontSize: 12.sp),
                      ),
                      Text(
                        "Qty",
                        style: TextStyles.openSans(
                            fontWeight: FontWeight.w400, fontSize: 12.sp),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 9.h),
                    child: Image.asset("assest/bigLine.png"),
                  ),
                  Column(
                    children: [
                      Text(
                        "{value}",
                        style: TextStyles.openSans(
                            fontWeight: FontWeight.w600, fontSize: 12.sp),
                      ),
                      Text(
                        "10",
                        style: TextStyles.openSans(
                            fontWeight: FontWeight.w400, fontSize: 12.sp),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 9.h),
                    child: Image.asset("assest/bigLine.png"),
                  ),
                  Column(
                    children: [
                      Text(
                        "{value}",
                        style: TextStyles.openSans(
                            fontWeight: FontWeight.w600, fontSize: 12.sp),
                      ),
                      Text(
                        "Units",
                        style: TextStyles.openSans(
                            fontWeight: FontWeight.w400, fontSize: 12.sp),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: text.length > 132 ? text.substring(0, 134) : text,
                        style: TextStyles.openSans(
                          color: Colors.black,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      if (text.length > 130)
                        const TextSpan(
                          text: " more..",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffFC8019),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Obx(() {
                return Padding(
                  padding: EdgeInsets.fromLTRB(20.w, 6.h, 14.w, 6.h),
                  child: Container(
                    height: expandController.isExpanded.value ? 200.h : 33.h,
                    width: 309.h,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffFFC18E)),
                        borderRadius: BorderRadius.all(Radius.circular(8.r)),
                        color: Color(0xffFFF5ED)),
                    child: expandController.isExpanded.value
                        ? Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 10.h, 0, 20.h),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 11.w),
                                      child: Text(
                                        "Sellers Requests (03)",
                                        style: TextStyles.openSans(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 11.5.sp,
                                        ),
                                      ),
                                    ),
                                    expandController.isExpanded.value
                                        ? InkWell(
                                            onTap: () {
                                              expandController
                                                      .isExpanded.value =
                                                  !expandController
                                                      .isExpanded.value;
                                            },
                                            child: Padding(
                                              padding:
                                                  EdgeInsets.only(right: 6.w),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    "View All",
                                                    style: GoogleFonts
                                                        .hankenGrotesk(
                                                      color: const Color(
                                                          0xffFC8019),
                                                      fontSize: 14.sp,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      decoration: TextDecoration
                                                          .underline, // Add underline decoration
                                                      decorationThickness: 2.w,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 4.sp),
                                                    child: Container(
                                                        decoration:
                                                            const BoxDecoration(
                                                                shape: BoxShape
                                                                    .circle,
                                                                color: Color(
                                                                    0xffFC8019)),
                                                        child: Icon(
                                                          Icons.expand_more,
                                                          size: 15.sp,
                                                          color: Colors.white,
                                                        )),
                                                  )
                                                ],
                                              ),
                                            ),
                                          )
                                        : InkWell(
                                            onTap: () {
                                              expandController
                                                      .isExpanded.value =
                                                  !expandController
                                                      .isExpanded.value;
                                            },
                                            child: Padding(
                                              padding:
                                                  EdgeInsets.only(right: 6.w),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    "View All",
                                                    style: GoogleFonts
                                                        .hankenGrotesk(
                                                      color: const Color(
                                                          0xffFC8019),
                                                      fontSize: 14.sp,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      decoration: TextDecoration
                                                          .underline, // Add underline decoration
                                                      decorationThickness: 2..w,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 4.sp),
                                                    child: Container(
                                                        decoration:
                                                            const BoxDecoration(
                                                                shape: BoxShape
                                                                    .circle,
                                                                color: Color(
                                                                    0xffFC8019)),
                                                        child: Icon(
                                                          Icons.expand_more,
                                                          size: 15.sp,
                                                          color: Colors.white,
                                                        )),
                                                  )
                                                ],
                                              ),
                                            ),
                                          )
                                  ],
                                ),
                              ),
                              // to do hello world
                            ],
                          )
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 11.w),
                                child: Text(
                                  "Sellers Requests (03)",
                                  style: TextStyles.openSans(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12.sp,
                                  ),
                                ),
                              ),
                              expandController.isExpanded.value
                                  ? InkWell(
                                      onTap: () {
                                        expandController.isExpanded.value =
                                            !expandController.isExpanded.value;
                                      },
                                      child: Padding(
                                        padding: EdgeInsets.only(right: 6.w),
                                        child: Row(
                                          children: [
                                            Text(
                                              "View All",
                                              style: GoogleFonts.hankenGrotesk(
                                                color: const Color(0xffFC8019),
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w600,
                                                decoration: TextDecoration
                                                    .underline, // Add underline decoration
                                                decorationThickness: 2..w,
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 4.sp),
                                              child: Container(
                                                  decoration:
                                                      const BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                          color: Color(
                                                              0xffFC8019)),
                                                  child: Icon(
                                                    Icons.expand_less,
                                                    size: 15.sp,
                                                    color: Colors.white,
                                                  )),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  : InkWell(
                                      onTap: () {
                                        expandController.isExpanded.value =
                                            !expandController.isExpanded.value;
                                      },
                                      child: Padding(
                                        padding: EdgeInsets.only(right: 6.w),
                                        child: Row(
                                          children: [
                                            Text(
                                              "View All",
                                              style: GoogleFonts.hankenGrotesk(
                                                color: const Color(0xffFC8019),
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w600,
                                                decoration: TextDecoration
                                                    .underline, // Add underline decoration
                                                decorationThickness: 2..w,
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 4.sp),
                                              child: Container(
                                                  decoration:
                                                      const BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                          color: Color(
                                                              0xffFC8019)),
                                                  child: Icon(
                                                    Icons.expand_less,
                                                    size: 15.sp,
                                                    color: Colors.white,
                                                  )),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                            ],
                          ),
                  ),
                );
              })
            ],
          ));
    }));
  }
}
