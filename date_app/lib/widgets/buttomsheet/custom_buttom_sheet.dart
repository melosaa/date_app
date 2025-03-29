import 'package:date_app/business/controllers/auth/login_controller.dart';
import 'package:date_app/routes/app_routes.dart';
import 'package:date_app/utilities/constants/color_constants.dart';
import 'package:date_app/utilities/constants/icon_constants.dart';
import 'package:date_app/utilities/constants/text/text_constants.dart';
import 'package:date_app/utilities/screen/app_spacing.dart';
import 'package:date_app/widgets/base/custom_divider_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomBottomSheet extends StatelessWidget {
  final Widget child;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final bool isDismissible;
  final bool enableDrag;
  final String? title;
  final EdgeInsetsGeometry? margin;

  final Color? backgroundColor;
  final VoidCallback? onClose;

  const CustomBottomSheet({
    super.key,
    required this.child,
    this.title,
    this.isDismissible = true,
    this.enableDrag = true,
    this.height,
    this.backgroundColor,
    this.onClose,
    this.padding,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    final LoginController loginController = Get.put(
      LoginController(),
      tag: "loginController",
    );
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: 339.h),
      child: Container(
        margin: margin ?? EdgeInsets.all(14.w),
        padding: padding ?? EdgeInsets.all(4.w),
        decoration: BoxDecoration(
          color: ColorConstants.white,
          borderRadius: BorderRadius.circular(10.r),
          boxShadow: [
            // BoxShadow(
            //   color:ColorConstants.black,
            //   blurRadius: 10.r,
            //   offset: const Offset(0, 2),
            // ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            buildAccountOption(
              icon: IconConstants.plusIcon,
              text: TextConstants.registerByEmailOrPhone.tr,
              onTap: () {},
            ),
            const CustomDividerWidget(),
            buildAccountOption(
              icon: IconConstants.facebookButtonIcon,
              text: TextConstants.signinWithFacebook.tr,
              onTap: () {},
            ),
            const CustomDividerWidget(),
            buildAccountOption(
              icon: IconConstants.appleButtonIcon,
              text: TextConstants.signinWithApple.tr,
              onTap: () {},
            ),
            const CustomDividerWidget(),
            buildAccountOption(
              icon: IconConstants.mailboxIcon,
              text: TextConstants.signinWithEmail.tr,
              onTap: () => Get.toNamed(AppRoutes.register),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildAccountOption({
    required Widget icon,
    required String text,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 14.h),
        child: Row(
          children: [
            icon,
            AppSpacing.wMedium,
            Text(
              text,
              style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }

  static Future<T?> showDefault<T>({
    required BuildContext context,
    bool isDismissible = true,
    bool enableDrag = true,
    double? height,
    Color? backgroundColor,
    VoidCallback? onClose,
    EdgeInsetsGeometry? padding,
  }) {
    return showModalBottomSheet<T>(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      isDismissible: isDismissible,
      enableDrag: enableDrag,
      builder:
          (context) => CustomBottomSheet(
            isDismissible: isDismissible,
            enableDrag: enableDrag,
            height: height,
            backgroundColor: backgroundColor,
            onClose: onClose ?? () => Navigator.pop(context),
            padding: padding,
            child: AppSpacing.hSmall,
          ),
    );
  }
}
