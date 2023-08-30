import 'package:elearning_app/data/app_assets.dart';
import 'package:elearning_app/view/components/Common_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/app_colors.dart';
import '../../../data/app_typography.dart';

class FootWears extends StatelessWidget {
  const FootWears({super.key, required TextEditingController controller});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: 172.h,
        width: 343.w,
        decoration: BoxDecoration(
            color: AppColors.kWhite, borderRadius: BorderRadius.circular(4.r)),
      ),
      Container(
        width: 331.w,
        height: 155.h,
        margin: EdgeInsets.only(top: 8.h, bottom: 8.h, left: 8.w, right: 4.w),
        decoration: BoxDecoration(
          color: AppColors.kBody,
          borderRadius: BorderRadius.circular(4.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(AppAssets.dot),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 35.0.h, right: 29.w),
                  child: Text(
                    'Flat and Heels',
                    style:
                        AppTypogrphy.kLight16.copyWith(color: AppColors.kBlack),
                  ),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 13.0.w),
                  child: Text(
                    'Stand a chance to get rewarded',
                    style: AppTypogrphy.kExtraLight10
                        .copyWith(color: AppColors.kBlack),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                const CommomButton(text: "Visit now")
              ],
            ),
          ],
        ),
      ),
      Container(
        height: 171.h,
        width: 11.w,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFEFAD18),
              Color(0xFFF8D7B4),
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
      ),
      Positioned(top: 30, left: 10, child: Image.asset(AppAssets.heels)),
    ]);
  }
}
