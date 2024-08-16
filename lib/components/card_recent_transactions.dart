import 'package:flutter/material.dart';

class CardRecentTransactions extends StatelessWidget {
  final String title;
  final String image;
  const CardRecentTransactions(
      {super.key, required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 60,
            width: 60,
            child: CircleAvatar(
              child: Image.asset(image, ),
            ),
          ),
          Text(title)
        ],
      ),
    );
  }
}
