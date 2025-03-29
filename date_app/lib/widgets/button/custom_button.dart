import 'package:date_app/utilities/constants/color_constants.dart';
import 'package:date_app/utilities/constants/text/text_style_constants.dart';
import 'package:date_app/widgets/common/svg_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool isLoading;
  final Color? backgroundColor;
  final Color? textColor;
  final Color? borderColor;
  final double? width;
  final double? height;
  final double? borderRadius;
  final EdgeInsetsGeometry? padding;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final double? letterSpacing;
  final Widget? textFormField;
  final SvgPicture? icon;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.isLoading = false,
    this.backgroundColor,
    this.textColor,
    this.borderColor,
    this.width,
    this.height,
    this.borderRadius,
    this.padding,
    this.prefixIcon,
    this.suffixIcon,
    this.letterSpacing,
    this.textFormField,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: height ?? 37.h,
      child: ElevatedButton(
        onPressed: isLoading ? null : onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? ColorConstants.black,
          foregroundColor: textColor ?? ColorConstants.white,
          padding:
              padding ?? EdgeInsets.symmetric(horizontal: 18.w, vertical: 8.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 12.r),
            side: BorderSide(
              color: borderColor ?? Colors.transparent,
              width: 1.w,
            ),
          ),
          elevation: 0,
        ),
        child:
            isLoading
                ? SizedBox(
                  width: 24.w,
                  height: 24.w,
                  child: CircularProgressIndicator(
                    color: textColor ?? ColorConstants.white,
                    strokeWidth: 2.w,
                  ),
                )
                : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (prefixIcon != null) ...[
                      prefixIcon!,
                      SizedBox(width: 12.w),
                    ],
                    if (icon != null) ...[
                      SvgIcon(asset: icon!, width: 19.w, height: 18.w),
                      SizedBox(width: 12.w),
                    ],
                    Text(
                      text,
                      style: TextStyles.medium.copyWith(
                        fontSize: 14.sp,
                        color: textColor ?? ColorConstants.white,
                        letterSpacing: letterSpacing ?? -0.33,
                      ),
                    ),
                    if (suffixIcon != null) ...[
                      SizedBox(width: 12.w),
                      suffixIcon!,
                    ],
                  ],
                ),
      ),
    );
  }

  // Factory constructor'lar
  factory CustomButton.primary({
    required String text,
    required VoidCallback? onPressed,
    bool isLoading = false,
    SvgPicture? icon,
  }) {
    return CustomButton(
      text: text,
      onPressed: onPressed!,
      isLoading: isLoading,
      icon: icon,
    );
  }

  factory CustomButton.secondary({
    required String text,
    required VoidCallback? onPressed,
    bool isLoading = false,
    SvgPicture? icon,
  }) {
    return CustomButton(
      text: text,
      onPressed: onPressed!,
      isLoading: isLoading,
      icon: icon,
    );
  }

  factory CustomButton.outline({
    required String text,
    required VoidCallback? onPressed,
    bool isLoading = false,
    SvgPicture? icon,
  }) {
    return CustomButton(
      text: text,
      onPressed: onPressed!,
      isLoading: isLoading,
      icon: icon,
    );
  }
}
