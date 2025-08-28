import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../app_style/style.dart';

class AppTextStyle {
  static TextStyle _ts({
    double? fontSize,
    FontWeight? fontWeight,
    Color? color,
    TextDecoration? decoration,
    double? height,
  }) {
    return FlyweightTextStyles.get(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      decoration: decoration,
      fontFamily: AppStyle.cairoFont,
    );
  }

  static TextStyle get blackW600Size24 =>
      _ts(fontSize: 24.sp, fontWeight: FontWeight.w600, color: AppStyle.black);
  // in AppTextStyle
  static TextStyle get primaryW400Size14 => _ts(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        color: AppStyle.primaryColor,
      );
  static TextStyle get primaryW600Size16 => _ts(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: AppStyle.primaryColor,
  );

  static TextStyle get blackW600Size24Roboto =>
      _ts(fontSize: 24.sp, fontWeight: FontWeight.w600, color: AppStyle.black);

  static TextStyle get blackW400Size16Roboto =>
      _ts(fontSize: 16.sp, fontWeight: FontWeight.w400, color: AppStyle.black);

  static TextStyle get redW400Size16Roboto =>
      _ts(fontSize: 16.sp, fontWeight: FontWeight.w400, color: AppStyle.red);

  static TextStyle get whiteW400Size16Roboto =>
      _ts(fontSize: 16.sp, fontWeight: FontWeight.w400, color: AppStyle.white);

  static TextStyle get whiteW500Size20Roboto =>
      _ts(fontSize: 20.sp, fontWeight: FontWeight.w500, color: AppStyle.white);

  static TextStyle get whiteW600Size12Roboto =>
      _ts(fontSize: 12.sp, fontWeight: FontWeight.w600, color: AppStyle.white);
  static TextStyle get whiteW600Size16Roboto =>
      _ts(fontSize: 16.sp, fontWeight: FontWeight.w600, color: AppStyle.white);
  static TextStyle get whiteW800Size28Roboto =>
      _ts(fontSize: 28.sp, fontWeight: FontWeight.w800, color: AppStyle.white);

  static TextStyle get blackW400Size14Roboto => _ts(
      fontSize: 14.sp, fontWeight: FontWeight.w400, color: AppStyle.subTitle);

  static TextStyle get blackW500Size18Roboto => _ts(
      fontSize: 18.sp, fontWeight: FontWeight.w500, color: AppStyle.subTitle);

  static TextStyle get blackW700Size18Roboto =>
      _ts(fontSize: 18.sp, fontWeight: FontWeight.w700, color: AppStyle.black);

  static TextStyle get blackW600Size14Roboto => _ts(
      fontSize: 14.sp, fontWeight: FontWeight.w600, color: AppStyle.subTitle);

  static TextStyle get blackW400Size12Roboto => _ts(
      fontSize: 12.sp, fontWeight: FontWeight.w400, color: AppStyle.subTitle);
// in AppTextStyle
  static TextStyle get grey646W400Size12 => _ts(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: const Color.fromRGBO(100, 100, 100, 1),
  );

  static TextStyle get purpleW400Size12Roboto => _ts(
      fontSize: 12.sp,
      fontWeight: FontWeight.w400,
      color: AppStyle.primaryColor);

  static TextStyle get purpleW600Size16Roboto => _ts(
      fontSize: 16.sp,
      fontWeight: FontWeight.w600,
      color: AppStyle.primaryColor);

  static TextStyle get purpleW400Size16Roboto => _ts(
      fontSize: 16.sp, fontWeight: FontWeight.w400, color: AppStyle.purple400);

  static TextStyle get blackW700Size30 =>
      _ts(fontSize: 30, fontWeight: FontWeight.w700, color: AppStyle.black);

  static TextStyle get blackW500Size20 =>
      _ts(fontSize: 20.sp, fontWeight: FontWeight.w500, color: AppStyle.black);

  static TextStyle get blackW500Size16 =>
      _ts(fontSize: 16.sp, fontWeight: FontWeight.w500, color: AppStyle.black);

