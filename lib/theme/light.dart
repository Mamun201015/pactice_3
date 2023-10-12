import 'package:flutter/material.dart';

ThemeData lighttheme = ThemeData(
  primaryColor: Color.fromARGB(255, 10, 225, 17),
  appBarTheme: AppBarTheme(
      backgroundColor: const Color.fromARGB(255, 0, 255, 255),
      titleTextStyle: TextStyle(
          color: Color.fromRGBO(240, 255, 255, 1), fontSize: 25)),
  scaffoldBackgroundColor: Color.fromARGB(255, 191, 189, 201),
  textTheme: TextTheme(
    headline1: TextStyle(color: Colors.blue),
    headline2: TextStyle(color: Colors.blue),
    bodyText1: TextStyle(color: Colors.blue),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style:
        ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 162, 177, 53)),
  ),
);
