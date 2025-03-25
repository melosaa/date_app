import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeService {
  static final _storage = GetStorage();
  static const _key = 'themeMode';

  static ThemeMode get themeMode {
    String? storedTheme = _storage.read(_key);
    if (storedTheme == null) {
      var brightness = PlatformDispatcher.instance.platformBrightness;
      return brightness == Brightness.dark ? ThemeMode.dark : ThemeMode.light;
    }
    return storedTheme == 'dark' ? ThemeMode.dark : ThemeMode.light;
  }

  static void switchTheme() {
    if (Get.isDarkMode) {
      _storage.write(_key, 'light');
      Get.changeThemeMode(ThemeMode.light);
    } else {
      _storage.write(_key, 'dark');
      Get.changeThemeMode(ThemeMode.dark);
    }
  }
}
