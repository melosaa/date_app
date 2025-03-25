import 'dart:io';

import 'package:date_app/main.dart';
import 'package:flutter/services.dart';

class SystemConfig {
  static void setupSystemSettings() async {
    HttpOverrides.global = MyHttpOverrides();
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  }
}
