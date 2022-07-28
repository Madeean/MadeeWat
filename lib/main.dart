import 'package:flutter/material.dart';
import 'package:madee_wat/ui/pages/bonus_page.dart';
import 'package:madee_wat/ui/pages/get_started_page.dart';
import 'package:madee_wat/ui/pages/sign_in_page.dart';
import 'package:madee_wat/ui/pages/sign_up_page.dart';

import 'ui/pages/splash_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/get-started': (context) => GetStartedPage(),
        '/sign-in': (context) => SignInPage(),
        '/sign-up': (context) => SignUpPage(),
        '/bonus': (context) => BonusPage(),
      },
    );
  }
}
