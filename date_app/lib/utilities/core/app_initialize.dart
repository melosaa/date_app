import 'package:date_app/utilities/constants/icon_constants.dart';
import 'package:flutter/material.dart';

class AppInitialize {
  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    IconConstants.svgPrecacheImage();
  }
}
