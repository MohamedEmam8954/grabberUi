import 'package:flutter/material.dart';

ThemeData appTheme() {
  return ThemeData.light().copyWith(
    primaryColor: Color(0xff0ca201),
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
        scrolledUnderElevation: 0,
        elevation: 0,
        color: Colors.white.withValues(alpha: 0.5)),
  );
}
