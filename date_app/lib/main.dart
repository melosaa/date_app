import 'dart:io';

import 'package:date_app/business/controllers/splash/splash_controller.dart';
import 'package:date_app/routing/page_router.dart';
import 'package:date_app/utilities/constants/l10n/app_translations.dart';
import 'package:date_app/utilities/core/app_initialize.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_localizations/flutter_localizations.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized(); // BU İLK SATIR OLMALI!
  await AppInitialize.init();
  HttpOverrides.global = MyHttpOverrides();
  PageRouter router = PageRouter(routes: routes);
  Get.put(SplashController(), tag: "splashController", permanent: false);
  await GetStorage.init();
  runApp(MyApp(router: router));
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
  final PageRouter router;
  const MyApp({super.key, required this.router});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          translations: AppTranslations(),
          locale: Get.locale,
          fallbackLocale: Locale('en'),
          localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: [Locale('en'), Locale('tr')],
          initialRoute: '/splash',
          routes: router.routes,
        );
      },
    );
  }
}
