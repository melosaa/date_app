import 'package:date_app/utilities/constants/color_constants.dart';
import 'package:date_app/utilities/constants/image_constants.dart';
import 'package:date_app/utilities/screen/app_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorConstants.backgroundColor,
      body: SafeArea(
        child: Expanded(
          child: SingleChildScrollView(
            physics: ClampingScrollPhysics(),
            child: Column(children: [AppSpacing.hExtraLarge, logoTitle],),
          ),
        ),
      ),
    );
  }
}

Widget get logoTitle {
  return Column(
    children: [
      190.verticalSpace,
      Center(child: ImageConstants.loginBackgroundImageAsset),
      140.verticalSpace,
      Text(
        "welcome".tr, 
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
      ),
    ],
  );
}
