// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:coding_with_t_review/src/0_features/0a_auth/0a1_views/mainapphome.dart';
import 'package:coding_with_t_review/src/4_utils/a_localization/1_theme/theme.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MainApp());  
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MainAppTheme.lightMode,
      darkTheme: MainAppTheme.darkMode,
      themeMode: ThemeMode.light,
      home: MainAppHome(),
    );
  }
}


