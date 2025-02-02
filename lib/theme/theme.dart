import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    surface: Colors.grey.shade400,
  ),
  primaryColor: Colors.grey.shade300,
  secondaryHeaderColor: Colors.grey.shade200,
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    surface: Colors.grey.shade800,
  ),
  primaryColor: Colors.grey.shade900,
  secondaryHeaderColor: Colors.grey.shade800,
  cardColor: const Color(0XFF121212),
);
