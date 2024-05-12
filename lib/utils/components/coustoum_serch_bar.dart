import 'package:dekhlo/utils/components/textstyle.dart';
import 'package:dekhlo/utils/size/global_size/global_size.dart';
import 'package:flutter/material.dart';

class SlimSearchBar extends StatelessWidget {
  final TextEditingController searchController = TextEditingController();

  SlimSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 30,
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xffE4E4E4)),
          borderRadius: BorderRadius.circular(25.0),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: TextField(
            controller: searchController,
            decoration: InputDecoration(
              hintText: 'Search by name, contact....',
              hintStyle: TextStyles.openSans(
                  fontSize: 15, fontWeight: FontWeight.w300),
              contentPadding: EdgeInsets.only(
                  bottom: GlobalSizes.getDeviceHeight(context) * 0.015),
              border: InputBorder.none,
              icon: Image(
                height: GlobalSizes.getDeviceHeight(context) * 0.028,
                image: const AssetImage(
                  'assest/logocircle.png',
                ),
              ),
              suffixIcon: Padding(
                padding: EdgeInsets.fromLTRB(
                    GlobalSizes.getDeviceWidth(context) * 0.07,
                    GlobalSizes.getDeviceHeight(context) * 0.007,
                    0,
                    GlobalSizes.getDeviceHeight(context) * 0.008),
                child: const Icon(
                  Icons.search,
                  size: 19,
                  weight: 20.5,
                  color: Color(0xff4A4A4A),
                ),
              ),
            )));
  }
}
