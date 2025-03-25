import 'package:date_app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:get_storage/get_storage.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      configureNavigate();
    });
  }

  Future<void> configureNavigate() async {
    GetStorage storage = GetStorage();
    await Future.delayed(const Duration(milliseconds: 1500));

    bool isLogged = storage.read('userModel') != null;

    Future.microtask(() {
      if (isLogged) {
        Get.offAllNamed(AppRoutes.home);
      } else {
        Get.offAllNamed(AppRoutes.login);
      }
    });
  }
}
