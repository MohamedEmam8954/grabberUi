import 'package:flutter/material.dart';
import 'package:grabber/core/config/app_route.dart';
import 'package:grabber/core/utils/app_strings.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    navToHome();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            textAlign: TextAlign.center,
            AppStrings.appName,
            style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.w400,
                color: Theme.of(context).primaryColor),
          )
        ],
      ),
    );
  }

  void navToHome() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, AppRoute.homeScreen);
    });
  }
}
