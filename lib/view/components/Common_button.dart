import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/app_colors.dart';
import '../../../data/app_typography.dart';

class CommomButton extends StatelessWidget {
  final String text;
  const CommomButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {},
        child: Container(
            height: 28.h,
            width: 92.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6), color: Colors.pink),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(text,
                      style: AppTypogrphy.kSemiBold12
                          .copyWith(color: AppColors.kWhite)),
                  Icon(
                    Icons.arrow_forward,
                    color: AppColors.kWhite,
                    size: 16,
                  )
                ],
              ),
            )));
  }
}
