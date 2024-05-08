import 'dart:ffi';

import 'package:flutter/material.dart';

class Language {
  final String text;
  final String nativeLang;
  Color color;
  bool select;

  Language(
      {required this.text,
      required this.nativeLang,
      required this.color,
      required this.select});
}
