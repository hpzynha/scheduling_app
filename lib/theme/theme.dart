import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    surface: Color(0xFFF7F7F7),
  ),
  primaryColor: Colors.grey.shade300,
  secondaryHeaderColor: Colors.grey.shade200,
  indicatorColor: const Color(0xFFFFF9E0),
  focusColor: const Color(0XFFFFCC00),
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(
    surface: Color(0XFF050505),
  ),
  primaryColor: const Color(0XFF666666),
  secondaryHeaderColor: const Color(0XFFD1D1D1),
  cardColor: const Color(0XFF121212),
  indicatorColor: const Color(0xFFFFF9E0),
  focusColor: const Color(0XFFFFCC00),
);
