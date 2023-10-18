import 'package:flutter/material.dart';

ThemeData darktheme = ThemeData(
  primaryColor: Colors.white,
  appBarTheme: AppBarTheme(
      backgroundColor: Color.fromARGB(255, 101, 90, 90),
      titleTextStyle: TextStyle(color: Colors.white, fontSize: 20)),
  scaffoldBackgroundColor: Color.fromARGB(255, 55, 40, 40),
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
