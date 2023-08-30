import 'package:elearning_app/data/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../data/app_colors.dart';
import '../../data/app_typography.dart';

class FilterRow extends StatelessWidget {
  final String text;
  const FilterRow({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: AppTypogrphy.kSemiBold18.copyWith(color: AppColors.kBlack),
        ),
        Row(
          children: [
            Container(
              width: 67.w,
              padding: EdgeInsets.all(8.w),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.r),
                  color: AppColors.kWhite),
              child: Row(
                children: [
                  Text('Sort',
                      style: AppTypogrphy.kExtraLight12
                          .copyWith(color: AppColors.kBlack)),
                  SvgPicture.asset(AppIcons.sort),
                ],
              ),
            ),
            SizedBox(
              width: 12.w,
            ),
            Container(
              width: 67.w,
              padding: EdgeInsets.all(8.w),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.r),
                  color: AppColors.kWhite),
              child: Row(
                children: [
                  Text('Filter',
                      style: AppTypogrphy.kExtraLight12
                          .copyWith(color: AppColors.kBlack)),
                  SvgPicture.asset(AppIcons.fliter),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
