import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_localizations/flutter_localizations.dart';

class LocaleConfig {
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = [
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ];

  static const List<Locale> supportedLocales = [Locale('en'), Locale('tr')];
}
