import 'package:flutter/material.dart';
import 'package:instant_pay_mobile_payment_app/pages/profile_page.dart';
import 'package:instant_pay_mobile_payment_app/widgets/tab_bar_view_widget.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/home';
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
            title: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  hintText: 'Search Users,ID’s etc',
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.clear),
                    onPressed: () => _searchController.clear(),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 0),
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
                    child: const Icon(Icons.notifications),
                  ),
                ),
              ),
            ],
            bottom: const TabBar(tabs: [
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
            ]),
          ),
          body: const TabBarView(
              physics: NeverScrollableScrollPhysics(),
              children: [
                TabBarViewWidget(),
                Center(
                  child: Text('Balance Page Content'),
                ),
                Center(
                  child: Text('Offers Page Content'),
                ),
                Center(
                  child: Text('Rewards Page Content'),
                ),
              ])),
    );
  }
}
