import 'package:elearning_app/data/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../data/app_assets.dart';
import '../../data/app_colors.dart';
import '../../data/app_typography.dart';
import '../components/Primary_button.dart';
import 'Components/Button.dart';
import 'Components/Price.dart';

class ShippingPage extends StatefulWidget {
  const ShippingPage({super.key});

  @override
  State<ShippingPage> createState() => _ShippingPageState();
}

class _ShippingPageState extends State<ShippingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
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
          'Checkout',
          style: AppTypogrphy.kSemiBold18.copyWith(color: AppColors.kBlack),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 33),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 9.0.h),
              child: Column(
                children: [
                  const PriceDetail(
                    text: 'Order',
                    price: '₹ 7,000',
                  ),
                  SizedBox(
                    height: 18.h,
                  ),
                  const PriceDetail(
                    text: 'Shipping',
                    price: '₹ 30',
                  ),
                  SizedBox(
                    height: 18.h,
                  ),
                  const PriceDetail(
                    text: 'Total',
                    price: '₹ 7,030',
                    isTotal: true,
                  ),
                  SizedBox(
                    height: 22.h,
                  ),
                  Divider(
                    thickness: 2,
                    color: AppColors.kGrey,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 28.h,
            ),
            Text('Payment',
                style: AppTypogrphy.kLight16.copyWith(color: AppColors.kBlack)),
            SizedBox(
              height: 10.h,
            ),
            PaymentButton(image: AppAssets.kVisa),
            SizedBox(
              height: 25.h,
            ),
            PaymentButton(image: AppAssets.kPaypal),
            SizedBox(
              height: 25.h,
            ),
            PaymentButton(image: AppAssets.kMaestro),
            SizedBox(
              height: 25.h,
            ),
            PaymentButton(image: AppAssets.kApplSignin),
            SizedBox(
              height: 25.h,
            ),
            PrimaryButton(
              onTap: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => Dialog(
                  insetPadding: EdgeInsets.symmetric(horizontal: 22.w),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 25.0.h, horizontal: 65.w),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Image.asset(AppAssets.star1),
                            SvgPicture.asset(AppIcons.done)
                          ],
                        ),
                        SizedBox(height: 16.h),
                        Text("Payment done successfully.",
                            maxLines: 1,
                            style: AppTypogrphy.kSemiBold14
                                .copyWith(color: AppColors.kBlack))
                      ],
                    ),
                  ),
                ),
              ),
              text: 'Continue',
              isSmall: true,
            )
          ],
        ),
      ),
    );
  }
}
