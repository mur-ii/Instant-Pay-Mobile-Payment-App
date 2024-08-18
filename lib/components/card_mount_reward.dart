import 'package:flutter/material.dart';

class CardMountReward extends StatelessWidget {
  final String title;
  final String mount;
  final String deskripsi;
  final String textButton;
  const CardMountReward(
      {super.key,
      required this.title,
      required this.mount,
      required this.deskripsi,
      required this.textButton});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: 182,
      width: screenWidth,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(color: Color(0xff4D5DFA).withOpacity(0.3), blurRadius: 6)
          ]),
      child: Padding(
        padding: const EdgeInsets.all(17.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
            Text(
              mount,
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff616161)),
            ),
            Text(deskripsi),
            Container(
              width: screenWidth,
              height: 43,
              decoration: BoxDecoration(
                  color: Color(0xffFFEDF1),
                  borderRadius: BorderRadius.circular(15)),
              child: Center(
                child: Text(textButton),
              ),
            )
          ],
        ),
      ),
    );
  }
}
