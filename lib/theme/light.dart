import 'package:flutter/material.dart';

ThemeData lighttheme = ThemeData(
  primaryColor: Color.fromARGB(255, 10, 225, 17),
  appBarTheme: AppBarTheme(
      backgroundColor: Color.fromARGB(255, 82, 206, 90),
      titleTextStyle: TextStyle(color: Colors.black, fontSize: 20)),
  scaffoldBackgroundColor: Color.fromARGB(255, 225, 227, 227),
  textTheme: TextTheme(
    headline1: TextStyle(color: Colors.white),
    headline2: TextStyle(color: Colors.white),
    bodyText1: TextStyle(color: Colors.white),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromARGB(255, 234, 207, 4)),
  ),
);
