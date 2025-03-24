import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppSpacing {
  // Vertical (Height) spacing
  static SizedBox get hExtraSmall => SizedBox(height: 4.h);
  static SizedBox get hSmall => SizedBox(height: 12.h);
  static SizedBox get hMedium => SizedBox(height: 24.h);
  static SizedBox get hLarge => SizedBox(height: 32.h);
  static SizedBox get hExtraLarge => SizedBox(height: 48.h);

  // Horizontal (Width) spacing
  static SizedBox get wExtraSmall => SizedBox(width: 4.w);
  static SizedBox get wSmall => SizedBox(width: 12.w);
  static SizedBox get wMedium => SizedBox(width: 24.w);
  static SizedBox get wLarge => SizedBox(width: 32.w);
  static SizedBox get wExtraLarge => SizedBox(width: 48.w);

  // Symmetric spacing methods
  static EdgeInsets symmetric({double? horizontal, double? vertical}) {
    return EdgeInsets.symmetric(
      horizontal: horizontal?.w ?? 0,
      vertical: vertical?.h ?? 0,
    );
  }

  // All sides spacing method
  static EdgeInsets all(double value) {
    return EdgeInsets.all(value.r);
  }
}
