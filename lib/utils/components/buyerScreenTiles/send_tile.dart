import 'package:dekhlo/utils/size/global_size/global_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../textstyle.dart';

class SendTile extends StatelessWidget {
  const SendTile({super.key});

  @override
  Widget build(BuildContext context) {
    String text =
        "Hi, I want a keyboard which is wireless. Looking for Need 5 of them. Please get back as soon as possible if it available in your store";
    return Container(
        height: 170.h, // Adjust the height as needed
        decoration: BoxDecoration(
          color: const Color(0xffFFF4EC),
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
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.w),
              child: Text(
                "Requirement ID #16526545",
                style: TextStyles.openSans(
                    fontSize: 14, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: GlobalSizes.getDeviceHeight(context) * 0.003,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Text(
                          "Electronics ",
                          style: TextStyles.openSans(
                              fontSize: 12, fontWeight: FontWeight.w400),
                        ),
                        Text(" | ",
                            style: TextStyles.openSans(
                                fontSize: 12, fontWeight: FontWeight.w400)),
                        Text(
                          "Table lamp",
                          style: TextStyles.openSans(
                              fontSize: 12, fontWeight: FontWeight.w400),
                        ),
                        Text(" | ",
                            style: TextStyles.openSans(
                                fontSize: 10, fontWeight: FontWeight.w400)),
                        Text("Phillips",
                            style: TextStyles.openSans(
                                fontSize: 12, fontWeight: FontWeight.w400))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Text(
                      "05 Feb ‘24",
                      style: TextStyles.openSans(
                          fontSize: 12, fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: Image.asset(
                    "assest/sellitems.png",
                    height: 40.h,
                    width: 50.w,
                    fit: BoxFit.fill,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      "#12638",
                      style: TextStyles.openSans(
                          fontWeight: FontWeight.w600, fontSize: 12),
                    ),
                    Text(
                      "Model No",
                      style: TextStyles.openSans(
                          fontWeight: FontWeight.w400, fontSize: 12),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: Image.asset("assest/bigLine.png"),
                ),
                Column(
                  children: [
                    Text(
                      "02",
                      style: TextStyles.openSans(
                          fontWeight: FontWeight.w600, fontSize: 12),
                    ),
                    Text(
                      "Qty",
                      style: TextStyles.openSans(
                          fontWeight: FontWeight.w400, fontSize: 12),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: Image.asset("assest/bigLine.png"),
                ),
                Column(
                  children: [
                    Text(
                      "{value}",
                      style: TextStyles.openSans(
                          fontWeight: FontWeight.w600, fontSize: 12),
                    ),
                    Text(
                      "10",
                      style: TextStyles.openSans(
                          fontWeight: FontWeight.w400, fontSize: 12),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: Image.asset("assest/bigLine.png"),
                ),
                Column(
                  children: [
                    Text(
                      "{value}",
                      style: TextStyles.openSans(
                          fontWeight: FontWeight.w600, fontSize: 12),
                    ),
                    Text(
                      "Units",
                      style: TextStyles.openSans(
                          fontWeight: FontWeight.w400, fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: text.length > 132 ? text.substring(0, 134) : text,
                      style: TextStyles.openSans(
                        color: Colors.black,
                        fontSize: 13,
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
          ],
        ));
  }
}
