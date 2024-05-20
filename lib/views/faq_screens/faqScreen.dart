import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../utils/components/textstyle.dart';

class ExpansionTileExample extends StatefulWidget {
  const ExpansionTileExample({Key? key});

  @override
  State<ExpansionTileExample> createState() => _ExpansionTileExampleState();
}

class _ExpansionTileExampleState extends State<ExpansionTileExample> {
  bool _isExpanded1 = false;
  bool _isExpanded2 = false;
  bool _isExpanded3 = false;
  bool _isExpanded4 = false;
  bool _isExpanded5 = false;

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
          "FAQ",
          style: TextStyles.openSans(
            fontWeight: FontWeight.w600,
            fontSize: 17.sp,
            color: const Color(0xff4A4A4A),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20.h,
            ),
            RichText(
              text: const TextSpan(
                text: "Frequently asked questions to ",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  fontFamily: 'Open Sans',
                ),
                children: [
                  TextSpan(
                    text: "HelloDukaan",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      fontFamily: 'Open Sans',
                    ),
                  ),
                  TextSpan(
                    text:
                        " are following, You can ask and share your views with us.",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      fontFamily: 'Open Sans',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            ExpansionTile(
              iconColor: const Color(0xffFC8019),
              title: Text(
                'Lorem ipsum dolor sit amet, conr ?',
                style: TextStyles.openSans(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              trailing: _isExpanded1
                  ? const Icon(Icons.remove)
                  : const Icon(
                      Icons.add,
                      color: Color(0xffFC8019),
                    ),
              onExpansionChanged: (bool expanded) {
                setState(() {
                  _isExpanded1 = expanded;
                });
              },
              children: <Widget>[
                ListTile(
                  title: Text(
                    'Lorem ipsum dolor sit amet, conr adipiscing elit. Id varius etiam Lorem ipsum dolor sit amet, conr adipiscing elit. Id varius etiam ',
                    style: TextStyles.openSans(
                      color: const Color(0xff828282),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            ExpansionTile(
              iconColor: const Color(0xffFC8019),
              title: Text(
                'Lorem ipsum dolor sit amet, conr ?',
                style: TextStyles.openSans(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              trailing: _isExpanded2
                  ? const Icon(Icons.remove)
                  : const Icon(
                      Icons.add,
                      color: Color(0xffFC8019),
                    ),
              onExpansionChanged: (bool expanded) {
                setState(() {
                  _isExpanded2 = expanded;
                });
              },
              children: <Widget>[
                ListTile(
                  title: Text(
                    'Lorem ipsum dolor sit amet, conr adipiscing elit. Id varius etiam Lorem ipsum dolor sit amet, conr adipiscing elit. Id varius etiam ',
                    style: TextStyles.openSans(
                      color: const Color(0xff828282),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            ExpansionTile(
              iconColor: const Color(0xffFC8019),
              title: Text(
                'Lorem ipsum dolor sit amet, conr ?',
                style: TextStyles.openSans(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              trailing: _isExpanded3
                  ? const Icon(Icons.remove)
                  : const Icon(
                      Icons.add,
                      color: Color(0xffFC8019),
                    ),
              onExpansionChanged: (bool expanded) {
                setState(() {
                  _isExpanded3 = expanded;
                });
              },
              children: <Widget>[
                ListTile(
                  title: Text(
                    'Lorem ipsum dolor sit amet, conr adipiscing elit. Id varius etiam Lorem ipsum dolor sit amet, conr adipiscing elit. Id varius etiam ',
                    style: TextStyles.openSans(
                      color: const Color(0xff828282),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            ExpansionTile(
              iconColor: const Color(0xffFC8019),
              title: Text(
                'Lorem ipsum dolor sit amet, conr ?',
                style: TextStyles.openSans(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              trailing: _isExpanded4
                  ? const Icon(Icons.remove)
                  : const Icon(
                      Icons.add,
                      color: Color(0xffFC8019),
                    ),
              onExpansionChanged: (bool expanded) {
                setState(() {
                  _isExpanded4 = expanded;
                });
              },
              children: <Widget>[
                ListTile(
                  title: Text(
                    'Lorem ipsum dolor sit amet, conr adipiscing elit. Id varius etiam Lorem ipsum dolor sit amet, conr adipiscing elit. Id varius etiam ',
                    style: TextStyles.openSans(
                      color: const Color(0xff828282),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            ExpansionTile(
              iconColor: const Color(0xffFC8019),
              title: Text(
                'Lorem ipsum dolor sit amet, conr ?',
                style: TextStyles.openSans(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              trailing: _isExpanded5
                  ? const Icon(Icons.remove)
                  : const Icon(
                      Icons.add,
                      color: Color(0xffFC8019),
                    ),
              onExpansionChanged: (bool expanded) {
                setState(() {
                  _isExpanded5 = expanded;
                });
              },
              children: <Widget>[
                ListTile(
                  title: Text(
                    'Lorem ipsum dolor sit amet, conr adipiscing elit. Id varius etiam Lorem ipsum dolor sit amet, conr adipiscing elit. Id varius etiam ',
                    style: TextStyles.openSans(
                      color: const Color(0xff828282),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
