import 'package:flutter/material.dart';
import 'package:madee_wat/shared/theme.dart';
import 'package:madee_wat/ui/pages/home_page.dart';
import 'package:madee_wat/ui/widgets/custom_bottom_navigation_item.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Widget customBottomNavigation() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.only(bottom: 30, left: 24, right: 24),
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          color: kWhiteColor.withOpacity(.8),
          borderRadius: BorderRadius.circular(defaultRadius + 1),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomBottomNavigationItem(
              imageUrl: 'assets/icon_home.png',
              isSelected: true,
            ),
            CustomBottomNavigationItem(
              imageUrl: 'assets/icon_booking.png',
              isSelected: false,
            ),
            CustomBottomNavigationItem(
              imageUrl: 'assets/icon_card.png',
              isSelected: false,
            ),
            CustomBottomNavigationItem(
              imageUrl: 'assets/icon_settings.png',
              isSelected: false,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildContent() {
    return HomePage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          buildContent(),
          customBottomNavigation(),
        ],
      ),
    );
  }
}
