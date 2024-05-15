import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/components/buyerScreenTiles/inprocess_tile.dart';
import '../../../utils/size/global_size/global_size.dart';

class InProcessTab extends StatelessWidget {
  const InProcessTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 12,
          child: ListView.builder(itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.all(10.0.h),
              child: const InprocessTile(),
            );
          }),
        ),
        Expanded(
          flex: 1,
          child: Row(
            children: [
              SizedBox(
                width: GlobalSizes.getDeviceWidth(context) * 0.5,
                child: SizedBox(
                    width: 110,
                    child: Image.asset(
                      "assest/buying.png",
                      fit: BoxFit.fill,
                    )),
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Image.asset("assest/post.png"))
            ],
          ),
        )
      ],
    );
  }
}
