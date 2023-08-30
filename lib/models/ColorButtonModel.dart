import 'package:elearning_app/data/app_icons.dart';
import 'package:flutter/material.dart';

import '../data/app_colors.dart';

class ColorButtonModel {
  String image;
  String title;
  Color startColor;
  Color endColor;

  ColorButtonModel({
    required this.title,
    required this.image,
    required this.startColor,
    required this.endColor,
  });
}

List<ColorButtonModel> colorbutton = [
  ColorButtonModel(
      title: 'Go to cart',
      image: AppIcons.cart2,
      startColor: AppColors.kBluee,
      endColor: AppColors.kBlues),
  ColorButtonModel(
      title: 'Buy Now',
      image: AppIcons.buy,
      startColor: AppColors.kgreene,
      endColor: AppColors.kgreens),
];
