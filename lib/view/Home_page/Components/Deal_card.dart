import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:flutter_svg/flutter_svg.dart';

import '../../../data/app_colors.dart';
import '../../../data/app_typography.dart';
import '../../Trending_Products/Trending_page.dart';

class DealCard extends StatefulWidget {
  final String svg;
  final String text;
  final String subtitle;
  final Color color;
  const DealCard({
    super.key,
    required this.text,
    required this.svg,
    required this.subtitle,
    required TextEditingController controller,
    required this.color,
  });

  @override
  State<DealCard> createState() => _DealCardState();
}

class _DealCardState extends State<DealCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 343.w,
        height: 60.h,
        decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  widget.text,
                  style:
                      AppTypogrphy.kLight16.copyWith(color: AppColors.kWhite),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      widget.svg,
                      color: AppColors.kWhite,
                      height: 16.h,
                    ),
                    SizedBox(
                      width: 5.h,
                    ),
                    Text(
                      widget.subtitle,
                      style: AppTypogrphy.kExtraLight12
                          .copyWith(color: AppColors.kWhite),
                    ),
                  ],
                )
              ]),
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const TrendingPage()));
                  },
                  child: Container(
                      height: 28,
                      width: 89,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(width: 1, color: Colors.white),
                          color: Colors.transparent),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'View All',
                              style: AppTypogrphy.kSemiBold12
                                  .copyWith(color: AppColors.kWhite),
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: AppColors.kWhite,
                              size: 16,
                            )
                          ],
                        ),
                      ))),
            ],
          ),
        ));
  }
}
