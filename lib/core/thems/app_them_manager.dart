import 'package:flutter/material.dart';
import 'package:islamic_app/core/thems/app_colorpallent.dart';

abstract class AppThemeManager {
  static ThemeData appThemeData() => ThemeData(
    scaffoldBackgroundColor: ColorPallete.scafoldbackgroundcolor,
    appBarTheme: AppBarTheme(
      titleTextStyle: TextStyle(
        fontFamily: "Janna",
        fontSize: 20,
        fontWeight: FontWeight.w700,
        color: ColorPallete.primaryColor,
      ),
      iconTheme: IconThemeData(color: ColorPallete.primaryColor),
      backgroundColor: Colors.transparent,
    ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: ColorPallete.primaryColor,
      selectedItemColor: Colors.white,
      unselectedItemColor: ColorPallete.unselectedAryColor,
      showUnselectedLabels: false,
      selectedLabelStyle: TextStyle(
        fontFamily: "janna",
        fontSize: 12,
        fontWeight: FontWeight.w700,
      ),
    ),
    textTheme: TextTheme(
      headlineSmall: TextStyle(
        fontFamily: "Janna",
        fontWeight: FontWeight.w700,
        color: ColorPallete.generalTextThem,
      ),
      bodySmall: TextStyle(
        fontFamily: "Janna",
        fontWeight: FontWeight.w700,
        color: ColorPallete.generalTextThem,
      ),
      bodyMedium: TextStyle(
        fontFamily: "Janna",
        fontWeight: FontWeight.w700,
        color: ColorPallete.generalTextThem,
      ),
      bodyLarge: TextStyle(
        fontFamily: "Janna",
        fontWeight: FontWeight.w700,
        color: ColorPallete.secondTitleTextColor,
      ),
    ),
  );
}
