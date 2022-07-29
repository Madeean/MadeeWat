import 'package:flutter/material.dart';
import 'package:madee_wat/shared/theme.dart';
import 'package:madee_wat/ui/widgets/custom_button.dart';

class GetStartedPage extends StatefulWidget {
  @override
  State<GetStartedPage> createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<GetStartedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kGreyColor,
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/image_get_started.png'),
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Fly Like A Bird',
                  style: whiteTextStyle.copyWith(
                    fontSize: 32,
                    fontWeight: semiBold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Explore new world with us and let \n yourself get an amazing experiences',
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: light,
                  ),
                  textAlign: TextAlign.center,
                ),
                CustomButtom(
                  title: "Get Started",
                  width: 220,
                  margintop: 50,
                  marginbot: 80,
                  onPress: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/sign-in', (route) => false);
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
