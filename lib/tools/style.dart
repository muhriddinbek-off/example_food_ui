import 'package:example_food_ui/tools/app_color.dart';
import 'package:flutter/material.dart';

class AppStyle {
  static TextStyle appBarTitleStyle() => TextStyle(
        color: AppColor.appBarTitleColor,
        fontSize: 20,
        fontWeight: FontWeight.w500,
      );
  static TextStyle getNotifaction() => TextStyle(
        color: AppColor.white,
        fontSize: 10,
        fontWeight: FontWeight.w500,
      );
  static TextStyle getSearchHinttext() => TextStyle(
        color: AppColor.cCA4AB,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      );
  static TextStyle getTitleText() => TextStyle(
        color: AppColor.l32C45,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      );
  static TextStyle getCategoryTitle() => TextStyle(
        color: AppColor.b12121,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      );
}
