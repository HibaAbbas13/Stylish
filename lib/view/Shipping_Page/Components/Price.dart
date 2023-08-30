import 'package:flutter/material.dart';

import '../../../data/app_colors.dart';
import '../../../data/app_typography.dart';

class PriceDetail extends StatelessWidget {
  final String text;
  final String price;
  final bool isTotal;
  const PriceDetail(
      {super.key,
      required this.text,
      required this.price,
      this.isTotal = false});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,
            style: isTotal
                ? AppTypogrphy.kLight16.copyWith(color: AppColors.kBlack)
                : AppTypogrphy.kLight16.copyWith(color: AppColors.kGrey)),
        Text(price,
            style: isTotal
                ? AppTypogrphy.kLight16.copyWith(color: AppColors.kBlack)
                : AppTypogrphy.kLight16.copyWith(color: AppColors.kGrey))
      ],
    );
  }
}
