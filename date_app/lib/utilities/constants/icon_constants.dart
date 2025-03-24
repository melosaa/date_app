import 'package:flutter_svg/flutter_svg.dart';

class IconConstants {
  static const String assetsPath = 'lib/assets';
  static const String iconPath = '$assetsPath/icons';
  static const String baseIconPath = '$iconPath/base';
  static const String homeIconPath = '$iconPath/home';

  //* Base Icons

  //* CACHE SVG IMAGES
  static void svgPrecacheImage() {
    var cacheSvgImages = [];
    for (String element in cacheSvgImages) {
      var loader = SvgAssetLoader(element);
      svg.cache.putIfAbsent(
        loader.cacheKey(null),
        () => loader.loadBytes(null),
      );
    }
  }
}

//* GET SVG IMAGE
