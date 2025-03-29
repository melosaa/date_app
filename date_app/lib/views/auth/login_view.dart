import 'package:date_app/utilities/constants/color_constants.dart';
import 'package:date_app/utilities/constants/icon_constants.dart';
import 'package:date_app/utilities/constants/image_constants.dart';
import 'package:date_app/utilities/constants/text/text_constants.dart';
import 'package:date_app/utilities/constants/text/text_style_constants.dart';
import 'package:date_app/utilities/screen/app_spacing.dart';
import 'package:date_app/widgets/base/or_divider_widget.dart';
import 'package:date_app/widgets/buttomsheet/custom_buttom_sheet.dart';
import 'package:date_app/widgets/button/custom_button.dart';
import 'package:date_app/widgets/buttons/gender_button.dart';
import 'package:date_app/widgets/common/custom_inkwell.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorConstants.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(12.w),
          child: SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            child: Column(
              children: [
                AppSpacing.hMedium,
                logoTitle,
                localizationGenderbutton,
                AppSpacing.hMedium,
                localizationLoginForm,
                AppSpacing.hMedium,
                createAccountSection,
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget get localizationGenderbutton {
    return Column(
      children: [
        AppSpacing.hExtraLarge,
        AppSpacing.hExtraLarge,
        Text(
          TextConstants.welcome.tr,
          style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
        ),
        AppSpacing.hSmall,
        Text(
          TextConstants.letsGetStarted.tr,
          style: TextStyles.forgot.copyWith(
            color: ColorConstants.transparentBlack,
          ),
        ),
        AppSpacing.hExtraLarge,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: GenderButton(
                text: Text(TextConstants.male.tr, style: TextStyles.buttonText),
              ),
            ),
            AppSpacing.wSmall,
            Expanded(
              child: GenderButton(
                text: Text(
                  TextConstants.female.tr,
                  style: TextStyles.buttonText,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget get logoTitle {
    return Column(
      children: [
        150.verticalSpace,
        Center(
          child: SizedBox(
            width: 146.w,
            height: 40.h,
            child: ImageConstants.loginBackgroundImageAsset,
          ),
        ),
      ],
    );
  }

  Widget get localizationLoginForm => Column(
    children: [
      AppSpacing.hLarge,
      const OrDivider(),
      AppSpacing.hMedium,
      CustomButton(
        text: TextConstants.continueWithApple.tr,
        onPressed: () {},
        icon: IconConstants.appleIcon,
      ),
      AppSpacing.hSmall,
      CustomButton(
        text: TextConstants.continueWithFacebook.tr,
        icon: IconConstants.facebookIcon,
        onPressed: () {},
        backgroundColor: ColorConstants.splash,
      ),
    ],
  );

  Widget get createAccountSection => Builder(
    builder:
        (context) => Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomInkWell(
              onTap: () {
                CustomBottomSheet.showDefault(context: context);
              },
              child: Text(
                '${TextConstants.alreadyHaveAccount.tr} ',
                style: TextStyles.regular.copyWith(
                  color: ColorConstants.splash,
                  fontSize: 14.sp,
                ),
              ),
            ),
          ],
        ),
  );
}
