import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppColors {
  static Color kBlack = Colors.black;
  static Color kRed = const Color(0xFFF83758);
  static Color kReddish = Color.fromARGB(82, 231, 121, 121);
  static Color kBluish = Color.fromARGB(255, 165, 199, 233);
  static Color kBlue = Colors.blue;
  static Color kBlues = Color.fromRGBO(63, 146, 255, 1);
  static Color kBluee = Color.fromRGBO(11, 54, 137, 1);

  static Color kgreens = Color.fromRGBO(113, 249, 169, 1);
  static Color kgreene = Color.fromRGBO(49, 183, 105, 1);

  static Color kWhite = Colors.white;
  static Color kPurple = Colors.purple;
  static Color kGrey1 = const Color(0xFFA0A0A1);
  static Color kGreyHint = const Color(0xFF676767);
  static Color kGrey = const Color(0xFFA8A8A9);
  static Color kGreyContinue = const Color(0xFF575757);
  static Color kGreyFilled = const Color(0xFFF3F3F3);
  static Color kGreyback = const Color(0xFFF2F2F2);
  static Color kGreySvg = const Color(0xFF626262);
  static Color kGreySearch = const Color(0xFFBBBBBB);
  static Color kGreyIndicator = const Color(0xFFDEDBDB);
  static Color kGreyWrap = const Color(0xFF828282);
  static Color kGreyDivider = const Color(0xFFC4C4C4);
  static Color kGreyText = const Color(0xFF4C5059);
  static Color kGreyButton = const Color(0xFFF8F8F8);

  static Color kBody = const Color.fromARGB(255, 249, 248, 248);
  static const defaultOverlay = SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
    statusBarBrightness: Brightness.light,
    // systemNavigationBarColor: Colors.transparent,
    // systemNavigationBarDividerColor: Colors.transparent,
    // systemNavigationBarIconBrightness: Brightness.dark
  );
}
