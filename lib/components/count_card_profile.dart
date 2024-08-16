import 'package:flutter/material.dart';

class CountCardProfile extends StatelessWidget {
  final String title;
  final String subTitle;
  const CountCardProfile(
      {super.key, required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Column(
        children: [Text(title), Text(subTitle)],
      ),
    );
  }
}
