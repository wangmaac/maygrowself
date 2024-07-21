import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

enum AppTextStyle { h40, h20, h24, h16, h14, b20, b16, b14, b13, button16, button14 }

String? appMainKorFont = GoogleFonts.notoSansKr().fontFamily;

class AppTextStyleSetting {
  static TextStyle h40 = TextStyle(fontFamily: appMainKorFont, fontWeight: FontWeight.bold, fontSize: 40.sp);
  static TextStyle h24 = TextStyle(fontFamily: appMainKorFont, fontWeight: FontWeight.bold, fontSize: 24.sp);
  static TextStyle h20 = TextStyle(fontFamily: appMainKorFont, fontWeight: FontWeight.bold, fontSize: 20.sp);
  static TextStyle h16 = TextStyle(fontFamily: appMainKorFont, fontWeight: FontWeight.bold, fontSize: 16.sp);
  static TextStyle h14 = TextStyle(fontFamily: appMainKorFont, fontWeight: FontWeight.normal, fontSize: 14.sp);

  static TextStyle b20 = TextStyle(fontFamily: appMainKorFont, fontWeight: FontWeight.bold, fontSize: 20.sp);
  static TextStyle b16 = TextStyle(fontFamily: appMainKorFont, fontWeight: FontWeight.bold, fontSize: 16.sp);

  // static TextStyle b14 = TextStyle(fontFamily: appMainKorFont, fontWeight: FontWeight.bold, fontSize: 14.sp);
  static TextStyle b14 = GoogleFonts.nanumGothic(
    fontSize: 14.sp,
    fontWeight: FontWeight.bold,
  );
  static TextStyle b13 = TextStyle(fontFamily: appMainKorFont, fontWeight: FontWeight.normal, fontSize: 13.sp);

  static TextStyle bt16 = TextStyle(fontFamily: appMainKorFont, fontWeight: FontWeight.bold, fontSize: 16.sp);
  static TextStyle bt14 = TextStyle(fontFamily: appMainKorFont, fontWeight: FontWeight.normal, fontSize: 14.sp);
}

extension AppEnumExtension on AppTextStyle {
  TextStyle get get {
    switch (this) {
      case AppTextStyle.h40:
        return AppTextStyleSetting.h40;
      case AppTextStyle.h24:
        return AppTextStyleSetting.h24;
      case AppTextStyle.h20:
        return AppTextStyleSetting.h20;
      case AppTextStyle.h16:
        return AppTextStyleSetting.h16;
      case AppTextStyle.h14:
        return AppTextStyleSetting.h14;
      case AppTextStyle.b20:
        return AppTextStyleSetting.b20;
      case AppTextStyle.b16:
        return AppTextStyleSetting.b16;
      case AppTextStyle.b14:
        return AppTextStyleSetting.b14;
      case AppTextStyle.b13:
        return AppTextStyleSetting.b13;
      case AppTextStyle.button16:
        return AppTextStyleSetting.bt16;
      case AppTextStyle.button14:
        return AppTextStyleSetting.bt14;
    }
  }

  TextStyle get setWeightNormal {
    switch (this) {
      case AppTextStyle.h40:
        return AppTextStyleSetting.h40.copyWith(fontWeight: FontWeight.normal);
      case AppTextStyle.h24:
        return AppTextStyleSetting.h24.copyWith(fontWeight: FontWeight.normal);
      case AppTextStyle.h20:
        return AppTextStyleSetting.h20.copyWith(fontWeight: FontWeight.normal);
      case AppTextStyle.h16:
        return AppTextStyleSetting.h16.copyWith(fontWeight: FontWeight.normal);
      case AppTextStyle.h14:
        return AppTextStyleSetting.h14.copyWith(fontWeight: FontWeight.normal);
      case AppTextStyle.b20:
        return AppTextStyleSetting.b20.copyWith(fontWeight: FontWeight.normal);
      case AppTextStyle.b16:
        return AppTextStyleSetting.b16.copyWith(fontWeight: FontWeight.normal);
      case AppTextStyle.b14:
        return AppTextStyleSetting.b14.copyWith(fontWeight: FontWeight.normal);
      case AppTextStyle.b13:
        return AppTextStyleSetting.b13.copyWith(fontWeight: FontWeight.normal);
      case AppTextStyle.button16:
        return AppTextStyleSetting.bt16.copyWith(fontWeight: FontWeight.normal);
      case AppTextStyle.button14:
        return AppTextStyleSetting.bt14.copyWith(fontWeight: FontWeight.normal);
    }
  }

  TextStyle get setWeightBold {
    switch (this) {
      case AppTextStyle.h40:
        return AppTextStyleSetting.h40.copyWith(fontWeight: FontWeight.bold);
      case AppTextStyle.h24:
        return AppTextStyleSetting.h24.copyWith(fontWeight: FontWeight.bold);
      case AppTextStyle.h20:
        return AppTextStyleSetting.h20.copyWith(fontWeight: FontWeight.bold);
      case AppTextStyle.h16:
        return AppTextStyleSetting.h16.copyWith(fontWeight: FontWeight.bold);
      case AppTextStyle.h14:
        return AppTextStyleSetting.h14.copyWith(fontWeight: FontWeight.bold);
      case AppTextStyle.b20:
        return AppTextStyleSetting.b20.copyWith(fontWeight: FontWeight.bold);
      case AppTextStyle.b16:
        return AppTextStyleSetting.b16.copyWith(fontWeight: FontWeight.bold);
      case AppTextStyle.b14:
        return AppTextStyleSetting.b14.copyWith(fontWeight: FontWeight.bold);
      case AppTextStyle.b13:
        return AppTextStyleSetting.b13.copyWith(fontWeight: FontWeight.bold);
      case AppTextStyle.button16:
        return AppTextStyleSetting.bt16.copyWith(fontWeight: FontWeight.bold);
      case AppTextStyle.button14:
        return AppTextStyleSetting.bt14.copyWith(fontWeight: FontWeight.bold);
    }
  }
}
