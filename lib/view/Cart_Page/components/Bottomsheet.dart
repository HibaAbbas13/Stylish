import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/app_colors.dart';
import '../../../data/app_typography.dart';

import '../../Shipping_Page/Shipping_page.dart';

class BottomSheetCard extends StatefulWidget {
  const BottomSheetCard({super.key});

  @override
  State<BottomSheetCard> createState() => _BottomSheetCardState();
}

class _BottomSheetCardState extends State<BottomSheetCard> {
  final ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomSheet: Container(
      width: double.infinity,
      height: 170.h,
      padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 38.h),
      decoration: BoxDecoration(
          color: AppColors.kGreyButton,
          border: Border.all(width: 1, color: AppColors.kGreyDivider),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24.r), topRight: Radius.circular(24.r))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 15.h),
            child: Column(
              children: [
                Text("₹ 7,000.00",
                    style: AppTypogrphy.kSemiBold14
                        .copyWith(color: AppColors.kBlack)),
                SizedBox(height: 6.h),
                Text("View Details",
                    style: AppTypogrphy.kSemiBold12
                        .copyWith(color: AppColors.kRed)),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ShippingPage()));
            },
            child: Container(
              alignment: Alignment.center,
              height: 48.h,
              width: 219.w,
              decoration: BoxDecoration(
                color: AppColors.kRed,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text("Proceed to Payment",
                  style:
                      AppTypogrphy.kBold16.copyWith(color: AppColors.kWhite)),
            ),
          )
        ],
      ),
    ));
  }
}
