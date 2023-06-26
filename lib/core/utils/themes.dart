import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';

class Themes {
  static ThemeData mainTheme() => ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: kPrimaryColor,
        primaryColor: kPrimaryColor,
        brightness: Brightness.dark,
        textTheme: const TextTheme(),
      );
}
