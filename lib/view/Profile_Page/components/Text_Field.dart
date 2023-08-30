import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/app_colors.dart';
import '../../../data/app_typography.dart';

class TextFieldView extends StatefulWidget {
  final String label;
  final bool isDropdown;
  const TextFieldView({
    super.key,
    this.isDropdown = false,
    required this.label,
  });

  @override
  State<TextFieldView> createState() => _TextFieldViewState();
}

class _TextFieldViewState extends State<TextFieldView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: AppTypogrphy.kExtraLight12.copyWith(color: AppColors.kBlack),
        ),
        SizedBox(
          height: 15.h,
        ),
        TextField(
          cursorColor: AppColors.kBlack,
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.all(14.h),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0.r),
                borderSide: BorderSide(color: AppColors.kGrey, width: 1.0.w),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0.r),
                borderSide: BorderSide(color: AppColors.kGrey, width: 1.0.w),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0.r),
                borderSide: BorderSide(color: AppColors.kRed, width: 1.0.w),
              ),
              suffixIcon: widget.isDropdown
                  ? IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.keyboard_arrow_down,
                          color: AppColors.kGrey))
                  : null),
          style: AppTypogrphy.kSemiBold14.copyWith(color: AppColors.kBlack),
        ),
      ],
    );
  }
}
