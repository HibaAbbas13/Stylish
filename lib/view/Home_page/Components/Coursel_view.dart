import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Offer_card.dart';

// ignore: camel_case_types, must_be_immutable

class CourselView extends StatefulWidget {
  const CourselView({super.key, required TextEditingController controller});

  @override
  State<CourselView> createState() => _CourselViewState();
}

class _CourselViewState extends State<CourselView> {
  final PageController controller = PageController();
  CarouselController buttonCarouselController = CarouselController();
  final _searchcontroller = TextEditingController();

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
                viewportFraction: 1.5,
                initialPage: 0,
                scrollDirection: Axis.horizontal,
                onPageChanged: (index, reason) {
                  setState(() {
                    current = index;
                  });
                }),
            itemCount: 3,
            itemBuilder:
                (BuildContext context, int itemIndex, int OfferViewIndex) =>
                    OffersCard(
                      controller: _searchcontroller,
                    )),
        SizedBox(
          height: 12.h,
        ),
        DotsIndicator(
          dotsCount: 3,
          position: current,
        )
      ],
    );
  }
}
