import 'package:flutter/material.dart';
class MyAppTheme{
  static List<ThemeData> themes=[
    ThemeData(
        primaryColor: Colors.teal,
        appBarTheme: AppBarTheme(
            color: Colors.teal
        ),
        textTheme: TextTheme(
            bodyLarge: TextStyle(fontSize: 22),
            bodyMedium: TextStyle(fontSize: 20),
            bodySmall: TextStyle(fontSize: 18)
        ),
      iconTheme: IconThemeData(
        size: 33,
      ),
    ),
    ThemeData(
        primaryColor: Colors.orange,
        appBarTheme: AppBarTheme(
            color: Colors.orange
        ),
        textTheme: TextTheme(
            bodyLarge: TextStyle(fontSize: 22),
            bodyMedium: TextStyle(fontSize: 20),
            bodySmall: TextStyle(fontSize: 18)
        ),
        iconTheme: IconThemeData(
            size: 33,
        ),
    ),
  ];
}