// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyThemeData {
  static Color lightPrimary = Color(0xffB7935F);
  static Color colorBlack = Color(0xff242424);
  static Color darkPrimary = Color(0xff141A2B);
  static Color darkAccent = Color(0xffFACC10);

  static Color colorWhite = Color(0xFFFFFFFF);
  static final ThemeData lightTheme = ThemeData(
    primaryColor: lightPrimary,
    colorScheme: ColorScheme(
      primary: lightPrimary,
      onPrimary: colorBlack,
      secondary: colorBlack,
      onSecondary: colorWhite,
      background: colorWhite,
      error: Colors.red,
      onError: Colors.red,
      onSurface: Colors.black,
      surface: Colors.white,
      onBackground: lightPrimary,
      brightness: Brightness.light,
      primaryVariant: Colors.black,
      secondaryVariant: Colors.black,
    ),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(color: colorBlack),
    ),
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 30,
        color: colorBlack,
        fontWeight: FontWeight.w700,
      ),
      subtitle1: TextStyle(
        fontSize: 20,
        color: colorBlack,
        fontWeight: FontWeight.w400,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: colorBlack,
      unselectedItemColor: Colors.white,
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: colorWhite,
    ),
  );
  static final ThemeData darkTheme = ThemeData(
    primaryColor: darkPrimary,
    colorScheme: ColorScheme(
      primary: darkPrimary,
      onPrimary: colorWhite,
      secondary: darkAccent,
      onSecondary: Colors.black,
      background: darkPrimary,
      error: Colors.red,
      onError: Colors.red,
      onSurface: Colors.black,
      surface: Colors.white,
      onBackground: darkAccent,
      brightness: Brightness.light,
      primaryVariant: Colors.black,
      secondaryVariant: Colors.black,
    ),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(color: colorWhite),
    ),
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 30,
        color: colorWhite,
        fontWeight: FontWeight.w700,
      ),
      subtitle1: TextStyle(
        fontSize: 20,
        color: colorWhite,
        fontWeight: FontWeight.w400,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: darkAccent,
      unselectedItemColor: Colors.white,
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: darkPrimary,
    ),
  );
}
