import 'package:date_app/business/controllers/auth/login_controller.dart';
import 'package:date_app/business/controllers/auth/register_controller.dart';
import 'package:date_app/utilities/constants/color_constants.dart';
import 'package:date_app/utilities/constants/text/text_constants.dart';
import 'package:date_app/utilities/constants/text/text_style_constants.dart';

import 'package:date_app/utilities/screen/app_spacing.dart';
import 'package:date_app/widgets/base/custom_divider_widget.dart';
import 'package:date_app/widgets/button/custom_button.dart';
import 'package:date_app/widgets/buttons/cancel_text_button.dart';
import 'package:date_app/widgets/common/custom_inkwell.dart';
import 'package:date_app/widgets/textfield/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

// ignore: use_key_in_widget_constructors
class RegisterView extends StatelessWidget {
  final controller = Get.find<RegisterController>(tag: "RegisterController");
  final loginController = Get.find<LoginController>(tag: "LoginController");

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstants.white,
        body: Padding(
          padding: EdgeInsets.all(16.w),
          child: Column(
            children: [
              singInTitle,
              const CustomDividerWidget(),
              AppSpacing.wLarge,
              CustomTextField(
                hintText: TextConstants.email.tr,
                controller: controller.emailController,
              ),
              CustomTextField(
                hintText: TextConstants.password.tr,
                controller: controller.passwordController,
              ),
              AppSpacing.hMedium,
              CustomButton(
                text: TextConstants.signin.tr,
                onPressed: () {},
                // ignore: deprecated_member_use
                backgroundColor: ColorConstants.splash.withOpacity(0.5),
              ),
              AppSpacing.hMedium,
              CustomInkWell(
                onTap: loginController.navigateToForgotPassword,
                child: Text(
                  TextConstants.forgotPassword.tr,
                  style: TextStyles.forgot.copyWith(
                    color: ColorConstants.splash,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget get singInTitle {
    return Row(
      children: [
        AppSpacing.wExtraLarge,
        Expanded(
          child: Align(
            alignment: Alignment.center,
            child: Text(
              TextConstants.signinwithEmail.tr,
              style: TextStyles.buttonText,
            ),
          ),
        ),
        const CancelTextButton(),
      ],
    );
  }
}
