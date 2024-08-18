import 'package:flutter/material.dart';
import 'package:instant_pay_mobile_payment_app/common/text_style_app.dart';
import 'package:instant_pay_mobile_payment_app/pages/profile_page.dart';
import 'package:instant_pay_mobile_payment_app/pages/recieve_page.dart';
import 'package:instant_pay_mobile_payment_app/widgets/tab_bar_balance.dart';
import 'package:instant_pay_mobile_payment_app/widgets/tab_bar_home.dart';
import 'package:instant_pay_mobile_payment_app/widgets/tab_bar_offers.dart';
import 'package:instant_pay_mobile_payment_app/widgets/tab_bar_rewards.dart';

class MainPage extends StatefulWidget {
  static const routeName = '/home';
  MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final double avatarRadius = 20.0;

    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, ProfilePage.routeName);
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 22),
              child: CircleAvatar(
                child: Image.asset('assets/profile.png'),
              ),
            ),
          ),
          title: Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xffF5F5F5),
            ),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search Users,ID’s etc',
                prefixIcon: const Icon(Icons.search),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: () => _searchController.clear(),
                ),
                border: InputBorder.none,
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 22),
              child: SizedBox(
                width: 43,
                height: 43,
                child: CircleAvatar(
                  radius: avatarRadius,
                  backgroundColor: Color(0xffF5F5F5),
                  child: const Icon(Icons.notifications),
                ),
              ),
            ),
          ],
          bottom: TabBar(
            labelStyle: menuTabBarTextStyle.copyWith(color: Color(0xff4D5DFA)),
            indicatorColor: Color(0xff4D5DFA),
            unselectedLabelColor: Color(0xff696D78),
            tabs: [
              Tab(
                text: 'Home',
              ),
              Tab(
                text: 'Balance',
              ),
              Tab(
                text: 'Offers',
              ),
              Tab(
                text: 'Rewards',
              ),
            ],
          ),
        ),
        body: const TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              TabBarHome(),
              TabBarBalance(),
              TabBarOffers(),
              TabBarRewards()
            ]),
        floatingActionButton: FloatingActionButton.extended(
            backgroundColor: Color(0xff4D5DFA),
            onPressed: () {
              Navigator.pushNamed(context, RecievePage.routeName);
            },
            label: Text(
              'Recieve Money',
              style: TextStyle(color: Colors.white),
            )),
      ),
    );
  }
}
