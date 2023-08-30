import 'package:elearning_app/data/app_assets.dart';

class OfferCardModel {
  String image;
  String title;
  String subtitle;
  String price;
  String off;
  String review;
  String oldprice;

  OfferCardModel(
      {required this.image,
      required this.off,
      required this.price,
      required this.review,
      required this.subtitle,
      required this.title,
      required this.oldprice});
}

List<OfferCardModel> offer = [
  OfferCardModel(
      image: AppAssets.women2,
      off: "40%Off",
      price: "₹1500",
      review: "56890",
      subtitle: "Matte Gunmetal Black Full\nRim Rectangle Sunglasses.",
      title: "Women Printed Kurta",
      oldprice: "₹2400"),
  OfferCardModel(
      image: AppAssets.shoe,
      off: "50%Off",
      price: "₹24900",
      review: "344567",
      subtitle: "Matte Gunmetal Black Full \nRim Rectangle Sunglasses.",
      title: "HRX by Hrithik Roshan",
      oldprice: "₹499")
];
