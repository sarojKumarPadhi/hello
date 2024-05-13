import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:dekhlo/utils/components/textstyle.dart';
import 'package:dekhlo/utils/size/global_size/global_size.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import '../buttons.dart';

class RateNowCustomDialog extends StatelessWidget {
  const RateNowCustomDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
              top: 0.0,
              right: 0.0,
              child: GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.close,
                    size: 24.0,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        bottom: GlobalSizes.getDeviceHeight(context) * 0.01),
                    child: Text(
                      "Give your Rating",
                      style: TextStyles.openSans(
                          fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                  ),
                  RatingBar(
                    initialRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    ratingWidget: RatingWidget(
                      full: Image.asset('assest/filledStar.png'),
                      empty: Image.asset('assest/emptyStar.png'),
                      half: Image.asset('assest/filledStar.png'),
                    ),
                    itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: GlobalSizes.getDeviceHeight(context) * 0.03),
                    child: Text(
                      "Write your review",
                      style: TextStyles.openSans(
                          fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(height: GlobalSizes.getDeviceHeight(context) * 0.01),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xffE4E4E4),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: TextField(
                      maxLines: 5, // Set the number of lines for the TextField
                      decoration: InputDecoration(
                        hintText: 'Describe your experience (optional)',
                        hintStyle: TextStyles.openSans(
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff828282)),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: -8.0, horizontal: -9.0),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: GlobalSizes.getDeviceHeight(context) * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Padding(
                          padding: EdgeInsets.only(
                              right:
                                  GlobalSizes.getDeviceWidth(context) * 0.009),
                          child: Text(
                            "Cancel",
                            style: TextStyles.openSans(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xff979797)),
                          ),
                        ),
                      ),
                      Buttons.shortButton(
                          color: const Color(0xffFC8019),
                          context: context,
                          onPressedCallback: () {
                            Fluttertoast.showToast(
                                msg: 'Thank You For Your valuable feedback');
                            Get.back();
                          },
                          buttonText: "Submit",
                          textColor: Colors.white),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
