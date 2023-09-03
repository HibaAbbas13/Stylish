import 'package:elearning_app/data/app_assets.dart';
import 'package:elearning_app/data/app_typography.dart';
import 'package:elearning_app/view/Shope_Page/Shop_Page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/app_colors.dart';

class OffersCard extends StatelessWidget {
  const OffersCard({
    super.key,
    required TextEditingController controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.w,
      height: 189.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
            image: AssetImage(
              AppAssets.sale,
            ),
            fit: BoxFit.fill),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 14.0.h, top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '50-40% OFF',
              style: AppTypogrphy.kBold20.copyWith(color: AppColors.kWhite),
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              'Now in (product) ',
              style: AppTypogrphy.kLight12.copyWith(color: AppColors.kWhite),
            ),
            SizedBox(
              height: 4.h,
            ),
            Text(
              'All colours',
              style: AppTypogrphy.kLight12.copyWith(color: AppColors.kWhite),
            ),
            SizedBox(
              height: 12.h,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ShopPage()));
              },
              child: Container(
                width: 100.w,
                height: 32.h,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.r),
                  border: Border.all(
                    color: Colors.white,
                    width: 1,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Shop Now',
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
