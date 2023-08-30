import 'package:elearning_app/data/app_assets.dart';
import 'package:elearning_app/data/app_typography.dart';
import 'package:elearning_app/view/auth/Login_page.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../data/app_colors.dart';
import '../../data/app_icons.dart';
import '../Landing_page/landing_page.dart';
import '../components/Primary_button.dart';

import 'components/Auth_Field.dart';

final _formKey = GlobalKey<FormState>();

class SignupPage extends StatefulWidget {
  const SignupPage({
    super.key,
  });
  @override
  State<SignupPage> createState() => _SignupPageState();
}

// ignore: camel_case_types
class _SignupPageState extends State<SignupPage> {
  // ignore: non_constant_identifier_names
  void enter_login() {
    if (_formKey.currentState!.validate()) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const LandingPage()),
      );
    }
    ;
  }

  bool click = true;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _passwordController1 = TextEditingController();

  var password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhite,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(29.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Create an \nAccount",
                  style: AppTypogrphy.kBold36.copyWith(color: AppColors.kBlack),
                ),
                SizedBox(
                  height: 33.h,
                ),
                Form(
                  key: _formKey,
                  child: Column(children: [
                    AuthField(
                      controller: _emailController,
                      isPassword: false,
                      hintText: 'Username or Email',
                      icon: AppIcons.kUser,
                      confirmPassword: false,
                    ),
                    SizedBox(
                      height: 31.h,
                    ),
                    AuthField(
                      controller: _passwordController,
                      isPassword: true,
                      hintText: 'Password',
                      icon: AppIcons.kLock,
                      confirmPassword: false,
                    ),
                    SizedBox(
                      height: 31.h,
                    ),
                    AuthField(
                      controller: _passwordController1,
                      isPassword: true,
                      hintText: 'Password',
                      icon: AppIcons.kLock,
                      confirmPassword: true,
                    ),
                    SizedBox(
                      height: 19.h,
                    ),
                  ]),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    child: RichText(
                      text: TextSpan(
                        style: const TextStyle(),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'By clicking the ',
                            style: AppTypogrphy.kExtraLight12
                                .copyWith(color: AppColors.kBlack),
                          ),
                          TextSpan(
                            text: ' Register',
                            style: AppTypogrphy.kExtraLight12
                                .copyWith(color: AppColors.kRed),
                          ),
                          TextSpan(
                            text: ' button, you agree to the public offer',
                            style: AppTypogrphy.kExtraLight12
                                .copyWith(color: AppColors.kBlack),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {},
                  ),
                ),
                SizedBox(
                  height: 38.h,
                ),
                PrimaryButton(
                  onTap: () {
                    enter_login();
                  },
                  text: 'Create Account',
                  isSmall: true,
                ),
                SizedBox(
                  height: 40.h,
                ),
                Center(
                  child: Text(
                    "-or Continue With -",
                    style:
                        AppTypogrphy.kLight12.copyWith(color: AppColors.kBlack),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 56.h,
                      width: 56.w,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(AppAssets.google)),
                        shape: BoxShape.circle,
                      ),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Container(
                      height: 56.h,
                      width: 56.w,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image:
                              DecorationImage(image: AssetImage(AppAssets.fb))),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Container(
                      height: 56.h,
                      width: 56.w,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage(AppAssets.apple))),
                    )
                  ],
                ),
                SizedBox(
                  height: 28.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account",
                      style: AppTypogrphy.kLight14
                          .copyWith(color: AppColors.kBlack),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    TextButton(
                      child: Text(
                        "Login",
                        style: AppTypogrphy.kSemiBold14.copyWith(
                            color: AppColors.kRed,
                            decoration: TextDecoration.underline),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LogInPage()));
                      },
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
