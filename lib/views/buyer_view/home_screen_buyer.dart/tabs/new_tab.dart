import 'package:flutter/material.dart';

import '../../../../utils/components/buyerScreenTiles/new_tiles.dart';

class NewTab extends StatelessWidget {
  const NewTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 12,
          child: ListView.builder(itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.all(10.0),
              child: NewSquareCard(),
            );
          }),
        ),
      ],
    );
  }
}
