import 'package:flutter/widgets.dart';

class ImageConstants {
  static const String assetsPath = 'lib/assets';
  static const String imagesPath = '$assetsPath/images';
  static const String logosImagesPath = '$imagesPath/base';
  static const String loginImagesPath = '$imagesPath/login';

  // Logo Images

  static const String logoImagePath = '$logosImagesPath/logo_icon.png';
  static const String loginBackgroundImagePath =
      '$loginImagesPath/login_background_image.png';

  // catch ımages
  static void precacheImages(BuildContext context) {
    var cacheImages = [logoImagePath, loginBackgroundImagePath];
    for (String element in cacheImages) {
      precacheImage(AssetImage(element), context);
    }
  }

  //* Logo Image Asset

  static Image logoImageAsset = Image.asset(logoImagePath, fit: BoxFit.contain);

  //* Login Background Image Asset
  static Image loginBackgroundImageAsset = Image.asset(
    loginBackgroundImagePath,
    fit: BoxFit.cover,
  );
}
