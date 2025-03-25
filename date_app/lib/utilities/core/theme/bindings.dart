import 'package:date_app/business/controllers/splash/splash_controller.dart';
import 'package:get/get.dart';


class BindingsController {
  static void registerControllers() {
    Get.lazyPut(() => SplashController(), tag: "SplashController");
  }
}
