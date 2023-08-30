import 'package:elearning_app/data/app_assets.dart';
import 'package:elearning_app/data/app_colors.dart';
import 'package:elearning_app/data/app_typography.dart';

import 'package:elearning_app/view/Landing_page/landing_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(alignment: Alignment.center, children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage(AppAssets.cover),
            fit: BoxFit.cover,
          )),
        ),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.transparent,
                Colors.transparent,
                Colors.black.withOpacity(0.7),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Center(
                child: Text(
                  textAlign: TextAlign.center,
                  "You want \nAuthentic, here \nyou go!",
                  style: AppTypogrphy.kSemiBold34
                      .copyWith(color: AppColors.kWhite),
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Text(
                "Find it here, buy it now!",
                style: AppTypogrphy.kLight14.copyWith(color: AppColors.kWhite),
              ),
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const LandingPage()));
                  },
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 34),
                    child: Container(
                      height: 55.h,
                      width: 279.w,
                      decoration: BoxDecoration(
                        color: AppColors.kRed,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Center(
                        child: Text(
                          "Get Started",
                          style: AppTypogrphy.kSemiBold20
                              .copyWith(color: AppColors.kWhite),
                        ),
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ]),
    );
  }
}
