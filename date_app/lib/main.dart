import 'dart:io';
import 'package:date_app/routes/app_routes.dart';
import 'package:date_app/utilities/constants/l10n/app_translations.dart';
import 'package:date_app/utilities/core/app_initialize.dart';
import 'package:date_app/utilities/core/localization/locale_config.dart';
import 'package:date_app/utilities/core/theme/theme_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

// ignore: depend_on_referenced_packages

Future main() async {
  await AppInitialize.init();
  GetStorage().erase(); // sonra kaldır

  runApp(const MyApp());
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 852),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          translations: AppTranslations(),
          locale: Get.locale,
          fallbackLocale: const Locale('en'),
          localizationsDelegates: LocaleConfig.localizationsDelegates,
          supportedLocales: LocaleConfig.supportedLocales,
          themeMode: ThemeService.themeMode,
          initialRoute: AppRoutes.splash,
          getPages: AppRoutes.routes,
        );
      },
    );
  }
}
