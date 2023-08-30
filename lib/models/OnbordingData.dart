import 'package:elearning_app/data/app_assets.dart';

class OnboardingModel {
  String title;
  String subtitle;
  String image;

  OnboardingModel(
      {required this.image, required this.title, required this.subtitle});
}

List<OnboardingModel> onboardingList = [
  OnboardingModel(
      image: AppAssets.onboarding2,
      title: 'Choose Product',
      subtitle:
          'Amet minim mollit non deserunt ullamco est \nsit aliqua dolor do amet sint. Velit officia\nconsequat duis enim velit mollit. '),
  OnboardingModel(
      image: AppAssets.onboarding1,
      title: 'Make Payment',
      subtitle:
          'Amet minim mollit non deserunt ullamco est \nsit aliqua dolor do amet sint. Velit officia\nconsequat duis enim velit mollit. '),
  OnboardingModel(
      image: AppAssets.onboarding,
      title: 'Get Your Order',
      subtitle:
          'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. ')
];
