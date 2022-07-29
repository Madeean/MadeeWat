import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class CustomButtom extends StatelessWidget {
  final String title;
  final double width;
  final Function() onPress;
  final double marginleft;
  final double margintop;
  final double marginright;
  final double marginbot;

  const CustomButtom({
    Key? key,
    required this.title,
    this.width = double.infinity,
    required this.onPress,
    this.marginbot = 0.0,
    this.marginleft = 0.0,
    this.marginright = 0.0,
    this.margintop = 0.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: margintop,
        bottom: marginbot,
        left: marginleft,
        right: marginright,
      ),
      width: width,
      height: 55,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: kPrimaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              17,
            ),
          ),
        ),
        onPressed: onPress,
        child: Text(
          '$title',
          style: whiteTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium,
          ),
        ),
      ),
    );
  }
}
