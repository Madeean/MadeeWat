import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:madee_wat/cubit/page_cubit.dart';
import 'package:madee_wat/shared/theme.dart';
import 'package:madee_wat/ui/pages/home_page.dart';
import 'package:madee_wat/ui/pages/setting_page.dart';
import 'package:madee_wat/ui/pages/transactions_page.dart';
import 'package:madee_wat/ui/pages/wallet_page.dart';
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
        margin: EdgeInsets.only(bottom: 20, left: 24, right: 24),
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
              index: 0,
            ),
            CustomBottomNavigationItem(
              imageUrl: 'assets/icon_booking.png',
              index: 1,
            ),
            CustomBottomNavigationItem(
              imageUrl: 'assets/icon_card.png',
              index: 2,
            ),
            CustomBottomNavigationItem(
              imageUrl: 'assets/icon_settings.png',
              index: 3,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildContent(int currentIndex) {
    switch (currentIndex) {
      case 0:
        return HomePage();
      case 1:
        return TransactionPage();
      case 2:
        return WalletPage();
      case 3:
        return SettingPage();
      default:
        return HomePage();
    }
    // return HomePage();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          backgroundColor: kBackgroundColor,
          body: Stack(
            children: [
              buildContent(currentIndex),
              customBottomNavigation(),
            ],
          ),
        );
      },
    );
  }
}
