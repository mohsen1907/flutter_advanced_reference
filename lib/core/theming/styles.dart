import 'package:flutter/material.dart';
import 'package:flutter_advanced_reference/core/theming/colors.dart';
import 'package:flutter_advanced_reference/core/theming/font_weight_helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle font24BlackBold = TextStyle(
      fontSize: 24.sp, color: Colors.black, fontWeight: FontWeightHelper.bold);
  static TextStyle font32BlueBold = TextStyle(
      fontSize: 32.sp,
      color: ColorsManager.mainBlue,
      fontWeight: FontWeightHelper.bold);

  static TextStyle font24BlueBold = TextStyle(
      fontSize: 24.sp,
      color: ColorsManager.mainBlue,
      fontWeight: FontWeightHelper.bold);

  static TextStyle font13GreyRegular = TextStyle(
      fontSize: 13.sp,
      color: ColorsManager.grey,
      fontWeight: FontWeightHelper.regular);

  static TextStyle font14GreyRegular = TextStyle(
      fontSize: 14.sp,
      color: ColorsManager.grey,
      fontWeight: FontWeightHelper.regular);

  static TextStyle font14LightGreyRegular = TextStyle(
      fontSize: 14.sp,
      color: ColorsManager.lightGrey,
      fontWeight: FontWeightHelper.regular);

  static TextStyle font13DarkBlueMedium = TextStyle(
      fontSize: 13.sp,
      color: ColorsManager.darkBlue,
      fontWeight: FontWeightHelper.medium);

  static TextStyle font14DarkBlueMedium = TextStyle(
      fontSize: 14.sp,
      color: ColorsManager.darkBlue,
      fontWeight: FontWeightHelper.medium);

  static TextStyle font13BlueRegular = TextStyle(
      fontSize: 13.sp,
      color: ColorsManager.mainBlue,
      fontWeight: FontWeightHelper.regular);

  static TextStyle font13DarkBlueRegular = TextStyle(
      fontSize: 13.sp,
      color: ColorsManager.darkBlue,
      fontWeight: FontWeightHelper.regular);

  static TextStyle font16WhiteSemiBold = TextStyle(
      fontSize: 16.sp,
      color: Colors.white,
      fontWeight: FontWeightHelper.semiBold);

  static TextStyle font13BlueSemiBold = TextStyle(
      fontSize: 13.sp,
      color: ColorsManager.mainBlue,
      fontWeight: FontWeightHelper.semiBold);
}
