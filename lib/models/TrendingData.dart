import 'package:elearning_app/data/app_assets.dart';

class TrendingModel {
  String image;
  String title;
  String subtitle;
  String price;

  String review;

  TrendingModel({
    required this.image,
    required this.price,
    required this.review,
    required this.subtitle,
    required this.title,
  });
}

// ignore: non_constant_identifier_names
List<TrendingModel> product_data = [
  TrendingModel(
    image: AppAssets.blackwinter,
    price: "₹1500",
    review: "56890",
    subtitle: "Matte Gunmetal Black Full\nRim Rectangle Sunglasses.",
    title: "Black Winter",
  ),
  TrendingModel(
    image: AppAssets.menstray,
    price: "₹1500",
    review: "56890",
    subtitle: "Matte Gunmetal Black Full\nRim Rectangle Sunglasses.",
    title: "Mens Starry",
  ),
  TrendingModel(
    image: AppAssets.blackdress,
    price: "₹1500",
    review: "56890",
    subtitle: "Matte Gunmetal Black Full\nRim Rectangle Sunglasses.",
    title: "Women Printed Kurta",
  ),
  TrendingModel(
    image: AppAssets.pink,
    price: "₹1500",
    review: "56890",
    subtitle: "Matte Gunmetal Black Full\nRim Rectangle Sunglasses.",
    title: "Black Dress",
  ),
  TrendingModel(
    image: AppAssets.flare,
    price: "₹1500",
    review: "56890",
    subtitle: "Matte Gunmetal Black Full\nRim Rectangle Sunglasses.",
    title: "Pink Embroide...",
  ),
  TrendingModel(
    image: AppAssets.denum,
    price: "₹1500",
    review: "56890",
    subtitle: "Matte Gunmetal Black Full\nRim Rectangle Sunglasses.",
    title: "Flare Dress",
  ),
  TrendingModel(
    image: AppAssets.jordan,
    price: "₹1500",
    review: "56890",
    subtitle: "Matte Gunmetal Black Full\nRim Rectangle Sunglasses.",
    title: "Denim Dress",
  ),
  TrendingModel(
    image: AppAssets.relame,
    price: "₹1500",
    review: "56890",
    subtitle: "Matte Gunmetal Black Full\nRim Rectangle Sunglasses.",
    title: "Jorden Stay",
  ),
  TrendingModel(
    image: AppAssets.ps4,
    price: "₹1500",
    review: "56890",
    subtitle: "Matte Gunmetal Black Full\nRim Rectangle Sunglasses.",
    title: "Realme 7",
  ),
  TrendingModel(
    image: AppAssets.blackjacket,
    price: "₹1500",
    review: "56890",
    subtitle: "Matte Gunmetal Black Full\nRim Rectangle Sunglasses.",
    title: "Sony PS4",
  ),
  TrendingModel(
    image: AppAssets.camera,
    price: "₹1500",
    review: "56890",
    subtitle: "Matte Gunmetal Black Full\nRim Rectangle Sunglasses.",
    title: "Black Jacket 12...",
  ),
  TrendingModel(
    image: AppAssets.menshoe,
    price: "₹1500",
    review: "56890",
    subtitle: "Matte Gunmetal Black Full\nRim Rectangle Sunglasses.",
    title: "D7200 Digital c...",
  ),
  TrendingModel(
    image: AppAssets.book,
    price: "₹1500",
    review: "56890",
    subtitle: "Matte Gunmetal Black Full\nRim Rectangle Sunglasses.",
    title: "Men's & boys S...",
  ),
  TrendingModel(
    image: AppAssets.asthetic,
    price: "₹1500",
    review: "56890",
    subtitle: "Matte Gunmetal Black Full\nRim Rectangle Sunglasses.",
    title: "Asthetics",
  ),
];

List<TrendingModel> customItem = [
  TrendingModel(
    image: AppAssets.shope_shoe,
    price: "₹1900",
    review: "56890",
    subtitle: "Vision Alta Men’s Shoes Size (All Colours)",
    title: "NIke Sneakers",
  ),
  TrendingModel(
    image: AppAssets.shopsho,
    price: "₹1900",
    review: "56890",
    subtitle: "Matte Gunmetal Black Full\nRim Rectangle Sunglasses.",
    title: "NIke Sneakers",
  ),
];
