import 'package:elearning_app/data/app_icons.dart';
import 'package:elearning_app/view/Cart_Page/components/Bottomsheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../data/app_colors.dart';
import '../../data/app_typography.dart';
import '../../models/Checkoutmodel.dart';

import 'components/CustomContainer.dart';

class CartPage extends StatefulWidget {
  final CheckoutModel checkoutItem;
  const CartPage({super.key, required this.checkoutItem});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
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
              Icons.arrow_back_ios_rounded,
              color: AppColors.kBlack,
            ),
          ),
          centerTitle: true,
          title: Text(
            'Shopping Bag',
            style: AppTypogrphy.kBold16.copyWith(color: AppColors.kBlack),
          ),
          actions: [
            SvgPicture.asset(AppIcons.heart),
            SizedBox(
              width: 22.w,
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(22.0),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(4.r),
                        child: SizedBox(
                            width: 123.w,
                            height: 153.h,
                            child: Image.asset(
                              widget.checkoutItem.display,
                              fit: BoxFit.fitHeight,
                            )),
                      ),
                      SizedBox(
                        width: 21.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.checkoutItem.title,
                            style: AppTypogrphy.kBold16
                                .copyWith(color: AppColors.kBlack),
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(
                            "Checked Single-Breasted \nBlazer",
                            style: AppTypogrphy.kExtraLight12.copyWith(
                              color: AppColors.kBlack,
                              fontSize: 13,
                            ),
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Row(
                            children: [
                              const CustomContainer(
                                text1: 'Size ',
                                text2: ' 42',
                              ),
                              SizedBox(
                                width: 12.w,
                              ),
                              const CustomContainer(
                                text1: 'QTY ',
                                text2: ' 1',
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 11.h,
                          ),
                          RichText(
                            text: TextSpan(
                              style: const TextStyle(),
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Delivery by ',
                                    style: AppTypogrphy.kExtraLight12.copyWith(
                                      color: AppColors.kBlack,
                                      fontSize: 13,
                                    )),
                                TextSpan(
                                  text: ' 10 May 2XXX',
                                  style: AppTypogrphy.kBold16
                                      .copyWith(color: AppColors.kBlack),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 54.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(AppIcons.coupon),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text("Apply Coupons",
                              style: AppTypogrphy.kLight16
                                  .copyWith(color: AppColors.kBlack)),
                        ],
                      ),
                      Text("Select",
                          style: AppTypogrphy.kSemiBold14
                              .copyWith(color: AppColors.kRed))
                    ],
                  ),
                  SizedBox(height: 36.h),
                  Divider(
                    thickness: 1,
                    color: AppColors.kGrey,
                  ),
                  SizedBox(
                    height: 35.h,
                  ),
                  Text("Order Payment Details",
                      style: AppTypogrphy.kLight16.copyWith(
                        color: AppColors.kBlack,
                        fontSize: 17,
                      )),
                  SizedBox(
                    height: 26.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Order Amounts",
                          style: AppTypogrphy.kLight16
                              .copyWith(color: AppColors.kBlack)),
                      Text("₹ 7,000.00",
                          style: AppTypogrphy.kSemiBold14
                              .copyWith(color: AppColors.kBlack)),
                    ],
                  ),
                  SizedBox(height: 12.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text("Convenience",
                              style: AppTypogrphy.kLight16
                                  .copyWith(color: AppColors.kBlack)),
                          SizedBox(
                            width: 14.w,
                          ),
                          Text("Know More",
                              style: AppTypogrphy.kSemiBold12
                                  .copyWith(color: AppColors.kRed)),
                        ],
                      ),
                      Text("Apply Coupon",
                          style: AppTypogrphy.kSemiBold12
                              .copyWith(color: AppColors.kRed)),
                    ],
                  ),
                  SizedBox(height: 12.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Delivery Fee",
                          style: AppTypogrphy.kExtraLight14
                              .copyWith(color: AppColors.kBlack)),
                      SizedBox(
                        width: 14.w,
                      ),
                      Text("Free",
                          style: AppTypogrphy.kSemiBold14
                              .copyWith(color: AppColors.kRed)),
                    ],
                  ),
                  SizedBox(height: 41.h),
                  Divider(
                    thickness: 1,
                    color: AppColors.kGrey,
                  ),
                  SizedBox(
                    height: 29.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Order Total",
                          style: AppTypogrphy.kLight16.copyWith(
                            color: AppColors.kBlack,
                            fontSize: 17,
                          )),
                      Text("₹ 7,000.00",
                          style: AppTypogrphy.kSemiBold14
                              .copyWith(color: AppColors.kBlack)),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      Text("EMI Available",
                          style: AppTypogrphy.kLight16
                              .copyWith(color: AppColors.kBlack)),
                      SizedBox(
                        width: 22.w,
                      ),
                      Text("Details",
                          style: AppTypogrphy.kSemiBold12
                              .copyWith(color: AppColors.kRed)),
                    ],
                  ),
                  SizedBox(
                    height: 175.h,
                  )
                ]),
              ],
            ),
          ),
        ),
        bottomSheet: const SizedBox(
          width: double.infinity,
          height: 146,
          child: BottomSheetCard(),
        ));
  }
}
