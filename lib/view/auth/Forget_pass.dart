import 'package:elearning_app/data/app_icons.dart';
import 'package:elearning_app/data/app_typography.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../data/app_colors.dart';
import '../Landing_page/landing_page.dart';
import '../components/Primary_button.dart';
import 'components/Auth_Field.dart';

final _formKey = GlobalKey<FormState>();

class ForgotPass extends StatefulWidget {
  const ForgotPass({super.key});

  @override
  State<ForgotPass> createState() => _ForgotPassState();
}

class _ForgotPassState extends State<ForgotPass> {
  void _submitform() {
    if (_formKey.currentState!.validate()) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const LandingPage()),
      );
    }
    ;
  }

  final _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhite,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(29.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Forgot \nPassword ?",
                style: AppTypogrphy.kBold36.copyWith(color: AppColors.kBlack),
              ),
              SizedBox(
                height: 32.h,
              ),
              Form(
                key: _formKey,
                child: AuthField(
                  controller: _emailController,
                  hintText: 'Username or Email',
                  icon: AppIcons.kmail,
                  confirmPassword: false,
                ),
              ),
              SizedBox(
                height: 26.h,
              ),
              Text(
                " We will send you a message to set or reset your new password",
                style: AppTypogrphy.kLight12.copyWith(color: AppColors.kBlack),
              ),
              SizedBox(
                height: 26.h,
              ),
              PrimaryButton(
                  onTap: () {
                    _submitform();
                  },
                  text: 'Submit',
                  isSmall: true),
            ],
          ),
        ),
      ),
    );
  }
}
