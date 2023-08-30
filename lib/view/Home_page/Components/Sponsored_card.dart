import 'package:elearning_app/data/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/app_colors.dart';
import '../../../data/app_typography.dart';

class SponsorCard extends StatelessWidget {
  const SponsorCard({super.key, required TextEditingController controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 374.h,
      width: double.infinity,
      padding: EdgeInsets.only(top: 8.h, bottom: 8.h, left: 16.w, right: 16),
      decoration: BoxDecoration(
        color: AppColors.kWhite,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Sponserd',
            style: AppTypogrphy.kLight20.copyWith(color: AppColors.kBlack),
          ),
          Image.asset(
            AppAssets.sponser,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: EdgeInsets.only(
              right: 7.0.w,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'up to 50% Off',
                  style: AppTypogrphy.kBold16.copyWith(color: AppColors.kBlack),
                ),
                InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.arrow_forward_sharp,
                      color: AppColors.kBlack,
                      size: 20,
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
