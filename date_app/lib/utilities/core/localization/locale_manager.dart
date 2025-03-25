import 'dart:ui';

import 'package:get/get.dart';

import 'package:get_storage/get_storage.dart';

class LocaleManager {
  static void loadLocaleFromStorage() {
    final storage = GetStorage();
    final storedLanguageCode = storage.read('languageCode') ?? 'en';
    Get.updateLocale(Locale(storedLanguageCode));
  }
}
