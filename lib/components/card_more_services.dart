import 'package:flutter/material.dart';

class CardMoreServices extends StatelessWidget {
  final String title;
  final String image;
  const CardMoreServices({super.key, required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 59,
            height: 60,
            decoration: BoxDecoration(
              color: Color(0xffEDEFFF),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: Image.asset(
                image,
                width: 24,
                height: 24,
              ),
            ),
          ),
          Text(title)
        ],
      ),
    );
  }
}
