import 'package:elearning_app/data/app_assets.dart';

class HomePageModel {
  String img;
  String title;

  HomePageModel({required this.img, required this.title});
}

List<HomePageModel> data_list = [
  HomePageModel(img: AppAssets.beauty, title: "Beauty"),
  HomePageModel(img: AppAssets.fashion, title: "Fashion"),
  HomePageModel(img: AppAssets.kids, title: "Kids"),
  HomePageModel(img: AppAssets.men, title: "Men"),
  HomePageModel(img: AppAssets.women, title: "Women"),
];
