import 'package:elearning_app/data/app_assets.dart';
import 'package:elearning_app/data/app_colors.dart';
import 'package:elearning_app/data/app_typography.dart';
import 'package:elearning_app/view/Profile_Page/components/Text_Field.dart';

import 'package:elearning_app/view/components/Primary_button.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../auth/Forget_pass.dart';
import 'components/TextForm_field.dart';

final _formKey = GlobalKey<FormState>();

class Profile extends StatelessWidget {
  Profile({super.key});

  void _submitform() {
    if (_formKey.currentState!.validate()) {
      Container(color: Colors.blue);
    }
  }

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.kWhite,
        appBar: AppBar(
          backgroundColor: AppColors.kWhite,
          elevation: 0,
          automaticallyImplyLeading: true,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_rounded,
              color: AppColors.kBlack,
            ),
          ),
          centerTitle: true,
          title: Text(
            "Checkout",
            style: AppTypogrphy.kSemiBold18.copyWith(color: AppColors.kBlack),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Stack(
                    children: [
                      CircleAvatar(
                          maxRadius: 50.r,
                          backgroundImage: AssetImage(
                            AppAssets.avatar,
                          )),
                      Positioned(
                        right: 1,
                        bottom: 1,
                        child: CircleAvatar(
                          maxRadius: 15.r,
                          backgroundColor: AppColors.kBlue,
                          child: Icon(
                            Icons.edit,
                            color: AppColors.kWhite,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 28.h,
                ),
                Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormFieldView(
                          controller: _emailController,
                          label: 'Email Address',
                        ),
                        SizedBox(height: 28.h),
                        TextFormFieldView(
                          isPassword: true,
                          controller: _passwordController,
                          label: 'Password',
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ForgotPass()),
                                );
                              },
                              child: Text(
                                'Change Password',
                                style: AppTypogrphy.kLight12.copyWith(
                                    color: AppColors.kRed,
                                    decoration: TextDecoration.underline),
                              )),
                        ),
                        SizedBox(height: 24.h),
                        Divider(
                          thickness: 1,
                          color: AppColors.kGreyDivider,
                        ),
                        SizedBox(height: 34.h),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Business Address Details',
                              style: AppTypogrphy.kSemiBold16
                                  .copyWith(color: AppColors.kBlack),
                            )),
                        SizedBox(height: 28.h),
                        const TextFieldView(
                          label: 'Address',
                        ),
                        SizedBox(height: 28.h),
                        const TextFieldView(
                          isDropdown: true,
                          label: 'State',
                        ),
                        SizedBox(height: 28.h),
                        const TextFieldView(
                          label: 'Country',
                        ),
                        SizedBox(height: 34.h),
                        Divider(
                          thickness: 1,
                          color: AppColors.kGreyDivider,
                        ),
                        SizedBox(height: 32.h),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Bank Account Details',
                              style: AppTypogrphy.kSemiBold16
                                  .copyWith(color: AppColors.kBlack),
                            )),
                        SizedBox(height: 24.h),
                        const TextFieldView(
                          label: 'Bank Account Number',
                        ),
                        SizedBox(height: 28.h),
                        const TextFieldView(
                          label: 'Account Holder’s Name',
                        ),
                        SizedBox(height: 28.h),
                        const TextFieldView(
                          label: 'IFSC Code',
                        ),
                        SizedBox(height: 34.h),
                        PrimaryButton(
                          onTap: () {
                            {
                              if (_formKey.currentState!.validate()) {}
                            }
                          },
                          text: 'Save',
                          isSmall: true,
                        ),
                        SizedBox(height: 57.h),
                      ],
                    ))
              ],
            ),
          ),
        ));
  }
}
