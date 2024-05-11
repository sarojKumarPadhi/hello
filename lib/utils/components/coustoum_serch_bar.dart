import 'package:dekhlo/utils/size/global_size/global_size.dart';
import 'package:flutter/material.dart';

class SlimSearchBar extends StatelessWidget {
  final TextEditingController searchController = TextEditingController();

  SlimSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xffE4E4E4)),
          borderRadius: BorderRadius.circular(25.0),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: TextField(
          controller: searchController,
          decoration: InputDecoration(
            hintText: 'Search by name, contact....',
            border: InputBorder.none,
            icon: Image(
              height: GlobalSizes.getDeviceHeight(context) * 0.03,
              image: const AssetImage(
                'assest/logo.png',
              ),
            ),
            suffixIcon: const Padding(
                padding: EdgeInsets.only(left: 20), child: Icon(Icons.search)),
          ),
        ));
  }
}
