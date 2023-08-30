import 'package:elearning_app/data/app_colors.dart';
import 'package:elearning_app/data/app_icons.dart';
import 'package:elearning_app/data/app_typography.dart';
import 'package:elearning_app/models/OfferData.dart';
import 'package:elearning_app/view/components/Rating_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../models/TrendingData.dart';

// ignore: camel_case_types
class SalesCard extends StatelessWidget {
  SalesCard({super.key, required TextEditingController controller});

  final _searchcontroller = TextEditingController();

  Widget build(BuildContext context) {
    final ScrollController _scrollController =
        ScrollController(initialScrollOffset: 0);
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          height: 241.h,
          width: 340.w,
          child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                height: 241,
                width: 170.w,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      offer[index].image,
                      fit: BoxFit.fitWidth,
                      width: 170.w,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            offer[index].title,
                            style: AppTypogrphy.kLight12,
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Text(
                            offer[index].subtitle,
                            style: AppTypogrphy.kExtraLight10,
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Text(
                            offer[index].price,
                            style: AppTypogrphy.kLight12,
                          ),
                          Row(
                            children: [
                              Text(
                                offer[index].oldprice,
                                style: AppTypogrphy.kExtraLight10.copyWith(
                                    color: AppColors.kGrey,
                                    decoration: TextDecoration.lineThrough),
                              ),
                              SizedBox(
                                width: 4.w,
                              ),
                              Text(
                                offer[index].off,
                                style: AppTypogrphy.kExtraLight10
                                    .copyWith(color: AppColors.kRed),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Row(
                            children: [
                              RatingRow(controller: _searchcontroller),
                              SizedBox(width: 5.w),
                              Text(
                                product_data[index].review.toString(),
                                style: AppTypogrphy.kExtraLight10
                                    .copyWith(color: AppColors.kGrey),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
            itemCount: 2,
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                width: 12.w,
              );
            },
          ),
        ),
        Positioned(
            right: 9,
            top: 90,
            child: InkWell(
                onTap: () {
                  int nextIndex =
                      _scrollController.position.pixels ~/ 210.h + 1;
                  if (nextIndex < 3) {
                    _scrollController.animateTo(nextIndex * 210.h,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn);
                  }
                },
                child: SvgPicture.asset(AppIcons.arrow))),
      ],
    );
  }
}
