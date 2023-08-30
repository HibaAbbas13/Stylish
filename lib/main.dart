import 'package:elearning_app/view/OnBorading/onboarding_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'data/app_colors.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  SystemChrome.setSystemUIOverlayStyle(AppColors.defaultOverlay);
  FlutterNativeSplash.remove();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      useInheritedMediaQuery: true,
      builder: (context, child) {
        return GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: MaterialApp(
            title: 'Stylish',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                primaryColor: AppColors.kRed,
                scaffoldBackgroundColor: AppColors.kWhite,
                appBarTheme: AppBarTheme(backgroundColor: AppColors.kWhite)),
            scrollBehavior: const ScrollBehavior().copyWith(overscroll: false),
            home: const OnboardingView(),
          ),
        );
      },
    );
  }
}
