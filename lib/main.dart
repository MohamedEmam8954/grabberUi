import 'package:flutter/material.dart';
import 'package:grabber/core/config/app_route.dart';
import 'package:grabber/core/themes/app_theme.dart';

void main() {
  runApp(Grabber());
}

class Grabber extends StatelessWidget {
  const Grabber({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme(),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRoute.ongenerateRoute,
    );
  }
}
