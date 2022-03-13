// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyThemeData {
  static Color lightPrimary = Color(0xffB7935F);
  static Color colorBlack = Color(0xff242424);
  static final ThemeData lightTheme = ThemeData(
    primaryColor: lightPrimary,
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
        fontSize: 25,
        color: colorBlack,
        fontWeight: FontWeight.w400,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: colorBlack,
      unselectedItemColor: Colors.white,
    ),
  );
  static final ThemeData darkTheme = ThemeData();
}
