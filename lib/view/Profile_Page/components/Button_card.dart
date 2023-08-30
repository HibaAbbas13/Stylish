import 'package:elearning_app/models/ColorButtonModel.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../data/app_colors.dart';
import '../../../data/app_typography.dart';

class ButtonCard extends StatelessWidget {
  final ColorButtonModel button_data;
  const ButtonCard({
    super.key,
    required this.button_data,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: EdgeInsets.only(top: 8.h, bottom: 8.h, right: 14.w),
          width: 137.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(4.r),
                bottomRight: Radius.circular(4.r),
                topLeft: Radius.circular(50.r),
                bottomLeft: Radius.circular(50.r)),
            gradient: LinearGradient(
              colors: [button_data.startColor, button_data.endColor],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Text(
            button_data.title,
            style: AppTypogrphy.kLight16.copyWith(color: AppColors.kWhite),
            textAlign: TextAlign.right,
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
                    colors: [button_data.startColor, button_data.endColor],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: button_data.endColor,
                      offset: const Offset(0, 4),
                      blurRadius: 2,
                      spreadRadius: 0,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(50.r),
                  border: Border.all(color: button_data.endColor, width: 1.w)),
              child: SvgPicture.asset(
                button_data.image,
                color: AppColors.kWhite,
                fit: BoxFit.fill,
              )),
        )
      ],
    );
  }
}
