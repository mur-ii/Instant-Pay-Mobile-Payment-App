import 'package:flutter/material.dart';

class CardMoneyTransfer extends StatelessWidget {
  final String image;
  final String title;
  final Color colorContainer;
  const CardMoneyTransfer({
    super.key,
    required this.image,
    required this.title,
    required this.colorContainer,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 165,
      height: 43,
      decoration: BoxDecoration(
          color: const Color(0xffEDEFFF),
          borderRadius: BorderRadius.circular(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 43,
            width: 43,
            decoration: BoxDecoration(
              color: colorContainer.withOpacity(0.15),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: Image.asset(
                image,
                width: 24,
                height: 22.43,
              ),
            ),
          ),
          const SizedBox(
            width: 7,
          ),
          Text(
            title,
          )
        ],
      ),
    );
  }
}
