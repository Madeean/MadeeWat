import 'package:flutter/material.dart';
import 'package:madee_wat/shared/theme.dart';
import 'package:madee_wat/ui/widgets/custom_button.dart';

class BonusPage extends StatefulWidget {
  const BonusPage({Key? key}) : super(key: key);

  @override
  State<BonusPage> createState() => _BonusPageState();
}

class _BonusPageState extends State<BonusPage> {
  Widget bonusCard() {
    return Container(
      padding: EdgeInsets.all(defaultMargin),
      height: 211,
      width: 300,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: kPrimaryColor.withOpacity(0.5),
            blurRadius: 50,
            offset: Offset(0, 10),
          )
        ],
        image: DecorationImage(
          image: AssetImage('assets/image_card.png'),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name',
                      style: whiteTextStyle.copyWith(
                        fontWeight: light,
                      ),
                    ),
                    Text(
                      'Madee',
                      style: whiteTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: medium,
                      ),
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                ),
              ),
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
              ),
            ],
          ),
          SizedBox(
            height: 41,
          ),
          Text(
            'Balance',
            style: whiteTextStyle.copyWith(
              fontWeight: light,
            ),
          ),
          Text(
            'IDR 1.000.000',
            style: whiteTextStyle.copyWith(fontWeight: medium, fontSize: 28),
          ),
        ],
      ),
    );
  }

  Widget title() {
    return Container(
      margin: EdgeInsets.only(top: 80),
      child: Text(
        'Big Bonus',
        style: blackTextStyle.copyWith(
          fontSize: 32,
          fontWeight: semiBold,
        ),
      ),
    );
  }

  Widget subtitle() {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Text(
        'We give you early credit so that\nyou can buy a flight ticket',
        style: greyTextStyle.copyWith(
          fontSize: 16,
          fontWeight: light,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            bonusCard(),
            title(),
            subtitle(),
            CustomButtom(
              title: "Start Flight Now",
              width: 220,
              margintop: 50,
              onPress: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/main', (route) => false);
              },
            )
          ],
        ),
      ),
    );
  }
}
