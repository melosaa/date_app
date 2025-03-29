import 'package:date_app/utilities/constants/color_constants.dart';
import 'package:date_app/utilities/constants/icon_constants.dart';
import 'package:date_app/widgets/common/svg_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BackgroundWidget extends StatelessWidget {
  final Widget child;
  const BackgroundWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(decoration: const BoxDecoration(color: ColorConstants.white)),
        Positioned(
          top: -110.w,
          right: -70.w,
          child: Opacity(
            opacity: 0.5,
            child: SvgIcon(
              asset: IconConstants.facebookIcon,
              color: ColorConstants.white,
              width: 270.w,
              height: 270.w,
            ),
          ),
        ),
        Positioned(
          bottom: -70.w,
          left: -60.w,
          child: Opacity(
            opacity: 0.5,
            child: SvgIcon(
              asset: IconConstants.facebookIcon,
              color: ColorConstants.white,
              width: 270.w,
              height: 270.w,
            ),
          ),
        ),
        child,
      ],
    );
  }
}
