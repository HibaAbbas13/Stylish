import 'package:elearning_app/data/app_assets.dart';
import 'package:elearning_app/data/app_colors.dart';
import 'package:elearning_app/data/app_icons.dart';
import 'package:elearning_app/data/app_typography.dart';

import 'package:elearning_app/models/HomeData.dart';
import 'package:elearning_app/view/Home_page/Components/Coursel_view.dart';
import 'package:elearning_app/view/Home_page/Components/Deal_card.dart';
import 'package:elearning_app/view/Home_page/Components/Foot_Wears.dart';
import 'package:elearning_app/view/Home_page/Components/Sale_card.dart';
import 'package:elearning_app/view/Home_page/Components/Search_field.dart';
import 'package:elearning_app/view/Profile_Page/Profile.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../components/Filter_row.dart';

import 'Components/Product_card.dart';
import 'Components/Sponsored_card.dart';
import 'Components/Summer_sale.dart';

// ignore: camel_case_types
class Home_page extends StatefulWidget {
  const Home_page({
    super.key,
  });

  @override
  State<Home_page> createState() => _Home_pageState();
}

final _searchController = TextEditingController();

class _Home_pageState extends State<Home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBody,
      appBar: AppBar(
        backgroundColor: AppColors.kBody,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: CircleAvatar(
              radius: 100.r,
              backgroundColor: AppColors.kGreyback,
              child: SvgPicture.asset(AppIcons.menu)),
        ),
        centerTitle: true,
        title: Image.asset(AppAssets.stylish),
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Profile()));
            },
            child: Container(
              width: 40.w,
              height: 40.h,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage(AppAssets.avatar))),
            ),
          ),
          SizedBox(
            width: 12.w,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              SearchField(controller: _searchController),
              SizedBox(
                height: 16.h,
              ),
              FilterRow(text: 'All Featured'),
              SizedBox(
                height: 17.h,
              ),
              Container(
                height: 87.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: AppColors.kWhite,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: data_list.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Image.asset(data_list[index].img),
                          SizedBox(
                            height: 4.h,
                          ),
                          Text(
                            data_list[index].title,
                            style: AppTypogrphy.kExtraLight10,
                          ),
                        ],
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        width: 16.w,
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              CourselView(controller: _searchController),
              SizedBox(
                height: 16.h,
              ),
              DealCard(
                controller: _searchController,
                text: 'Deal of the Day',
                svg: AppIcons.clock,
                subtitle: '22h 55m 20s remaining',
                color: AppColors.kBlue,
              ),
              SizedBox(
                height: 16.h,
              ),
              SalesCard(controller: _searchController),
              SizedBox(
                height: 16.h,
              ),
              Container(
                width: 343.w,
                height: 84.h,
                decoration: BoxDecoration(
                    color: AppColors.kWhite,
                    borderRadius: BorderRadius.circular(6.r)),
                child: Row(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 8, top: 12, bottom: 12),
                      child: Image.asset(AppAssets.special_offer),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 24, top: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Special Offers 😱",
                            style: AppTypogrphy.kLight16
                                .copyWith(color: AppColors.kBlack),
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(
                            "We make sure you get the \noffer you need at best prices",
                            style: AppTypogrphy.kXLight12
                                .copyWith(color: AppColors.kBlack),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              FootWears(controller: _searchController),
              SizedBox(
                height: 16.h,
              ),
              DealCard(
                controller: _searchController,
                text: 'Trending Products',
                svg: AppIcons.calender,
                subtitle: 'Last Date 29/01/2002',
                color: AppColors.kRed,
              ),
              SizedBox(
                height: 16.h,
              ),
              ProductCard(controller: _searchController),
              SizedBox(
                height: 12.h,
              ),
              SummerSale(controller: _searchController),
              SizedBox(
                height: 16.h,
              ),
              SponsorCard(controller: _searchController),
              SizedBox(
                height: 50.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
