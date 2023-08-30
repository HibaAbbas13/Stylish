import 'package:elearning_app/view/Trending_Products/Components/Trending_products.dart';
import 'package:elearning_app/view/components/Filter_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:flutter_svg/svg.dart';

import '../../data/app_assets.dart';
import '../../data/app_colors.dart';
import '../../data/app_icons.dart';

import '../../models/TrendingData.dart';
import '../Home_page/Components/Search_field.dart';

// ignore: camel_case_types
class Trending_Page extends StatefulWidget {
  const Trending_Page({
    super.key,
  });

  @override
  State<Trending_Page> createState() => _Trending_PageState();
}

final _searchController = TextEditingController();

// ignore: camel_case_types
class _Trending_PageState extends State<Trending_Page> {
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
            Container(
              width: 40.w,
              height: 40.h,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage(AppAssets.avatar))),
            ),
            SizedBox(
              width: 12.w,
            )
          ],
        ),
        body: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(children: [
                  SearchField(controller: _searchController),
                  SizedBox(
                    height: 16.h,
                  ),
                  FilterRow(
                    text: "52,082+ Items",
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  StaggeredGridView.countBuilder(
                    crossAxisCount: 2,
                    itemCount: product_data.length,
                    mainAxisSpacing: 16.0,
                    crossAxisSpacing: 16.0,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return TrendingProucts(
                        item: product_data[index],
                      );
                    },
                    staggeredTileBuilder: (index) => const StaggeredTile.fit(1),
                  )
                ]))));
  }
}
