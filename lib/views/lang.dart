import 'package:dekhlo/utils/components/buttons.dart';
import 'package:dekhlo/utils/size/global_size.dart/global_size.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/lagModel.dart';
import '../utils/components/textstyle.dart';

class Lag extends StatelessWidget {
  const Lag({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    List<Language> laguageTile = [
      Language(text: "Bangla", color: const Color(0xff46E3E3)),
      Language(text: "English", color: const Color(0xffF2C94C)),
      Language(text: "Gujarati", color: const Color(0xffB73451)),
      Language(text: "Hindi", color: const Color(0xff7B61FF)),
      Language(text: "Kannada", color: const Color(0xffFC8019)),
      Language(text: "Marathi", color: const Color(0xff008B00)),
      Language(text: "Malayalam", color: const Color(0xff7B61FF)),
      Language(text: "Punjabi", color: const Color(0xff2196F3)),
      Language(text: "Tamil", color: const Color(0xffB73451)),
      Language(text: "Telugu", color: const Color(0xff263238)),
    ];

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
                    return Container(
                      height: size.height * 0.1,
                      width: size.width * 0.2,
                      decoration: BoxDecoration(
                        color: laguageTile[index].color,
                        borderRadius:
                            BorderRadius.circular(8), // Set border radius here
                      ),
                      margin: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          laguageTile[index].text,
                          style: TextStyles.openSans(fontSize: 18),
                        ),
                      ),
                    );
                  },
                  itemCount: 10,
                ),
              ),
            ),
            LongButton.longButton(
              buttonText: "Next",
              color: const Color(0xffFC8019),
              textColor: Colors.white,
              context: context,
              onPressedCallback: () {
                // Get.toNamed(RoutesN)
                // to be continued
              },
            )
          ],
        ),
      ),
    );
  }
}
