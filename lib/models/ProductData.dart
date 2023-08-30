import 'package:elearning_app/data/app_assets.dart';

class ProductCardModel {
  String image;
  String title;

  String price;
  String off;

  String oldprice;

  ProductCardModel(
      {required this.image,
      required this.off,
      required this.price,
      required this.title,
      required this.oldprice});
}

// ignore: non_constant_identifier_names
List<ProductCardModel> Product_list = [
  ProductCardModel(
      image: AppAssets.shoes,
      off: "60%Off",
      price: "₹750",
      title: "Mammon Women's Handbag (Set of 3, Beige)",
      oldprice: "₹1599"),
  ProductCardModel(
      image: AppAssets.watch,
      off: "70%Off",
      price: "₹650",
      title: "Mammon Women's Handbag (Set of 3, Beige)",
      oldprice: "₹1250"),
  ProductCardModel(
      image: AppAssets.shoes,
      off: "60%Off",
      price: "₹750",
      title: "Mammon Women's Handbag (Set of 3, Beige)",
      oldprice: "₹1599"),
];
