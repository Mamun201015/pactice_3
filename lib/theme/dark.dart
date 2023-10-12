import 'package:flutter/material.dart';

ThemeData darktheme = ThemeData(
  primaryColor: Colors.white,
  appBarTheme: AppBarTheme(
      backgroundColor: Color.fromARGB(255, 212, 76, 76),
      titleTextStyle: TextStyle(color: Colors.white, fontSize: 20)),
  scaffoldBackgroundColor: Color.fromARGB(255, 177, 98, 98),
  textTheme: TextTheme(
    headline1: TextStyle(color: Colors.white),
    headline2: TextStyle(color: Colors.white),
    bodyText1: TextStyle(color: Colors.white),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style:
        ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple.shade600),
  ),
);
