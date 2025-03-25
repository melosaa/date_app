import 'package:date_app/views/auth/login_view.dart';
import 'package:date_app/views/home/home_view.dart';
import 'package:date_app/views/splash/splash_view.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppRoutes {
  static const String initial = '/';
  static const String login = '/login';
  static const String splash = '/splash';
  static const String home = '/home';

  static final routes = [
    GetPage(name: splash, page: () => const SplashView()),
    GetPage(name: initial, page: () => LoginView()),
    GetPage(name: home, page: () => HomeView()),
  ];
}
