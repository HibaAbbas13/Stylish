import 'package:elearning_app/data/app_colors.dart';
import 'package:elearning_app/data/app_typography.dart';

import 'package:elearning_app/models/TrendingData.dart';
import 'package:elearning_app/view/components/Rating_row.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TrendingProucts extends StatefulWidget {
  final TrendingModel item;

  const TrendingProucts({
    super.key,
    required this.item,
  });

  @override
  State<TrendingProucts> createState() => _TrendingProuctsState();
}

final _searchController = TextEditingController();

class _TrendingProuctsState extends State<TrendingProucts> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 164.w,
        decoration: BoxDecoration(
            color: AppColors.kWhite,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                blurRadius: 7,
                offset: const Offset(0, 5),
              ),
            ]),
        child: Column(children: [
          Image.asset(
            widget.item.image,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          SizedBox(
            height: 8.h,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.item.title,
                  style: AppTypogrphy.kLight12,
                ),
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  widget.item.subtitle,
                  style: AppTypogrphy.kExtraLight10,
                ),
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  widget.item.price,
                  style: AppTypogrphy.kLight12,
                ),
                SizedBox(
                  height: 4.h,
                ),
                Row(
                  children: [
                    RatingRow(controller: _searchController),
                    SizedBox(width: 5.w),
                    Text(
                      widget.item.review.toString(),
                      style: AppTypogrphy.kExtraLight10
                          .copyWith(color: AppColors.kGrey),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ]));
  }
}
