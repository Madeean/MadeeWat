import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:madee_wat/cubit/auth_cubit.dart';
import 'package:madee_wat/ui/widgets/custom_textfield.dart';

import '../../shared/theme.dart';
import '../widgets/custom_button.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController paswordController = TextEditingController(text: '');

  Container title() {
    return Container(
      padding: EdgeInsets.only(
        top: 30,
      ),
      child: Text(
        'Sign in with\nyour existing account',
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
            title: "Email Address",
            hintText: "Your Email Address",
            controller: emailController,
          ),
          CustomTextField(
            title: "Password",
            hintText: "Your Password",
            isObscure: true,
            controller: paswordController,
          ),
          getStarted(),
          register()
        ],
      ),
    );
  }

  Widget register() {
    return Container(
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                Text(
                  'Dont Have an Account? ',
                  style: blackTextStyle.copyWith(
                    fontSize: 10,
                    fontWeight: medium,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, '/sign-up'),
                  child: Text(
                    'Register',
                    style:
                        redTextStyle.copyWith(fontSize: 10, fontWeight: medium),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget getStarted() {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        // TODO: implement listener
        if (state is AuthSuccess) {
          Navigator.pushNamedAndRemoveUntil(context, '/main', (route) => false);
        } else if (state is AuthFailed) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: kRedColor,
              content: Text(state.error),
            ),
          );
        }
      },
      builder: (context, state) {
        if (state is AuthLoading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        return CustomButtom(
          marginbot: 20,
          title: "Get Started",
          onPress: () {
            context.read<AuthCubit>().signIn(
                  email: emailController.text,
                  password: paswordController.text,
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
