import 'package:date_app/utilities/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDividerWidget extends StatelessWidget {
  final double thickness;
  final double indent;
  final double endIndent;
  final Color? color;
  final Axis direction;

  const CustomDividerWidget({
    super.key,
    this.thickness = 0.5,
    this.indent = 0,
    this.endIndent = 0,
    this.color,
    this.direction = Axis.horizontal,
  });

  @override
  Widget build(BuildContext context) {
    return direction == Axis.horizontal
        ? Divider(
          thickness: thickness.h,
          color: ColorConstants.transparentBlack,
          indent: indent.w,
          endIndent: endIndent.w,
          height: thickness.h,
        )
        : VerticalDivider(
          thickness: thickness.w,
          color: color,
          indent: indent.h,
          endIndent: endIndent.h,
          width: thickness.w,
        );
  }
}
