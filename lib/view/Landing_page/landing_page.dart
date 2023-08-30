import 'package:elearning_app/data/app_icons.dart';

import 'package:elearning_app/view/Home_page/home_page.dart';

import 'package:elearning_app/view/Shope_Page/Shop_Page.dart';
import 'package:elearning_app/view/Trending_Products/Trending_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../data/app_colors.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int selectIndex = 0;
  bool _isTap = false;
  // ignore: non_constant_identifier_names
  bool is_selected = false;
  List<Widget> pages = [
    const Home_page(),
    const Trending_Page(),
    Container(),
    const ShopPage(),
    Container()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: _isTap ? Colors.white : Colors.red,
        hoverColor: Colors.white,
        child: SvgPicture.asset(AppIcons.shopping,
            color: _isTap ? Colors.black : Colors.white),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ShopPage()));
          setState(() {
            _isTap = !_isTap;
          });
        },
      ),
      extendBody: true,
      body: pages[selectIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: true,
          elevation: 0,
          backgroundColor: AppColors.kWhite,
          selectedItemColor: AppColors.kRed,
          unselectedItemColor: AppColors.kBlack,
          onTap: (int val) {
            selectIndex = val;
            setState(() {});
          },
          currentIndex: selectIndex,
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset(AppIcons.home),
                activeIcon: SvgPicture.asset(
                  AppIcons.home,
                  color: AppColors.kRed,
                ),
                label: 'home'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(AppIcons.heart),
                activeIcon: SvgPicture.asset(
                  AppIcons.heart,
                  color: AppColors.kRed,
                ),
                label: 'Wishlist'),
            BottomNavigationBarItem(
                icon: SizedBox(
                  width: 0,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(AppIcons.search1),
                activeIcon: SvgPicture.asset(
                  AppIcons.search1,
                  color: AppColors.kRed,
                ),
                label: 'Search'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(AppIcons.settings),
                activeIcon: SvgPicture.asset(
                  AppIcons.settings,
                  color: AppColors.kRed,
                ),
                label: 'Settings'),
          ]),
    );
  }
}
