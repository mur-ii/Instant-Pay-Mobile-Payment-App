import 'dart:async';

import 'package:flutter/material.dart';
import 'package:instant_pay_mobile_payment_app/pages/verify_page.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = 'splashscreen';
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3),
        () => Navigator.pushReplacementNamed(context, VerifyPage.routeName));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset(
            'assets/logo.png',
            width: 82,
            height: 81.62,
          ),
          const SizedBox(
            height: 218,
          ),
          Container(
            height: 46,
            width: 184,
            decoration: const BoxDecoration(
              color: Color(0xff4D5DFA),
            ),
            child: const Center(
              child: Text(
                'INSTANT PAY',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
          const SizedBox(
            height: 103,
          ),
        ],
      ),
    ));
  }
}
