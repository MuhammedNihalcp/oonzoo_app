import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/colors.dart';
import '../../controller/home_controller.dart';

class HomeCarousel extends StatelessWidget {
  const HomeCarousel({
    super.key,
    required this.height,
    required this.homecontroller,
    required this.width,
  });

  final double height;
  final HomeController homecontroller;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          child: CarouselSlider.builder(
            options: CarouselOptions(
              height: height * 0.2,
              aspectRatio: 16 / 9,
              viewportFraction: 1,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 5),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              enlargeFactor: 0.3,
              onPageChanged: (index, reason) {
                homecontroller.smoothIndicator(index);
              },
              scrollDirection: Axis.horizontal,
            ),
            itemBuilder: (BuildContext context, int index, int realIndex) {
              return Container(
                width: width,
                height: height * 0.28,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: colorWhite,
                  image: DecorationImage(
                    image: NetworkImage(
                      homecontroller.carousalImages[index],
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
            itemCount: homecontroller.carousalImages.length,
          ),
        ),
        Positioned(
          top: height * 0.18,
          left: width * 0.45,
          child: AnimatedSmoothIndicator(
            activeIndex: homecontroller.activeIndex,
            count: homecontroller.carousalImages.length,
            effect: const WormEffect(
              dotHeight: 10,
              dotWidth: 10,
              dotColor: colorWhite,
              activeDotColor: backgroundColor,
            ),
          ),
        ),
      ],
    );
  }
}
