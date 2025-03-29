import 'package:date_app/utilities/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle heading = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w700,
    fontSize: 24.sp,
    height: 36.h / 24.sp,
    letterSpacing: -0.33,
  );

  static TextStyle bold = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w700,
    fontSize: 16.sp,
    letterSpacing: -0.33,
  );
  static TextStyle forgot = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
    fontSize: 12.sp,
    letterSpacing: -0.33,
  );
  static TextStyle subHeading = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
    fontSize: 20.sp,
    letterSpacing: -0.33,
  );

  static TextStyle body = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w400,
    fontSize: 16.sp,
    letterSpacing: -0.33,
  );

  static TextStyle caption = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w300,
    fontSize: 12.sp,
    letterSpacing: -0.33,
  );

  static TextStyle italic = TextStyle(
    fontFamily: 'Poppins',
    fontStyle: FontStyle.italic,
    fontSize: 16.sp,
    letterSpacing: -0.33,
  );

  static TextStyle button = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w500,
    fontSize: 18.sp,
    letterSpacing: -0.33,
  );

  static TextStyle textField = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w400,
    fontSize: 14.sp,
    height: 21 / 14,
    letterSpacing: -0.33,
  );

  static TextStyle hint = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w400,
    fontSize: 14.sp,
    height: 21 / 14,
    letterSpacing: -0.33,
    color: ColorConstants.grey400,
  );

  static TextStyle buttonText = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w500,
    fontSize: 14.sp,
    height: 21 / 14,
    letterSpacing: -0.33,
  );

  static TextStyle regular = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w400,
    fontSize: 14.sp,
    height: 21 / 14,
    letterSpacing: -0.33,
  );

  static const TextStyle medium = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w500,
    letterSpacing: -0.33,
  );

  static const TextStyle semiBold = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
    letterSpacing: -0.33,
  );
  static TextStyle regularFamily = TextStyle(
    fontFamily: 'Poppins-Regular',
    fontWeight: FontWeight.w400,
    fontSize: 14.sp,
    height: 21 / 14,
    letterSpacing: -0.33,
  );
}
