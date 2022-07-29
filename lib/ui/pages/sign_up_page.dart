import 'package:flutter/material.dart';
import 'package:madee_wat/shared/theme.dart';
import 'package:madee_wat/ui/widgets/custom_textfield.dart';

import '../widgets/custom_button.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  Container title() {
    return Container(
      padding: EdgeInsets.only(
        top: 30,
      ),
      child: Text(
        'Join us and get\nyour next journey',
        style: blackTextStyle.copyWith(
          fontSize: 24,
          fontWeight: semiBold,
        ),
      ),
    );
  }

  Container inputSection() {
    return Container(
      margin: EdgeInsets.only(
        top: 30,
      ),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(
          defaultRadius,
        ),
      ),
      child: Column(
        children: [
          CustomTextField(title: "Full Name", hintText: "your Full name"),
          CustomTextField(
              title: "Email Address", hintText: "your Email Address"),
          CustomTextField(
            title: "Password",
            hintText: "your Password",
            isObscure: true,
          ),
          CustomTextField(title: "Hobby", hintText: "your Hobby"),
          CustomButtom(
            margintop: 10,
            marginbot: 20,
            title: "Get Started",
            onPress: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/bonus', (route) => false);
            },
          ),
          login(),
        ],
      ),
    );
  }

  Widget login() {
    return Container(
      child: Row(
        children: [
          Text(
            'Have an Account? ',
            style: blackTextStyle.copyWith(fontSize: 16),
          ),
          SizedBox(
            width: 5,
          ),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, '/sign-in'),
            child: Text(
              'Login',
              style: redTextStyle.copyWith(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }

  Widget nameInput() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Full Name',
          ),
          SizedBox(
            height: 6,
          ),
          TextFormField(
            cursorColor: kBlackColor,
            decoration: InputDecoration(
              hintText: "Your full name",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  defaultRadius,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
                borderSide: BorderSide(color: kPrimaryColor),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget emailInput() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Email Address',
          ),
          SizedBox(
            height: 6,
          ),
          TextFormField(
            cursorColor: kBlackColor,
            decoration: InputDecoration(
              hintText: "Your Email",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  defaultRadius,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
                borderSide: BorderSide(color: kPrimaryColor),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget HobbyInput() {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hobby',
          ),
          SizedBox(
            height: 6,
          ),
          TextFormField(
            cursorColor: kBlackColor,
            decoration: InputDecoration(
              hintText: "Your Hobby",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  defaultRadius,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
                borderSide: BorderSide(color: kPrimaryColor),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget passwordInput() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Password',
          ),
          SizedBox(
            height: 6,
          ),
          TextFormField(
            obscureText: true,
            cursorColor: kBlackColor,
            decoration: InputDecoration(
              hintText: "Your Password",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  defaultRadius,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
                borderSide: BorderSide(color: kPrimaryColor),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget getStartedButton() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      width: double.infinity,
      height: 55,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: kPrimaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              defaultRadius,
            ),
          ),
        ),
        onPressed: () => Navigator.pushNamedAndRemoveUntil(
            context, '/bonus', (route) => false),
        child: Text(
          'Get Started',
          style: whiteTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium,
          ),
        ),
      ),
    );
  }

  Widget terms() {
    return GestureDetector(
      onTap: () => print("terms"),
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: 50, bottom: 73),
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
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          children: [
            title(),
            inputSection(),
            terms(),
          ],
        ),
      ),
    );
  }
}
