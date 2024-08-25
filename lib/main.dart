import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instant_pay_mobile_payment_app/pages/main_page.dart';
import 'package:instant_pay_mobile_payment_app/pages/profile_page.dart';
import 'package:instant_pay_mobile_payment_app/pages/recieve_page.dart';
import 'package:instant_pay_mobile_payment_app/pages/splash_screen.dart';
import 'package:instant_pay_mobile_payment_app/pages/verify_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instant Pay Mobile Payment App',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
          textTheme:
              GoogleFonts.leagueSpartanTextTheme(Theme.of(context).textTheme)),
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => const SplashScreen(),
        VerifyPage.routeName: (context) =>  VerifyPage(),
        MainPage.routeName: (context) => const MainPage(),
        ProfilePage.routeName: (context) => const ProfilePage(),
        RecievePage.routeName: (context) => const RecievePage(),
      },
    );
  }
}
