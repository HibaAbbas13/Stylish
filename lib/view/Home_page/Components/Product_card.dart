import 'package:elearning_app/data/app_colors.dart';
import 'package:elearning_app/data/app_icons.dart';
import 'package:elearning_app/data/app_typography.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../models/ProductData.dart';

// ignore: camel_case_types
class ProductCard extends StatelessWidget {
  ProductCard({super.key, required TextEditingController controller});

  Widget build(BuildContext context) {
    final ScrollController scrollController =
        ScrollController(initialScrollOffset: 0);
    return Stack(alignment: Alignment.centerRight, children: [
      SizedBox(
        height: 186.h,
        width: double.infinity,
        child: ListView.separated(
          controller: scrollController,
          itemCount: Product_list.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              width: 142.w,
              height: 186.h,
              decoration: BoxDecoration(
                  color: AppColors.kWhite,
                  borderRadius: BorderRadius.circular(6.r)),
              child: Column(
                children: [
                  Image.asset(
                    Product_list[index].image,
                    width: 142.w,
                    height: 100.h,
                    fit: BoxFit.fitWidth,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          Product_list[index].title,
                          style: AppTypogrphy.kLight12,
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        Text(
                          Product_list[index].price,
                          style: AppTypogrphy.kExtraLight12,
                        ),
                        Row(
                          children: [
                            Text(
                              Product_list[index].oldprice,
                              style: AppTypogrphy.kLight10.copyWith(
                                  color: AppColors.kGrey,
                                  decoration: TextDecoration.lineThrough),
                            ),
                            SizedBox(
                              width: 4.w,
                            ),
                            Text(
                              Product_list[index].off,
                              style: AppTypogrphy.kExtraLight10
                                  .copyWith(color: AppColors.kRed),
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
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              width: 13.w,
            );
          },
        ),
      ),
      Positioned(
        right: 16,
        child: InkWell(
          onTap: () {
            int nextIndex = scrollController.position.pixels ~/ 210.h + 1;
            if (nextIndex < Product_list.length) {
              scrollController.animateTo(nextIndex * 210.h,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeIn);
            }
          },
          child: SvgPicture.asset(AppIcons.arrow),
        ),
      ),
    ]);
  }
}
