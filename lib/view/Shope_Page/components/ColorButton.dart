import 'package:elearning_app/models/ColorButtonModel.dart';

import 'package:elearning_app/view/Checkout_view/Checkout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../data/app_colors.dart';
import '../../../data/app_typography.dart';

class ColorCard extends StatelessWidget {
  final ColorButtonModel colorbutton;

  const ColorCard({
    super.key,
    required this.colorbutton,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Checkout()));
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: 137.w,
            height: 40.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(4.r),
                  bottomRight: Radius.circular(4.r),
                  topLeft: Radius.circular(20.r),
                  bottomLeft: Radius.circular(20.r)),
              gradient: LinearGradient(
                colors: [colorbutton.startColor, colorbutton.endColor],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(right: 8, top: 8, bottom: 8),
              child: Text(
                colorbutton.title,
                style: AppTypogrphy.kLight16.copyWith(color: AppColors.kWhite),
                textAlign: TextAlign.right,
              ),
            ),
          ),
          Positioned(
            left: -1,
            top: -3,
            child: Container(
                width: 40.w,
                height: 40.h,
                padding: EdgeInsets.all(8.h),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [colorbutton.startColor, colorbutton.endColor],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: colorbutton.endColor,
                        offset: const Offset(0, 4),
                        blurRadius: 2,
                        spreadRadius: 0,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(50.r),
                    border:
                        Border.all(color: colorbutton.endColor, width: 1.w)),
                child: SvgPicture.asset(
                  colorbutton.image,
                  color: AppColors.kWhite,
                  fit: BoxFit.fill,
                )),
          )
        ],
      ),
    );
  }
}
