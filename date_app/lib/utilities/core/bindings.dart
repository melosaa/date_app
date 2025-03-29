import 'package:date_app/business/controllers/auth/login_controller.dart';
import 'package:date_app/business/controllers/auth/register_controller.dart';
import 'package:date_app/business/controllers/splash/splash_controller.dart';
import 'package:get/get.dart';

class BindingsController {
  static void registerControllers() {
    Get.lazyPut(() => SplashController(), tag: "SplashController");
    Get.lazyPut(() => LoginController(), tag: "LoginController");
    Get.lazyPut(() => RegisterController(), tag: "RegisterController");
  }
}
