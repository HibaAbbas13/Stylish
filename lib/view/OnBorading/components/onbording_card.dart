import 'package:elearning_app/data/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../data/app_typography.dart';
import '../../../models/OnbordingData.dart';

class OnBoardingCard extends StatelessWidget {
  final OnboardingModel onboarding;
  const OnBoardingCard({super.key, required this.onboarding});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(onboarding.image),
            SizedBox(height: 33.h),
            Text(
              onboarding.title,
              style: AppTypogrphy.kExtraBold24,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10.h),
            Text(
              onboarding.subtitle,
              style: GoogleFonts.montserrat(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.kGrey),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
