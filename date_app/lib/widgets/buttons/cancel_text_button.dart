import 'package:date_app/utilities/constants/color_constants.dart';
import 'package:date_app/utilities/constants/text/text_style_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CancelTextButton extends StatelessWidget {
  final String? text;
  final VoidCallback? onPressed;
  final Color? textColor;
  final TextStyle? textStyle;

  const CancelTextButton({
    super.key,
    this.text,
    this.onPressed,
    this.textColor,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed ?? () => Get.back(),
      style: TextButton.styleFrom(
        splashFactory: NoSplash.splashFactory,
        padding: EdgeInsets.zero,
      ),
      child: Text(
        text ?? 'cancel'.tr,
        style:
            textStyle ??
            TextStyles.regular.copyWith(
              color: textColor ?? ColorConstants.splash,
            ),
      ),
    );
  }

  // Özel kullanımlar için factory constructor'lar
  factory CancelTextButton.primary({String? text, VoidCallback? onPressed}) {
    return CancelTextButton(
      text: text,
      onPressed: onPressed,
      textColor: ColorConstants.splash,
    );
  }

  factory CancelTextButton.secondary({String? text, VoidCallback? onPressed}) {
    return CancelTextButton(
      text: text,
      onPressed: onPressed,
      textColor: ColorConstants.splash,
    );
  }
}
