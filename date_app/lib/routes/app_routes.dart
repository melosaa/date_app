import 'package:date_app/views/auth/forgot_password.dart';
import 'package:date_app/views/auth/login_view.dart';
import 'package:date_app/views/auth/register_view.dart';
import 'package:date_app/views/home/home_view.dart';
import 'package:date_app/views/splash/splash_view.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppRoutes {
  static const String initial = '/';
  static const String login = '/login';
  static const String splash = '/splash';
  static const String home = '/home';
  static const String register = '/register';
  static const String verification = '/verification';
  static const String forgotPassword = '/forgot-password';

  static final routes = [
    GetPage(name: splash, page: () => const SplashView()),
    GetPage(name: initial, page: () => const LoginView()),
    GetPage(name: home, page: () => const HomeView()),
    GetPage(name: register, page: () => RegisterView()),
    GetPage(name: forgotPassword, page: () => ForgotPasswordView()),
  ];
}
