import 'package:flutter/material.dart';
import '../../data/app_colors.dart';
import '../../data/app_typography.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  const PrimaryButton(
      {super.key,
      required this.onTap,
      required this.text,
      required bool isSmall});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: 55,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.kRed,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Text(text,
            style: AppTypogrphy.kBold20.copyWith(color: AppColors.kWhite)),
      ),
    );
  }
}
