import 'package:elearning_app/data/app_colors.dart';
import 'package:elearning_app/data/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../data/app_typography.dart';
import '../../models/Checkoutmodel.dart';
import 'components/CheckoutCard.dart';

class Checkout extends StatelessWidget {
  Checkout({super.key});

  final ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: AppColors.kBlack,
            )),
        centerTitle: true,
        title: Text(
          "Checkout",
          style: AppTypogrphy.kSemiBold18.copyWith(color: AppColors.kBlack),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  AppIcons.location,
                  color: AppColors.kBlack,
                ),
                SizedBox(width: 8.w),
                Text(
                  "Delivery Address",
                  style: AppTypogrphy.kSemiBold18
                      .copyWith(color: AppColors.kBlack),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Container(
                        height: 79.h,
                        padding: EdgeInsets.all(12.h),
                        decoration: BoxDecoration(
                          color: AppColors.kWhite,
                          borderRadius: BorderRadius.circular(6.r),
                          boxShadow: [
                            BoxShadow(
                                offset: const Offset(0, 6),
                                blurRadius: 8,
                                spreadRadius: -8,
                                color: AppColors.kBlack),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Address :',
                                style: AppTypogrphy.kLight12
                                    .copyWith(color: AppColors.kBlack)),
                            SizedBox(
                              height: 4.h,
                            ),
                            Text(
                                "216 St Paul's Rd, London N1 2LL, UK \nContact : +44-784232",
                                style: AppTypogrphy.kExtraLight12
                                    .copyWith(color: AppColors.kBlack)),
                          ],
                        )),
                    Positioned(
                        top: 8,
                        right: 8,
                        child: SvgPicture.asset(AppIcons.edit))
                  ],
                ),
                SizedBox(
                  width: 12.w,
                ),
                Expanded(
                  child: Container(
                      height: 79.h,
                      padding: EdgeInsets.symmetric(
                          vertical: 27.h, horizontal: 27.h),
                      decoration: BoxDecoration(
                        color: AppColors.kWhite,
                        borderRadius: BorderRadius.circular(6.r),
                        boxShadow: [
                          BoxShadow(
                              offset: const Offset(0, 6),
                              blurRadius: 9,
                              spreadRadius: -8,
                              color: AppColors.kBlack),
                        ],
                      ),
                      child: SvgPicture.asset(AppIcons.add)),
                )
              ],
            ),
            SizedBox(height: 24.h),
            Text(
              'Shopping List',
              style: AppTypogrphy.kSemiBold14.copyWith(color: AppColors.kBlack),
            ),
            SizedBox(height: 10.h),
            RawScrollbar(
              thumbVisibility: true,
              thickness: 20.0,
              controller: controller,
              child: ListView.separated(
                  controller: controller,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  separatorBuilder: (context, index) => SizedBox(height: 14.w),
                  itemCount: checkoutItem.length,
                  itemBuilder: (context, index) {
                    return CheckoutCard(
                      checkoutItem: checkoutItem[index],
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
