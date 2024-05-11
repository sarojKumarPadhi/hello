import 'package:dekhlo/utils/size/global_size/global_size.dart';
import 'package:flutter/material.dart';

import '../../utils/components/buyerScreenTiles/buyerTiles.dart';
import '../../utils/components/coustoum_serch_bar.dart';
import '../../utils/components/textstyle.dart';

class HomeBuyer extends StatelessWidget {
  const HomeBuyer({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, // Number of tabs
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: GlobalSizes.getDeviceHeight(context) * 0.012,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: GlobalSizes.getDeviceHeight(context) * 0.019,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: SlimSearchBar(),
                    ),
                    SizedBox(
                      width: GlobalSizes.getDeviceHeight(context) * 0.02,
                    ),
                    SizedBox(
                      height: GlobalSizes.getDeviceHeight(context) * 0.03,
                      child: Image.asset("assest/bell.png",fit: BoxFit.fitHeight,)),
                    SizedBox(
                      width: GlobalSizes.getDeviceHeight(context) * 0.01,
                    ),
                    SizedBox(
                      height: GlobalSizes.getDeviceHeight(context) * 0.03,
                      child: Image.asset(
                        "assest/user.png",fit: BoxFit.fitHeight,
                      ),
                    ),
                    SizedBox(
                      width: GlobalSizes.getDeviceHeight(context) * 0.01,
                    ),
                    SizedBox(
                      height: GlobalSizes.getDeviceHeight(context) * 0.038,
                      child: Image.asset(
                        "assest/sellerShop.png",fit: BoxFit.fitHeight,
                      ),
                    ),
                    SizedBox(
                      width: GlobalSizes.getDeviceHeight(context) * 0.001,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16, // Adjust spacing between search bar and tab bar
              ),
              SizedBox(
                height: 20,
                child: TabBar(
                  labelColor: const Color(0xffFC8019),
                  unselectedLabelColor: const Color(0xff4A4A4A),
                  tabs: [
                    Tab(
                      child: Text(
                        'New (05)',
                        style: TextStyles.openSans(
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'In process (02)',
                        style: TextStyles.openSans(
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Deal Done',
                        style: TextStyles.openSans(
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Rejected',
                        style: TextStyles.openSans(
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                  isScrollable: true,
                  indicatorColor: const Color(0xffFC8019),
                ),
              ),
              const Divider(),
              Expanded(
                child: TabBarView(
                  children: [
                    // Contents of Tab 1
                    Column(
                      children: [
                        Expanded(
                          flex: 12,
                          child:
                              ListView.builder(itemBuilder: (context, index) {
                            return const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: SquareCard(),
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
                                  child: Image.asset("assest/buying.png",fit: BoxFit.fill,)),
                              ),
                              SizedBox(
                                width    : MediaQuery.of(context).size.width * 0.5,
                                child: Image.asset("assest/post.png"))
                            ],
                          ),
                        )
                      ],
                    ),
                    // Contents of Tab 2
                    const Center(child: Text('Tab 2 Content')),
                    const Center(child: Text('Tab 3 Content')),
                    // Contents of Tab 2
                    const Center(child: Text('Tab 4 Content')),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
