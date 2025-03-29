import 'package:flutter/material.dart';
import 'package:date_app/utilities/constants/color_constants.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.fromSeed(
      seedColor: ColorConstants.splash,
      brightness: Brightness.light,
    ),
    scaffoldBackgroundColor: Colors.transparent,
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    colorScheme: ColorScheme.fromSeed(
      seedColor: ColorConstants.splash,
      brightness: Brightness.dark,
    ),
    scaffoldBackgroundColor: Colors.transparent,
  );
}
