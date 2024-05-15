import 'package:flutter/material.dart';

import '../../../utils/components/buyerScreenTiles/deal_done_tile.dart';
import '../../../utils/size/global_size/global_size.dart';

class DealDoneTab extends StatelessWidget {
  const DealDoneTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 12,
          child: ListView.builder(itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.all(10.0),
              child: DealDoneCard(),
            );
          }),
        ),
      ],
    );
  }
}
