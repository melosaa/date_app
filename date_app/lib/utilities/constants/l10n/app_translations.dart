import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';

class AppTranslations extends Translations {
  static final Map<String, Map<String, String>> _languages = {};

  static Future<void> loadLanguages() async {
    _languages['en'] = await _loadJson('lib/assets/l10n/en.json');
    _languages['tr'] = await _loadJson('lib/assets/l10n/tr.json');
  }

  static Future<Map<String, String>> _loadJson(String path) async {
    String jsonString = await rootBundle.loadString(path);
    Map<String, dynamic> jsonMap = json.decode(jsonString);
    return jsonMap.map((key, value) => MapEntry(key, value.toString()));
  }

  @override
  Map<String, Map<String, String>> get keys => _languages;
}
