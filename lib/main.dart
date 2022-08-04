import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:madee_wat/cubit/auth_cubit.dart';
import 'package:madee_wat/cubit/destinations_cubit.dart';
import 'package:madee_wat/cubit/page_cubit.dart';
import 'package:madee_wat/cubit/seat_cubit.dart';
import 'package:madee_wat/ui/pages/bonus_page.dart';
import 'package:madee_wat/ui/pages/get_started_page.dart';
import 'package:madee_wat/ui/pages/main_page.dart';
import 'package:madee_wat/ui/pages/sign_in_page.dart';
import 'package:madee_wat/ui/pages/sign_up_page.dart';

import 'ui/pages/splash_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => PageCubit()),
        BlocProvider(create: (context) => AuthCubit()),
        BlocProvider(create: (context) => DestinationsCubit()),
        BlocProvider(create: (context) => SeatCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/get-started': (context) => GetStartedPage(),
          '/sign-in': (context) => SignInPage(),
          '/sign-up': (context) => SignUpPage(),
          '/bonus': (context) => BonusPage(),
          '/main': (context) => MainPage(),
        },
      ),
    );
  }
}
