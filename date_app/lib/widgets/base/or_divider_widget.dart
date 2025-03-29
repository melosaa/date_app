import 'package:date_app/utilities/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrDivider extends StatelessWidget {
  final String text;
  final Color lineColor;
  final Color textColor;
  final double thickness;
  final double spacing;

  const OrDivider({
    super.key,
    this.text = "OR",
    this.lineColor = ColorConstants.grey400,
    this.textColor = ColorConstants.grey500,
    this.thickness = 1,
    this.spacing = 12,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider(color: lineColor, thickness: thickness)),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: spacing.w),
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Expanded(child: Divider(color: lineColor, thickness: thickness)),
      ],
    );
  }
}
