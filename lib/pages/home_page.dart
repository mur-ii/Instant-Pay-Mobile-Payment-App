import 'package:flutter/material.dart';
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
      initialIndex: 1,
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            leading: CircleAvatar(
              child: Icon(Icons.person),
            ),
            title: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  hintText: 'Search Users,ID’s etc',
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.clear),
                    onPressed: () => _searchController.clear(),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 0),
                ),
              ),
            ),
            actions: [
              SizedBox(
                width: 50,
                height: 50,
                child: CircleAvatar(
                  radius: avatarRadius,
                  child: Icon(Icons.notifications),
                ),
              ),
            ],
            bottom: TabBar(tabs: [
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
          body: TabBarView(physics: NeverScrollableScrollPhysics(), children: [
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
