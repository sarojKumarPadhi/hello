import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyles {
  static TextStyle openSans({
    double? fontSize = 20,
    FontWeight? fontWeight = FontWeight.w600,
    Color? color,
  }) {
    return GoogleFonts.openSans(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    );
  }

  // You can define other text styles similarly
}
