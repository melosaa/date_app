import 'package:date_app/utilities/constants/color_constants.dart';
import 'package:date_app/utilities/core/theme/app_radius.dart';
import 'package:date_app/utilities/screen/app_padding.dart';
import 'package:date_app/widgets/common/custom_inkwell.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GenderButton extends StatelessWidget {
  final Text text;
  GenderButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return CustomInkWell(
      child: Container(
        padding: AppPadding.special,
        decoration: BoxDecoration(
          border: Border.all(color: ColorConstants.grey400, width: 1.w),
          borderRadius: AppRadius.gender,
        ),
        child: Center(child: text),
      ),
    );
  }
}
