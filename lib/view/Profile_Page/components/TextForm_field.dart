import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/app_colors.dart';
import '../../../data/app_typography.dart';
import '../../auth/components/Validation.dart';

class TextFormFieldView extends StatefulWidget {
  final TextEditingController controller;
  final bool isPassword;
  final String label;
  const TextFormFieldView({
    super.key,
    required this.controller,
    this.isPassword = false,
    required this.label,
  });

  @override
  State<TextFormFieldView> createState() => _ProfileTextFormFieldViewState();
}

class _ProfileTextFormFieldViewState extends State<TextFormFieldView> {
  bool isObscure = true;

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
        TextFormField(
          cursorColor: AppColors.kBlack,
          controller: widget.controller,
          obscureText: widget.isPassword ? isObscure : false,
          validator: (value) {
            if (widget.isPassword) {
              return CustomValidator.validatePassword(value);
            } else {
              return CustomValidator.validateUsername(value);
            }
          },
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
          ),
          style: AppTypogrphy.kSemiBold14.copyWith(color: AppColors.kBlack),
        ),
      ],
    );
  }
}
