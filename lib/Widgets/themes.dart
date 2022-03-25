import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData get lightTheme => ThemeData(brightness: Brightness.light);

  static ThemeData get darkTheme => ThemeData(
        brightness: Brightness.dark,
      );
}
