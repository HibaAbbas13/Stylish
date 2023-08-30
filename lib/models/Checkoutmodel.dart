import '../data/app_assets.dart';

class CheckoutModel {
  String display;
  String title;
  String price;
  String originalPrice;
  String sale;
  String rating;
  String firstColor;
  String secondColor;
  CheckoutModel(
      {required this.title,
      required this.display,
      required this.price,
      required this.originalPrice,
      required this.sale,
      required this.rating,
      required this.firstColor,
      required this.secondColor});
}

List<CheckoutModel> checkoutItem = [
  CheckoutModel(
      title: 'Women’s Casual Wear',
      display: AppAssets.CasualWear,
      price: '\$34.00',
      originalPrice: '\$65.00',
      sale: 'upto 33% off',
      rating: '4.8',
      firstColor: 'Black',
      secondColor: 'Red'),
  CheckoutModel(
      title: 'Men’s Jacket',
      display: AppAssets.MenJacket,
      price: '\$45.00',
      originalPrice: '\$67.00',
      sale: 'upto 28% off',
      rating: '4.7',
      firstColor: 'Green',
      secondColor: 'Grey'),
];
