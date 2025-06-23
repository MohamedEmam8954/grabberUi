import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:grabber/core/utils/assets.dart';

class BannerCarouselSilder extends StatelessWidget {
  const BannerCarouselSilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: banners.length,
      itemBuilder: (BuildContext context, int index, int pageViewIndex) {
        return Image.asset(
          banners[index],
        );
      },
      options: CarouselOptions(
        height: 222,
        aspectRatio: 16 / 9,
        viewportFraction: 0.8,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.linear,
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
      ),
    );
  }

  static const List<String> banners = [
    Assets.imagesSliderSlider1,
    Assets.imagesSliderSlider2,
    Assets.imagesSliderSlider3,
  ];
}
