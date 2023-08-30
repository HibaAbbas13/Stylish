import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../data/app_colors.dart';
import '../../../data/app_typography.dart';

class WrapCard extends StatelessWidget {
  final String text;
  final String icon;
  const WrapCard({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        //maxWidth: 97,
        minWidth: 46,
        minHeight: 24,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Colors.transparent,
          border: Border.all(width: 1, color: AppColors.kGrey)),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Row(
          children: [
            SvgPicture.asset(
              icon,
              color: AppColors.kGrey,
            ),
            SizedBox(
              width: 4.w,
            ),
            Text(
              text,
              style:
                  AppTypogrphy.kExtraLight10.copyWith(color: AppColors.kGrey),
            ),
          ],
        ),
      ),
    );
  }
}
