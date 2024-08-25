import 'package:flutter/material.dart';
import 'package:instant_pay_mobile_payment_app/pages/main_page.dart';

class VerifyPage extends StatelessWidget {
  static const routeName = 'verify';
  VerifyPage({super.key});
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 500,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/bg-login.png',
                      ),
                      fit: BoxFit.fill)),
              child: Padding(
                padding: const EdgeInsets.only(right: 30, left: 40, top: 100),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'LOGIN WITH YOUR MOBILE PHONE NUMBER',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    Container(
                      height: 280,
                      width: 158,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/image-login.png'),
                              fit: BoxFit.cover)),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 28, left: 28, top: 38),
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xffEDEFFF),
                ),
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: _searchController,
                  decoration: const InputDecoration( 
                    hintText: 'Enter Mobile Number',
                    prefixIcon: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        '+62',
                        style: TextStyle(
                            color: Colors.black), // Sesuaikan warna teks
                      ),
                    ),
                    prefixIconConstraints:
                        BoxConstraints(minWidth: 0, minHeight: 0),
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacementNamed(context, MainPage.routeName);
              },
              child: Padding(
                padding: const EdgeInsets.only(
                    right: 28, left: 28, top: 19, bottom: 17),
                child: Container(
                  height: 43,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xff4D5DFA),
                  ),
                  child: const Center(
                    child: Text(
                      'Verify',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            const Text('Your personal details are safe with us'),
            const Text('Read our Privacy Policy and Terms and Conditions'),
          ],
        ),
      ),
    );
  }
}
