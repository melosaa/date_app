import 'package:date_app/business/controllers/splash/splash_controller.dart';
import 'package:date_app/utilities/constants/color_constants.dart';
import 'package:date_app/utilities/constants/image_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.find<SplashController>(tag: "SplashController");
    return Container(
      color: ColorConstants.splashColor,
      child: Center(
        child: SizedBox(child: FittedBox(child: ImageConstants.logoImageAsset)),
      ),
    );
  }
}
