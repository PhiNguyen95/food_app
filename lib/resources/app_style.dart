import 'package:flutter/material.dart';
import 'package:foodie_app/gen/fonts.gen.dart';
import 'package:foodie_app/resources/app_color.dart';

class CustomStyle {
  static TextStyle? titleRedLarge(BuildContext context) {
    return Theme.of(context).textTheme.headline4?.copyWith(
          color: kFoodAppRed,
          fontFamily: FontFamily.openSans,
        );
  }

  static TextStyle? titleBlack(BuildContext context) {
    return Theme.of(context).textTheme.headline6?.copyWith(
      color: kFoodAppBlack,
      fontFamily: FontFamily.openSans,
    );
  }

  static TextStyle? textWhiteLarge(BuildContext context) {
    return Theme.of(context).textTheme.subtitle1?.copyWith(
      color: kFoodAppWhite,
      fontFamily: FontFamily.openSans,
    );
  }

  static TextStyle? textRedLarge(BuildContext context) {
    return Theme.of(context).textTheme.subtitle1?.copyWith(
          color: kFoodAppRed,
          fontFamily: FontFamily.openSans,
        );
  }

  static TextStyle? textRedSmall(BuildContext context) {
    return Theme.of(context).textTheme.subtitle2?.copyWith(
          color: kFoodAppRed,
          fontFamily: FontFamily.openSans,
        );
  }

  static TextStyle? textBackLarge(BuildContext context) {
    return Theme.of(context).textTheme.subtitle1?.copyWith(
          color: kFoodAppGrey,
          fontFamily: FontFamily.openSans,
        );
  }

  static TextStyle? textBackSmall(BuildContext context) {
    return Theme.of(context).textTheme.subtitle2?.copyWith(
          color: kFoodAppGrey,
          fontFamily: FontFamily.openSans,
        );
  }

  static ButtonStyle buttonThemeRed(BuildContext context) {
    return ElevatedButton.styleFrom(
      elevation: 0,
      backgroundColor: kFoodAppRed,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      textStyle: CustomStyle.textWhiteLarge(context),
      maximumSize: const Size(double.infinity, 60),
      minimumSize: const Size(double.infinity, 60),
    );
  }

  static ButtonStyle buttonThemeRedSmall(BuildContext context) {
    return ElevatedButton.styleFrom(
      elevation: 0,
      backgroundColor: kFoodAppRed,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      textStyle: CustomStyle.textWhiteLarge(context),
      maximumSize: const Size(200, 60),
      minimumSize: const Size(200, 60),
    );
  }

  static ButtonStyle buttonThemeWhite(BuildContext context) {
    return ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: kFoodAppRed,
      side: const BorderSide(color: kFoodAppRed),
      backgroundColor: kFoodAppWhite,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      textStyle: CustomStyle.textRedLarge(context),
      maximumSize: const Size(double.infinity, 60),
      minimumSize: const Size(double.infinity, 60),
    );
  }

  static ButtonStyle buttonThemeWhiteSmall(BuildContext context) {
    return ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: kFoodAppRed,
      side: const BorderSide(color: kFoodAppRed),
      backgroundColor: kFoodAppWhite,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      textStyle: CustomStyle.textRedLarge(context),
      maximumSize: const Size(200, 60),
      minimumSize: const Size(200, 60),
    );
  }

}