  static TextStyle get blackW500Size16Roboto =>
      _ts(fontSize: 15.sp, fontWeight: FontWeight.w500, color: AppStyle.black);

  static TextStyle get blackOpacityW700Size18 => _ts(
        fontSize: 18.sp,
        fontWeight: FontWeight.w700,
        color: AppStyle.black.withValues(alpha: 0.5),
      );

  static TextStyle get blackW400Size14 =>
      _ts(fontSize: 14.sp, fontWeight: FontWeight.w400, color: AppStyle.black);

  static TextStyle get purpleW400Size14 => _ts(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        color: AppStyle.purple500,
        decoration: TextDecoration.underline,
      );

  static TextStyle get fontSize16 =>
      _ts(fontSize: 16.sp, color: AppStyle.black);

  static TextStyle get textColor => _ts(color: AppStyle.white);

  static TextStyle get blackBoldSize14 =>
      _ts(fontSize: 14.sp, fontWeight: FontWeight.bold, color: AppStyle.black);

  /// text style for pink mode
  static TextStyle get blackBoldSize24 =>
      _ts(fontSize: 24.sp, fontWeight: FontWeight.bold, color: AppStyle.black);

  static TextStyle get greyW300Size12 => _ts(
        color: AppStyle.greyColor,
        fontSize: 12.sp,
        fontWeight: FontWeight.w300,
      );

  static TextStyle get whiteW500Size14 => _ts(
        color: AppStyle.white,
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get blackBoldSize32 => _ts(
        color: AppStyle.black,
        fontSize: 32.sp,
        fontWeight: FontWeight.bold,
      );

  static TextStyle get blackW200Size14 => _ts(
        color: AppStyle.black,
        fontSize: 14.sp,
        fontWeight: FontWeight.w200,
      );

  static TextStyle get whiteW500Size16 => _ts(
        color: AppStyle.white,
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
      );

  // text theme (kept as getters so it always reflects latest ScreenUtil + cache)
  static TextTheme get textTheme => TextTheme(
        headlineLarge: AppTextStyle.blackW600Size24,
        headlineSmall: AppTextStyle.greyW300Size12,
        bodyMedium: AppTextStyle.whiteW500Size14,
        bodySmall: AppTextStyle.whiteW500Size14.copyWith(
          height: 0.10,
          fontSize: 14.spMin,
          fontWeight: FontWeight.w400,
          fontFamily: AppStyle.cairoFont,
        ),
        titleLarge: AppTextStyle.blackBoldSize32,
        titleSmall: AppTextStyle.blackW200Size14,
        labelSmall: AppTextStyle.blackW200Size14.copyWith(
          fontWeight: FontWeight.w300,
          fontFamily: AppStyle.cairoFont,
        ),
        labelLarge: AppTextStyle.blackW500Size16,
        labelMedium: AppTextStyle.blackW200Size14.copyWith(
          fontWeight: FontWeight.w400,
          fontFamily: AppStyle.cairoFont,
        ),
        displaySmall: AppTextStyle.whiteW500Size16.copyWith(
          fontWeight: FontWeight.w400,
          fontFamily: AppStyle.cairoFont,
        ),
        displayMedium: AppTextStyle.whiteW500Size16.copyWith(
          fontWeight: FontWeight.w200,
          fontFamily: AppStyle.cairoFont,
        ),
        headlineMedium: AppTextStyle.whiteW500Size16,
        titleMedium: AppTextStyle.whiteW500Size16.copyWith(
          fontWeight: FontWeight.w600,
          fontSize: 18.sp,
          fontFamily: AppStyle.cairoFont,
        ),
        displayLarge: AppTextStyle.blackOpacityW700Size18.copyWith(
          fontWeight: FontWeight.w400,
          fontFamily: AppStyle.cairoFont,
        ),
        bodyLarge: AppTextStyle.blackW700Size30.copyWith(
          fontSize: 28.sp,
          fontFamily: AppStyle.cairoFont,
        ),
      );
}
