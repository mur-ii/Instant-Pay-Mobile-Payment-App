import 'package:flutter/material.dart';
import 'package:instant_pay_mobile_payment_app/pages/home_page.dart';
import 'package:instant_pay_mobile_payment_app/pages/profile_page.dart';

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
      ),
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (context) => HomePage(),
        ProfilePage.routeName: (context) => const ProfilePage(),
      },
    );
  }
}
