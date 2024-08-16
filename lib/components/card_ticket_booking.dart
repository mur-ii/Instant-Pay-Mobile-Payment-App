import 'package:flutter/material.dart';

class CardTicketBooking extends StatelessWidget {
  final String title;
  final String image;
  const CardTicketBooking({Key? key, required this.title, required this.image})
      : super(key: key);

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
              color: Color(0xffFFEDF1),
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
