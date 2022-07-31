import 'package:flutter/material.dart';
import 'package:madee_wat/shared/theme.dart';
import 'package:madee_wat/ui/pages/checkout_page.dart';
import 'package:madee_wat/ui/widgets/custom_button.dart';
import 'package:madee_wat/ui/widgets/seat.dart';

class ChooseSetPage extends StatefulWidget {
  const ChooseSetPage({Key? key}) : super(key: key);

  @override
  State<ChooseSetPage> createState() => _ChooseSetPageState();
}

class _ChooseSetPageState extends State<ChooseSetPage> {
  title() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Text(
        'Select Your\nFavourite Seat',
        style: blackTextStyle.copyWith(
          fontSize: 24,
          fontWeight: semiBold,
        ),
      ),
    );
  }

  seatStatus() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Row(
        children: [
          // !available
          Container(
            width: 16,
            height: 16,
            margin: EdgeInsets.only(right: 6),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/icon_available.png'),
              ),
            ),
          ),
          Text(
            'Available',
            style: blackTextStyle,
          ),
          // !selected
          Container(
            width: 16,
            height: 16,
            margin: EdgeInsets.only(right: 6, left: 10),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/icon_selected.png'),
              ),
            ),
          ),
          Text(
            'Selected',
            style: blackTextStyle,
          ),
          // ! unavailable
          Container(
            width: 16,
            height: 16,
            margin: EdgeInsets.only(right: 6, left: 10),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/icon_unavailable.png'),
              ),
            ),
          ),
          Text(
            'UnAvailable',
            style: blackTextStyle,
          ),
        ],
      ),
    );
  }

  selectSeat() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 22, vertical: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: kWhiteColor,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // !seat indicator
            children: [
              Container(
                width: 48,
                height: 48,
                child: Center(
                  child: Text(
                    'A',
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Container(
                width: 48,
                height: 48,
                child: Center(
                  child: Text(
                    'B',
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Container(
                width: 48,
                height: 48,
                child: Center(
                  child: Text(
                    '',
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Container(
                width: 48,
                height: 48,
                child: Center(
                  child: Text(
                    'C',
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Container(
                width: 48,
                height: 48,
                child: Center(
                  child: Text(
                    'D',
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),

          // !Seat 1
          Container(
            margin: EdgeInsets.only(top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Seat(status: 2),
                Seat(status: 2),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      '1',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                Seat(status: 0),
                Seat(status: 2),
              ],
            ),
          ),
          // !seat 2
          Container(
            margin: EdgeInsets.only(top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Seat(status: 0),
                Seat(status: 0),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      '2',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                Seat(status: 0),
                Seat(status: 2),
              ],
            ),
          ),
          // !seat3
          Container(
            margin: EdgeInsets.only(top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Seat(status: 1),
                Seat(status: 1),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      '3',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                Seat(status: 0),
                Seat(status: 0),
              ],
            ),
          ),
          // !seat4
          Container(
            margin: EdgeInsets.only(top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Seat(status: 0),
                Seat(status: 2),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      '4',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                Seat(status: 0),
                Seat(status: 0),
              ],
            ),
          ),
          // !seat4
          Container(
            margin: EdgeInsets.only(top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Seat(status: 0),
                Seat(status: 0),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      '5',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                Seat(status: 2),
                Seat(status: 0),
              ],
            ),
          ),

          // ! your seat
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Your Seat',
                  style: greyTextStyle.copyWith(
                    fontWeight: light,
                  ),
                ),
                Text(
                  'A3 B3',
                  style:
                      blackTextStyle.copyWith(fontWeight: medium, fontSize: 16),
                ),
              ],
            ),
          ),

          // !total
          Container(
            margin: EdgeInsets.only(top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
                  style: greyTextStyle.copyWith(
                    fontWeight: light,
                  ),
                ),
                Text(
                  'IDR 5.400.000',
                  style: purpleTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  checkoutButton() {
    return CustomButtom(
      title: "Continue to checkout",
      onPress: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => CheckoutPage()));
      },
      margintop: 30,
      marginbot: 46,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        children: [
          title(),
          seatStatus(),
          selectSeat(),
          checkoutButton(),
        ],
      ),
    );
  }
}
