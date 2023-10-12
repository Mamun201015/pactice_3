import 'package:flutter/material.dart';

ThemeData darktheme = ThemeData(
  primaryColor: Colors.white,
  appBarTheme: AppBarTheme(
      backgroundColor: Colors.amber.shade600,
      titleTextStyle: TextStyle(color: Colors.white, fontSize: 25)),
  scaffoldBackgroundColor: Color.fromARGB(255, 161, 159, 159),
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
