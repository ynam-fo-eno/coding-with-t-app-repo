// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:coding_with_t_review/src/4_utils/a_localization/1_theme/text_theme.dart';
import 'package:flutter/material.dart';

class MainAppTheme{
  MainAppTheme._();
  static ThemeData lightMode = ThemeData(
    brightness: Brightness.light,
    textTheme: MainTextTheme.lightTextMode,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style:ElevatedButton.styleFrom(),
    ),
    );
  static ThemeData darkMode = ThemeData(
    brightness: Brightness.dark,
    textTheme: MainTextTheme.darkTextMode,
     elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(),
    ),
    );
}