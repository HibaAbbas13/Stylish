import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../data/app_colors.dart';
import '../../../data/app_typography.dart';
import 'Validation.dart';

class AuthField extends StatefulWidget {
  final TextEditingController controller;
  final bool isPassword;

  final String hintText;
  final String icon;
  const AuthField({
    super.key,
    required this.controller,
    this.isPassword = false,
    required this.hintText,
    required this.icon,
  });

  @override
  State<AuthField> createState() => _AuthFieldState();
}

class _AuthFieldState extends State<AuthField> {
  bool isObscure = true;

  void _togglePasswordVisibility() {
    setState(() {
      isObscure = !isObscure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
          contentPadding: EdgeInsets.zero,
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
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0.r),
            borderSide: BorderSide(color: AppColors.kRed, width: 1.0.w),
          ),
          filled: true,
          fillColor: AppColors.kGreyFilled,
          hintText: widget.hintText,
          hintStyle: AppTypogrphy.kLight12.copyWith(color: AppColors.kGreyHint),
          prefixIcon: Padding(
            padding: EdgeInsets.all(16.h),
            child: SvgPicture.asset(
              widget.icon,
            ),
          ),
          suffixIcon: widget.isPassword
              ? IconButton(
                  onPressed: _togglePasswordVisibility,
                  icon: ColorFiltered(
                    colorFilter: ColorFilter.mode(
                      AppColors.kGreySvg,
                      BlendMode.srcIn,
                    ),
                    child: Icon(
                      isObscure ? Icons.visibility_off : Icons.remove_red_eye,
                      color: AppColors.kGrey,
                    ),
                  ),
                )
              : null),
    );
  }
}
