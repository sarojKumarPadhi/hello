import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

class CoustumRichText extends StatelessWidget {
  final String text1;
  final String text2;
  final Callback? callBack;

  const CoustumRichText(
      {super.key,
      required this.text1,
      required this.text2,
      required this.callBack});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: text1,
                style: const TextStyle(
                  color: Colors.black,
                ),
              ),
              TextSpan(
                text: text2,
                style: const TextStyle(color: Color(0xffFC8019)),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    if (callBack != null) callBack!();
                  },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
