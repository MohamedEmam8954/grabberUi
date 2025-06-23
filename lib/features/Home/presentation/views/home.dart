import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grabber/core/utils/assets.dart';
import 'package:grabber/features/Home/presentation/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: AppBar(
              title: Row(
                spacing: 10,
                children: [
                  SvgPicture.asset(Assets.imagesIconsMotor),
                  Text(
                    "61 Hopper street..",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  SvgPicture.asset(Assets.imagesIconsArrowDown),
                  Spacer(),
                  SvgPicture.asset(Assets.imagesIconsCart),
                ],
              ),
            ),
          ),
        ),
      ),
      body: HomeViewBody(),
    );
  }
}
