import 'package:elearning_app/view/Cart_Page/Cart_Page.dart';

import 'package:elearning_app/view/components/Rating_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/app_colors.dart';
import '../../../data/app_typography.dart';
import '../../../models/Checkoutmodel.dart';

class CheckoutCard extends StatelessWidget {
  final CheckoutModel checkoutItem;
  CheckoutCard({super.key, required this.checkoutItem});

  final _searchcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => CartPage(
                      checkoutItem: checkoutItem,
                    )));
      },
      child: Container(
          padding: EdgeInsets.all(12.h),
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                offset: const Offset(0, 6),
                blurRadius: 5,
                spreadRadius: -8,
                color: AppColors.kBlack),
          ], color: AppColors.kWhite, borderRadius: BorderRadius.circular(6.r)),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    checkoutItem.display,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          checkoutItem.title,
                          style: AppTypogrphy.kSemiBold14
                              .copyWith(color: AppColors.kBlack),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Row(
                          children: [
                            Text(
                              'Variations :',
                              style: AppTypogrphy.kLight12
                                  .copyWith(color: AppColors.kBlack),
                            ),
                            SizedBox(
                              width: 8.w,
                            ),
                            Container(
                              padding: EdgeInsets.all(4.h),
                              decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.kGrey),
                                  borderRadius: BorderRadius.circular(2.r)),
                              child: Text(
                                checkoutItem.firstColor,
                                style: AppTypogrphy.kExtraLight10
                                    .copyWith(color: AppColors.kBlack),
                              ),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Container(
                              padding: EdgeInsets.all(4.h),
                              decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.kGrey),
                                  borderRadius: BorderRadius.circular(2.r)),
                              child: Text(
                                checkoutItem.secondColor,
                                style: AppTypogrphy.kExtraLight10
                                    .copyWith(color: AppColors.kBlack),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Row(
                          children: [
                            Text(checkoutItem.rating,
                                style: AppTypogrphy.kLight12
                                    .copyWith(color: AppColors.kBlack)),
                            SizedBox(
                              width: 5.w,
                            ),
                            RatingRow(
                              controller: _searchcontroller,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 7.h,
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.h, vertical: 8.h),
                              decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.kGrey),
                                  borderRadius: BorderRadius.circular(2.r)),
                              child: Text(
                                checkoutItem.price,
                                style: AppTypogrphy.kBold16
                                    .copyWith(color: AppColors.kBlack),
                              ),
                            ),
                            SizedBox(
                              width: 11.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(checkoutItem.sale,
                                    style: AppTypogrphy.kExtraLight10.copyWith(
                                        fontSize: 8.sp, color: AppColors.kRed)),
                                SizedBox(
                                  height: 3.h,
                                ),
                                Text(checkoutItem.originalPrice,
                                    style: AppTypogrphy.kLight14.copyWith(
                                        color: AppColors.kGrey,
                                        decoration:
                                            TextDecoration.lineThrough)),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 12.h,
              ),
              Divider(
                thickness: 1,
                color: AppColors.kGrey,
              ),
              SizedBox(
                height: 12.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Total Order (1) :',
                      style: AppTypogrphy.kLight12
                          .copyWith(color: AppColors.kBlack)),
                  Text(
                    checkoutItem.price,
                    style:
                        AppTypogrphy.kBold16.copyWith(color: AppColors.kBlack),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
