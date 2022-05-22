import 'dart:ui';

import 'package:get/get.dart';

import 'languages/languages.dart';

const Locale usEnglish = Locale("en", "US");
const Locale franceFrench = Locale("fr", "FR");

class LocalizationService extends Translations {
  // Default locale
  static const locale = usEnglish;

  // fallbackLocale saves the day when the locale gets in trouble
  static const fallbackLocale = usEnglish;

  // Supported languages
  // Needs to be same order with locales
  static final langs = [
    'English',
    'French',
  ];

  // Supported locales
  // Needs to be same order with langs
  static final locales = [
    usEnglish,
    franceFrench,
  ];

  // Keys and their translations
  // Translations are separated maps in `lang` file
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': enUs,
        'fr_FR': frFR,
      };

  // Gets locale from language, and updates the locale
  void changeLocale(String lang) {
    final locale = _getLocaleFromLanguage(lang);
    if (locale == null) return;
    Get.updateLocale(locale);
  }

  // Finds language in `langs` list and returns it as Locale
  Locale? _getLocaleFromLanguage(String lang) {
    for (int i = 0; i < langs.length; i++) {
      if (lang == langs[i]) return locales[i];
    }
    return Get.locale;
  }
}
