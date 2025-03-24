import 'package:date_app/routing/page_router.dart';
import 'package:get/get.dart';

import 'package:get_storage/get_storage.dart';

class SplashController extends GetxController {
  GetStorage storage = GetStorage();
  @override
  void onInit() {
    super.onInit();
    configureNavigate();
  }

  Future configureNavigate() async {
    PageRouter router = PageRouter(routes: routes);
    bool isLogged = storage.read('userModel') != null;
    await Future.delayed(const Duration(milliseconds: 3000));
    String route = isLogged ? '/home' : '/auth';
    router.navigateToPage(Get.context!, route, params: null);
  }
}
