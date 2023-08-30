import 'package:elearning_app/data/app_assets.dart';
import 'package:elearning_app/data/app_typography.dart';
import 'package:elearning_app/view/components/Common_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/app_colors.dart';

class SummerSale extends StatelessWidget {
  SummerSale({
    super.key,
    required TextEditingController controller,
  });

  Widget build(BuildContext context) {
    return Container(
      width: 343.w,
      height: 270.h,
      color: AppColors.kWhite,
      child: Column(children: [
        Image.asset(
          AppAssets.summer,
          width: 343.w,
          fit: BoxFit.fitWidth,
          height: 200.h,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  'New Arrivals',
                  style:
                      AppTypogrphy.kLight20.copyWith(color: AppColors.kBlack),
                ),
                Text(
                  'Summer’ 25 Collections',
                  style:
                      AppTypogrphy.kLight16.copyWith(color: AppColors.kBlack),
                ),
              ]),
              const CommomButton(text: "View All")
            ],
          ),
        )
      ]),
    );
  }
}
