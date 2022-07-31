import 'package:flutter/material.dart';
import 'package:madee_wat/shared/theme.dart';
import 'package:madee_wat/ui/pages/success_checkout.dart';
import 'package:madee_wat/ui/widgets/booking_detail_item.dart';
import 'package:madee_wat/ui/widgets/custom_button.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  route() {
    return Container(
      margin: EdgeInsets.only(top: 50),
      child: Column(
        children: [
          Container(
            width: 290,
            height: 65,
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/image_checkout.png'),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'CGK',
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(
                    'Tangerang',
                    style: greyTextStyle.copyWith(fontWeight: light),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'TLC',
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(
                    'Ciliwung',
                    style: greyTextStyle.copyWith(fontWeight: light),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  bookingDetail() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // !destination
          Row(
            children: [
              Container(
                width: 70,
                height: 70,
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/image_destination1.png'),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Lake Ciliwung',
                      style: blackTextStyle.copyWith(
                          fontSize: 18, fontWeight: medium),
                    ),
                    SizedBox(width: 5),
                    Text(
                      'Tangerang',
                      style: greyTextStyle.copyWith(fontWeight: light),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 3, right: 5),
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icon_star.png'),
                      ),
                    ),
                  ),
                  Text(
                    '4.8',
                    style: blackTextStyle.copyWith(fontWeight: semiBold),
                  ),
                ],
              ),
            ],
          ),

          // !NOTE: BOOKING DETAIL TEXT
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Text(
              'Booking Details',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
          ),
          // !booking detail items
          BookingDetailsItem(
            title: "Traveler",
            valueText: "2 Person",
            valueColor: kBlackColor,
          ),
          BookingDetailsItem(
            title: "Seat",
            valueText: "A3, B3",
            valueColor: kBlackColor,
          ),
          BookingDetailsItem(
            title: "Insurence",
            valueText: "YES",
            valueColor: kGreenColor,
          ),
          BookingDetailsItem(
            title: "Refundable",
            valueText: "NO",
            valueColor: kRedColor,
          ),
          BookingDetailsItem(
            title: "VAT",
            valueText: "45%",
            valueColor: kBlackColor,
          ),
          BookingDetailsItem(
            title: "Price",
            valueText: "IDR 8.500.690",
            valueColor: kBlackColor,
          ),
          BookingDetailsItem(
            title: "Grand Total",
            valueText: "IDR 12.000.000",
            valueColor: kPrimaryColor,
          ),
        ],
      ),
    );
  }

  paymentDetail() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Payment Details',
            style: blackTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 16,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16),
            child: Row(
              children: [
                Container(
                  width: 100,
                  height: 70,
                  margin: EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/image_card.png'),
                    ),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 24,
                          height: 24,
                          margin: EdgeInsets.only(right: 6),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/icon_plane.png'),
                            ),
                          ),
                        ),
                        Text(
                          'Pay',
                          style: whiteTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: medium,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'IDR 80.400.000',
                        style: blackTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: medium,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Current Balance',
                        style: greyTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: light,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  paybutton() {
    return CustomButtom(
      title: "pay now",
      onPress: () {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => SuccessCheckoutPage()),
            (route) => false);
      },
      margintop: 30,
    );
  }

  terms() {
    return GestureDetector(
      onTap: () => print("terms"),
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: 30, bottom: 33),
        child: Text(
          'Terms and Conditions',
          style: greyTextStyle.copyWith(
            fontSize: 16,
            fontWeight: light,
            decoration: TextDecoration.underline,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        children: [
          route(),
          bookingDetail(),
          paymentDetail(),
          paybutton(),
          terms(),
        ],
      ),
    );
  }
}