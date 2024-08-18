import 'package:flutter/material.dart';

class CardOffers extends StatelessWidget {
  final String image;
  final String title;
  final String deskripsi;
  final Color color;
  const CardOffers(
      {super.key,
      required this.image,
      required this.title,
      required this.deskripsi,
      required this.color});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        width: screenWidth,
        height: 101,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Image.asset(
                image,
                width: 82,
                height: 83,
              ),
              SizedBox(
                width: 23,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      deskripsi,
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
