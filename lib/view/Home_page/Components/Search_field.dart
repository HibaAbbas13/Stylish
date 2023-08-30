import 'package:elearning_app/data/app_colors.dart';
import 'package:elearning_app/data/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_svg/flutter_svg.dart';
import '../../../data/app_typography.dart';

class SearchField extends StatefulWidget {
  final TextEditingController controller;

  const SearchField({super.key, required this.controller});

  @override
  State<SearchField> createState() => _SearchFieldState();
}

bool click = true;

class _SearchFieldState extends State<SearchField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      width: double.infinity,
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 16),
          filled: true,
          fillColor: AppColors.kWhite,
          hintText: 'Search any Product..',
          hintStyle: AppTypogrphy.kExtraLight14.copyWith(
            color: AppColors.kGreySearch,
          ),
          prefixIcon: Padding(
            padding:
                const EdgeInsets.only(top: 10, bottom: 10, right: 10, left: 16),
            child: SvgPicture.asset(
              AppIcons.search,
              color: AppColors.kGrey,
            ),
          ),
          prefixIconConstraints:
              BoxConstraints(minWidth: 20.w, minHeight: 20.h),
          suffixIcon: Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 8, right: 16),
            child: SvgPicture.asset(
              AppIcons.mic,
            ),
          ),
          suffixIconConstraints:
              BoxConstraints(minWidth: 24.w, minHeight: 24.h),
          border: InputBorder.none,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.r),
              borderSide: BorderSide.none),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.r),
              borderSide: BorderSide.none),
          disabledBorder: const OutlineInputBorder(),
        ),
      ),
    );
  }
}
