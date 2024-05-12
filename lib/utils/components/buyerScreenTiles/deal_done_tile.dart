import 'package:dekhlo/utils/components/buttons.dart';
import 'package:dekhlo/utils/size/global_size/global_size.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../dialog_boxs/rate_now.dart';
import '../textstyle.dart';

class DealDoneCard extends StatelessWidget {
  const DealDoneCard({super.key});

  @override
  Widget build(BuildContext context) {
    String text =
        "Hi, I want a keyboard which is wireless. Looking for Need 5 of them. Please get back as soon as possible if it available in your store";
    return Container(
        width: double.infinity, // Adjust the width as needed
        height: GlobalSizes.getDeviceHeight(context) *
            0.32, // Adjust the height as needed
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
              4), // Adjust the border radius for a squared shape
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
              padding: EdgeInsets.only(
                  left: GlobalSizes.getDeviceHeight(context) * 0.023),
              child: Text(
                "Requirement ID #16526545",
                style: TextStyles.openSans(
                    fontSize: 10, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: GlobalSizes.getDeviceHeight(context) * 0.003,
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: GlobalSizes.getDeviceHeight(context) * 0.023),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Text(
                          "Electronics ",
                          style: TextStyles.openSans(
                              fontSize: 10, fontWeight: FontWeight.w400),
                        ),
                        Text(" | ",
                            style: TextStyles.openSans(
                                fontSize: 10, fontWeight: FontWeight.w400)),
                        Text(
                          "Table lamp",
                          style: TextStyles.openSans(
                              fontSize: 10, fontWeight: FontWeight.w400),
                        ),
                        Text(" | ",
                            style: TextStyles.openSans(
                                fontSize: 10, fontWeight: FontWeight.w400)),
                        Text("Phillips",
                            style: TextStyles.openSans(
                                fontSize: 10, fontWeight: FontWeight.w400))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Text(
                      "05 Feb ‘24",
                      style: TextStyles.openSans(
                          fontSize: 10, fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: GlobalSizes.getDeviceHeight(context) * 0.01,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: GlobalSizes.getDeviceHeight(context) * 0.025),
                  child: Image.asset("assest/sellitems.png"),
                ),
                Column(
                  children: [
                    Text(
                      "#12638",
                      style: TextStyles.openSans(
                          fontWeight: FontWeight.w600, fontSize: 10),
                    ),
                    Text(
                      "Model No",
                      style: TextStyles.openSans(
                          fontWeight: FontWeight.w400, fontSize: 10),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Image.asset("assest/bigLine.png"),
                ),
                Column(
                  children: [
                    Text(
                      "02",
                      style: TextStyles.openSans(
                          fontWeight: FontWeight.w600, fontSize: 10),
                    ),
                    Text(
                      "Qty",
                      style: TextStyles.openSans(
                          fontWeight: FontWeight.w400, fontSize: 10),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Image.asset("assest/bigLine.png"),
                ),
                Column(
                  children: [
                    Text(
                      "{value}",
                      style: TextStyles.openSans(
                          fontWeight: FontWeight.w600, fontSize: 10),
                    ),
                    Text(
                      "10",
                      style: TextStyles.openSans(
                          fontWeight: FontWeight.w400, fontSize: 10),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Image.asset("assest/bigLine.png"),
                ),
                Column(
                  children: [
                    Text(
                      "{value}",
                      style: TextStyles.openSans(
                          fontWeight: FontWeight.w600, fontSize: 10),
                    ),
                    Text(
                      "Units",
                      style: TextStyles.openSans(
                          fontWeight: FontWeight.w400, fontSize: 10),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: GlobalSizes.getDeviceHeight(context) * 0.01,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: GlobalSizes.getDeviceHeight(context) * 0.023),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: text.length > 132 ? text.substring(0, 134) : text,
                      style: TextStyles.openSans(
                        color: Colors.black,
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    if (text.length > 130)
                      const TextSpan(
                        text: " more..",
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffFC8019),
                        ),
                      ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: GlobalSizes.getDeviceHeight(context) * 0.01,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                  GlobalSizes.getDeviceWidth(context) * 0.038,
                  GlobalSizes.getDeviceHeight(context) * 0.01,
                  GlobalSizes.getDeviceWidth(context) * 0.02,
                  GlobalSizes.getDeviceHeight(context) * 0.01),
              child: Container(
                height: GlobalSizes.getDeviceHeight(context) * 0.08,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xffFFF5ED),
                  borderRadius:
                      BorderRadius.circular(4.0), // Adjust the value as needed
                  border: Border.all(
                    color: const Color(0xffFC8019),
                    width: 0.5, // Adjust the width as needed
                  ),
                ),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal:
                                  GlobalSizes.getDeviceWidth(context) * 0.02,
                              vertical:
                                  GlobalSizes.getDeviceHeight(context) * 0.006),
                          child: Row(
                            children: [
                              Image.asset("assest/bookImage.png"),
                              Text(
                                "The Big Bookstore",
                                style: TextStyles.openSans(
                                    fontWeight: FontWeight.w600, fontSize: 8),
                              ),
                              SizedBox(
                                width:
                                    GlobalSizes.getDeviceWidth(context) * 0.03,
                              ),
                              Text(
                                "4.7 (5)",
                                style: TextStyles.openSans(
                                    fontWeight: FontWeight.w400, fontSize: 7),
                              ),
                              SizedBox(
                                width:
                                    GlobalSizes.getDeviceWidth(context) * 0.02,
                              ),
                              Image.asset("assest/google_map_icon.png"),
                              SizedBox(
                                width:
                                    GlobalSizes.getDeviceWidth(context) * 0.01,
                              ),
                              Text(
                                "5 KM away",
                                style: GoogleFonts.openSans(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 8,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: GlobalSizes.getDeviceWidth(context) * 0.02),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Text("₹ 1200",
                                      style: TextStyles.openSans(
                                          fontSize: 8,
                                          fontWeight: FontWeight.w600,
                                          color: const Color(0xffFC8019))),
                                  Text("Quotation",
                                      style: TextStyles.openSans(
                                          fontSize: 6,
                                          fontWeight: FontWeight.w400,
                                          color: const Color(0xfff4a4a4a))),
                                ],
                              ),
                              SizedBox(
                                width:
                                    GlobalSizes.getDeviceWidth(context) * 0.01,
                              ),
                              Image.asset(
                                "assest/bigLine.png",
                                height:
                                    GlobalSizes.getDeviceHeight(context) * 0.02,
                                width:
                                    GlobalSizes.getDeviceHeight(context) * 0.02,
                              ),
                              Column(
                                children: [
                                  Text("Similar",
                                      style: TextStyles.openSans(
                                          fontSize: 8,
                                          fontWeight: FontWeight.w600,
                                          color: const Color(0xffFC8019))),
                                  Text("Product Type",
                                      style: TextStyles.openSans(
                                          fontSize: 6,
                                          fontWeight: FontWeight.w400,
                                          color: const Color(0xfff4a4a4a))),
                                ],
                              ),
                              SizedBox(
                                width:
                                    GlobalSizes.getDeviceWidth(context) * 0.01,
                              ),
                              Image.asset(
                                "assest/bigLine.png",
                                height:
                                    GlobalSizes.getDeviceHeight(context) * 0.02,
                                width:
                                    GlobalSizes.getDeviceHeight(context) * 0.02,
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            right: GlobalSizes.getDeviceWidth(
                                                    context) *
                                                0.01),
                                        child: SizedBox(
                                            height: GlobalSizes.getDeviceHeight(
                                                    context) *
                                                0.01,
                                            child: Image.asset(
                                              "assest/image_view.png",
                                              fit: BoxFit.fitHeight,
                                            )),
                                      ),
                                      Text("View",
                                          style: TextStyles.openSans(
                                              fontSize: 8,
                                              fontWeight: FontWeight.w600,
                                              color: const Color(0xffFC8019))),
                                    ],
                                  ),
                                  Text("Product Image",
                                      style: TextStyles.openSans(
                                          fontSize: 6,
                                          fontWeight: FontWeight.w400,
                                          color: const Color(0xfff4a4a4a))),
                                ],
                              ),
                              Image.asset(
                                "assest/bigLine.png",
                                height:
                                    GlobalSizes.getDeviceHeight(context) * 0.02,
                                width:
                                    GlobalSizes.getDeviceHeight(context) * 0.02,
                              ),
                              Column(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return const RateNowCustomDialog();
                                        },
                                      );
                                    },
                                    child: Text("Rate now",
                                        style: TextStyles.openSans(
                                            fontSize: 8,
                                            fontWeight: FontWeight.w600,
                                            color: const Color(0xffFC8019))),
                                  ),
                                  Text("Give your Feedback",
                                      style: TextStyles.openSans(
                                          fontSize: 6,
                                          fontWeight: FontWeight.w400,
                                          color: const Color(0xfff4a4a4a))),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Buttons.veryShortButton(
                        color: const Color(0xffFC8019),
                        context: context,
                        onPressedCallback: () {},
                        buttonText: 'Call',
                        textColor: const Color(0xffFFFFFF))
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
