import 'package:date_app/views/auth/login_view.dart' show LoginView;
import 'package:date_app/views/splash/splash_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class PageRouter {
  Map<String, WidgetBuilder> routes;
  PageRouter({required this.routes});

  void navigateToPage(
    BuildContext context,
    String url, {
    Map<String, String>? params,
  }) {
    if (routes.containsKey(url)) {
      if (params != null && params.isNotEmpty) {
        Get.toNamed(url, parameters: params, preventDuplicates: false);
      } else {
        Get.toNamed(url, preventDuplicates: false);
      }
    } else {
      Get.toNamed('/');
    }
  }
}

Map<String, WidgetBuilder> routes = {
  '/splash': (context) => const SplashView(),
  '/auth': (context) => LoginView(),
};

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return LoginView();
      },
    ),
  ],
);
