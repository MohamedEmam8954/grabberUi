import 'package:flutter/material.dart';
import 'package:grabber/core/utils/app_strings.dart';
import 'package:grabber/features/Home/presentation/views/home.dart';
import 'package:grabber/features/splash/presentation/views/splash_view.dart';

abstract class AppRoute {
  static const String splashScreen = "/";
  static const String homeScreen = "/homeScreen";

  static Route ongenerateRoute(RouteSettings routeSetting) {
    switch (routeSetting.name) {
      case splashScreen:
        return MaterialPageRoute(
          builder: (context) => SplashView(),
        );

      case homeScreen:
        return PageRouteBuilder(
          transitionDuration: Duration(milliseconds: 500),
          pageBuilder: (context, animation, secondaryAnimation) => HomeView(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(1, 0);
            const end = Offset.zero;
            const curve = Curves.easeInOut;
            var tween =
                Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
            return SlideTransition(
              position: animation.drive(tween),
              child: child,
            );
          },
        );

      default:
        return defalutGenartedScreen();
    }
  }

  static Route defalutGenartedScreen() {
    return MaterialPageRoute(builder: (context) {
      return Scaffold(
        body: Center(
          child: Text(AppStrings.noRoute),
        ),
      );
    });
  }
}
