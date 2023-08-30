import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../data/app_colors.dart';
import '../../../data/app_typography.dart';

class WhiteButton extends StatelessWidget {
  final String text;
  final String icon;
  const WhiteButton({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170.w,
      height: 48.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
          border: Border.all(width: 0.7, color: AppColors.kGrey)),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 8,
          left: 8,
          bottom: 8,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              icon,
              color: AppColors.kBlack,
            ),
            SizedBox(
              width: 9.w,
            ),
            Text(
              text,
              style: AppTypogrphy.kLight14.copyWith(color: AppColors.kBlack),
            ),
          ],
        ),
      ),
    );
  }
}
