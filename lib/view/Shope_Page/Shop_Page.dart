import 'package:elearning_app/data/app_colors.dart';
import 'package:elearning_app/data/app_icons.dart';
import 'package:elearning_app/data/app_typography.dart';
import 'package:elearning_app/models/ColorButtonModel.dart';
import 'package:elearning_app/models/TrendingData.dart';

import 'package:elearning_app/view/Shope_Page/components/WrapCard.dart';
import 'package:elearning_app/view/Shope_Page/components/White-button.dart';
import 'package:elearning_app/view/components/Filter_row.dart';

import 'package:elearning_app/view/components/Rating_row.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../models/ShopData.dart';

import '../Trending_Products/Components/Trending_products.dart';
import 'components/Card_view.dart';
import 'components/Color_button.dart';

// ignore: camel_case_types
class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  final _searchController = TextEditingController();

  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBody,
      appBar: AppBar(
        backgroundColor: AppColors.kBody,
        elevation: 0,
        automaticallyImplyLeading: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: AppColors.kBlack,
            )),
        actions: [
          CircleAvatar(
            backgroundColor: AppColors.kGreyback,
            child: SvgPicture.asset(
              AppIcons.shopping,
              color: AppColors.kGreySvg,
            ),
          ),
          SizedBox(
            width: 6.w,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            CardView(controller: TextEditingController()),
            Text(
              'Size: 7UK',
              style: AppTypogrphy.kSemiBold14.copyWith(color: AppColors.kBlack),
            ),
            SizedBox(
              height: 12.h,
            ),
            SizedBox(
                width: double.infinity,
                height: 40.h,
                child: ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  separatorBuilder: (context, index) => SizedBox(width: 8.w),
                  scrollDirection: Axis.horizontal,
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    final isSelected = index == _selectedIndex;
                    return InkWell(
                      onTap: () {
                        setState(() {
                          _selectedIndex = index;
                        });
                      },
                      child: Container(
                        height: 32.h,
                        padding: EdgeInsets.all(8.h),
                        decoration: BoxDecoration(
                          color: isSelected ? AppColors.kRed : AppColors.kWhite,
                          borderRadius: BorderRadius.circular(4.r),
                          border: Border.all(
                            color: AppColors.kRed,
                            width: 2.w,
                          ),
                        ),
                        child: Text(
                          data[index].title,
                          style: AppTypogrphy.kSemiBold14.copyWith(
                            color:
                                isSelected ? AppColors.kWhite : AppColors.kRed,
                          ),
                        ),
                      ),
                    );
                  },
                )),
            SizedBox(
              height: 16.h,
            ),
            Text(
              "Nike Sneakers",
              style: AppTypogrphy.kBold20.copyWith(color: AppColors.kBlack),
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              "Vision Alta Men’s Shoes Size (All Colours)",
              style: AppTypogrphy.kLight12.copyWith(color: AppColors.kBlack),
            ),
            SizedBox(
              height: 8.h,
            ),
            RatingRow(controller: _searchController),
            SizedBox(
              height: 6.h,
            ),
            RichText(
              text: TextSpan(
                style: const TextStyle(),
                children: <TextSpan>[
                  TextSpan(
                    text: '₹1900 ',
                    style: AppTypogrphy.kExtraLight14.copyWith(
                        color: AppColors.kGrey1,
                        decoration: TextDecoration.lineThrough),
                  ),
                  TextSpan(
                    text: ' ₹1900 ',
                    style:
                        AppTypogrphy.kLight14.copyWith(color: AppColors.kBlack),
                  ),
                  TextSpan(
                    text: ' 50% Off',
                    style:
                        AppTypogrphy.kLight14.copyWith(color: AppColors.kRed),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              "Product Details",
              style: AppTypogrphy.kLight14.copyWith(color: AppColors.kBlack),
            ),
            SizedBox(
              height: 4.h,
            ),
            Text(
              "Perhaps the most iconic sneaker of all-time, this original Chicago? colorway is the cornerstone to any sneaker collection. Made famous in 1985 by Michael Jordan, the shoe has stood the test of time, becoming the most famous colorway of the Air Jordan 1. This 2015 release saw the ...More",
              style:
                  AppTypogrphy.kExtraLight12.copyWith(color: AppColors.kBlack),
            ),
            SizedBox(
              height: 8.h,
            ),
            Row(
              children: [
                WrapCard(text: "Nearest Store", icon: AppIcons.near),
                SizedBox(
                  width: 10.w,
                ),
                WrapCard(text: "VIP", icon: AppIcons.lock2),
                SizedBox(
                  width: 10.w,
                ),
                WrapCard(text: "Return policy", icon: AppIcons.retun),
              ],
            ),
            SizedBox(
              height: 14.h,
            ),
            SizedBox(
              height: 40.h,
              child: ListView.separated(
                itemCount: colorbutton.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return ColorButton(
                    colorbutton: colorbutton[index],
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: 13.w,
                  );
                },
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 26.h, vertical: 11.h),
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(255, 204, 213, 1),
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: RichText(
                text: TextSpan(
                  style: const TextStyle(),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Delivery in\n',
                      style: AppTypogrphy.kSemiBold14
                          .copyWith(color: AppColors.kBlack),
                    ),
                    TextSpan(
                      text: '1 within Hour',
                      style: AppTypogrphy.kSemiBold20
                          .copyWith(color: AppColors.kBlack),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Row(
              children: [
                WhiteButton(
                  icon: AppIcons.cart,
                  text: 'View Similar',
                ),
                SizedBox(
                  width: 3.w,
                ),
                WhiteButton(
                  icon: AppIcons.buy,
                  text: 'Add to Compare',
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "Similar To",
              style: AppTypogrphy.kBold20,
            ),
            const FilterRow(text: '282+ Items'),
            SizedBox(
              height: 18.h,
            ),
            SizedBox(
              height: 250.h,
              child: ListView.separated(
                itemCount: 2,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return TrendingProucts(
                    item: customItem[index],
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: 12.w,
                  );
                },
              ),
            ),
            SizedBox(
              height: 50.h,
            )
          ]),
        ),
      ),
    );
  }
}
