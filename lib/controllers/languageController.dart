import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/lagModel.dart';

class LanguageController extends GetxController {
  RxList<Language> laguageTile = [
    Language(text: "Bangla", color: const Color(0xff46E3E3).withOpacity(0.2)),
    Language(text: "English", color: const Color(0xffF2C94C).withOpacity(0.2)),
    Language(text: "Gujarati", color: const Color(0xffB73451).withOpacity(0.2)),
    Language(text: "Hindi", color: const Color(0xff7B61FF).withOpacity(0.2)),
    Language(text: "Kannada", color: const Color(0xffFC8019).withOpacity(0.2)),
    Language(text: "Marathi", color: const Color(0xff008B00).withOpacity(0.2)),
    Language(
        text: "Malayalam", color: const Color(0xff7B61FF).withOpacity(0.2)),
    Language(text: "Punjabi", color: const Color(0xff2196F3).withOpacity(0.2)),
    Language(text: "Tamil", color: const Color(0xffB73451).withOpacity(0.2)),
    Language(text: "Telugu", color: const Color(0xff263238).withOpacity(0.2)),
  ].obs;

  RxBool isTileSeclected = false.obs;
}
