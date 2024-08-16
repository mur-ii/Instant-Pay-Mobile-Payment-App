import 'package:flutter/material.dart';
import 'package:instant_pay_mobile_payment_app/components/button_card_profile.dart';
import 'package:instant_pay_mobile_payment_app/components/count_card_profile.dart';
import 'package:instant_pay_mobile_payment_app/components/menu_profile.dart';

class ProfilePage extends StatelessWidget {
  static const routeName = '/profile';
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffF9F9F9),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Container(
                  height: 190,
                  width: screenWidth,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xff4D5DFA)
                              .withOpacity(0.5), // Warna bayangan
                          blurRadius: 6, // Jarak blur bayangan
                          offset: Offset(0,
                              2), // Posisi bayangan: x=0, y=3 (bayangan di bawah)
                        ),
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 18, vertical: 15),
                    child: Column(
                      children: [
                        ListTile(
                          leading: SizedBox(
                            height: 60,
                            width: 60,
                            child: CircleAvatar(
                              child: Image.asset(
                                'assets/profile.png',
                              ),
                            ),
                          ),
                          title: Text('Elsa'),
                          subtitle: Text('Level 4 Ace Member'),
                          trailing: GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Icon(Icons.close_rounded)),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CountCardProfile(
                                title: '1208', subTitle: 'Transactions'),
                            CountCardProfile(title: '726', subTitle: 'Points'),
                            CountCardProfile(title: '8', subTitle: 'Rank'),
                            ButtonCardProfile(
                                title: 'Explore',
                                icon: Icons.arrow_forward_ios_rounded,
                                onPressed: () {},
                                sizeIcon: 16)
                          ],
                        ),
                        SizedBox(
                          height: 13,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ButtonCardProfile(
                              title: 'Edit Profile',
                              icon: Icons.person_search_rounded,
                              onPressed: () {},
                              sizeIcon: 17,
                            ),
                            ButtonCardProfile(
                              title: 'Settings',
                              icon: Icons.settings_rounded,
                              onPressed: () {},
                              sizeIcon: 16,
                            ),
                            ButtonCardProfile(
                              title: 'Share',
                              icon: Icons.share,
                              onPressed: () {},
                              sizeIcon: 17,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  height: 264,
                  width: screenWidth,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MenuProfile(
                        image: 'assets/receiptminus-icon.png',
                        title: 'All Transactions',
                        onPressed: () {},
                      ),
                      MenuProfile(
                        image: 'assets/caution-icon.png',
                        title: 'Pending Transactions',
                        onPressed: () {},
                      ),
                      MenuProfile(
                        image: 'assets/clock-icon.png',
                        title: 'Refund status',
                        onPressed: () {},
                      ),
                      MenuProfile(
                        image: 'assets/caution2-icon.png',
                        title: 'Raise an issue',
                        onPressed: () {},
                      ),
                      MenuProfile(
                        image: 'assets/heart2-icon.png',
                        title: 'Help and Support',
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  height: 161,
                  width: screenWidth,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MenuProfile(
                        image: 'assets/caution-icon.png',
                        title: 'About Us',
                        onPressed: () {},
                      ),
                      MenuProfile(
                        image: 'assets/clock-icon.png',
                        title: 'Terms and Conditions',
                        onPressed: () {},
                      ),
                      MenuProfile(
                        image: 'assets/caution2-icon.png',
                        title: 'Feedback',
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
