import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconConstants {
  static const String assetsPath = 'lib/assets';
  static const String iconPath = '$assetsPath/icons';
  static const String baseIconPath = '$iconPath/base';
  static const String homeIconPath = '$iconPath/home';
  static const String authIconPath = '$iconPath/auth';

  // auth icons
  static const String appleIconPath = '$authIconPath/apple_icon.svg';
  static const String facebookIconPath = '$authIconPath/facebook_icon.svg';
  static const String appleButtonIconPath =
      '$authIconPath/apple_button_icon.svg';
  static const String facebookButtonIconPath =
      '$authIconPath/facebook_button_icon.svg';
  static const String mailboxIconPath = '$authIconPath/mailbox_icon.svg';
  static const String plusIconPath = '$authIconPath/plus_icon.svg';

  //* CACHE SVG IMAGES
  static void svgPrecacheImage() {
    var cacheSvgImages = [
      appleIconPath,
      facebookIconPath,
      mailboxIconPath,
      plusIconPath,
    ];
    for (String element in cacheSvgImages) {
      var loader = SvgAssetLoader(element);
      svg.cache.putIfAbsent(
        loader.cacheKey(null),
        () => loader.loadBytes(null),
      );
    }
  }

  //* Auth Icons Assets
  static SvgPicture get appleIcon =>
      SvgPicture.asset(appleIconPath, fit: BoxFit.scaleDown);
  static SvgPicture get facebookIcon =>
      SvgPicture.asset(facebookIconPath, fit: BoxFit.scaleDown);
  static SvgPicture get mailboxIcon =>
      SvgPicture.asset(mailboxIconPath, fit: BoxFit.scaleDown);
  static SvgPicture get plusIcon =>
      SvgPicture.asset(plusIconPath, fit: BoxFit.scaleDown);
  static SvgPicture get appleButtonIcon =>
      SvgPicture.asset(appleButtonIconPath, fit: BoxFit.scaleDown);
  static SvgPicture get facebookButtonIcon =>
      SvgPicture.asset(facebookButtonIconPath, fit: BoxFit.scaleDown);
  //* GET SVG IMAGE
  static const String facebook = 'assets/icons/auth/facebook_icon.svg';
  static const String apple = 'assets/icons/auth/apple_icon.svg';
  static const String mailbox = 'assets/icons/auth/mailbox_icon.svg';
  static const String plus = 'assets/icons/auth/plus_icon.svg';
  static const String facebookButton =
      'assets/icons/auth/facebook_button_icon.svg';
  static const String appleButton = 'assets/icons/auth/apple_button_icon.svg';
}
