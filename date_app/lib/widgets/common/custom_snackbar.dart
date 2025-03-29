import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../utilities/constants/color_constants.dart';
import '../../utilities/constants/text/text_style_constants.dart';

class CustomSnackbar {
  static DateTime? _lastShowTime;
  static const _minInterval = Duration(seconds: 3);

  static void show({required String message, bool isError = false}) {
    final now = DateTime.now();
    if (_lastShowTime != null &&
        now.difference(_lastShowTime!) < _minInterval) {
      return;
    }

    _lastShowTime = now;

    Get.snackbar(
      '',
      '',
      titleText: Container(),
      messageText: Row(
        children: [
          Icon(
            isError ? Icons.error_outline : Icons.check_circle_outline,
            color: ColorConstants.white,
            size: 24.w,
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: Text(
              message,
              style: TextStyles.regular.copyWith(
                color: ColorConstants.white,
                fontSize: 14.sp,
              ),
            ),
          ),
        ],
      ),
      backgroundColor: isError ? ColorConstants.error : ColorConstants.black,
      borderRadius: 12.r,
      margin: EdgeInsets.all(16.w),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      snackPosition: SnackPosition.TOP,
      duration: const Duration(seconds: 3),
      isDismissible: true,
      dismissDirection: DismissDirection.horizontal,
      forwardAnimationCurve: Curves.easeOutBack,
      reverseAnimationCurve: Curves.easeInBack,
    );
  }

  static void showError(String message) {
    show(message: message, isError: true);
  }

  static void showSuccess(String message) {
    show(message: message, isError: false);
  }
}
