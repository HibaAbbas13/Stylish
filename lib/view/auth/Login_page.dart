import 'package:elearning_app/data/app_assets.dart';
import 'package:elearning_app/data/app_icons.dart';
import 'package:elearning_app/data/app_typography.dart';
import 'package:elearning_app/view/GetStarted/Cover_page.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../data/app_colors.dart';
import '../components/Primary_button.dart';
import 'Forget_pass.dart';
import 'Signup_page.dart';
import 'components/AuthField.dart';

final _formKey = GlobalKey<FormState>();

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  // ignore: non_constant_identifier_names
  void enter_login() {
    if (_formKey.currentState!.validate()) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const GetStarted()));
    }
    ;
  }

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
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
                  "Welcome \nBack!",
                  style: AppTypogrphy.kBold36.copyWith(color: AppColors.kBlack),
                ),
                SizedBox(
                  height: 57.h,
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      AuthField(
                        controller: _emailController,
                        hintText: 'Username or Email',
                        icon: AppIcons.kUser,
                      ),
                      SizedBox(height: 30.h),
                      AuthField(
                        controller: _passwordController,
                        isPassword: true,
                        hintText: 'Password',
                        icon: AppIcons.kLock,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                      child: Text("Forget Password?",
                          style: AppTypogrphy.kExtraLight12
                              .copyWith(color: Colors.red)),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const ForgotPass()));
                      }),
                ),
                SizedBox(
                  height: 52.h,
                ),
                PrimaryButton(
                  text: 'Login',
                  onTap: () {
                    enter_login();
                  },
                  isSmall: true,
                ),
                SizedBox(
                  height: 75.h,
                ),
                Center(
                  child: Text(
                    "-or Continue With-",
                    style: AppTypogrphy.kExtraLight12
                        .copyWith(color: AppColors.kBlack),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 54,
                      width: 54,
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
                      height: 54,
                      width: 54,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image:
                              DecorationImage(image: AssetImage(AppAssets.fb))),
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
                      "Create and Account",
                      style: AppTypogrphy.kLight14
                          .copyWith(color: AppColors.kBlack),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    InkWell(
                      child: Text(
                        "Sign Up",
                        style: AppTypogrphy.kSemiBold14.copyWith(
                            color: AppColors.kRed,
                            decoration: TextDecoration.underline),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const SignupPage()));
                      },
                    ),
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
