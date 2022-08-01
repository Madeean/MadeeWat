import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:madee_wat/cubit/auth_cubit.dart';
import 'package:madee_wat/shared/theme.dart';
import 'package:madee_wat/ui/widgets/custom_textfield.dart';

import '../widgets/custom_button.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController nameController = TextEditingController(text: '');
  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController paswordController = TextEditingController(text: '');
  TextEditingController hobbyController = TextEditingController(text: '');

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
          CustomTextField(
            title: "Full Name",
            hintText: "your Full name",
            controller: nameController,
          ),
          CustomTextField(
            title: "Email Address",
            hintText: "your Email Address",
            controller: emailController,
          ),
          CustomTextField(
            title: "Password",
            hintText: "your Password",
            isObscure: true,
            controller: paswordController,
          ),
          CustomTextField(
            title: "Hobby",
            hintText: "your Hobby",
            controller: hobbyController,
          ),
          getStartedButton(),
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
            style: blackTextStyle.copyWith(fontSize: 10),
          ),
          SizedBox(
            width: 5,
          ),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, '/sign-in'),
            child: Text(
              'Login',
              style: redTextStyle.copyWith(fontSize: 10),
            ),
          ),
        ],
      ),
    );
  }

  Widget getStartedButton() {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthSuccess) {
          Navigator.pushNamedAndRemoveUntil(
              context, '/bonus', (route) => false);
        } else if (state is AuthFailed) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: kRedColor,
              content: Text(state.error),
            ),
          );
        }

        // TODO: implement listener
      },
      builder: (context, state) {
        if (state is AuthLoading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        return CustomButtom(
          margintop: 10,
          marginbot: 20,
          title: "Get Started",
          onPress: () {
            context.read<AuthCubit>().signUp(
                  email: emailController.text,
                  password: paswordController.text,
                  name: nameController.text,
                  hobby: hobbyController.text,
                );
          },
        );
      },
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
