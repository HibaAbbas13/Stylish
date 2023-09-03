import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/app_assets.dart';

// ignore: camel_case_types
class CardView extends StatefulWidget {
  const CardView({super.key, required TextEditingController controller});

  @override
  State<CardView> createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {
  final PageController controller = PageController();
  CarouselController buttonCarouselController = CarouselController();
  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          carouselController: buttonCarouselController,
          options: CarouselOptions(
              enableInfiniteScroll: false,
              enlargeCenterPage: true,
              autoPlay: true,
              autoPlayCurve: Curves.fastOutSlowIn,
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              height: 225.h,
              viewportFraction: 1,
              initialPage: 0,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index, reason) {
                setState(() {
                  current = index;
                });
              }),
          itemCount: 6,
          itemBuilder:
              // ignore: non_constant_identifier_names
              (BuildContext context, int itemIndex, int OfferViewIndex) =>
                  SizedBox(
                      width: 343.w,
                      child: Image.asset(
                        AppAssets.shop,
                        fit: BoxFit.fill,
                      )),
        ),
        SizedBox(
          height: 12.h,
        ),
        DotsIndicator(
          dotsCount: 6,
          position: current,
        )
      ],
    );
  }
}
