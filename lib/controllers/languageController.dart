import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/lagModel.dart';

class LanguageController extends GetxController {
  RxList<Language> laguageTile = [
    Language(
        text: "Bangla",
        color: const Color(0xff46E3E3).withOpacity(0.2),
        nativeLang: 'বাংলা',
        select: false),
    Language(
        text: "English",
        color: const Color(0xffFC8019).withOpacity(0.2),
        nativeLang: 'English',
        select: false),
    Language(
        text: "Gujarati",
        color: const Color(0xffB73451).withOpacity(0.2),
        nativeLang: 'ગુજરાતી',
        select: false),
    Language(
        text: "Hindi",
        color: const Color(0xff7B61FF).withOpacity(0.2),
        nativeLang: 'हिंदी',
        select: false),
    Language(
        text: "Kannada",
        color: const Color(0xffFC8019).withOpacity(0.2),
        nativeLang: 'ಕನ್ನಡ',
        select: false),
    Language(
        text: "Marathi",
        color: const Color(0xff008B00).withOpacity(0.2),
        nativeLang: 'मराठी',
        select: false),
    Language(
        text: "Malayalam",
        color: const Color(0xff7B61FF).withOpacity(0.2),
        nativeLang: 'മലയാളം',
        select: false),
    Language(
        text: "Punjabi",
        color: const Color(0xff2196F3).withOpacity(0.2),
        nativeLang: 'ਪੰਜਾਬੀ',
        select: false),
    Language(
        text: "Tamil",
        color: const Color(0xffB73451).withOpacity(0.2),
        nativeLang: 'தமிழ்',
        select: false),
    Language(
        text: "Telugu",
        color: const Color(0xff263238).withOpacity(0.2),
        nativeLang: 'తెలుగు',
        select: false),
  ].obs;

  RxBool isTileSeclected = false.obs;
}
