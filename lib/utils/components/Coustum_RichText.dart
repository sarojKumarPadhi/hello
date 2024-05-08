import 'package:flutter/material.dart';

class CoustumRichText extends StatelessWidget {
  final String text1;
  final String text2;

  const CoustumRichText({super.key, required this.text1, required this.text2});

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
              ),
            ],
          ),
        ),
      ],
    );
  }
}
