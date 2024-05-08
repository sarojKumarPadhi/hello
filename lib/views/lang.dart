import 'package:dekhlo/controllers/languageController.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart'; // Import GetX package
import 'package:dekhlo/utils/components/buttons.dart';
import 'package:dekhlo/utils/size/global_size/global_size.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/lagModel.dart';
import '../utils/components/textstyle.dart';

class Lag extends StatelessWidget {
  const Lag({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    // Wrap the list with RxList and .obs to make it observable
    final LanguageController languageController = Get.put(LanguageController());

    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: GlobalSizes.getDeviceHeight(context) * 0.03,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: GlobalSizes.getDeviceWidth(context) * 0.06,
                  vertical: GlobalSizes.getDeviceHeight(context) * 0.02),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Choose your app Language",
                    style: GoogleFonts.openSans(
                        fontSize: 17, fontWeight: FontWeight.w600),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Material(
                borderRadius: BorderRadius.circular(10),
                elevation: 2,
                color: Colors.white,
                child: Row(
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.search,
                        color: Color(0xffC4C4C4),
                      ),
                      onPressed: () {},
                    ),
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintStyle: TextStyle(color: Color(0xFFC4C4C4)),
                          hintText: 'Search',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 3.8 / 2,
                  ),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        // Check current opacity
                        double currentOpacity =
                            languageController.laguageTile[index].color.opacity;

                        // Toggle opacity
                        if ((currentOpacity - 0.9).abs() < 0.1) {
                          languageController.laguageTile[index].color =
                              languageController.laguageTile[index].color
                                  .withOpacity(0.2);
                        } else {
                          languageController.laguageTile[index].color =
                              languageController.laguageTile[index].color
                                  .withOpacity(0.9);
                        }

                        languageController.laguageTile.refresh(); // Update UI
                        languageController.isTileSeclected.value =
                            !languageController.isTileSeclected.value;
                      },
                      child: Obx(() {
                        return Container(
                          height: size.height * 0.1,
                          width: size.width * 0.2,
                          decoration: BoxDecoration(
                            color: languageController.laguageTile[index].color,
                            borderRadius: BorderRadius.circular(
                                8), // Set border radius here
                          ),
                          margin: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Text(
                              languageController.laguageTile[index].text,
                              style: TextStyles.openSans(fontSize: 18),
                            ),
                          ),
                        );
                      }),
                    );
                  },
                  itemCount: languageController.laguageTile.length,
                ),
              ),
            ),
            Obx(() {
              if (languageController.isTileSeclected.value) {
                return LongButton.longButton(
                  buttonText: "Next",
                  color: const Color(0xffFC8019),
                  textColor: Colors.white,
                  context: context,
                  onPressedCallback: () {
                    // Get.toNamed(RoutesN)
                    // to be continued
                  },
                );
              } else {
                return LongButton.longButton(
                  buttonText: "Next",
                  color: const Color(0xffFC8019).withOpacity(0.6),
                  textColor: Colors.white,
                  context: context,
                  onPressedCallback: () {
                    // Get.toNamed(RoutesN)
                    // to be continued
                    Fluttertoast.showToast(
                        msg: 'Select a language',
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0);
                  },
                );
              }
            })
          ],
        ),
      ),
    );
  }
}
