import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgIcon extends StatelessWidget {
  final SvgPicture asset;
  final Color? color;
  final double? width;
  final double? height;

  const SvgIcon({
    super.key,
    required this.asset,
    this.color,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Center(
        child:
            color != null
                ? ColorFiltered(
                  colorFilter: ColorFilter.mode(color!, BlendMode.srcIn),
                  child: SizedBox(width: width, height: height, child: asset),
                )
                : SizedBox(width: width, height: height, child: asset),
      ),
    );
  }
}
